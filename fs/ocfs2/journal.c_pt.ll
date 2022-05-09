; ModuleID = '/llk/IR_all_yes/fs/ocfs2/journal.c_pt.bc'
source_filename = "../fs/ocfs2/journal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ocfs2_triggers = type { %struct.jbd2_buffer_trigger_type, i32 }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%struct.atomic_t = type { i32 }
%union.anon.18 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.86, ptr }
%union.anon.86 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
%struct.list_head = type { ptr, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ocfs2_node_map = type { i16, [8 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ocfs2_orphan_scan = type { %struct.mutex, ptr, %struct.ocfs2_lock_res, %struct.delayed_work, i64, i32, i32, %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ocfs2_filecheck_sysfs_entry = type { %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ocfs2_replay_map = type { i32, i32, [0 x i8] }
%struct.ocfs2_recovery_map = type { i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ocfs2_journal = type { i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.spinlock, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.work_struct }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.67, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
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
%struct.jbd2_journal_handle = type { %union.anon.89, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.89 = type { ptr }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, %struct.lockdep_map, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ocfs2_caching_info = type { ptr, i32, i32, i32, i32, %union.anon.90 }
%union.anon.90 = type { [2 x i64] }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.74 = type { ptr }
%struct.ocfs2_dinode = type { [8 x i8], i32, i16, i16, i16, i16, i32, i32, i32, i64, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i64, %struct.ocfs2_block_check, i64, i64, i64, i16, [3 x i16], [2 x i64], %union.anon.77, %union.anon.81 }
%struct.ocfs2_block_check = type { i32, i16, i16 }
%union.anon.77 = type { i64 }
%union.anon.81 = type { %struct.ocfs2_super_block }
%struct.ocfs2_super_block = type { i16, i16, i16, i16, i16, i16, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i16, i16, i32, i64, [64 x i8], [16 x i8], %struct.ocfs2_cluster_info, i16, i16, [3 x i32], [15 x i64] }
%struct.ocfs2_cluster_info = type { [4 x i8], %union.anon.82, [16 x i8] }
%union.anon.82 = type { i32 }
%struct.ocfs2_orphan_filldir_priv = type { %struct.dir_context, ptr, ptr, i32 }
%struct.dir_context = type { ptr, i64 }
%struct.ocfs2_la_recovery_item = type { %struct.list_head, i32, ptr, ptr, ptr, i32 }
%struct.anon.80 = type { i32, i32 }
%struct.ocfs2_dir_block_trailer = type { i64, i16, i8, i8, i16, i16, [8 x i8], i64, i64, i64, i64, %struct.ocfs2_block_check }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"trans_inc_lock\00", [17 x i8] zeroinitializer }, align 32
@trans_inc_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__func__.ocfs2_compute_replay_slots = private unnamed_addr constant [27 x i8] c"ocfs2_compute_replay_slots\00", align 1
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@ocfs2_recovery_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&osb->recovery_lock\00", [44 x i8] zeroinitializer }, align 32
@ocfs2_recovery_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&osb->recovery_event\00", [43 x i8] zeroinitializer }, align 32
@__func__.ocfs2_recovery_init = private unnamed_addr constant [20 x i8] c"ocfs2_recovery_init\00", align 1
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/ocfs2/journal.c\00", [45 x i8] zeroinitializer }, align 32
@__func__.ocfs2_start_trans = private unnamed_addr constant [18 x i8] c"ocfs2_start_trans\00", align 1
@__PRETTY_FUNCTION__.ocfs2_start_trans = private unnamed_addr constant [55 x i8] c"handle_t *ocfs2_start_trans(struct ocfs2_super *, int)\00", align 1
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Detected aborted journal\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.ocfs2_commit_trans = private unnamed_addr constant [19 x i8] c"ocfs2_commit_trans\00", align 1
@__func__.ocfs2_extend_trans = private unnamed_addr constant [19 x i8] c"ocfs2_extend_trans\00", align 1
@__func__.ocfs2_allocate_extend_trans = private unnamed_addr constant [28 x i8] c"ocfs2_allocate_extend_trans\00", align 1
@di_triggers = internal global { %struct.ocfs2_triggers, [20 x i8] } { %struct.ocfs2_triggers { %struct.jbd2_buffer_trigger_type { ptr @ocfs2_frozen_trigger, ptr @ocfs2_abort_trigger }, i32 128 }, [20 x i8] zeroinitializer }, align 32
@eb_triggers = internal global { %struct.ocfs2_triggers, [20 x i8] } { %struct.ocfs2_triggers { %struct.jbd2_buffer_trigger_type { ptr @ocfs2_frozen_trigger, ptr @ocfs2_abort_trigger }, i32 8 }, [20 x i8] zeroinitializer }, align 32
@rb_triggers = internal global { %struct.ocfs2_triggers, [20 x i8] } { %struct.ocfs2_triggers { %struct.jbd2_buffer_trigger_type { ptr @ocfs2_frozen_trigger, ptr @ocfs2_abort_trigger }, i32 32 }, [20 x i8] zeroinitializer }, align 32
@gd_triggers = internal global { %struct.ocfs2_triggers, [20 x i8] } { %struct.ocfs2_triggers { %struct.jbd2_buffer_trigger_type { ptr @ocfs2_frozen_trigger, ptr @ocfs2_abort_trigger }, i32 48 }, [20 x i8] zeroinitializer }, align 32
@db_triggers = internal global { %struct.ocfs2_triggers, [20 x i8] } { %struct.ocfs2_triggers { %struct.jbd2_buffer_trigger_type { ptr @ocfs2_db_frozen_trigger, ptr @ocfs2_abort_trigger }, i32 0 }, [20 x i8] zeroinitializer }, align 32
@xb_triggers = internal global { %struct.ocfs2_triggers, [20 x i8] } { %struct.ocfs2_triggers { %struct.jbd2_buffer_trigger_type { ptr @ocfs2_frozen_trigger, ptr @ocfs2_abort_trigger }, i32 24 }, [20 x i8] zeroinitializer }, align 32
@dq_triggers = internal global { %struct.ocfs2_triggers, [20 x i8] } { %struct.ocfs2_triggers { %struct.jbd2_buffer_trigger_type { ptr @ocfs2_dq_frozen_trigger, ptr @ocfs2_abort_trigger }, i32 0 }, [20 x i8] zeroinitializer }, align 32
@dr_triggers = internal global { %struct.ocfs2_triggers, [20 x i8] } { %struct.ocfs2_triggers { %struct.jbd2_buffer_trigger_type { ptr @ocfs2_frozen_trigger, ptr @ocfs2_abort_trigger }, i32 8 }, [20 x i8] zeroinitializer }, align 32
@dl_triggers = internal global { %struct.ocfs2_triggers, [20 x i8] } { %struct.ocfs2_triggers { %struct.jbd2_buffer_trigger_type { ptr @ocfs2_frozen_trigger, ptr @ocfs2_abort_trigger }, i32 8 }, [20 x i8] zeroinitializer }, align 32
@__func__.ocfs2_journal_dirty = private unnamed_addr constant [20 x i8] c"ocfs2_journal_dirty\00", align 1
@.str.7 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"jbd2_journal_dirty_metadata failed. Aborting transaction and journal.\0A\00", [57 x i8] zeroinitializer }, align 32
@__PRETTY_FUNCTION__.ocfs2_journal_dirty = private unnamed_addr constant [59 x i8] c"void ocfs2_journal_dirty(handle_t *, struct buffer_head *)\00", align 1
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Journal already aborted.\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.ocfs2_journal_init = private unnamed_addr constant [19 x i8] c"ocfs2_journal_init\00", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to alloc journal\0A\00", [39 x i8] zeroinitializer }, align 32
@ocfs2_journal_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&journal->j_trans_barrier\00", [38 x i8] zeroinitializer }, align 32
@ocfs2_journal_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&journal->j_checkpointed\00", [39 x i8] zeroinitializer }, align 32
@ocfs2_journal_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&journal->j_lock\00", [47 x i8] zeroinitializer }, align 32
@ocfs2_journal_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&journal->j_recovery_work)\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"access error (bad inode)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not get lock on journal!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Journal file size (%lld) is too small!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Linux journal layer error\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.ocfs2_journal_shutdown = private unnamed_addr constant [23 x i8] c"ocfs2_journal_shutdown\00", align 1
@__func__.ocfs2_journal_load = private unnamed_addr constant [19 x i8] c"ocfs2_journal_load\00", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to load journal!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ocfs2cmt-%s\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"unable to launch ocfs2commit thread, error=%d\00", [50 x i8] zeroinitializer }, align 32
@__func__.ocfs2_journal_wipe = private unnamed_addr constant [19 x i8] c"ocfs2_journal_wipe\00", align 1
@__func__.ocfs2_complete_recovery = private unnamed_addr constant [24 x i8] c"ocfs2_complete_recovery\00", align 1
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ocfs2rec-%s\00", [20 x i8] zeroinitializer }, align 32
@__func__.ocfs2_recovery_thread = private unnamed_addr constant [22 x i8] c"ocfs2_recovery_thread\00", align 1
@__func__.ocfs2_mark_dead_nodes = private unnamed_addr constant [22 x i8] c"ocfs2_mark_dead_nodes\00", align 1
@ocfs2_orphan_scan_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&os->os_lock\00", [19 x i8] zeroinitializer }, align 32
@ocfs2_orphan_scan_init.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&os->os_orphan_scan_work)->work)\00", [43 x i8] zeroinitializer }, align 32
@ocfs2_orphan_scan_init.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&os->os_orphan_scan_work)->timer\00", [61 x i8] zeroinitializer }, align 32
@__func__.ocfs2_check_journals_nolocks = private unnamed_addr constant [29 x i8] c"ocfs2_check_journals_nolocks\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_extend_trans = external dso_local global %struct.tracepoint, align 4
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/ocfs2_trace.h\00", [41 x i8] zeroinitializer }, align 32
@trace_ocfs2_extend_trans.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_extend_trans_restart = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_extend_trans_restart.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_allocate_extend_trans = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_allocate_extend_trans.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.__ocfs2_journal_access = private unnamed_addr constant [23 x i8] c"__ocfs2_journal_access\00", align 1
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"giving me a buffer that's not uptodate!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"b_blocknr=%llu, b_state=0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@__PRETTY_FUNCTION__.__ocfs2_journal_access = private unnamed_addr constant [120 x i8] c"int __ocfs2_journal_access(handle_t *, struct ocfs2_caching_info *, struct buffer_head *, struct ocfs2_triggers *, int)\00", align 1
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"A previous attempt to write this buffer head failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown access type!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error %d getting %d access to buffer!\0A\00", [57 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_journal_access = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_journal_access.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__func__.ocfs2_abort_trigger = private unnamed_addr constant [20 x i8] c"ocfs2_abort_trigger\00", align 1
@.str.42 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"ocfs2_abort_trigger called by JBD2.  bh = 0x%lx, bh->b_blocknr = %llu\0A\00", [57 x i8] zeroinitializer }, align 32
@__PRETTY_FUNCTION__.ocfs2_abort_trigger = private unnamed_addr constant [82 x i8] c"void ocfs2_abort_trigger(struct jbd2_buffer_trigger_type *, struct buffer_head *)\00", align 1
@.str.43 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"JBD2 has aborted our journal, ocfs2 cannot continue\0A\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_journal_dirty = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_journal_dirty.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_journal_init = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_journal_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_journal_init_maxlen = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_journal_init_maxlen.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_journal_shutdown = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_journal_shutdown.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_journal_shutdown_wait = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_journal_shutdown_wait.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INODE01\00", [24 x i8] zeroinitializer }, align 32
@__func__.ocfs2_journal_toggle_dirty = private unnamed_addr constant [27 x i8] c"ocfs2_journal_toggle_dirty\00", align 1
@__func__.ocfs2_clear_journal_error = private unnamed_addr constant [26 x i8] c"ocfs2_clear_journal_error\00", align 1
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"File system error %d recorded in journal %u.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"File system on device %s needs checking.\0A\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_complete_recovery = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_complete_recovery.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_wait_on_mount = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_wait_on_mount.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_complete_recovery_slot = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_complete_recovery_slot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_complete_recovery_end = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_complete_recovery_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_queue_recovery_completion = private unnamed_addr constant [32 x i8] c"ocfs2_queue_recovery_completion\00", align 1
@__tracepoint_ocfs2_recovery_thread = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_recovery_thread.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.__ocfs2_recovery_thread = private unnamed_addr constant [24 x i8] c"__ocfs2_recovery_thread\00", align 1
@.str.48 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Error %d recovering node %d on device (%u,%u)!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Volume requires unmount.\0A\00", [38 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_recovery_thread_node = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_recovery_thread_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_recover_node = private unnamed_addr constant [19 x i8] c"ocfs2_recover_node\00", align 1
@__tracepoint_ocfs2_recover_node = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_recover_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_replay_journal = private unnamed_addr constant [21 x i8] c"ocfs2_replay_journal\00", align 1
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not lock journal!\0A\00", [39 x i8] zeroinitializer }, align 32
@ocfs2_replay_journal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @__func__.ocfs2_replay_journal, ptr @.str.5, i32 1652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\015ocfs2: Begin replay journal (node %d, slot %d) on device (%u,%u)\0A\00", [60 x i8] zeroinitializer }, align 32
@ocfs2_replay_journal._entry_ptr = internal global ptr @ocfs2_replay_journal._entry, section ".printk_index", align 4
@ocfs2_replay_journal._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @__func__.ocfs2_replay_journal, ptr @.str.5, i32 1707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015ocfs2: End replay journal (node %d, slot %d) on device (%u,%u)\0A\00", [62 x i8] zeroinitializer }, align 32
@ocfs2_replay_journal._entry_ptr.54 = internal global ptr @ocfs2_replay_journal._entry.52, section ".printk_index", align 4
@__tracepoint_ocfs2_replay_journal_recovered = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_replay_journal_recovered.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_replay_journal_lock_err = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_replay_journal_lock_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_replay_journal_skip = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_replay_journal_skip.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_force_read_journal = private unnamed_addr constant [25 x i8] c"ocfs2_force_read_journal\00", align 1
@__tracepoint_ocfs2_recover_node_skip = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_recover_node_skip.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_recovery_thread_end = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_recovery_thread_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_read_journal_inode = private unnamed_addr constant [25 x i8] c"ocfs2_read_journal_inode\00", align 1
@__tracepoint_ocfs2_mark_dead_nodes = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_mark_dead_nodes.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_trylock_journal = private unnamed_addr constant [22 x i8] c"ocfs2_trylock_journal\00", align 1
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"access error\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.ocfs2_queue_orphan_scan = private unnamed_addr constant [24 x i8] c"ocfs2_queue_orphan_scan\00", align 1
@__tracepoint_ocfs2_queue_orphan_scan_begin = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_queue_orphan_scan_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_queue_orphan_scan_end = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_queue_orphan_scan_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_recover_orphans = private unnamed_addr constant [22 x i8] c"ocfs2_recover_orphans\00", align 1
@__tracepoint_ocfs2_recover_orphans = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_recover_orphans.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_queue_orphans = private unnamed_addr constant [20 x i8] c"ocfs2_queue_orphans\00", align 1
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dio-\00", [27 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_orphan_filldir = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_orphan_filldir.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_recover_orphans_iput = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_recover_orphans_iput.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ocfs2_commit_thread.abort_warn_time = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__func__.ocfs2_commit_thread = private unnamed_addr constant [20 x i8] c"ocfs2_commit_thread\00", align 1
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"status = %d, journal is already aborted.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"commit_thread: %u transactions pending on shutdown\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.ocfs2_commit_cache = private unnamed_addr constant [19 x i8] c"ocfs2_commit_cache\00", align 1
@__tracepoint_ocfs2_commit_cache_begin = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_commit_cache_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ocfs2_commit_cache_end = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_commit_cache_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.66 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.68 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.70 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.71 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.72 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.73 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.75 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.78 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.83 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.86 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.88 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.92 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.93 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.94 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.95 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967280, i64 4294967292]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.99 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.100 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.101 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.102 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.103 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.104 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.105 = internal global [7 x i64] [i64 5, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.106 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"trans_inc_lock\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 43, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 120, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 175, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 178, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 213, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 362, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant [12 x i8] c"di_triggers\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 563, i32 30 }
@___asan_gen_.138 = private unnamed_addr constant [12 x i8] c"eb_triggers\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 571, i32 30 }
@___asan_gen_.141 = private unnamed_addr constant [12 x i8] c"rb_triggers\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 579, i32 30 }
@___asan_gen_.144 = private unnamed_addr constant [12 x i8] c"gd_triggers\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 587, i32 30 }
@___asan_gen_.147 = private unnamed_addr constant [12 x i8] c"db_triggers\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 595, i32 30 }
@___asan_gen_.150 = private unnamed_addr constant [12 x i8] c"xb_triggers\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 602, i32 30 }
@___asan_gen_.153 = private unnamed_addr constant [12 x i8] c"dq_triggers\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 610, i32 30 }
@___asan_gen_.156 = private unnamed_addr constant [12 x i8] c"dr_triggers\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 617, i32 30 }
@___asan_gen_.159 = private unnamed_addr constant [12 x i8] c"dl_triggers\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 625, i32 30 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 784, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 789, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 826, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 834, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 835, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 836, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 839, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 851, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 867, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 875, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 888, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1081, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1103, i32 22 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1108, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1534, i32 31 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 2021, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 2022, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 49, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 34, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [26 x i8] c"../fs/ocfs2/ocfs2_trace.h\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 2579, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 108, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 653, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 654, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 670, i32 11 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 697, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 704, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 366, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 553, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 559, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 949, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1060, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1062, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1458, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1462, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1630, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1650, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1705, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1797, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 2057, i32 32 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 2062, i32 20 }
@___asan_gen_.318 = private unnamed_addr constant [16 x i8] c"abort_warn_time\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 2322, i32 25 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 2326, i32 5 }
@___asan_gen_.324 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.325 = private constant [22 x i8] c"../fs/ocfs2/journal.c\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 2337, i32 4 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @ocfs2_replay_journal._entry, ptr @ocfs2_replay_journal._entry.52, ptr @ocfs2_replay_journal._entry_ptr, ptr @ocfs2_replay_journal._entry_ptr.54, ptr @.str, ptr @trans_inc_lock, ptr @.str.1, ptr @ocfs2_recovery_init.__key, ptr @.str.2, ptr @ocfs2_recovery_init.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @di_triggers, ptr @eb_triggers, ptr @rb_triggers, ptr @gd_triggers, ptr @db_triggers, ptr @xb_triggers, ptr @dq_triggers, ptr @dr_triggers, ptr @dl_triggers, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ocfs2_journal_init.__key, ptr @.str.10, ptr @ocfs2_journal_init.__key.11, ptr @.str.12, ptr @ocfs2_journal_init.__key.13, ptr @.str.14, ptr @ocfs2_journal_init.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @ocfs2_orphan_scan_init.__key, ptr @.str.25, ptr @ocfs2_orphan_scan_init.__key.26, ptr @.str.27, ptr @ocfs2_orphan_scan_init.__key.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @ocfs2_commit_thread.abort_warn_time, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_inc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_recovery_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_recovery_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_triggers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eb_triggers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rb_triggers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gd_triggers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_triggers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xb_triggers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dq_triggers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_triggers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl_triggers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_journal_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_journal_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_journal_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_journal_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_orphan_scan_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_orphan_scan_init.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_orphan_scan_init.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_replay_journal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_replay_journal._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_commit_thread.abort_warn_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_compute_replay_slots(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  %node_num = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %node_num) #12
  %0 = ptrtoint ptr %node_num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %node_num, align 4, !annotation !294
  %replay_map1 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 41
  %1 = ptrtoint ptr %replay_map1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %replay_map1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_slots = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 30
  %3 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_slots, align 8
  %add = add i32 %4, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #15
  %tobool2.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %5 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_compute_replay_slots, i32 noundef 120, ptr noundef nonnull @.str.1, i64 noundef -12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %osb_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock) #12
  %6 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_slots, align 8
  %8 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call9.i.i, align 128
  %rm_state = getelementptr inbounds %struct.ocfs2_replay_map, ptr %call9.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %rm_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1953.not = icmp eq i32 %7, 0
  br i1 %cmp1953.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end16.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %call21 = call i32 @ocfs2_slot_to_node_num_locked(ptr noundef %osb, i32 noundef %i.054, ptr noundef nonnull %node_num) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call21)
  %cmp22 = icmp eq i32 %call21, -2
  br i1 %cmp22, label %if.then24, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.ocfs2_replay_map, ptr %call9.i.i, i32 0, i32 2, i32 %i.054
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.054, 1
  %11 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call9.i.i, align 128
  %cmp19 = icmp ult i32 %inc, %12
  br i1 %cmp19, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16.for.end_crit_edge
  %13 = ptrtoint ptr %replay_map1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i, ptr %replay_map1, align 4
  call void @_raw_spin_unlock(ptr noundef %osb_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %node_num) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_slot_to_node_num_locked(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_recovery_init(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %recovery_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 39
  tail call void @__mutex_init(ptr noundef %recovery_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @ocfs2_recovery_init.__key) #12
  %disable_recovery = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 43
  %0 = ptrtoint ptr %disable_recovery to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %disable_recovery, align 4
  %recovery_thread_task = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 42
  %1 = ptrtoint ptr %recovery_thread_task to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %recovery_thread_task, align 8
  %recovery_event = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 74
  tail call void @__init_waitqueue_head(ptr noundef %recovery_event, ptr noundef nonnull @.str.4, ptr noundef nonnull @ocfs2_recovery_init.__key.3) #12
  %max_slots = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 30
  %2 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_slots, align 8
  %mul = shl i32 %3, 2
  %add = add i32 %mul, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.body12, label %if.end18

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_recovery_init, i32 noundef 184, ptr noundef nonnull @.str.1, i64 noundef -12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %cleanup

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 8
  %rm_entries = getelementptr inbounds %struct.ocfs2_recovery_map, ptr %call9.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %rm_entries to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %rm_entries, align 4
  %recovery_map = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 40
  %6 = ptrtoint ptr %recovery_map to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %recovery_map, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.body12
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -12, %do.body12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_recovery_exit(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %recovery_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %recovery_lock, i32 noundef 0) #12
  %disable_recovery = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 43
  %0 = ptrtoint ptr %disable_recovery to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %disable_recovery, align 4
  tail call void @mutex_unlock(ptr noundef %recovery_lock) #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 213) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  tail call void @arm_heavy_mb() #12
  %recovery_thread_task.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 42
  %1 = ptrtoint ptr %recovery_thread_task.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %recovery_thread_task.i, align 8
  %cmp.i.not = icmp eq ptr %2, null
  br i1 %cmp.i.not, label %entry.do.end13_crit_edge, label %if.end

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %recovery_event = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 74
  %call632 = call i32 @prepare_to_wait_event(ptr noundef %recovery_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %recovery_thread_task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %recovery_thread_task.i, align 8
  %cmp.i28.not33 = icmp eq ptr %5, null
  br i1 %cmp.i28.not33, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #12
  %call6 = call i32 @prepare_to_wait_event(ptr noundef %recovery_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %recovery_thread_task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %recovery_thread_task.i, align 8
  %cmp.i28.not = icmp eq ptr %7, null
  br i1 %cmp.i28.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %recovery_event, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %do.end13

do.end13:                                         ; preds = %for.end, %entry.do.end13_crit_edge
  %ocfs2_wq = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 101
  %8 = ptrtoint ptr %ocfs2_wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ocfs2_wq, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %do.end13.if.end17_crit_edge, label %if.then15

do.end13.if.end17_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  call void @flush_workqueue(ptr noundef nonnull %9) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.end13.if.end17_crit_edge
  %recovery_map = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 40
  %10 = ptrtoint ptr %recovery_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %recovery_map, align 8
  call void @kfree(ptr noundef %11) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ocfs2_start_trans(ptr noundef %osb, i32 noundef %max_buffs) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %journal1 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 45
  %0 = ptrtoint ptr %journal1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %journal1, align 4
  %j_journal = getelementptr inbounds %struct.ocfs2_journal, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %j_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %j_journal, align 4
  %tobool.not = icmp eq ptr %osb, null
  %tobool4.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool.not, i1 true, i1 %tobool4.not, !prof !296
  br i1 %spec.select, label %do.body8, label %do.end13, !prof !296

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 338, 0\0A.popsection", ""() #12, !srcloc !297
  unreachable

do.end13:                                         ; preds = %entry
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #12
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 23
  %4 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %5, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not = icmp eq i32 %and.i, 0
  br i1 %tobool14.not, label %do.body18, label %do.end13.cleanup_crit_edge

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body18:                                        ; preds = %do.end13
  %6 = ptrtoint ptr %journal1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %journal1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %do.body27, label %do.body36, !prof !296

do.body27:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 343, 0\0A.popsection", ""() #12, !srcloc !298
  unreachable

do.body36:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max_buffs)
  %cmp37 = icmp slt i32 %max_buffs, 1
  br i1 %cmp37, label %do.body45, label %do.end53, !prof !296

do.body45:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 344, 0\0A.popsection", ""() #12, !srcloc !299
  unreachable

do.end53:                                         ; preds = %do.body36
  %10 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %tobool55.not = icmp eq ptr %15, null
  br i1 %tobool55.not, label %if.end58, label %if.then56

if.then56:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #14
  %call57 = tail call ptr @jbd2_journal_start(ptr noundef nonnull %3, i32 noundef %max_buffs) #12
  br label %cleanup

if.end58:                                         ; preds = %do.end53
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 1
  %16 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sb, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %17, i32 0, i32 32, i32 2, i32 2
  tail call void @__might_sleep(ptr noundef nonnull @.str.30, i32 noundef 49) #12
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %17, i32 0, i32 32, i32 2, i32 2, i32 5
  %18 = tail call ptr @llvm.returnaddress(i32 0) #12
  %19 = ptrtoint ptr %18 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %19) #12
  %20 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !300
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end58.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.end58.rcu_sync_is_idle.exit.i.i.i_crit_edge:   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end58
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 35, ptr noundef nonnull @.str.32) #12
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.end58.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %24 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool7.not.i.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !301

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !302
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %17, i32 0, i32 32, i32 2, i32 2, i32 1
  %27 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_count.i.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %35, %29
  %36 = inttoptr i32 %add.i.i.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add21.i.i.i = add i32 %38, 1
  store i32 %add21.i.i.i, ptr %36, align 4
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !303
  %and.i.i.i.i.i = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !296

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #12, !srcloc !304
  br label %sb_start_intwrite.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #12
  br label %sb_start_intwrite.exit

sb_start_intwrite.exit:                           ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !305
  %40 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i58.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  %44 = ptrtoint ptr %journal1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %journal1, align 4
  %j_trans_barrier = getelementptr inbounds %struct.ocfs2_journal, ptr %45, i32 0, i32 8
  tail call void @down_read(ptr noundef %j_trans_barrier) #12
  %call60 = tail call ptr @jbd2_journal_start(ptr noundef nonnull %3, i32 noundef %max_buffs) #12
  %cmp.i = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then62, label %if.else

if.then62:                                        ; preds = %sb_start_intwrite.exit
  %46 = ptrtoint ptr %journal1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %journal1, align 4
  %j_trans_barrier64 = getelementptr inbounds %struct.ocfs2_journal, ptr %47, i32 0, i32 8
  tail call void @up_read(ptr noundef %j_trans_barrier64) #12
  %48 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sb, align 4
  tail call fastcc void @sb_end_intwrite(ptr noundef %49)
  %50 = ptrtoint ptr %call60 to i32
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i32 %50, label %do.body76 [
    i32 -512, label %if.then62.if.end82_crit_edge
    i32 -4, label %if.then62.if.end82_crit_edge122
    i32 524289, label %if.then62.if.end82_crit_edge123
    i32 -28, label %if.then62.if.end82_crit_edge124
    i32 -122, label %if.then62.if.end82_crit_edge125
  ]

if.then62.if.end82_crit_edge125:                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then62.if.end82_crit_edge124:                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then62.if.end82_crit_edge123:                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then62.if.end82_crit_edge122:                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then62.if.end82_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

do.body76:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %52 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %50 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_start_trans, i32 noundef 359, ptr noundef nonnull @.str.1, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %if.end82

if.end82:                                         ; preds = %do.body76, %if.then62.if.end82_crit_edge, %if.then62.if.end82_crit_edge122, %if.then62.if.end82_crit_edge123, %if.then62.if.end82_crit_edge124, %if.then62.if.end82_crit_edge125
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %3, align 8
  %and.i119 = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i119)
  %tobool84.not = icmp eq i32 %and.i119, 0
  br i1 %tobool84.not, label %if.end82.cleanup_crit_edge, label %if.then85

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sb, align 4
  call void (ptr, ptr, ptr, ...) @__ocfs2_abort(ptr noundef %56, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_start_trans, ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.else:                                          ; preds = %sb_start_intwrite.exit
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 19
  %57 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i120 = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i120)
  %tobool.not.i = icmp eq i32 %and.i120, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

ocfs2_mount_local.exit:                           ; preds = %if.else
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %59 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_mount_opt.i, align 8
  %61 = and i32 %60, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool90.not = icmp eq i32 %61, 0
  br i1 %tobool90.not, label %if.then91, label %ocfs2_mount_local.exit.cleanup_crit_edge

ocfs2_mount_local.exit.cleanup_crit_edge:         ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then91:                                        ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %journal1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %journal1, align 4
  %j_num_trans = getelementptr inbounds %struct.ocfs2_journal, ptr %63, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_num_trans, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %j_num_trans, i32 1, i32 3, i32 1) #12
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %j_num_trans, ptr %j_num_trans, i32 1, ptr elementtype(i32) %j_num_trans) #12, !srcloc !306
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %ocfs2_mount_local.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then85, %if.end82.cleanup_crit_edge, %if.then56, %do.end13.cleanup_crit_edge
  %retval.0 = phi ptr [ %call57, %if.then56 ], [ inttoptr (i32 -30 to ptr), %if.then85 ], [ %call60, %if.end82.cleanup_crit_edge ], [ %call60, %ocfs2_mount_local.exit.cleanup_crit_edge ], [ %call60, %if.then91 ], [ inttoptr (i32 -30 to ptr), %do.end13.cleanup_crit_edge ], [ %call60, %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jbd2_journal_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sb_end_intwrite(ptr noundef %sb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr1.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2
  %dep_map.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 5
  %0 = tail call ptr @llvm.returnaddress(i32 0) #12
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %1) #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !307
  %call.i.i.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %entry.rcu_sync_is_idle.exit.i.i_crit_edge

entry.rcu_sync_is_idle.exit.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b8.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i, label %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 35, ptr noundef nonnull @.str.32) #12
  br label %rcu_sync_is_idle.exit.i.i

rcu_sync_is_idle.exit.i.i:                        ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %entry.rcu_sync_is_idle.exit.i.i_crit_edge
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i.i.i, label %do.body3.i.i, label %do.end49.i.i, !prof !301

do.body3.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !302
  %read_count.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 1
  %9 = ptrtoint ptr %read_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_count.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add17.i.i = add i32 %20, -1
  store i32 %add17.i.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !303
  %and.i.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool28.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then37.i.i, label %do.body3.i.i.do.end39.i.i_crit_edge, !prof !296

do.body3.i.i.do.end39.i.i_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39.i.i

if.then37.i.i:                                    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %if.then37.i.i, %do.body3.i.i.do.end39.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #12, !srcloc !304
  br label %__sb_end_write.exit

do.end49.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !308
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !302
  %read_count75.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 1
  %23 = ptrtoint ptr %read_count75.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_count75.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i122.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i122.i.i to ptr
  %cpu78.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu78.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu78.i.i, align 4
  %arrayidx79.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx79.i.i, align 4
  %add80.i.i = add i32 %31, %25
  %32 = inttoptr i32 %add80.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add81.i.i = add i32 %34, -1
  store i32 %add81.i.i, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !303
  %and.i.i123.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i)
  %tobool92.not.i.i = icmp eq i32 %and.i.i123.i.i, 0
  br i1 %tobool92.not.i.i, label %if.then101.i.i, label %do.end49.i.i.do.end104.i.i_crit_edge, !prof !296

do.end49.i.i.do.end104.i.i_crit_edge:             ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end104.i.i

if.then101.i.i:                                   ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end104.i.i

do.end104.i.i:                                    ; preds = %if.then101.i.i, %do.end49.i.i.do.end104.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #12, !srcloc !304
  %writer.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 2
  %call111.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i) #12
  br label %__sb_end_write.exit

__sb_end_write.exit:                              ; preds = %do.end104.i.i, %do.end39.i.i
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !309
  %36 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i120.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i120.i.i to ptr
  %preempt_count.i.i121.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i121.i.i, align 4
  %sub.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i121.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ocfs2_abort(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_commit_trans(ptr nocapture noundef readonly %osb, ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %journal1 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 45
  %0 = ptrtoint ptr %journal1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %journal1, align 4
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !296

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 379, 0\0A.popsection", ""() #12, !srcloc !310
  unreachable

do.end10:                                         ; preds = %entry
  %h_ref = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 5
  %2 = ptrtoint ptr %h_ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  %call = tail call i32 @jbd2_journal_stop(ptr noundef nonnull %handle) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %if.then13, label %do.end10.if.end36_crit_edge

do.end10.if.end36_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then13:                                        ; preds = %do.end10
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call, label %do.body28 [
    i32 -512, label %if.then13.if.end36_crit_edge
    i32 -4, label %if.then13.if.end36_crit_edge51
    i32 -28, label %if.then13.if.end36_crit_edge52
    i32 -122, label %if.then13.if.end36_crit_edge53
  ]

if.then13.if.end36_crit_edge53:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then13.if.end36_crit_edge52:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then13.if.end36_crit_edge51:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then13.if.end36_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.body28:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %5 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv31 = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_commit_trans, i32 noundef 384, ptr noundef nonnull @.str.1, i64 noundef %conv31) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %if.end36

if.end36:                                         ; preds = %do.body28, %if.then13.if.end36_crit_edge, %if.then13.if.end36_crit_edge51, %if.then13.if.end36_crit_edge52, %if.then13.if.end36_crit_edge53, %do.end10.if.end36_crit_edge
  br i1 %cmp, label %if.end36.if.end39_crit_edge, label %if.then38

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %j_trans_barrier = getelementptr inbounds %struct.ocfs2_journal, ptr %1, i32 0, i32 8
  call void @up_read(ptr noundef %j_trans_barrier) #12
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 1
  %6 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sb, align 4
  call fastcc void @sb_end_intwrite(ptr noundef %7)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end36.if.end39_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_extend_trans(ptr noundef %handle, i32 noundef %nblocks) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !296

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #12, !srcloc !311
  unreachable

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nblocks)
  %cmp = icmp slt i32 %nblocks, 0
  br i1 %cmp, label %do.body18, label %do.end26, !prof !296

do.body18:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #12, !srcloc !312
  unreachable

do.end26:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nblocks)
  %tobool27.not = icmp eq i32 %nblocks, 0
  br i1 %tobool27.not, label %do.end26.cleanup_crit_edge, label %if.end29

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end29:                                         ; preds = %do.end26
  %h_reserved.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %0 = ptrtoint ptr %h_reserved.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %h_reserved.i, align 4
  %1 = and i32 %bf.load.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end29.jbd2_handle_buffer_credits.exit_crit_edge

if.end29.jbd2_handle_buffer_credits.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %jbd2_handle_buffer_credits.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 4
  br label %jbd2_handle_buffer_credits.exit

jbd2_handle_buffer_credits.exit:                  ; preds = %if.then.i, %if.end29.jbd2_handle_buffer_credits.exit_crit_edge
  %journal.0.in.i = phi ptr [ %3, %if.then.i ], [ %handle, %if.end29.jbd2_handle_buffer_credits.exit_crit_edge ]
  %4 = ptrtoint ptr %journal.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %journal.0.i = load ptr, ptr %journal.0.in.i, align 4
  %h_total_credits.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 2
  %5 = ptrtoint ptr %h_total_credits.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %h_total_credits.i, align 4
  %h_revoke_credits_requested.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 4
  %7 = ptrtoint ptr %h_revoke_credits_requested.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %h_revoke_credits_requested.i, align 4
  %j_revoke_records_per_block.i = getelementptr inbounds %struct.journal_s, ptr %journal.0.i, i32 0, i32 48
  %9 = ptrtoint ptr %j_revoke_records_per_block.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %j_revoke_records_per_block.i, align 4
  %add.i = add i32 %8, -1
  %sub.i = add i32 %add.i, %10
  %div.i = sdiv i32 %sub.i, %10
  %sub2.i = sub i32 %6, %div.i
  tail call fastcc void @trace_ocfs2_extend_trans(i32 noundef %sub2.i, i32 noundef %nblocks)
  %add = add i32 %sub2.i, %nblocks
  tail call fastcc void @trace_ocfs2_extend_trans_restart(i32 noundef %add)
  %call33 = tail call i32 @jbd2_journal_restart(ptr noundef nonnull %handle, i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %jbd2_handle_buffer_credits.exit.cleanup_crit_edge

jbd2_handle_buffer_credits.exit.cleanup_crit_edge: ; preds = %jbd2_handle_buffer_credits.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then35:                                        ; preds = %jbd2_handle_buffer_credits.exit
  %11 = zext i32 %call33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %call33, label %do.body45 [
    i32 -512, label %if.then35.cleanup_crit_edge
    i32 -4, label %if.then35.cleanup_crit_edge72
    i32 -28, label %if.then35.cleanup_crit_edge73
    i32 -122, label %if.then35.cleanup_crit_edge74
  ]

if.then35.cleanup_crit_edge74:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then35.cleanup_crit_edge73:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then35.cleanup_crit_edge72:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body45:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call33 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_extend_trans, i32 noundef 440, ptr noundef nonnull @.str.1, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body45, %if.then35.cleanup_crit_edge, %if.then35.cleanup_crit_edge72, %if.then35.cleanup_crit_edge73, %if.then35.cleanup_crit_edge74, %jbd2_handle_buffer_credits.exit.cleanup_crit_edge, %do.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end26.cleanup_crit_edge ], [ %call33, %if.then35.cleanup_crit_edge ], [ %call33, %if.then35.cleanup_crit_edge72 ], [ %call33, %if.then35.cleanup_crit_edge73 ], [ %call33, %if.then35.cleanup_crit_edge74 ], [ %call33, %do.body45 ], [ 0, %jbd2_handle_buffer_credits.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_extend_trans(i32 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_extend_trans, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_extend_trans, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !314
  %call42 = tail call i32 @__traceiter_ocfs2_extend_trans(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !315
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_extend_trans, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_extend_trans, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_extend_trans.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_extend_trans.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2579, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_extend_trans_restart(i32 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_extend_trans_restart, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_extend_trans_restart, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !318
  %call42 = tail call i32 @__traceiter_ocfs2_extend_trans_restart(ptr noundef null, i32 noundef %num) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !319
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_extend_trans_restart, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_extend_trans_restart, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_extend_trans_restart.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_extend_trans_restart.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2581, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
declare dso_local i32 @jbd2_journal_restart(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_allocate_extend_trans(ptr noundef %handle, i32 noundef %thresh) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m56 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !296

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 460, 0\0A.popsection", ""() #12, !srcloc !320
  unreachable

do.end9:                                          ; preds = %entry
  %h_reserved.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %0 = ptrtoint ptr %h_reserved.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %h_reserved.i, align 4
  %1 = and i32 %bf.load.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end9.jbd2_handle_buffer_credits.exit_crit_edge

do.end9.jbd2_handle_buffer_credits.exit_crit_edge: ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %jbd2_handle_buffer_credits.exit

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 4
  br label %jbd2_handle_buffer_credits.exit

jbd2_handle_buffer_credits.exit:                  ; preds = %if.then.i, %do.end9.jbd2_handle_buffer_credits.exit_crit_edge
  %journal.0.in.i = phi ptr [ %3, %if.then.i ], [ %handle, %do.end9.jbd2_handle_buffer_credits.exit_crit_edge ]
  %4 = ptrtoint ptr %journal.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %journal.0.i = load ptr, ptr %journal.0.in.i, align 4
  %h_total_credits.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 2
  %5 = ptrtoint ptr %h_total_credits.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %h_total_credits.i, align 4
  %h_revoke_credits_requested.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 4
  %7 = ptrtoint ptr %h_revoke_credits_requested.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %h_revoke_credits_requested.i, align 4
  %j_revoke_records_per_block.i = getelementptr inbounds %struct.journal_s, ptr %journal.0.i, i32 0, i32 48
  %9 = ptrtoint ptr %j_revoke_records_per_block.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %j_revoke_records_per_block.i, align 4
  %add.i = add i32 %8, -1
  %sub.i = add i32 %add.i, %10
  %div.i = sdiv i32 %sub.i, %10
  %sub2.i = sub i32 %6, %div.i
  tail call fastcc void @trace_ocfs2_allocate_extend_trans(i32 noundef %sub2.i, i32 noundef %thresh)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub2.i, i32 %thresh)
  %cmp = icmp slt i32 %sub2.i, %thresh
  br i1 %cmp, label %jbd2_handle_buffer_credits.exit.cleanup_crit_edge, label %if.end11

jbd2_handle_buffer_credits.exit.cleanup_crit_edge: ; preds = %jbd2_handle_buffer_credits.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %jbd2_handle_buffer_credits.exit
  %call12 = tail call i32 @jbd2_journal_extend(ptr noundef nonnull %handle, i32 noundef 64, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end31

if.then14:                                        ; preds = %if.end11
  %11 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %call12, label %do.body24 [
    i32 -512, label %if.then14.cleanup_crit_edge
    i32 -4, label %if.then14.cleanup_crit_edge91
    i32 -28, label %if.then14.cleanup_crit_edge92
    i32 -122, label %if.then14.cleanup_crit_edge93
  ]

if.then14.cleanup_crit_edge93:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14.cleanup_crit_edge92:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14.cleanup_crit_edge91:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body24:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %12 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call12 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_allocate_extend_trans, i32 noundef 470, ptr noundef nonnull @.str.1, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %cleanup

if.end31:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp32.not = icmp eq i32 %call12, 0
  br i1 %cmp32.not, label %if.end31.cleanup_crit_edge, label %if.then34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then34:                                        ; preds = %if.end31
  %call35 = tail call i32 @jbd2_journal_restart(ptr noundef nonnull %handle, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then38:                                        ; preds = %if.then34
  %13 = zext i32 %call35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %call35, label %do.body55 [
    i32 -512, label %if.then38.cleanup_crit_edge
    i32 -4, label %if.then38.cleanup_crit_edge94
    i32 -28, label %if.then38.cleanup_crit_edge95
    i32 -122, label %if.then38.cleanup_crit_edge96
  ]

if.then38.cleanup_crit_edge96:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then38.cleanup_crit_edge95:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then38.cleanup_crit_edge94:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body55:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m56) #12
  %14 = ptrtoint ptr %_m56 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1152921504606846976, ptr %_m56, align 8
  %conv60 = sext i32 %call35 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m56, ptr noundef nonnull @__func__.ocfs2_allocate_extend_trans, i32 noundef 477, ptr noundef nonnull @.str.1, i64 noundef %conv60) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m56) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body55, %if.then38.cleanup_crit_edge, %if.then38.cleanup_crit_edge94, %if.then38.cleanup_crit_edge95, %if.then38.cleanup_crit_edge96, %if.then34.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.body24, %if.then14.cleanup_crit_edge, %if.then14.cleanup_crit_edge91, %if.then14.cleanup_crit_edge92, %if.then14.cleanup_crit_edge93, %jbd2_handle_buffer_credits.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %jbd2_handle_buffer_credits.exit.cleanup_crit_edge ], [ %call35, %if.then34.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ %call12, %if.then14.cleanup_crit_edge ], [ %call12, %if.then14.cleanup_crit_edge91 ], [ %call12, %if.then14.cleanup_crit_edge92 ], [ %call12, %if.then14.cleanup_crit_edge93 ], [ %call12, %do.body24 ], [ %call35, %if.then38.cleanup_crit_edge ], [ %call35, %if.then38.cleanup_crit_edge94 ], [ %call35, %if.then38.cleanup_crit_edge95 ], [ %call35, %if.then38.cleanup_crit_edge96 ], [ %call35, %do.body55 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_allocate_extend_trans(i32 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_allocate_extend_trans, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_allocate_extend_trans, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !321
  %call42 = tail call i32 @__traceiter_ocfs2_allocate_extend_trans(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !322
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_allocate_extend_trans, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_allocate_extend_trans, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_allocate_extend_trans.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_allocate_extend_trans.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2583, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
declare dso_local i32 @jbd2_journal_extend(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_journal_access_di(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ocfs2_journal_access(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, ptr noundef nonnull @di_triggers, i32 noundef %type)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ocfs2_journal_access(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, ptr noundef %triggers, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m62 = alloca i64, align 8
  %_m82 = alloca i64, align 8
  %_m99 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ocfs2_metadata_cache_get_super(ptr noundef %ci) #12
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %call, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %tobool.not = icmp eq ptr %ci, null
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %lor.rhs, !prof !296

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

lor.rhs:                                          ; preds = %entry
  %2 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.rhs.do.body5_crit_edge, label %do.body11, !prof !296

lor.rhs.do.body5_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

do.body5:                                         ; preds = %lor.rhs.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 643, 0\0A.popsection", ""() #12, !srcloc !323
  unreachable

do.body11:                                        ; preds = %lor.rhs
  %tobool12.not = icmp eq ptr %handle, null
  br i1 %tobool12.not, label %do.body22, label %do.body31, !prof !296

do.body22:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 644, 0\0A.popsection", ""() #12, !srcloc !324
  unreachable

do.body31:                                        ; preds = %do.body11
  %tobool32.not = icmp eq ptr %bh, null
  br i1 %tobool32.not, label %do.body42, label %do.end50, !prof !296

do.body42:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 645, 0\0A.popsection", ""() #12, !srcloc !325
  unreachable

do.end50:                                         ; preds = %do.body31
  %call51 = tail call i64 @ocfs2_metadata_cache_owner(ptr noundef nonnull %ci) #12
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %4 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %b_blocknr, align 8
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %6 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_size, align 8
  tail call fastcc void @trace_ocfs2_journal_access(i64 noundef %call51, i64 noundef %5, i32 noundef %type, i32 noundef %7)
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool53.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool53.not, label %do.body55, label %do.end50.if.end77_crit_edge

do.end50.if.end77_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

do.body55:                                        ; preds = %do.end50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %10 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__ocfs2_journal_access, i32 noundef 653, ptr noundef nonnull @.str.36) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m62) #12
  %11 = ptrtoint ptr %_m62 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606846976, ptr %_m62, align 8
  %12 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %b_blocknr, align 8
  %14 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bh, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m62, ptr noundef nonnull @__func__.__ocfs2_journal_access, i32 noundef 655, ptr noundef nonnull @.str.37, i64 noundef %13, i32 noundef %15) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m62) #12
  call void @__might_sleep(ptr noundef nonnull @.str.41, i32 noundef 366) #12
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bh, i32 noundef 4) #12
  %16 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %bh, align 4
  %and.i.i.i.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %do.body55.if.then.i_crit_edge

do.body55.if.then.i_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %do.body55
  call void @llvm.prefetch.p0(ptr nonnull %bh, i32 1, i32 3, i32 1) #12
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %bh, ptr nonnull %bh, i32 4, ptr nonnull elementtype(i32) %bh) #12, !srcloc !326
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !327
  %19 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %do.body55.if.then.i_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %bh) #12
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %20 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %bh, align 4
  %22 = and i32 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool71.not = icmp eq i32 %22, 0
  br i1 %tobool71.not, label %lock_buffer.exit.if.end76_crit_edge, label %land.lhs.true

lock_buffer.exit.if.end76_crit_edge:              ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

land.lhs.true:                                    ; preds = %lock_buffer.exit
  %23 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %bh, align 4
  %and1.i.i138 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i138)
  %tobool73.not = icmp eq i32 %and1.i.i138, 0
  br i1 %tobool73.not, label %if.then74, label %land.lhs.true.if.end76_crit_edge

land.lhs.true.if.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then74:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @unlock_buffer(ptr noundef nonnull %bh) #12
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sb, align 4
  %call75 = call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %26, ptr noundef nonnull @__PRETTY_FUNCTION__.__ocfs2_journal_access, ptr noundef nonnull @.str.38) #12
  br label %cleanup

if.end76:                                         ; preds = %land.lhs.true.if.end76_crit_edge, %lock_buffer.exit.if.end76_crit_edge
  call void @unlock_buffer(ptr noundef nonnull %bh) #12
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %do.end50.if.end77_crit_edge
  %journal = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 45
  %27 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %journal, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @trans_inc_lock) #12
  %j_trans_id.i = getelementptr inbounds %struct.ocfs2_journal, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %j_trans_id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %j_trans_id.i, align 4
  %ci_last_trans.i = getelementptr inbounds %struct.ocfs2_caching_info, ptr %ci, i32 0, i32 2
  %31 = ptrtoint ptr %ci_last_trans.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ci_last_trans.i, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull @trans_inc_lock) #12
  call void @ocfs2_metadata_cache_io_lock(ptr noundef nonnull %ci) #12
  %32 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %type, label %if.end96.thread144 [
    i32 0, label %if.end77.sw.bb_crit_edge
    i32 1, label %if.end77.sw.bb_crit_edge148
    i32 2, label %sw.bb79
  ]

if.end77.sw.bb_crit_edge148:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end77.sw.bb_crit_edge:                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end77.sw.bb_crit_edge, %if.end77.sw.bb_crit_edge148
  %call78 = call i32 @jbd2_journal_get_write_access(ptr noundef nonnull %handle, ptr noundef nonnull %bh) #12
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  %call80 = call i32 @jbd2_journal_get_undo_access(ptr noundef nonnull %handle, ptr noundef nonnull %bh) #12
  br label %sw.epilog

if.end96.thread144:                               ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m82) #12
  %33 = ptrtoint ptr %_m82 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1152921504606846976, ptr %_m82, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m82, ptr noundef nonnull @__func__.__ocfs2_journal_access, i32 noundef 697, ptr noundef nonnull @.str.39) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m82) #12
  call void @ocfs2_metadata_cache_io_unlock(ptr noundef nonnull %ci) #12
  br label %do.body98

sw.epilog:                                        ; preds = %sw.bb79, %sw.bb
  %status.0 = phi i32 [ %call80, %sw.bb79 ], [ %call78, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool89.not = icmp eq i32 %status.0, 0
  br i1 %tobool89.not, label %land.lhs.true90, label %if.end96

land.lhs.true90:                                  ; preds = %sw.epilog
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 19
  %34 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_feature_incompat.i, align 8
  %36 = and i32 %35, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool92.not = icmp eq i32 %36, 0
  %tobool94.not = icmp eq ptr %triggers, null
  %or.cond = or i1 %tobool94.not, %tobool92.not
  br i1 %or.cond, label %land.lhs.true90.if.end96.thread_crit_edge, label %if.then95

land.lhs.true90.if.end96.thread_crit_edge:        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96.thread

if.then95:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #14
  call void @jbd2_journal_set_triggers(ptr noundef nonnull %bh, ptr noundef nonnull %triggers) #12
  br label %if.end96.thread

if.end96.thread:                                  ; preds = %if.then95, %land.lhs.true90.if.end96.thread_crit_edge
  call void @ocfs2_metadata_cache_io_unlock(ptr noundef nonnull %ci) #12
  br label %cleanup

if.end96:                                         ; preds = %sw.epilog
  call void @ocfs2_metadata_cache_io_unlock(ptr noundef nonnull %ci) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %cmp = icmp slt i32 %status.0, 0
  br i1 %cmp, label %if.end96.do.body98_crit_edge, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end96.do.body98_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body98

do.body98:                                        ; preds = %if.end96.do.body98_crit_edge, %if.end96.thread144
  %status.0141147 = phi i32 [ -22, %if.end96.thread144 ], [ %status.0, %if.end96.do.body98_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m99) #12
  %37 = ptrtoint ptr %_m99 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 1152921504606846976, ptr %_m99, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m99, ptr noundef nonnull @__func__.__ocfs2_journal_access, i32 noundef 705, ptr noundef nonnull @.str.40, i32 noundef %status.0141147, i32 noundef %type) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m99) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body98, %if.end96.cleanup_crit_edge, %if.end96.thread, %if.then74
  %retval.0 = phi i32 [ %call75, %if.then74 ], [ %status.0141147, %do.body98 ], [ %status.0, %if.end96.cleanup_crit_edge ], [ 0, %if.end96.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_journal_access_eb(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ocfs2_journal_access(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, ptr noundef nonnull @eb_triggers, i32 noundef %type)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_journal_access_rb(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ocfs2_journal_access(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, ptr noundef nonnull @rb_triggers, i32 noundef %type)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_journal_access_gd(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ocfs2_journal_access(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, ptr noundef nonnull @gd_triggers, i32 noundef %type)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_journal_access_db(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ocfs2_journal_access(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, ptr noundef nonnull @db_triggers, i32 noundef %type)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_journal_access_xb(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ocfs2_journal_access(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, ptr noundef nonnull @xb_triggers, i32 noundef %type)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_journal_access_dq(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ocfs2_journal_access(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, ptr noundef nonnull @dq_triggers, i32 noundef %type)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_journal_access_dr(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ocfs2_journal_access(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, ptr noundef nonnull @dr_triggers, i32 noundef %type)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_journal_access_dl(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ocfs2_journal_access(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, ptr noundef nonnull @dl_triggers, i32 noundef %type)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_journal_access(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ocfs2_journal_access(ptr noundef %handle, ptr noundef %ci, ptr noundef %bh, ptr noundef null, i32 noundef %type)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_journal_dirty(ptr noundef %handle, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m16 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %0 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %b_blocknr, align 8
  tail call fastcc void @trace_ocfs2_journal_dirty(i64 noundef %1)
  %call = tail call i32 @jbd2_journal_dirty_metadata(ptr noundef %handle, ptr noundef %bh) #12
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call, label %do.body [
    i32 0, label %entry.if.end24_crit_edge
    i32 -512, label %entry.if.end11_crit_edge
    i32 -4, label %entry.if.end11_crit_edge44
    i32 524289, label %entry.if.end11_crit_edge45
    i32 -28, label %entry.if.end11_crit_edge46
    i32 -122, label %entry.if.end11_crit_edge47
  ]

entry.if.end11_crit_edge47:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

entry.if.end11_crit_edge46:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

entry.if.end11_crit_edge45:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

entry.if.end11_crit_edge44:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_journal_dirty, i32 noundef 779, ptr noundef nonnull @.str.1, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %if.end11

if.end11:                                         ; preds = %do.body, %entry.if.end11_crit_edge, %entry.if.end11_crit_edge44, %entry.if.end11_crit_edge45, %entry.if.end11_crit_edge46, %entry.if.end11_crit_edge47
  %h_aborted.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 7
  %4 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %h_aborted.i, align 4
  %5 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end11.if.end24_crit_edge

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

lor.lhs.false.i:                                  ; preds = %if.end11
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handle, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end24_crit_edge, label %is_handle_aborted.exit

lor.lhs.false.i.if.end24_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

is_handle_aborted.exit:                           ; preds = %lor.lhs.false.i
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %and.i.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool13.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool13.not, label %if.then14, label %is_handle_aborted.exit.if.end24_crit_edge

is_handle_aborted.exit.if.end24_crit_edge:        ; preds = %is_handle_aborted.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then14:                                        ; preds = %is_handle_aborted.exit
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handle, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 6
  %16 = ptrtoint ptr %b_bdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_bdev, align 8
  %bd_super = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %bd_super to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bd_super, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m16) #12
  %20 = ptrtoint ptr %_m16 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 1152921504606846976, ptr %_m16, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m16, ptr noundef nonnull @__func__.ocfs2_journal_dirty, i32 noundef 785, ptr noundef nonnull @.str.7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m16) #12
  %h_err = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 6
  %21 = ptrtoint ptr %h_err to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call, ptr %h_err, align 4
  %22 = ptrtoint ptr %h_aborted.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load.i41 = load i32, ptr %h_aborted.i, align 4
  %bf.set.i = or i32 %bf.load.i41, 268435456
  store i32 %bf.set.i, ptr %h_aborted.i, align 4
  call void @jbd2_journal_abort(ptr noundef %15, i32 noundef %call) #12
  call void (ptr, ptr, ptr, ...) @__ocfs2_abort(ptr noundef %19, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_journal_dirty, ptr noundef nonnull @.str.8) #12
  br label %if.end24

if.end24:                                         ; preds = %if.then14, %is_handle_aborted.exit.if.end24_crit_edge, %lor.lhs.false.i.if.end24_crit_edge, %if.end11.if.end24_crit_edge, %entry.if.end24_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_journal_dirty(i64 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_dirty, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_journal_dirty, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !328
  %call42 = tail call i32 @__traceiter_ocfs2_journal_dirty(ptr noundef null, i64 noundef %num) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !329
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_dirty, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_dirty, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_journal_dirty.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_journal_dirty.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2587, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
declare dso_local i32 @jbd2_journal_dirty_metadata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_abort(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_set_journal_params(ptr nocapture noundef readonly %osb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %journal1 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 45
  %0 = ptrtoint ptr %journal1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %journal1, align 4
  %j_journal = getelementptr inbounds %struct.ocfs2_journal, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %j_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %j_journal, align 4
  %osb_commit_interval = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 46
  %4 = ptrtoint ptr %osb_commit_interval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %osb_commit_interval, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool.not, i32 500, i32 %5
  %j_state_lock = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 7
  tail call void @_raw_write_lock(ptr noundef %j_state_lock) #12
  %j_commit_interval = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 49
  %6 = ptrtoint ptr %j_commit_interval to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %j_commit_interval, align 8
  %s_mount_opt = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %7 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mount_opt, align 8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 8
  %and6 = and i32 %10, -33
  %and = shl i32 %8, 4
  %11 = and i32 %and, 32
  %storemerge = or i32 %and6, %11
  store i32 %storemerge, ptr %3, align 8
  tail call void @_raw_write_unlock(ptr noundef %j_state_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_journal_init(ptr noundef %osb, ptr nocapture noundef writeonly %dirty) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m35 = alloca i64, align 8
  %_m47 = alloca i64, align 8
  %_m65 = alloca i64, align 8
  %_m79 = alloca i64, align 8
  %_m95 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bh, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 272) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_journal_init, i32 noundef 826, ptr noundef nonnull @.str.9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %if.end113

if.end3:                                          ; preds = %entry
  %journal4 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 45
  %3 = ptrtoint ptr %journal4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %journal4, align 4
  %j_osb = getelementptr inbounds %struct.ocfs2_journal, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %j_osb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %osb, ptr %j_osb, align 4
  %j_num_trans = getelementptr inbounds %struct.ocfs2_journal, ptr %call7.i.i, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_num_trans, i32 noundef 4) #12
  %5 = ptrtoint ptr %j_num_trans to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %j_num_trans, align 4
  %j_trans_barrier = getelementptr inbounds %struct.ocfs2_journal, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_rwsem(ptr noundef %j_trans_barrier, ptr noundef nonnull @.str.10, ptr noundef nonnull @ocfs2_journal_init.__key) #12
  %j_checkpointed = getelementptr inbounds %struct.ocfs2_journal, ptr %call7.i.i, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %j_checkpointed, ptr noundef nonnull @.str.12, ptr noundef nonnull @ocfs2_journal_init.__key.11) #12
  %j_lock = getelementptr inbounds %struct.ocfs2_journal, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %j_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @ocfs2_journal_init.__key.13, i16 noundef signext 3) #12
  %j_trans_id = getelementptr inbounds %struct.ocfs2_journal, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %j_trans_id, align 4
  %j_la_cleanups = getelementptr inbounds %struct.ocfs2_journal, ptr %call7.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %j_la_cleanups to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %j_la_cleanups, ptr %j_la_cleanups, align 4
  %prev.i = getelementptr inbounds %struct.ocfs2_journal, ptr %call7.i.i, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %j_la_cleanups, ptr %prev.i, align 8
  %j_recovery_work = getelementptr inbounds %struct.ocfs2_journal, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %j_recovery_work, i32 noundef 0) #12
  %9 = ptrtoint ptr %j_recovery_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %j_recovery_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ocfs2_journal, ptr %call7.i.i, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @ocfs2_journal_init.__key.15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry19 = getelementptr inbounds %struct.ocfs2_journal, ptr %call7.i.i, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry19, ptr %entry19, align 8
  %prev.i172 = getelementptr inbounds %struct.ocfs2_journal, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i172 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry19, ptr %prev.i172, align 4
  %func = getelementptr inbounds %struct.ocfs2_journal, ptr %call7.i.i, i32 0, i32 11, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ocfs2_complete_recovery, ptr %func, align 8
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %call7.i.i, align 8
  %slot_num = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 32
  %14 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slot_num, align 8
  %call23 = tail call ptr @ocfs2_get_system_file_inode(ptr noundef %osb, i32 noundef 10, i32 noundef %15) #12
  %cmp = icmp eq ptr %call23, null
  br i1 %cmp, label %do.body34, label %if.end43

do.body34:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m35) #12
  %16 = ptrtoint ptr %_m35 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1152921504606846976, ptr %_m35, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m35, ptr noundef nonnull @__func__.ocfs2_journal_init, i32 noundef 847, ptr noundef nonnull @.str.1, i64 noundef -13) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m35) #12
  br label %if.end113

if.end43:                                         ; preds = %if.end3
  %call44 = tail call zeroext i1 @is_bad_inode(ptr noundef nonnull %call23) #12
  br i1 %call44, label %do.body46, label %if.end54

do.body46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m47) #12
  %17 = ptrtoint ptr %_m47 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1152921504606846976, ptr %_m47, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m47, ptr noundef nonnull @__func__.ocfs2_journal_init, i32 noundef 851, ptr noundef nonnull @.str.17) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m47) #12
  call void @iput(ptr noundef nonnull %call23) #12
  br label %if.end113

if.end54:                                         ; preds = %if.end43
  %ip_flags = getelementptr i8, ptr %call23, i32 -76
  %18 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ip_flags, align 4
  %or = or i32 %19, 2
  store i32 %or, ptr %ip_flags, align 4
  %ip_open_count = getelementptr i8, ptr %call23, i32 -188
  %20 = ptrtoint ptr %ip_open_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ip_open_count, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %ip_open_count, align 4
  %call57 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %call23, ptr noundef nonnull %bh, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.end73

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call57)
  %cmp61.not = icmp eq i32 %call57, -512
  br i1 %cmp61.not, label %if.then60.if.end113_crit_edge, label %do.body64

if.then60.if.end113_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

do.body64:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m65) #12
  %22 = ptrtoint ptr %_m65 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1152921504606846976, ptr %_m65, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m65, ptr noundef nonnull @__func__.ocfs2_journal_init, i32 noundef 867, ptr noundef nonnull @.str.18) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m65) #12
  br label %if.end113

if.end73:                                         ; preds = %if.end54
  %23 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_data, align 4
  %call74 = call fastcc i64 @i_size_read(ptr noundef nonnull %call23)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194304, i64 %call74)
  %cmp75 = icmp slt i64 %call74, 4194304
  br i1 %cmp75, label %do.body78, label %if.end87

do.body78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m79) #12
  %27 = ptrtoint ptr %_m79 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 1152921504606846976, ptr %_m79, align 8
  %call83 = call fastcc i64 @i_size_read(ptr noundef nonnull %call23)
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m79, ptr noundef nonnull @__func__.ocfs2_journal_init, i32 noundef 876, ptr noundef nonnull @.str.19, i64 noundef %call83) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m79) #12
  br label %if.then112

if.end87:                                         ; preds = %if.end73
  %call88 = call fastcc i64 @i_size_read(ptr noundef nonnull %call23)
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call23, i32 0, i32 22
  %28 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_blocks, align 8
  %ip_clusters = getelementptr i8, ptr %call23, i32 -176
  %30 = ptrtoint ptr %ip_clusters to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ip_clusters, align 8
  call fastcc void @trace_ocfs2_journal_init(i64 noundef %call88, i64 noundef %29, i32 noundef %31)
  %call90 = call ptr @jbd2_journal_init_inode(ptr noundef nonnull %call23) #12
  %cmp91 = icmp eq ptr %call90, null
  br i1 %cmp91, label %do.body94, label %done

do.body94:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m95) #12
  %32 = ptrtoint ptr %_m95 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1152921504606846976, ptr %_m95, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m95, ptr noundef nonnull @__func__.ocfs2_journal_init, i32 noundef 888, ptr noundef nonnull @.str.20) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m95) #12
  br label %if.then112

done:                                             ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  %j_total_len = getelementptr inbounds %struct.journal_s, ptr %call90, i32 0, i32 37
  %33 = ptrtoint ptr %j_total_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %j_total_len, align 4
  call fastcc void @trace_ocfs2_journal_init_maxlen(i32 noundef %34)
  %id1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %26, i32 0, i32 34
  %35 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id1, align 8
  %37 = lshr i32 %36, 24
  %and103 = and i32 %37, 1
  %38 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and103, ptr %dirty, align 4
  %j_journal104 = getelementptr inbounds %struct.ocfs2_journal, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %j_journal104 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call90, ptr %j_journal104, align 4
  %j_submit_inode_data_buffers = getelementptr inbounds %struct.journal_s, ptr %call90, i32 0, i32 63
  %40 = ptrtoint ptr %j_submit_inode_data_buffers to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @jbd2_journal_submit_inode_data_buffers, ptr %j_submit_inode_data_buffers, align 4
  %41 = load ptr, ptr %j_journal104, align 4
  %j_finish_inode_data_buffers = getelementptr inbounds %struct.journal_s, ptr %41, i32 0, i32 64
  %42 = ptrtoint ptr %j_finish_inode_data_buffers to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @jbd2_journal_finish_inode_data_buffers, ptr %j_finish_inode_data_buffers, align 8
  %j_inode = getelementptr inbounds %struct.ocfs2_journal, ptr %call7.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %j_inode to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call23, ptr %j_inode, align 8
  %44 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bh, align 4
  %j_bh = getelementptr inbounds %struct.ocfs2_journal, ptr %call7.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %j_bh to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %j_bh, align 8
  %47 = ptrtoint ptr %journal4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %journal4, align 4
  %j_journal.i = getelementptr inbounds %struct.ocfs2_journal, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %j_journal.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %j_journal.i, align 4
  %osb_commit_interval.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 46
  %51 = ptrtoint ptr %osb_commit_interval.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %osb_commit_interval.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i = icmp eq i32 %52, 0
  %spec.select.i = select i1 %tobool.not.i, i32 500, i32 %52
  %j_state_lock.i = getelementptr inbounds %struct.journal_s, ptr %50, i32 0, i32 7
  call void @_raw_write_lock(ptr noundef %j_state_lock.i) #12
  %j_commit_interval.i = getelementptr inbounds %struct.journal_s, ptr %50, i32 0, i32 49
  %53 = ptrtoint ptr %j_commit_interval.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %spec.select.i, ptr %j_commit_interval.i, align 8
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %54 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_mount_opt.i, align 8
  %56 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %50, align 8
  %and6.i = and i32 %57, -33
  %and.i = shl i32 %55, 4
  %58 = and i32 %and.i, 32
  %storemerge.i = or i32 %and6.i, %58
  store i32 %storemerge.i, ptr %50, align 8
  call void @_raw_write_unlock(ptr noundef %j_state_lock.i) #12
  %59 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %call7.i.i, align 8
  br label %if.end119

if.then112:                                       ; preds = %do.body94, %do.body78
  call void @ocfs2_inode_unlock(ptr noundef nonnull %call23, i32 noundef 1) #12
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %do.body64, %if.then60.if.end113_crit_edge, %do.body46, %do.body34, %do.body
  %status.0.ph189 = phi i32 [ -22, %if.then112 ], [ -512, %if.then60.if.end113_crit_edge ], [ %call57, %do.body64 ], [ -13, %do.body46 ], [ -13, %do.body34 ], [ -12, %do.body ]
  %inode.0183 = phi ptr [ %call23, %if.then112 ], [ %call23, %if.then60.if.end113_crit_edge ], [ %call23, %do.body64 ], [ null, %do.body46 ], [ null, %do.body34 ], [ null, %do.body ]
  %60 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bh, align 4
  %tobool.not.i175 = icmp eq ptr %61, null
  br i1 %tobool.not.i175, label %if.end113.brelse.exit_crit_edge, label %if.then.i

if.end113.brelse.exit_crit_edge:                  ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %61) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end113.brelse.exit_crit_edge
  %tobool114.not = icmp eq ptr %inode.0183, null
  br i1 %tobool114.not, label %brelse.exit.if.end119_crit_edge, label %if.then115

brelse.exit.if.end119_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.then115:                                       ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ip_open_count117 = getelementptr i8, ptr %inode.0183, i32 -188
  %62 = ptrtoint ptr %ip_open_count117 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ip_open_count117, align 4
  %dec = add i32 %63, -1
  store i32 %dec, ptr %ip_open_count117, align 4
  call void @iput(ptr noundef nonnull %inode.0183) #12
  br label %if.end119

if.end119:                                        ; preds = %if.then115, %brelse.exit.if.end119_crit_edge, %done
  %status.0184 = phi i32 [ %status.0.ph189, %brelse.exit.if.end119_crit_edge ], [ %status.0.ph189, %if.then115 ], [ 0, %done ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  ret i32 %status.0184
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_complete_recovery(ptr noundef %work) #0 align 64 {
entry:
  %priv.i.i = alloca %struct.ocfs2_orphan_filldir_priv, align 8
  %_m.i.i = alloca i64, align 8
  %_m37.i.i = alloca i64, align 8
  %_m69.i.i = alloca i64, align 8
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  %di_bh.i = alloca ptr, align 4
  %_m.i = alloca i64, align 8
  %_m40.i = alloca i64, align 8
  %_m71.i = alloca i64, align 8
  %_m110.i = alloca i64, align 8
  %_m142.i = alloca i64, align 8
  %tmp_la_list = alloca %struct.list_head, align 4
  %_m = alloca i64, align 8
  %_m61 = alloca i64, align 8
  %_m95 = alloca i64, align 8
  %_m130 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %j_osb = getelementptr i8, ptr %work, i32 -216
  %0 = ptrtoint ptr %j_osb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %j_osb, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_la_list) #12
  %2 = getelementptr inbounds %struct.list_head, ptr %tmp_la_list, i32 0, i32 1
  %3 = ptrtoint ptr %tmp_la_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tmp_la_list, ptr %tmp_la_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tmp_la_list, ptr %2, align 4
  %j_inode = getelementptr i8, ptr %work, i32 -220
  %5 = ptrtoint ptr %j_inode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %j_inode, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 -1608
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr.i, align 8
  call fastcc void @trace_ocfs2_complete_recovery(i64 noundef %8)
  %j_lock = getelementptr i8, ptr %work, i32 -204
  call void @_raw_spin_lock(ptr noundef %j_lock) #12
  %j_la_cleanups = getelementptr i8, ptr %work, i32 -8
  %9 = ptrtoint ptr %j_la_cleanups to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %j_la_cleanups, align 4
  %cmp.i.not.i = icmp eq ptr %10, %j_la_cleanups
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %tmp_la_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tmp_la_list, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 -4
  %13 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tmp_la_list, ptr %prev3.i.i, align 4
  store ptr %10, ptr %tmp_la_list, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %12, ptr %14, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev6.i.i, align 4
  %18 = ptrtoint ptr %j_la_cleanups to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %j_la_cleanups, ptr %j_la_cleanups, align 4
  store ptr %j_la_cleanups, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %j_lock) #12
  %19 = ptrtoint ptr %tmp_la_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tmp_la_list, align 4
  %cmp.not214 = icmp eq ptr %20, %tmp_la_list
  br i1 %cmp.not214, label %list_splice_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit
  %osb_lock.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 21
  %osb_recovering_orphan_dirs.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 90
  %osb_orphan_wipes.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 91
  %osb_wipe_event.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 92
  %pos.i.i = getelementptr inbounds %struct.dir_context, ptr %priv.i.i, i32 0, i32 1
  %head1.i.i = getelementptr inbounds %struct.ocfs2_orphan_filldir_priv, ptr %priv.i.i, i32 0, i32 1
  %osb2.i.i = getelementptr inbounds %struct.ocfs2_orphan_filldir_priv, ptr %priv.i.i, i32 0, i32 2
  %orphan_reco_type3.i.i = getelementptr inbounds %struct.ocfs2_orphan_filldir_priv, ptr %priv.i.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end141.for.body_crit_edge, %for.body.lr.ph
  %item.0215 = phi ptr [ %20, %for.body.lr.ph ], [ %n.0217, %if.end141.for.body_crit_edge ]
  %21 = ptrtoint ptr %item.0215 to i32
  call void @__asan_load4_noabort(i32 %21)
  %n.0217 = load ptr, ptr %item.0215, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %item.0215) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %item.0215, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %item.0215 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %item.0215, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %28 = ptrtoint ptr %item.0215 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %item.0215, ptr %item.0215, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %item.0215, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %item.0215, ptr %prev.i3.i, align 4
  %call.i = call fastcc i32 @__ocfs2_wait_on_mount(ptr noundef %1, i32 noundef 1) #12
  %lri_la_dinode = getelementptr inbounds %struct.ocfs2_la_recovery_item, ptr %item.0215, i32 0, i32 2
  %30 = ptrtoint ptr %lri_la_dinode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lri_la_dinode, align 4
  %lri_tl_dinode = getelementptr inbounds %struct.ocfs2_la_recovery_item, ptr %item.0215, i32 0, i32 3
  %32 = ptrtoint ptr %lri_tl_dinode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lri_tl_dinode, align 4
  %lri_qrec = getelementptr inbounds %struct.ocfs2_la_recovery_item, ptr %item.0215, i32 0, i32 4
  %34 = ptrtoint ptr %lri_qrec to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lri_qrec, align 4
  %lri_orphan_reco_type = getelementptr inbounds %struct.ocfs2_la_recovery_item, ptr %item.0215, i32 0, i32 5
  %36 = ptrtoint ptr %lri_orphan_reco_type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lri_orphan_reco_type, align 4
  %lri_slot = getelementptr inbounds %struct.ocfs2_la_recovery_item, ptr %item.0215, i32 0, i32 1
  %38 = ptrtoint ptr %lri_slot to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lri_slot, align 4
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %list_del_init.exit.cond.end_crit_edge, label %cond.true

list_del_init.exit.cond.end_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %i_blkno = getelementptr inbounds %struct.ocfs2_dinode, ptr %31, i32 0, i32 17
  %40 = ptrtoint ptr %i_blkno to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_blkno, align 8
  %42 = call i64 @llvm.bswap.i64(i64 %41)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %list_del_init.exit.cond.end_crit_edge
  %cond = phi i64 [ %42, %cond.true ], [ 0, %list_del_init.exit.cond.end_crit_edge ]
  %tobool13.not = icmp eq ptr %33, null
  br i1 %tobool13.not, label %cond.end.cond.end17_crit_edge, label %cond.true14

cond.end.cond.end17_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end17

cond.true14:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %i_blkno15 = getelementptr inbounds %struct.ocfs2_dinode, ptr %33, i32 0, i32 17
  %43 = ptrtoint ptr %i_blkno15 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %i_blkno15, align 8
  %45 = call i64 @llvm.bswap.i64(i64 %44)
  br label %cond.end17

cond.end17:                                       ; preds = %cond.true14, %cond.end.cond.end17_crit_edge
  %cond18 = phi i64 [ %45, %cond.true14 ], [ 0, %cond.end.cond.end17_crit_edge ]
  call fastcc void @trace_ocfs2_complete_recovery_slot(i32 noundef %39, i64 noundef %cond, i64 noundef %cond18, ptr noundef %35)
  br i1 %tobool.not, label %cond.end17.if.end37_crit_edge, label %if.then

cond.end17.if.end37_crit_edge:                    ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then:                                          ; preds = %cond.end17
  %call20 = call i32 @ocfs2_complete_local_alloc_recovery(ptr noundef %1, ptr noundef nonnull %31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.then.if.end36_crit_edge

if.then.if.end36_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then22:                                        ; preds = %if.then
  %46 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call20, label %do.body [
    i32 -512, label %if.then22.if.end36_crit_edge
    i32 -4, label %if.then22.if.end36_crit_edge218
    i32 -28, label %if.then22.if.end36_crit_edge219
    i32 -122, label %if.then22.if.end36_crit_edge220
  ]

if.then22.if.end36_crit_edge220:                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then22.if.end36_crit_edge219:                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then22.if.end36_crit_edge218:                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then22.if.end36_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.body:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %47 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call20 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_complete_recovery, i32 noundef 1273, ptr noundef nonnull @.str.1, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %if.end36

if.end36:                                         ; preds = %do.body, %if.then22.if.end36_crit_edge, %if.then22.if.end36_crit_edge218, %if.then22.if.end36_crit_edge219, %if.then22.if.end36_crit_edge220, %if.then.if.end36_crit_edge
  call void @kfree(ptr noundef nonnull %31) #12
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %cond.end17.if.end37_crit_edge
  br i1 %tobool13.not, label %if.end37.if.end72_crit_edge, label %if.then39

if.end37.if.end72_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then39:                                        ; preds = %if.end37
  %call40 = call i32 @ocfs2_complete_truncate_log_recovery(ptr noundef %1, ptr noundef nonnull %33) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.then39.if.end71_crit_edge

if.then39.if.end71_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then43:                                        ; preds = %if.then39
  %48 = zext i32 %call40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %call40, label %do.body60 [
    i32 -512, label %if.then43.if.end71_crit_edge
    i32 -4, label %if.then43.if.end71_crit_edge221
    i32 -28, label %if.then43.if.end71_crit_edge222
    i32 -122, label %if.then43.if.end71_crit_edge223
  ]

if.then43.if.end71_crit_edge223:                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then43.if.end71_crit_edge222:                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then43.if.end71_crit_edge221:                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then43.if.end71_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

do.body60:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m61) #12
  %49 = ptrtoint ptr %_m61 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 1152921504606846976, ptr %_m61, align 8
  %conv65 = sext i32 %call40 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m61, ptr noundef nonnull @__func__.ocfs2_complete_recovery, i32 noundef 1282, ptr noundef nonnull @.str.1, i64 noundef %conv65) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m61) #12
  br label %if.end71

if.end71:                                         ; preds = %do.body60, %if.then43.if.end71_crit_edge, %if.then43.if.end71_crit_edge221, %if.then43.if.end71_crit_edge222, %if.then43.if.end71_crit_edge223, %if.then39.if.end71_crit_edge
  call void @kfree(ptr noundef nonnull %33) #12
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end37.if.end72_crit_edge
  %50 = ptrtoint ptr %lri_slot to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lri_slot, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %di_bh.i) #12
  %52 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %di_bh.i, align 4
  call fastcc void @trace_ocfs2_recover_orphans(i32 noundef %51) #12
  call void @_raw_spin_lock(ptr noundef %osb_lock.i.i) #12
  call void @ocfs2_node_map_set_bit(ptr noundef %1, ptr noundef %osb_recovering_orphan_dirs.i.i, i32 noundef %51) #12
  %53 = ptrtoint ptr %osb_orphan_wipes.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %osb_orphan_wipes.i.i, align 4
  %arrayidx48.i.i = getelementptr i32, ptr %54, i32 %51
  %55 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx48.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not49.i.i = icmp eq i32 %56, 0
  br i1 %tobool.not49.i.i, label %if.end72.ocfs2_mark_recovering_orphan_dir.exit.i_crit_edge, label %if.end72.while.body.i.i_crit_edge

if.end72.while.body.i.i_crit_edge:                ; preds = %if.end72
  br label %while.body.i.i

if.end72.ocfs2_mark_recovering_orphan_dir.exit.i_crit_edge: ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_mark_recovering_orphan_dir.exit.i

while.body.i.i:                                   ; preds = %if.end15.i.i.while.body.i.i_crit_edge, %if.end72.while.body.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i.i) #12
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 2162) #12
  call void @_raw_spin_lock(ptr noundef %osb_lock.i.i) #12
  %57 = ptrtoint ptr %osb_orphan_wipes.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %osb_orphan_wipes.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %58, i32 %51
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.not.i.i = icmp eq i32 %60, 0
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i.i) #12
  br i1 %tobool.not.i.not.i.i, label %while.body.i.i.if.end15.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end15.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #12
  %61 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #12
  %call744.i.i = call i32 @prepare_to_wait_event(ptr noundef %osb_wipe_event.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 1) #12
  call void @_raw_spin_lock(ptr noundef %osb_lock.i.i) #12
  %62 = ptrtoint ptr %osb_orphan_wipes.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %osb_orphan_wipes.i.i, align 4
  %arrayidx.i3545.i.i = getelementptr i32, ptr %63, i32 %51
  %64 = ptrtoint ptr %arrayidx.i3545.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i3545.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i36.not46.i.i = icmp eq i32 %65, 0
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i.i) #12
  br i1 %tobool.not.i36.not46.i.i, label %if.then.i.i.for.end.i.i_crit_edge, label %if.then.i.i.if.end.i.i211_crit_edge

if.then.i.i.if.end.i.i211_crit_edge:              ; preds = %if.then.i.i
  br label %if.end.i.i211

if.then.i.i.for.end.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

if.end.i.i211:                                    ; preds = %cleanup.i.i.if.end.i.i211_crit_edge, %if.then.i.i.if.end.i.i211_crit_edge
  %call747.i.i = phi i32 [ %call7.i.i, %cleanup.i.i.if.end.i.i211_crit_edge ], [ %call744.i.i, %if.then.i.i.if.end.i.i211_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call747.i.i)
  %tobool11.not.i.i = icmp eq i32 %call747.i.i, 0
  br i1 %tobool11.not.i.i, label %cleanup.i.i, label %if.end.i.i211.__out.i.i_crit_edge

if.end.i.i211.__out.i.i_crit_edge:                ; preds = %if.end.i.i211
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i211
  call void @schedule() #12
  %call7.i.i = call i32 @prepare_to_wait_event(ptr noundef %osb_wipe_event.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 1) #12
  call void @_raw_spin_lock(ptr noundef %osb_lock.i.i) #12
  %66 = ptrtoint ptr %osb_orphan_wipes.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %osb_orphan_wipes.i.i, align 4
  %arrayidx.i35.i.i = getelementptr i32, ptr %67, i32 %51
  %68 = ptrtoint ptr %arrayidx.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i35.i.i, align 4
  %tobool.not.i36.not.i.i = icmp eq i32 %69, 0
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i.i) #12
  br i1 %tobool.not.i36.not.i.i, label %cleanup.i.i.for.end.i.i_crit_edge, label %cleanup.i.i.if.end.i.i211_crit_edge

cleanup.i.i.if.end.i.i211_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i211

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %if.then.i.i.for.end.i.i_crit_edge
  call void @finish_wait(ptr noundef %osb_wipe_event.i.i, ptr noundef nonnull %__wq_entry.i.i) #12
  br label %__out.i.i

__out.i.i:                                        ; preds = %for.end.i.i, %if.end.i.i211.__out.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #12
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %__out.i.i, %while.body.i.i.if.end15.i.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %osb_lock.i.i) #12
  %70 = ptrtoint ptr %osb_orphan_wipes.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %osb_orphan_wipes.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %71, i32 %51
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i.i, label %if.end15.i.i.ocfs2_mark_recovering_orphan_dir.exit.i_crit_edge, label %if.end15.i.i.while.body.i.i_crit_edge

if.end15.i.i.while.body.i.i_crit_edge:            ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

if.end15.i.i.ocfs2_mark_recovering_orphan_dir.exit.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_mark_recovering_orphan_dir.exit.i

ocfs2_mark_recovering_orphan_dir.exit.i:          ; preds = %if.end15.i.i.ocfs2_mark_recovering_orphan_dir.exit.i_crit_edge, %if.end72.ocfs2_mark_recovering_orphan_dir.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i.i) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %priv.i.i) #12
  %74 = call ptr @memset(ptr %priv.i.i, i32 255, i32 32)
  %75 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @ocfs2_orphan_filldir, ptr %priv.i.i, align 8
  %76 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 0, ptr %pos.i.i, align 8
  %77 = ptrtoint ptr %head1.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %head1.i.i, align 8
  %78 = ptrtoint ptr %osb2.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %1, ptr %osb2.i.i, align 4
  %79 = ptrtoint ptr %orphan_reco_type3.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %37, ptr %orphan_reco_type3.i.i, align 8
  %call.i.i212 = call ptr @ocfs2_get_system_file_inode(ptr noundef %1, i32 noundef 7, i32 noundef %51) #12
  %tobool.not.i213.i = icmp eq ptr %call.i.i212, null
  br i1 %tobool.not.i213.i, label %ocfs2_queue_orphans.exit.thread.i, label %if.end15.i214.i

ocfs2_queue_orphans.exit.thread.i:                ; preds = %ocfs2_mark_recovering_orphan_dir.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #12
  %80 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 1152921504606846976, ptr %_m.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.ocfs2_queue_orphans, i32 noundef 2111, ptr noundef nonnull @.str.1, i64 noundef -2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %priv.i.i) #12
  call void @ocfs2_node_map_clear_bit(ptr noundef %1, ptr noundef %osb_recovering_orphan_dirs.i.i, i32 noundef %51) #12
  br label %do.body.i

if.end15.i214.i:                                  ; preds = %ocfs2_mark_recovering_orphan_dir.exit.i
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %call.i.i212, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i.i) #12
  %call16.i.i = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %call.i.i212, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp17.i.i = icmp slt i32 %call16.i.i, 0
  br i1 %cmp17.i.i, label %if.then19.i.i, label %if.end47.i.i

if.then19.i.i:                                    ; preds = %if.end15.i214.i
  %81 = zext i32 %call16.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %call16.i.i, label %do.body36.i.i [
    i32 -512, label %if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge
    i32 -4, label %if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge224
    i32 -28, label %if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge225
    i32 -122, label %if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge226
  ]

if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge226: ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_queue_orphans.exit.i

if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge225: ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_queue_orphans.exit.i

if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge224: ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_queue_orphans.exit.i

if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge: ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_queue_orphans.exit.i

do.body36.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m37.i.i) #12
  %82 = ptrtoint ptr %_m37.i.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 1152921504606846976, ptr %_m37.i.i, align 8
  %conv41.i.i = sext i32 %call16.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m37.i.i, ptr noundef nonnull @__func__.ocfs2_queue_orphans, i32 noundef 2118, ptr noundef nonnull @.str.1, i64 noundef %conv41.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m37.i.i) #12
  br label %ocfs2_queue_orphans.exit.i

if.end47.i.i:                                     ; preds = %if.end15.i214.i
  %call49.i.i = call i32 @ocfs2_dir_foreach(ptr noundef nonnull %call.i.i212, ptr noundef nonnull %priv.i.i) #12
  %83 = zext i32 %call49.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call49.i.i, label %do.body68.i.i [
    i32 0, label %if.end79.i.i
    i32 -512, label %if.end47.i.i.out_cluster.i.i_crit_edge
    i32 -4, label %if.end47.i.i.out_cluster.i.i_crit_edge227
    i32 524289, label %if.end47.i.i.out_cluster.i.i_crit_edge228
    i32 -28, label %if.end47.i.i.out_cluster.i.i_crit_edge229
    i32 -122, label %if.end47.i.i.out_cluster.i.i_crit_edge230
  ]

if.end47.i.i.out_cluster.i.i_crit_edge230:        ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_cluster.i.i

if.end47.i.i.out_cluster.i.i_crit_edge229:        ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_cluster.i.i

if.end47.i.i.out_cluster.i.i_crit_edge228:        ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_cluster.i.i

if.end47.i.i.out_cluster.i.i_crit_edge227:        ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_cluster.i.i

if.end47.i.i.out_cluster.i.i_crit_edge:           ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_cluster.i.i

do.body68.i.i:                                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m69.i.i) #12
  %84 = ptrtoint ptr %_m69.i.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 1152921504606846976, ptr %_m69.i.i, align 8
  %conv73.i.i = sext i32 %call49.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m69.i.i, ptr noundef nonnull @__func__.ocfs2_queue_orphans, i32 noundef 2124, ptr noundef nonnull @.str.1, i64 noundef %conv73.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m69.i.i) #12
  br label %out_cluster.i.i

if.end79.i.i:                                     ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %head1.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %head1.i.i, align 8
  br label %out_cluster.i.i

out_cluster.i.i:                                  ; preds = %if.end79.i.i, %do.body68.i.i, %if.end47.i.i.out_cluster.i.i_crit_edge, %if.end47.i.i.out_cluster.i.i_crit_edge227, %if.end47.i.i.out_cluster.i.i_crit_edge228, %if.end47.i.i.out_cluster.i.i_crit_edge229, %if.end47.i.i.out_cluster.i.i_crit_edge230
  %inode.0.i = phi ptr [ null, %do.body68.i.i ], [ null, %if.end47.i.i.out_cluster.i.i_crit_edge ], [ null, %if.end47.i.i.out_cluster.i.i_crit_edge227 ], [ null, %if.end47.i.i.out_cluster.i.i_crit_edge228 ], [ null, %if.end47.i.i.out_cluster.i.i_crit_edge229 ], [ null, %if.end47.i.i.out_cluster.i.i_crit_edge230 ], [ %86, %if.end79.i.i ]
  call void @ocfs2_inode_unlock(ptr noundef nonnull %call.i.i212, i32 noundef 0) #12
  br label %ocfs2_queue_orphans.exit.i

ocfs2_queue_orphans.exit.i:                       ; preds = %out_cluster.i.i, %do.body36.i.i, %if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge, %if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge224, %if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge225, %if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge226
  %inode.1.i = phi ptr [ null, %do.body36.i.i ], [ null, %if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge ], [ null, %if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge224 ], [ null, %if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge225 ], [ null, %if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge226 ], [ %inode.0.i, %out_cluster.i.i ]
  %status.0.i.i = phi i32 [ %call16.i.i, %do.body36.i.i ], [ %call16.i.i, %if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge ], [ %call16.i.i, %if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge224 ], [ %call16.i.i, %if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge225 ], [ %call16.i.i, %if.then19.i.i.ocfs2_queue_orphans.exit.i_crit_edge226 ], [ %call49.i.i, %out_cluster.i.i ]
  call void @up_write(ptr noundef %i_rwsem.i.i.i) #12
  call void @iput(ptr noundef nonnull %call.i.i212) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %priv.i.i) #12
  call void @ocfs2_node_map_clear_bit(ptr noundef %1, ptr noundef %osb_recovering_orphan_dirs.i.i, i32 noundef %51) #12
  %87 = zext i32 %status.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %status.0.i.i, label %ocfs2_queue_orphans.exit.i.do.body.i_crit_edge [
    i32 0, label %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge
    i32 -512, label %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge231
    i32 -4, label %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge232
    i32 524289, label %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge233
    i32 -28, label %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge234
    i32 -122, label %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge235
  ]

ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge235: ; preds = %ocfs2_queue_orphans.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge234: ; preds = %ocfs2_queue_orphans.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge233: ; preds = %ocfs2_queue_orphans.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge232: ; preds = %ocfs2_queue_orphans.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge231: ; preds = %ocfs2_queue_orphans.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge:  ; preds = %ocfs2_queue_orphans.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

ocfs2_queue_orphans.exit.i.do.body.i_crit_edge:   ; preds = %ocfs2_queue_orphans.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %ocfs2_queue_orphans.exit.i.do.body.i_crit_edge, %ocfs2_queue_orphans.exit.thread.i
  %retval.0.i235.i = phi i32 [ -2, %ocfs2_queue_orphans.exit.thread.i ], [ %status.0.i.i, %ocfs2_queue_orphans.exit.i.do.body.i_crit_edge ]
  %inode.2234.i = phi ptr [ null, %ocfs2_queue_orphans.exit.thread.i ], [ %inode.1.i, %ocfs2_queue_orphans.exit.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #12
  %88 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv.i = sext i32 %retval.0.i235.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_recover_orphans, i32 noundef 2212, ptr noundef nonnull @.str.1, i64 noundef %conv.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #12
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.body.i, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge231, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge232, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge233, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge234, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge235
  %retval.0.i236.i = phi i32 [ %retval.0.i235.i, %do.body.i ], [ %status.0.i.i, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge ], [ %status.0.i.i, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge231 ], [ %status.0.i.i, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge232 ], [ %status.0.i.i, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge233 ], [ %status.0.i.i, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge234 ], [ %status.0.i.i, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge235 ]
  %inode.2233.i = phi ptr [ %inode.2234.i, %do.body.i ], [ %inode.1.i, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge ], [ %inode.1.i, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge231 ], [ %inode.1.i, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge232 ], [ %inode.1.i, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge233 ], [ %inode.1.i, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge234 ], [ %inode.1.i, %ocfs2_queue_orphans.exit.i.if.end12.i_crit_edge235 ]
  %tobool13.not237.i = icmp eq ptr %inode.2233.i, null
  br i1 %tobool13.not237.i, label %if.end12.i.ocfs2_recover_orphans.exit_crit_edge, label %if.end12.i.while.body.i_crit_edge

if.end12.i.while.body.i_crit_edge:                ; preds = %if.end12.i
  br label %while.body.i

if.end12.i.ocfs2_recover_orphans.exit_crit_edge:  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_recover_orphans.exit

while.body.i:                                     ; preds = %if.end158.i.while.body.i_crit_edge, %if.end12.i.while.body.i_crit_edge
  %ret.0243.i = phi i32 [ %ret.4.i, %if.end158.i.while.body.i_crit_edge ], [ %retval.0.i236.i, %if.end12.i.while.body.i_crit_edge ]
  %inode.3238.i = phi ptr [ %92, %if.end158.i.while.body.i_crit_edge ], [ %inode.2233.i, %if.end12.i.while.body.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %inode.3238.i, i32 -1608
  %89 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %add.ptr.i.i, align 8
  call fastcc void @trace_ocfs2_recover_orphans_iput(i64 noundef %90) #12
  %ip_next_orphan.i = getelementptr i8, ptr %inode.3238.i, i32 -60
  %91 = ptrtoint ptr %ip_next_orphan.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ip_next_orphan.i, align 4
  store ptr null, ptr %ip_next_orphan.i, align 4
  %ip_flags.i = getelementptr i8, ptr %inode.3238.i, i32 -76
  %93 = ptrtoint ptr %ip_flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ip_flags.i, align 4
  %and16.i = and i32 %94, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.else.i, label %if.then18.i

if.then18.i:                                      ; preds = %while.body.i
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %inode.3238.i, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i) #12
  %call19.i = call i32 @ocfs2_rw_lock(ptr noundef nonnull %inode.3238.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.then22.i, label %if.end50.i

if.then22.i:                                      ; preds = %if.then18.i
  %95 = zext i32 %call19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %call19.i, label %do.body39.i [
    i32 -512, label %if.then22.i.unlock_mutex.i_crit_edge
    i32 -4, label %if.then22.i.unlock_mutex.i_crit_edge236
    i32 -28, label %if.then22.i.unlock_mutex.i_crit_edge237
    i32 -122, label %if.then22.i.unlock_mutex.i_crit_edge238
  ]

if.then22.i.unlock_mutex.i_crit_edge238:          ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_mutex.i

if.then22.i.unlock_mutex.i_crit_edge237:          ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_mutex.i

if.then22.i.unlock_mutex.i_crit_edge236:          ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_mutex.i

if.then22.i.unlock_mutex.i_crit_edge:             ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_mutex.i

do.body39.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m40.i) #12
  %96 = ptrtoint ptr %_m40.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 1152921504606846976, ptr %_m40.i, align 8
  %conv44.i = sext i32 %call19.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m40.i, ptr noundef nonnull @__func__.ocfs2_recover_orphans, i32 noundef 2226, ptr noundef nonnull @.str.1, i64 noundef %conv44.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m40.i) #12
  br label %unlock_mutex.i

if.end50.i:                                       ; preds = %if.then18.i
  %call51.i = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %inode.3238.i, ptr noundef nonnull %di_bh.i, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %97 = zext i32 %call51.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call51.i, label %do.body70.i [
    i32 0, label %if.end81.i
    i32 -512, label %if.end50.i.unlock_rw.i_crit_edge
    i32 -4, label %if.end50.i.unlock_rw.i_crit_edge239
    i32 524289, label %if.end50.i.unlock_rw.i_crit_edge240
    i32 -28, label %if.end50.i.unlock_rw.i_crit_edge241
    i32 -122, label %if.end50.i.unlock_rw.i_crit_edge242
  ]

if.end50.i.unlock_rw.i_crit_edge242:              ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_rw.i

if.end50.i.unlock_rw.i_crit_edge241:              ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_rw.i

if.end50.i.unlock_rw.i_crit_edge240:              ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_rw.i

if.end50.i.unlock_rw.i_crit_edge239:              ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_rw.i

if.end50.i.unlock_rw.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_rw.i

do.body70.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m71.i) #12
  %98 = ptrtoint ptr %_m71.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 1152921504606846976, ptr %_m71.i, align 8
  %conv75.i = sext i32 %call51.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m71.i, ptr noundef nonnull @__func__.ocfs2_recover_orphans, i32 noundef 2235, ptr noundef nonnull @.str.1, i64 noundef %conv75.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m71.i) #12
  br label %unlock_rw.i

if.end81.i:                                       ; preds = %if.end50.i
  %99 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %di_bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %b_data.i, align 4
  %i_flags.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %102, i32 0, i32 12
  %103 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %i_flags.i, align 4
  %and82.i = and i32 %104, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  br i1 %tobool83.not.i, label %if.end81.i.unlock_inode.i_crit_edge, label %if.then84.i

if.end81.i.unlock_inode.i_crit_edge:              ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_inode.i

if.then84.i:                                      ; preds = %if.end81.i
  %call85.i = call fastcc i64 @i_size_read(ptr noundef nonnull %inode.3238.i) #12
  %call86.i = call i32 @ocfs2_truncate_file(ptr noundef nonnull %inode.3238.i, ptr noundef %100, i64 noundef %call85.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %cmp87.i = icmp slt i32 %call86.i, 0
  br i1 %cmp87.i, label %if.then89.i, label %if.end121.i

if.then89.i:                                      ; preds = %if.then84.i
  %105 = zext i32 %call86.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %call86.i, label %do.body109.i [
    i32 -28, label %if.then89.i.unlock_inode.i_crit_edge
    i32 -512, label %if.then89.i.unlock_inode.i_crit_edge243
    i32 -4, label %if.then89.i.unlock_inode.i_crit_edge244
    i32 -122, label %if.then89.i.unlock_inode.i_crit_edge245
  ]

if.then89.i.unlock_inode.i_crit_edge245:          ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_inode.i

if.then89.i.unlock_inode.i_crit_edge244:          ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_inode.i

if.then89.i.unlock_inode.i_crit_edge243:          ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_inode.i

if.then89.i.unlock_inode.i_crit_edge:             ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_inode.i

do.body109.i:                                     ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m110.i) #12
  %106 = ptrtoint ptr %_m110.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 1152921504606846976, ptr %_m110.i, align 8
  %conv114.i = sext i32 %call86.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m110.i, ptr noundef nonnull @__func__.ocfs2_recover_orphans, i32 noundef 2246, ptr noundef nonnull @.str.1, i64 noundef %conv114.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m110.i) #12
  br label %unlock_inode.i

if.end121.i:                                      ; preds = %if.then84.i
  %107 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %di_bh.i, align 4
  %call122.i = call i32 @ocfs2_del_inode_from_orphan(ptr noundef %1, ptr noundef nonnull %inode.3238.i, ptr noundef %108, i32 noundef 0, i64 noundef 0) #12
  %109 = zext i32 %call122.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call122.i, label %do.body141.i [
    i32 0, label %if.end121.i.unlock_inode.i_crit_edge
    i32 -512, label %if.end121.i.unlock_inode.i_crit_edge246
    i32 -4, label %if.end121.i.unlock_inode.i_crit_edge247
    i32 524289, label %if.end121.i.unlock_inode.i_crit_edge248
    i32 -28, label %if.end121.i.unlock_inode.i_crit_edge249
    i32 -122, label %if.end121.i.unlock_inode.i_crit_edge250
  ]

if.end121.i.unlock_inode.i_crit_edge250:          ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_inode.i

if.end121.i.unlock_inode.i_crit_edge249:          ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_inode.i

if.end121.i.unlock_inode.i_crit_edge248:          ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_inode.i

if.end121.i.unlock_inode.i_crit_edge247:          ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_inode.i

if.end121.i.unlock_inode.i_crit_edge246:          ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_inode.i

if.end121.i.unlock_inode.i_crit_edge:             ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_inode.i

do.body141.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m142.i) #12
  %110 = ptrtoint ptr %_m142.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 1152921504606846976, ptr %_m142.i, align 8
  %conv146.i = sext i32 %call122.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m142.i, ptr noundef nonnull @__func__.ocfs2_recover_orphans, i32 noundef 2253, ptr noundef nonnull @.str.1, i64 noundef %conv146.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m142.i) #12
  br label %unlock_inode.i

unlock_inode.i:                                   ; preds = %do.body141.i, %if.end121.i.unlock_inode.i_crit_edge, %if.end121.i.unlock_inode.i_crit_edge246, %if.end121.i.unlock_inode.i_crit_edge247, %if.end121.i.unlock_inode.i_crit_edge248, %if.end121.i.unlock_inode.i_crit_edge249, %if.end121.i.unlock_inode.i_crit_edge250, %do.body109.i, %if.then89.i.unlock_inode.i_crit_edge, %if.then89.i.unlock_inode.i_crit_edge243, %if.then89.i.unlock_inode.i_crit_edge244, %if.then89.i.unlock_inode.i_crit_edge245, %if.end81.i.unlock_inode.i_crit_edge
  %ret.1.i = phi i32 [ %call86.i, %if.then89.i.unlock_inode.i_crit_edge ], [ %call122.i, %if.end121.i.unlock_inode.i_crit_edge ], [ 0, %if.end81.i.unlock_inode.i_crit_edge ], [ %call86.i, %do.body109.i ], [ %call86.i, %if.then89.i.unlock_inode.i_crit_edge243 ], [ %call86.i, %if.then89.i.unlock_inode.i_crit_edge244 ], [ %call86.i, %if.then89.i.unlock_inode.i_crit_edge245 ], [ %call122.i, %do.body141.i ], [ %call122.i, %if.end121.i.unlock_inode.i_crit_edge246 ], [ %call122.i, %if.end121.i.unlock_inode.i_crit_edge247 ], [ %call122.i, %if.end121.i.unlock_inode.i_crit_edge248 ], [ %call122.i, %if.end121.i.unlock_inode.i_crit_edge249 ], [ %call122.i, %if.end121.i.unlock_inode.i_crit_edge250 ]
  call void @ocfs2_inode_unlock(ptr noundef nonnull %inode.3238.i, i32 noundef 1) #12
  %111 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %di_bh.i, align 4
  %tobool.not.i217.i = icmp eq ptr %112, null
  br i1 %tobool.not.i217.i, label %unlock_inode.i.brelse.exit.i_crit_edge, label %if.then.i218.i

unlock_inode.i.brelse.exit.i_crit_edge:           ; preds = %unlock_inode.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.i

if.then.i218.i:                                   ; preds = %unlock_inode.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %112) #12
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i218.i, %unlock_inode.i.brelse.exit.i_crit_edge
  %113 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %di_bh.i, align 4
  br label %unlock_rw.i

unlock_rw.i:                                      ; preds = %brelse.exit.i, %do.body70.i, %if.end50.i.unlock_rw.i_crit_edge, %if.end50.i.unlock_rw.i_crit_edge239, %if.end50.i.unlock_rw.i_crit_edge240, %if.end50.i.unlock_rw.i_crit_edge241, %if.end50.i.unlock_rw.i_crit_edge242
  %ret.2.i = phi i32 [ %ret.1.i, %brelse.exit.i ], [ %call51.i, %if.end50.i.unlock_rw.i_crit_edge ], [ %call51.i, %if.end50.i.unlock_rw.i_crit_edge239 ], [ %call51.i, %if.end50.i.unlock_rw.i_crit_edge240 ], [ %call51.i, %if.end50.i.unlock_rw.i_crit_edge241 ], [ %call51.i, %if.end50.i.unlock_rw.i_crit_edge242 ], [ %call51.i, %do.body70.i ]
  call void @ocfs2_rw_unlock(ptr noundef nonnull %inode.3238.i, i32 noundef 1) #12
  br label %unlock_mutex.i

unlock_mutex.i:                                   ; preds = %unlock_rw.i, %do.body39.i, %if.then22.i.unlock_mutex.i_crit_edge, %if.then22.i.unlock_mutex.i_crit_edge236, %if.then22.i.unlock_mutex.i_crit_edge237, %if.then22.i.unlock_mutex.i_crit_edge238
  %ret.3.i = phi i32 [ %ret.2.i, %unlock_rw.i ], [ %call19.i, %if.then22.i.unlock_mutex.i_crit_edge ], [ %call19.i, %if.then22.i.unlock_mutex.i_crit_edge236 ], [ %call19.i, %if.then22.i.unlock_mutex.i_crit_edge237 ], [ %call19.i, %if.then22.i.unlock_mutex.i_crit_edge238 ], [ %call19.i, %do.body39.i ]
  call void @up_write(ptr noundef %i_rwsem.i.i) #12
  %114 = ptrtoint ptr %ip_flags.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ip_flags.i, align 4
  %and155.i = and i32 %115, -129
  store i32 %and155.i, ptr %ip_flags.i, align 4
  br label %if.end158.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %ip_lock.i = getelementptr i8, ptr %inode.3238.i, i32 -232
  call void @_raw_spin_lock(ptr noundef %ip_lock.i) #12
  %116 = ptrtoint ptr %ip_flags.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ip_flags.i, align 4
  %or.i = or i32 %117, 16
  store i32 %or.i, ptr %ip_flags.i, align 4
  call void @_raw_spin_unlock(ptr noundef %ip_lock.i) #12
  br label %if.end158.i

if.end158.i:                                      ; preds = %if.else.i, %unlock_mutex.i
  %ret.4.i = phi i32 [ %ret.3.i, %unlock_mutex.i ], [ %ret.0243.i, %if.else.i ]
  call void @iput(ptr noundef nonnull %inode.3238.i) #12
  %tobool13.not.i = icmp eq ptr %92, null
  br i1 %tobool13.not.i, label %if.end158.i.ocfs2_recover_orphans.exit_crit_edge, label %if.end158.i.while.body.i_crit_edge

if.end158.i.while.body.i_crit_edge:               ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end158.i.ocfs2_recover_orphans.exit_crit_edge: ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_recover_orphans.exit

ocfs2_recover_orphans.exit:                       ; preds = %if.end158.i.ocfs2_recover_orphans.exit_crit_edge, %if.end12.i.ocfs2_recover_orphans.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ %retval.0.i236.i, %if.end12.i.ocfs2_recover_orphans.exit_crit_edge ], [ %ret.4.i, %if.end158.i.ocfs2_recover_orphans.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %di_bh.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa.i)
  %cmp75 = icmp slt i32 %ret.0.lcssa.i, 0
  br i1 %cmp75, label %if.then77, label %ocfs2_recover_orphans.exit.if.end105_crit_edge

ocfs2_recover_orphans.exit.if.end105_crit_edge:   ; preds = %ocfs2_recover_orphans.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105

if.then77:                                        ; preds = %ocfs2_recover_orphans.exit
  %118 = zext i32 %ret.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %ret.0.lcssa.i, label %do.body94 [
    i32 -512, label %if.then77.if.end105_crit_edge
    i32 -4, label %if.then77.if.end105_crit_edge251
    i32 -28, label %if.then77.if.end105_crit_edge252
    i32 -122, label %if.then77.if.end105_crit_edge253
  ]

if.then77.if.end105_crit_edge253:                 ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105

if.then77.if.end105_crit_edge252:                 ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105

if.then77.if.end105_crit_edge251:                 ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105

if.then77.if.end105_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105

do.body94:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m95) #12
  %119 = ptrtoint ptr %_m95 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 1152921504606846976, ptr %_m95, align 8
  %conv99 = sext i32 %ret.0.lcssa.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m95, ptr noundef nonnull @__func__.ocfs2_complete_recovery, i32 noundef 1290, ptr noundef nonnull @.str.1, i64 noundef %conv99) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m95) #12
  br label %if.end105

if.end105:                                        ; preds = %do.body94, %if.then77.if.end105_crit_edge, %if.then77.if.end105_crit_edge251, %if.then77.if.end105_crit_edge252, %if.then77.if.end105_crit_edge253, %ocfs2_recover_orphans.exit.if.end105_crit_edge
  %tobool106.not = icmp eq ptr %35, null
  br i1 %tobool106.not, label %if.end105.if.end141_crit_edge, label %if.then107

if.end105.if.end141_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.then107:                                       ; preds = %if.end105
  %120 = ptrtoint ptr %lri_slot to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %lri_slot, align 4
  %call109 = call i32 @ocfs2_finish_quota_recovery(ptr noundef %1, ptr noundef nonnull %35, i32 noundef %121) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %if.then112, label %if.then107.if.end141_crit_edge

if.then107.if.end141_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.then112:                                       ; preds = %if.then107
  %122 = zext i32 %call109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %call109, label %do.body129 [
    i32 -512, label %if.then112.if.end141_crit_edge
    i32 -4, label %if.then112.if.end141_crit_edge254
    i32 -28, label %if.then112.if.end141_crit_edge255
    i32 -122, label %if.then112.if.end141_crit_edge256
  ]

if.then112.if.end141_crit_edge256:                ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.then112.if.end141_crit_edge255:                ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.then112.if.end141_crit_edge254:                ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.then112.if.end141_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

do.body129:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m130) #12
  %123 = ptrtoint ptr %_m130 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 1152921504606846976, ptr %_m130, align 8
  %conv134 = sext i32 %call109 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m130, ptr noundef nonnull @__func__.ocfs2_complete_recovery, i32 noundef 1296, ptr noundef nonnull @.str.1, i64 noundef %conv134) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m130) #12
  br label %if.end141

if.end141:                                        ; preds = %do.body129, %if.then112.if.end141_crit_edge, %if.then112.if.end141_crit_edge254, %if.then112.if.end141_crit_edge255, %if.then112.if.end141_crit_edge256, %if.then107.if.end141_crit_edge, %if.end105.if.end141_crit_edge
  %ret.1 = phi i32 [ %call109, %if.then107.if.end141_crit_edge ], [ %ret.0.lcssa.i, %if.end105.if.end141_crit_edge ], [ %call109, %if.then112.if.end141_crit_edge ], [ %call109, %if.then112.if.end141_crit_edge254 ], [ %call109, %if.then112.if.end141_crit_edge255 ], [ %call109, %if.then112.if.end141_crit_edge256 ], [ %call109, %do.body129 ]
  call void @kfree(ptr noundef %item.0215) #12
  %cmp.not = icmp eq ptr %n.0217, %tmp_la_list
  br i1 %cmp.not, label %if.end141.for.end_crit_edge, label %if.end141.for.body_crit_edge

if.end141.for.body_crit_edge:                     ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end141.for.end_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end141.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %list_splice_init.exit.for.end_crit_edge ], [ %ret.1, %if.end141.for.end_crit_edge ]
  call fastcc void @trace_ocfs2_complete_recovery_end(i32 noundef %ret.0.lcssa)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_la_list) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_get_system_file_inode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_lock_full_nested(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !302
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %1 = tail call ptr @llvm.returnaddress(i32 0) #12
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call ptr @llvm.returnaddress(i32 0) #12
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #12
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !303
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !296

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !304
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !330
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !331
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !332
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !333
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  ret i64 %11
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_journal_init(i64 noundef %val1, i64 noundef %val2, i32 noundef %val3) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_init, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_journal_init, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !334
  %call42 = tail call i32 @__traceiter_ocfs2_journal_init(ptr noundef null, i64 noundef %val1, i64 noundef %val2, i32 noundef %val3) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !335
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_init, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_init, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_journal_init.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_journal_init.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2589, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
declare dso_local ptr @jbd2_journal_init_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_journal_init_maxlen(i32 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_init_maxlen, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_journal_init_maxlen, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !336
  %call42 = tail call i32 @__traceiter_ocfs2_journal_init_maxlen(ptr noundef null, i32 noundef %num) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !337
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_init_maxlen, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_init_maxlen, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_journal_init_maxlen.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_journal_init_maxlen.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2591, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_submit_inode_data_buffers(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_finish_inode_data_buffers(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_inode_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_journal_shutdown(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m109 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %osb, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !296

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 980, 0\0A.popsection", ""() #12, !srcloc !338
  unreachable

do.end9:                                          ; preds = %entry
  %journal10 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 45
  %0 = ptrtoint ptr %journal10 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %journal10, align 4
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %do.end9.done_crit_edge, label %if.end13

do.end9.done_crit_edge:                           ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end13:                                         ; preds = %do.end9
  %j_inode = getelementptr inbounds %struct.ocfs2_journal, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %j_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %j_inode, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end15, label %if.end13.done_crit_edge

if.end13.done_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end15:                                         ; preds = %if.end13
  %call = tail call ptr @igrab(ptr noundef %3) #12
  %tobool16.not = icmp eq ptr %call, null
  br i1 %tobool16.not, label %do.body18, label %if.end24

do.body18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 993, 0\0A.popsection", ""() #12, !srcloc !339
  unreachable

if.end24:                                         ; preds = %if.end15
  %6 = ptrtoint ptr %journal10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %journal10, align 4
  %j_num_trans = getelementptr inbounds %struct.ocfs2_journal, ptr %7, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_num_trans, i32 noundef 4) #12
  %8 = ptrtoint ptr %j_num_trans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %j_num_trans, align 4
  tail call fastcc void @trace_ocfs2_journal_shutdown(i32 noundef %9)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %1, align 4
  %11 = ptrtoint ptr %osb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %osb, align 8
  %tobool28.not = icmp eq ptr %12, null
  br i1 %tobool28.not, label %if.end24.do.body35_crit_edge, label %if.then29

if.end24.do.body35_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @trace_ocfs2_journal_shutdown_wait(ptr noundef nonnull %12)
  %13 = ptrtoint ptr %osb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %osb, align 8
  %call32 = tail call i32 @kthread_stop(ptr noundef %14) #12
  %15 = ptrtoint ptr %osb to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %osb, align 8
  br label %do.body35

do.body35:                                        ; preds = %if.then29, %if.end24.do.body35_crit_edge
  %16 = ptrtoint ptr %journal10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %journal10, align 4
  %j_num_trans37 = getelementptr inbounds %struct.ocfs2_journal, ptr %17, i32 0, i32 5
  %call.i.i168 = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_num_trans37, i32 noundef 4) #12
  %18 = ptrtoint ptr %j_num_trans37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %j_num_trans37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp39.not = icmp eq i32 %19, 0
  br i1 %cmp39.not, label %do.end55, label %do.body47, !prof !301

do.body47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1014, 0\0A.popsection", ""() #12, !srcloc !340
  unreachable

do.end55:                                         ; preds = %do.body35
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 19
  %20 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %do.end55.if.then58_crit_edge

do.end55.if.then58_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

ocfs2_mount_local.exit:                           ; preds = %do.end55
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %22 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_mount_opt.i, align 8
  %24 = and i32 %23, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool57.not = icmp eq i32 %24, 0
  br i1 %tobool57.not, label %ocfs2_mount_local.exit.if.end81_crit_edge, label %ocfs2_mount_local.exit.if.then58_crit_edge

ocfs2_mount_local.exit.if.then58_crit_edge:       ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

ocfs2_mount_local.exit.if.end81_crit_edge:        ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then58:                                        ; preds = %ocfs2_mount_local.exit.if.then58_crit_edge, %do.end55.if.then58_crit_edge
  %j_journal = getelementptr inbounds %struct.ocfs2_journal, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %j_journal to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %j_journal, align 4
  tail call void @jbd2_journal_lock_updates(ptr noundef %26) #12
  %27 = ptrtoint ptr %j_journal to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %j_journal, align 4
  %call60 = tail call i32 @jbd2_journal_flush(ptr noundef %28, i32 noundef 0) #12
  %29 = ptrtoint ptr %j_journal to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %j_journal, align 4
  tail call void @jbd2_journal_unlock_updates(ptr noundef %30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp62 = icmp slt i32 %call60, 0
  br i1 %cmp62, label %if.then63, label %if.then58.if.end81_crit_edge

if.then58.if.end81_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then63:                                        ; preds = %if.then58
  %31 = zext i32 %call60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %call60, label %do.body73 [
    i32 -512, label %if.then63.if.end81_crit_edge
    i32 -4, label %if.then63.if.end81_crit_edge171
    i32 -28, label %if.then63.if.end81_crit_edge172
    i32 -122, label %if.then63.if.end81_crit_edge173
  ]

if.then63.if.end81_crit_edge173:                  ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then63.if.end81_crit_edge172:                  ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then63.if.end81_crit_edge171:                  ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then63.if.end81_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

do.body73:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %32 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call60 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_journal_shutdown, i32 noundef 1021, ptr noundef nonnull @.str.1, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %if.end81

if.end81:                                         ; preds = %do.body73, %if.then63.if.end81_crit_edge, %if.then63.if.end81_crit_edge171, %if.then63.if.end81_crit_edge172, %if.then63.if.end81_crit_edge173, %if.then58.if.end81_crit_edge, %ocfs2_mount_local.exit.if.end81_crit_edge
  %status.0 = phi i32 [ %call60, %if.then58.if.end81_crit_edge ], [ 0, %ocfs2_mount_local.exit.if.end81_crit_edge ], [ 1, %if.then63.if.end81_crit_edge ], [ 1, %if.then63.if.end81_crit_edge171 ], [ 1, %if.then63.if.end81_crit_edge172 ], [ 1, %if.then63.if.end81_crit_edge173 ], [ 1, %do.body73 ]
  %j_journal82 = getelementptr inbounds %struct.ocfs2_journal, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %j_journal82 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %j_journal82, align 4
  %call83 = call i32 @jbd2_journal_destroy(ptr noundef %34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool86.not = icmp eq i32 %status.0, 0
  %or.cond = select i1 %tobool84.not, i1 %tobool86.not, i1 false
  br i1 %or.cond, label %if.then87, label %if.end81.if.end120_crit_edge

if.end81.if.end120_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then87:                                        ; preds = %if.end81
  %call88 = call fastcc i32 @ocfs2_journal_toggle_dirty(ptr noundef nonnull %osb, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.then91, label %if.then87.if.end120_crit_edge

if.then87.if.end120_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then91:                                        ; preds = %if.then87
  %35 = zext i32 %call88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %call88, label %do.body108 [
    i32 -512, label %if.then91.if.end120_crit_edge
    i32 -4, label %if.then91.if.end120_crit_edge174
    i32 -28, label %if.then91.if.end120_crit_edge175
    i32 -122, label %if.then91.if.end120_crit_edge176
  ]

if.then91.if.end120_crit_edge176:                 ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then91.if.end120_crit_edge175:                 ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then91.if.end120_crit_edge174:                 ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then91.if.end120_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

do.body108:                                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m109) #12
  %36 = ptrtoint ptr %_m109 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1152921504606846976, ptr %_m109, align 8
  %conv113 = sext i32 %call88 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m109, ptr noundef nonnull @__func__.ocfs2_journal_shutdown, i32 noundef 1032, ptr noundef nonnull @.str.1, i64 noundef %conv113) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m109) #12
  br label %if.end120

if.end120:                                        ; preds = %do.body108, %if.then91.if.end120_crit_edge, %if.then91.if.end120_crit_edge174, %if.then91.if.end120_crit_edge175, %if.then91.if.end120_crit_edge176, %if.then87.if.end120_crit_edge, %if.end81.if.end120_crit_edge
  %37 = ptrtoint ptr %j_journal82 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %j_journal82, align 4
  %ip_open_count = getelementptr i8, ptr %3, i32 -188
  %38 = ptrtoint ptr %ip_open_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ip_open_count, align 4
  %dec = add i32 %39, -1
  store i32 %dec, ptr %ip_open_count, align 4
  call void @ocfs2_inode_unlock(ptr noundef %3, i32 noundef 1) #12
  %j_bh = getelementptr inbounds %struct.ocfs2_journal, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %j_bh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %j_bh, align 4
  %tobool.not.i169 = icmp eq ptr %41, null
  br i1 %tobool.not.i169, label %if.end120.brelse.exit_crit_edge, label %if.then.i

if.end120.brelse.exit_crit_edge:                  ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %41) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end120.brelse.exit_crit_edge
  %42 = ptrtoint ptr %j_bh to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %j_bh, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %1, align 4
  br label %done

done:                                             ; preds = %brelse.exit, %if.end13.done_crit_edge, %do.end9.done_crit_edge
  %inode.0 = phi ptr [ %3, %if.end13.done_crit_edge ], [ %3, %brelse.exit ], [ null, %do.end9.done_crit_edge ]
  call void @iput(ptr noundef %inode.0) #12
  call void @kfree(ptr noundef %1) #12
  %44 = ptrtoint ptr %journal10 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %journal10, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_journal_shutdown(i32 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_shutdown, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_journal_shutdown, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !341
  %call42 = tail call i32 @__traceiter_ocfs2_journal_shutdown(ptr noundef null, i32 noundef %num) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !342
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_shutdown, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_shutdown, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_journal_shutdown.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_journal_shutdown.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2593, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_journal_shutdown_wait(ptr noundef %pointer) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_shutdown_wait, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_journal_shutdown_wait, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !343
  %call42 = tail call i32 @__traceiter_ocfs2_journal_shutdown_wait(ptr noundef null, ptr noundef %pointer) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !344
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_shutdown_wait, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_shutdown_wait, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_journal_shutdown_wait.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_journal_shutdown_wait.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2595, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_lock_updates(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_flush(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_unlock_updates(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_journal_toggle_dirty(ptr noundef %osb, i32 noundef %dirty, i32 noundef %replayed) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %journal1 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 45
  %0 = ptrtoint ptr %journal1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %journal1, align 4
  %j_bh = getelementptr inbounds %struct.ocfs2_journal, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %j_bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %j_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %call = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(8) @.str.44) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end11, label %do.body6, !prof !301

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 949, 0\0A.popsection", ""() #12, !srcloc !345
  unreachable

do.end11:                                         ; preds = %entry
  %id1 = getelementptr inbounds %struct.ocfs2_dinode, ptr %5, i32 0, i32 34
  %6 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dirty)
  %tobool12.not = icmp ne i32 %dirty, 0
  %8 = and i32 %7, -16777217
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %masksel = zext i1 %tobool12.not to i32
  %flags.0 = or i32 %9, %masksel
  %10 = tail call i32 @llvm.bswap.i32(i32 %flags.0)
  %11 = ptrtoint ptr %id1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %id1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %replayed)
  %tobool17.not = icmp eq i32 %replayed, 0
  br i1 %tobool17.not, label %do.end11.if.end19_crit_edge, label %if.then18

do.end11.if.end19_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then18:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  %ij_recovery_generation.i = getelementptr inbounds %struct.anon.80, ptr %id1, i32 0, i32 1
  %12 = ptrtoint ptr %ij_recovery_generation.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ij_recovery_generation.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  %add.i.i = add i32 %14, 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #12
  %16 = ptrtoint ptr %ij_recovery_generation.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ij_recovery_generation.i, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %do.end11.if.end19_crit_edge
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 1
  %17 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sb, align 4
  %19 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data, align 4
  %i_check = getelementptr inbounds %struct.ocfs2_dinode, ptr %5, i32 0, i32 27
  tail call void @ocfs2_compute_meta_ecc(ptr noundef %18, ptr noundef %20, ptr noundef %i_check) #12
  %j_inode = getelementptr inbounds %struct.ocfs2_journal, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %j_inode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %j_inode, align 4
  %ip_metadata_cache.i = getelementptr i8, ptr %22, i32 -56
  %call22 = tail call i32 @ocfs2_write_block(ptr noundef %osb, ptr noundef %3, ptr noundef %ip_metadata_cache.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %if.then23, label %if.end19.if.end41_crit_edge

if.end19.if.end41_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then23:                                        ; preds = %if.end19
  %23 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %call22, label %do.body33 [
    i32 -512, label %if.then23.if.end41_crit_edge
    i32 -4, label %if.then23.if.end41_crit_edge61
    i32 -28, label %if.then23.if.end41_crit_edge62
    i32 -122, label %if.then23.if.end41_crit_edge63
  ]

if.then23.if.end41_crit_edge63:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then23.if.end41_crit_edge62:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then23.if.end41_crit_edge61:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then23.if.end41_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

do.body33:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %24 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call22 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_journal_toggle_dirty, i32 noundef 964, ptr noundef nonnull @.str.1, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %if.end41

if.end41:                                         ; preds = %do.body33, %if.then23.if.end41_crit_edge, %if.then23.if.end41_crit_edge61, %if.then23.if.end41_crit_edge62, %if.then23.if.end41_crit_edge63, %if.end19.if.end41_crit_edge
  ret i32 %call22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_journal_load(ptr noundef readonly %journal, i32 noundef %local, i32 noundef %replayed) local_unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m4.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m37 = alloca i64, align 8
  %_m68 = alloca i64, align 8
  %_m94 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %journal, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !296

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1075, 0\0A.popsection", ""() #12, !srcloc !346
  unreachable

do.end9:                                          ; preds = %entry
  %j_osb = getelementptr inbounds %struct.ocfs2_journal, ptr %journal, i32 0, i32 3
  %0 = ptrtoint ptr %j_osb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %j_osb, align 4
  %j_journal = getelementptr inbounds %struct.ocfs2_journal, ptr %journal, i32 0, i32 1
  %2 = ptrtoint ptr %j_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %j_journal, align 4
  %call = tail call i32 @jbd2_journal_load(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body11, label %if.end17

do.body11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_journal_load, i32 noundef 1081, ptr noundef nonnull @.str.21) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %done

if.end17:                                         ; preds = %do.end9
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sb, align 4
  %7 = ptrtoint ptr %j_journal to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %j_journal, align 4
  %slot_num = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slot_num, align 8
  %call.i = tail call i32 @jbd2_journal_errno(ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end17.ocfs2_clear_journal_error.exit_crit_edge, label %do.body.i

if.end17.ocfs2_clear_journal_error.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_clear_journal_error.exit

do.body.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #12
  %11 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606846976, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_clear_journal_error, i32 noundef 1061, ptr noundef nonnull @.str.45, i32 noundef %call.i, i32 noundef %10) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m4.i) #12
  %12 = ptrtoint ptr %_m4.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m4.i, align 8
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 39
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m4.i, ptr noundef nonnull @__func__.ocfs2_clear_journal_error, i32 noundef 1063, ptr noundef nonnull @.str.46, ptr noundef %s_id.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m4.i) #12
  call void @jbd2_journal_ack_err(ptr noundef %8) #12
  %call11.i = call i32 @jbd2_journal_clear_err(ptr noundef %8) #12
  br label %ocfs2_clear_journal_error.exit

ocfs2_clear_journal_error.exit:                   ; preds = %do.body.i, %if.end17.ocfs2_clear_journal_error.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %replayed)
  %tobool19.not = icmp eq i32 %replayed, 0
  br i1 %tobool19.not, label %ocfs2_clear_journal_error.exit.if.end46_crit_edge, label %if.then20

ocfs2_clear_journal_error.exit.if.end46_crit_edge: ; preds = %ocfs2_clear_journal_error.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then20:                                        ; preds = %ocfs2_clear_journal_error.exit
  %13 = ptrtoint ptr %j_journal to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %j_journal, align 4
  call void @jbd2_journal_lock_updates(ptr noundef %14) #12
  %15 = ptrtoint ptr %j_journal to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %j_journal, align 4
  %call23 = call i32 @jbd2_journal_flush(ptr noundef %16, i32 noundef 0) #12
  %17 = ptrtoint ptr %j_journal to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %j_journal, align 4
  call void @jbd2_journal_unlock_updates(ptr noundef %18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp25 = icmp slt i32 %call23, 0
  br i1 %cmp25, label %if.then26, label %if.then20.if.end46_crit_edge

if.then20.if.end46_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then26:                                        ; preds = %if.then20
  %19 = zext i32 %call23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %call23, label %do.body36 [
    i32 -512, label %if.then26.if.end46_crit_edge
    i32 -4, label %if.then26.if.end46_crit_edge141
    i32 -28, label %if.then26.if.end46_crit_edge142
    i32 -122, label %if.then26.if.end46_crit_edge143
  ]

if.then26.if.end46_crit_edge143:                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then26.if.end46_crit_edge142:                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then26.if.end46_crit_edge141:                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then26.if.end46_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

do.body36:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m37) #12
  %20 = ptrtoint ptr %_m37 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 1152921504606846976, ptr %_m37, align 8
  %conv = sext i32 %call23 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m37, ptr noundef nonnull @__func__.ocfs2_journal_load, i32 noundef 1092, ptr noundef nonnull @.str.1, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m37) #12
  br label %if.end46

if.end46:                                         ; preds = %do.body36, %if.then26.if.end46_crit_edge, %if.then26.if.end46_crit_edge141, %if.then26.if.end46_crit_edge142, %if.then26.if.end46_crit_edge143, %if.then20.if.end46_crit_edge, %ocfs2_clear_journal_error.exit.if.end46_crit_edge
  %call47 = call fastcc i32 @ocfs2_journal_toggle_dirty(ptr noundef %1, i32 noundef 1, i32 noundef %replayed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end78

if.then50:                                        ; preds = %if.end46
  %21 = zext i32 %call47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %call47, label %do.body67 [
    i32 -512, label %if.then50.done_crit_edge
    i32 -4, label %if.then50.done_crit_edge144
    i32 -28, label %if.then50.done_crit_edge145
    i32 -122, label %if.then50.done_crit_edge146
  ]

if.then50.done_crit_edge146:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then50.done_crit_edge145:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then50.done_crit_edge144:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then50.done_crit_edge:                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

do.body67:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m68) #12
  %22 = ptrtoint ptr %_m68 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1152921504606846976, ptr %_m68, align 8
  %conv72 = sext i32 %call47 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m68, ptr noundef nonnull @__func__.ocfs2_journal_load, i32 noundef 1097, ptr noundef nonnull @.str.1, i64 noundef %conv72) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m68) #12
  br label %done

if.end78:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local)
  %tobool79.not = icmp eq i32 %local, 0
  br i1 %tobool79.not, label %if.then80, label %if.else

if.then80:                                        ; preds = %if.end78
  %uuid_str = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 13
  %23 = ptrtoint ptr %uuid_str to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %uuid_str, align 4
  %call81 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @ocfs2_commit_thread, ptr noundef %1, i32 noundef -1, ptr noundef nonnull @.str.22, ptr noundef %24) #12
  %cmp.i = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then89, label %if.end85

if.end85:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  %call84 = call i32 @wake_up_process(ptr noundef %call81) #12
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call81, ptr %1, align 8
  br label %done

if.then89:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %call81 to i32
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m94) #12
  %28 = ptrtoint ptr %_m94 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 1152921504606846976, ptr %_m94, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m94, ptr noundef nonnull @__func__.ocfs2_journal_load, i32 noundef 1109, ptr noundef nonnull @.str.23, i32 noundef %26) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m94) #12
  br label %done

if.else:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %1, align 8
  br label %done

done:                                             ; preds = %if.else, %if.then89, %if.end85, %do.body67, %if.then50.done_crit_edge, %if.then50.done_crit_edge144, %if.then50.done_crit_edge145, %if.then50.done_crit_edge146, %do.body11
  %status.0 = phi i32 [ %call, %do.body11 ], [ %call47, %if.else ], [ %26, %if.then89 ], [ %call47, %if.end85 ], [ %call47, %if.then50.done_crit_edge ], [ %call47, %if.then50.done_crit_edge144 ], [ %call47, %if.then50.done_crit_edge145 ], [ %call47, %if.then50.done_crit_edge146 ], [ %call47, %do.body67 ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_commit_thread(ptr noundef %arg) #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %_m = alloca i64, align 8
  %_m43 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %journal1 = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 45
  %0 = ptrtoint ptr %journal1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %journal1, align 4
  %j_num_trans = getelementptr inbounds %struct.ocfs2_journal, ptr %1, i32 0, i32 5
  %checkpoint_event = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 44
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %call = call zeroext i1 @kthread_should_stop() #12
  br i1 %call, label %land.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

land.rhs:                                         ; preds = %while.cond
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %j_num_trans, i32 noundef 4) #12
  %2 = ptrtoint ptr %j_num_trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %j_num_trans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %while.end, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 2318) #12
  %call.i.i65 = call zeroext i1 @__kasan_check_read(ptr noundef %j_num_trans, i32 noundef 4) #12
  %4 = ptrtoint ptr %j_num_trans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %j_num_trans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %while.body.if.end21_crit_edge

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

lor.lhs.false:                                    ; preds = %while.body
  %call8 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call8, label %lor.lhs.false.if.end21_crit_edge, label %if.then

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %call1078 = call i32 @prepare_to_wait_event(ptr noundef %checkpoint_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %call.i.i6679 = call zeroext i1 @__kasan_check_read(ptr noundef %j_num_trans, i32 noundef 4) #12
  %7 = ptrtoint ptr %j_num_trans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %j_num_trans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not80 = icmp eq i32 %8, 0
  br i1 %tobool13.not80, label %if.then.lor.lhs.false14_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then.lor.lhs.false14_crit_edge:                ; preds = %if.then
  br label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %cleanup.lor.lhs.false14_crit_edge, %if.then.lor.lhs.false14_crit_edge
  %call1081 = phi i32 [ %call10, %cleanup.lor.lhs.false14_crit_edge ], [ %call1078, %if.then.lor.lhs.false14_crit_edge ]
  %call15 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call15, label %lor.lhs.false14.for.end_crit_edge, label %if.end

lor.lhs.false14.for.end_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1081)
  %tobool17.not = icmp eq i32 %call1081, 0
  br i1 %tobool17.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #12
  %call10 = call i32 @prepare_to_wait_event(ptr noundef %checkpoint_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %call.i.i66 = call zeroext i1 @__kasan_check_read(ptr noundef %j_num_trans, i32 noundef 4) #12
  %9 = ptrtoint ptr %j_num_trans to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %j_num_trans, align 4
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %cleanup.lor.lhs.false14_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.lor.lhs.false14_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false14

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false14.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef %checkpoint_event, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end21

if.end21:                                         ; preds = %__out, %lor.lhs.false.if.end21_crit_edge, %while.body.if.end21_crit_edge
  %11 = ptrtoint ptr %journal1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %journal1, align 4
  %j_trans_barrier.i = getelementptr inbounds %struct.ocfs2_journal, ptr %12, i32 0, i32 8
  call void @down_write(ptr noundef %j_trans_barrier.i) #12
  %j_num_trans.i = getelementptr inbounds %struct.ocfs2_journal, ptr %12, i32 0, i32 5
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %j_num_trans.i, i32 noundef 4) #12
  %13 = ptrtoint ptr %j_num_trans.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %j_num_trans.i, align 4
  call fastcc void @trace_ocfs2_commit_cache_begin(i32 noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  call void @up_write(ptr noundef %j_trans_barrier.i) #12
  br label %if.end36

if.end.i:                                         ; preds = %if.end21
  %j_journal.i = getelementptr inbounds %struct.ocfs2_journal, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %j_journal.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %j_journal.i, align 4
  call void @jbd2_journal_lock_updates(ptr noundef %16) #12
  %17 = ptrtoint ptr %j_journal.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %j_journal.i, align 4
  %call4.i = call i32 @jbd2_journal_flush(ptr noundef %18, i32 noundef 0) #12
  %19 = ptrtoint ptr %j_journal.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %j_journal.i, align 4
  call void @jbd2_journal_unlock_updates(ptr noundef %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp6.i = icmp slt i32 %call4.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.end21.i

if.then7.i:                                       ; preds = %if.end.i
  call void @up_write(ptr noundef %j_trans_barrier.i) #12
  %21 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %call4.i, label %do.body.i [
    i32 -512, label %if.then7.i.if.then25_crit_edge
    i32 -4, label %if.then7.i.if.then25_crit_edge83
    i32 -28, label %if.then7.i.if.then25_crit_edge84
    i32 -122, label %if.then7.i.if.then25_crit_edge85
  ]

if.then7.i.if.then25_crit_edge85:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

if.then7.i.if.then25_crit_edge84:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

if.then7.i.if.then25_crit_edge83:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

if.then7.i.if.then25_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25

do.body.i:                                        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #12
  %22 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv.i = sext i32 %call4.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_commit_cache, i32 noundef 315, ptr noundef nonnull @.str.1, i64 noundef %conv.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #12
  br label %if.then25

if.end21.i:                                       ; preds = %if.end.i
  call void @_raw_spin_lock(ptr noundef nonnull @trans_inc_lock) #12
  %j_trans_id.i.i = getelementptr inbounds %struct.ocfs2_journal, ptr %12, i32 0, i32 7
  %23 = ptrtoint ptr %j_trans_id.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %j_trans_id.i.i, align 4
  %inc.i.i = add i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %tobool.not.i.i = icmp eq i32 %inc.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end21.i.ocfs2_inc_trans_id.exit.i_crit_edge, !prof !296

if.end21.i.ocfs2_inc_trans_id.exit.i_crit_edge:   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_inc_trans_id.exit.i

if.then.i.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_inc_trans_id.exit.i

ocfs2_inc_trans_id.exit.i:                        ; preds = %if.then.i.i, %if.end21.i.ocfs2_inc_trans_id.exit.i_crit_edge
  %storemerge.i.i = phi i32 [ 1, %if.then.i.i ], [ %inc.i.i, %if.end21.i.ocfs2_inc_trans_id.exit.i_crit_edge ]
  %25 = ptrtoint ptr %j_trans_id.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %storemerge.i.i, ptr %j_trans_id.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @trans_inc_lock) #12
  %call.i.i51.i = call zeroext i1 @__kasan_check_read(ptr noundef %j_num_trans.i, i32 noundef 4) #12
  %26 = ptrtoint ptr %j_num_trans.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %j_num_trans.i, align 4
  %call.i.i52.i = call zeroext i1 @__kasan_check_write(ptr noundef %j_num_trans.i, i32 noundef 4) #12
  %28 = ptrtoint ptr %j_num_trans.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %j_num_trans.i, align 4
  call void @up_write(ptr noundef %j_trans_barrier.i) #12
  %29 = ptrtoint ptr %j_trans_id.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %j_trans_id.i.i, align 4
  %conv27.i = zext i32 %30 to i64
  call fastcc void @trace_ocfs2_commit_cache_end(i64 noundef %conv27.i, i32 noundef %27) #12
  call void @ocfs2_wake_downconvert_thread(ptr noundef %arg) #12
  %j_checkpointed.i = getelementptr inbounds %struct.ocfs2_journal, ptr %12, i32 0, i32 9
  call void @__wake_up(ptr noundef %j_checkpointed.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end36

if.then25:                                        ; preds = %do.body.i, %if.then7.i.if.then25_crit_edge, %if.then7.i.if.then25_crit_edge83, %if.then7.i.if.then25_crit_edge84, %if.then7.i.if.then25_crit_edge85
  %call26 = call zeroext i1 @printk_timed_ratelimit(ptr noundef nonnull @ocfs2_commit_thread.abort_warn_time, i32 noundef 6000) #12
  br i1 %call26, label %do.body28, label %if.then25.if.end34_crit_edge

if.then25.if.end34_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

do.body28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %31 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_commit_thread, i32 noundef 2327, ptr noundef nonnull @.str.59, i32 noundef %call4.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %if.end34

if.end34:                                         ; preds = %do.body28, %if.then25.if.end34_crit_edge
  %call35 = call i32 @msleep_interruptible(i32 noundef 1000) #12
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %ocfs2_inc_trans_id.exit.i, %if.then.i
  %call37 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call37, label %land.lhs.true, label %if.end36.while.cond.backedge_crit_edge

if.end36.while.cond.backedge_crit_edge:           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.end36
  %call.i.i67 = call zeroext i1 @__kasan_check_read(ptr noundef %j_num_trans, i32 noundef 4) #12
  %32 = ptrtoint ptr %j_num_trans to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %j_num_trans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool40.not = icmp eq i32 %33, 0
  br i1 %tobool40.not, label %land.lhs.true.while.cond.backedge_crit_edge, label %do.body42

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

do.body42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m43) #12
  %34 = ptrtoint ptr %_m43 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 4611686018427387904, ptr %_m43, align 8
  %call.i.i68 = call zeroext i1 @__kasan_check_read(ptr noundef %j_num_trans, i32 noundef 4) #12
  %35 = ptrtoint ptr %j_num_trans to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %j_num_trans, align 4
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m43, ptr noundef nonnull @__func__.ocfs2_commit_thread, i32 noundef 2340, ptr noundef nonnull @.str.60, i32 noundef %36) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m43) #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.body42, %land.lhs.true.while.cond.backedge_crit_edge, %if.end36.while.cond.backedge_crit_edge
  br label %while.cond

while.end:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_journal_wipe(ptr noundef readonly %journal, i32 noundef %full) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m49 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %journal, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !296

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1126, 0\0A.popsection", ""() #12, !srcloc !347
  unreachable

do.end9:                                          ; preds = %entry
  %j_journal = getelementptr inbounds %struct.ocfs2_journal, ptr %journal, i32 0, i32 1
  %0 = ptrtoint ptr %j_journal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %j_journal, align 4
  %call = tail call i32 @jbd2_journal_wipe(ptr noundef %1, i32 noundef %full) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then10, label %if.end27

if.then10:                                        ; preds = %do.end9
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %call, label %do.body20 [
    i32 -512, label %if.then10.bail_crit_edge
    i32 -4, label %if.then10.bail_crit_edge78
    i32 -28, label %if.then10.bail_crit_edge79
    i32 -122, label %if.then10.bail_crit_edge80
  ]

if.then10.bail_crit_edge80:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.then10.bail_crit_edge79:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.then10.bail_crit_edge78:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.then10.bail_crit_edge:                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

do.body20:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %3 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_journal_wipe, i32 noundef 1130, ptr noundef nonnull @.str.1, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %bail

if.end27:                                         ; preds = %do.end9
  %j_osb = getelementptr inbounds %struct.ocfs2_journal, ptr %journal, i32 0, i32 3
  %4 = ptrtoint ptr %j_osb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %j_osb, align 4
  %call28 = tail call fastcc i32 @ocfs2_journal_toggle_dirty(ptr noundef %5, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end27.bail_crit_edge

if.end27.bail_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.then31:                                        ; preds = %if.end27
  %6 = zext i32 %call28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %call28, label %do.body48 [
    i32 -512, label %if.then31.bail_crit_edge
    i32 -4, label %if.then31.bail_crit_edge81
    i32 -28, label %if.then31.bail_crit_edge82
    i32 -122, label %if.then31.bail_crit_edge83
  ]

if.then31.bail_crit_edge83:                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.then31.bail_crit_edge82:                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.then31.bail_crit_edge81:                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.then31.bail_crit_edge:                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

do.body48:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m49) #12
  %7 = ptrtoint ptr %_m49 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606846976, ptr %_m49, align 8
  %conv53 = sext i32 %call28 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m49, ptr noundef nonnull @__func__.ocfs2_journal_wipe, i32 noundef 1136, ptr noundef nonnull @.str.1, i64 noundef %conv53) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m49) #12
  br label %bail

bail:                                             ; preds = %do.body48, %if.then31.bail_crit_edge, %if.then31.bail_crit_edge81, %if.then31.bail_crit_edge82, %if.then31.bail_crit_edge83, %if.end27.bail_crit_edge, %do.body20, %if.then10.bail_crit_edge, %if.then10.bail_crit_edge78, %if.then10.bail_crit_edge79, %if.then10.bail_crit_edge80
  %status.0 = phi i32 [ %call28, %if.end27.bail_crit_edge ], [ %call, %if.then10.bail_crit_edge ], [ %call, %if.then10.bail_crit_edge78 ], [ %call, %if.then10.bail_crit_edge79 ], [ %call, %if.then10.bail_crit_edge80 ], [ %call, %do.body20 ], [ %call28, %if.then31.bail_crit_edge ], [ %call28, %if.then31.bail_crit_edge81 ], [ %call28, %if.then31.bail_crit_edge82 ], [ %call28, %if.then31.bail_crit_edge83 ], [ %call28, %do.body48 ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_wipe(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_wait_for_recovery(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 1156) #12
  %recovery_map.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 40
  %0 = ptrtoint ptr %recovery_map.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recovery_map.i, align 8
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #12
  br i1 %cmp.i.not, label %entry.do.end10_crit_edge, label %if.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %recovery_event = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 74
  %call420 = call i32 @prepare_to_wait_event(ptr noundef %recovery_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %5 = ptrtoint ptr %recovery_map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %recovery_map.i, align 8
  call void @_raw_spin_lock(ptr noundef %osb_lock.i) #12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i16.not21 = icmp eq i32 %8, 0
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #12
  br i1 %cmp.i16.not21, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #12
  %call4 = call i32 @prepare_to_wait_event(ptr noundef %recovery_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %9 = ptrtoint ptr %recovery_map.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %recovery_map.i, align 8
  call void @_raw_spin_lock(ptr noundef %osb_lock.i) #12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %cmp.i16.not = icmp eq i32 %12, 0
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #12
  br i1 %cmp.i16.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %recovery_event, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %do.end10

do.end10:                                         ; preds = %for.end, %entry.do.end10_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_complete_recovery(i64 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_complete_recovery, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_complete_recovery, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !348
  %call42 = tail call i32 @__traceiter_ocfs2_complete_recovery(ptr noundef null, i64 noundef %num) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !349
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_complete_recovery, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_complete_recovery, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_complete_recovery.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_complete_recovery.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2597, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_complete_recovery_slot(i32 noundef %slot, i64 noundef %la_ino, i64 noundef %tl_ino, ptr noundef %qrec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_complete_recovery_slot, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_complete_recovery_slot, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !350
  %call42 = tail call i32 @__traceiter_ocfs2_complete_recovery_slot(ptr noundef null, i32 noundef %slot, i64 noundef %la_ino, i64 noundef %tl_ino, ptr noundef %qrec) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !351
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_complete_recovery_slot, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_complete_recovery_slot, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_complete_recovery_slot.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_complete_recovery_slot.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2619, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_complete_local_alloc_recovery(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_complete_truncate_log_recovery(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_finish_quota_recovery(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_complete_recovery_end(i32 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_complete_recovery_end, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_complete_recovery_end, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !352
  %call42 = tail call i32 @__traceiter_ocfs2_complete_recovery_end(ptr noundef null, i32 noundef %num) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !353
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_complete_recovery_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_complete_recovery_end, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_complete_recovery_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_complete_recovery_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2599, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
define dso_local void @ocfs2_complete_mount_recovery(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %journal1 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 45
  %0 = ptrtoint ptr %journal1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %journal1, align 4
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #12
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 23
  %2 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %3, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %slot_num = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 32
  %4 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slot_num, align 8
  %local_alloc_copy = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 57
  %6 = ptrtoint ptr %local_alloc_copy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %local_alloc_copy, align 8
  tail call fastcc void @ocfs2_queue_recovery_completion(ptr noundef %1, i32 noundef %5, ptr noundef %7, ptr noundef null, ptr noundef null, i32 noundef 1)
  tail call void @ocfs2_schedule_truncate_log_flush(ptr noundef %osb, i32 noundef 0) #12
  %8 = ptrtoint ptr %local_alloc_copy to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %local_alloc_copy, align 8
  %replay_map.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 41
  %9 = ptrtoint ptr %replay_map.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %replay_map.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %rm_state.i = getelementptr inbounds %struct.ocfs2_replay_map, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %rm_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rm_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  br i1 %cmp.i, label %if.end.i.ocfs2_replay_map_set_state.exit_crit_edge, label %if.end3.i

if.end.i.ocfs2_replay_map_set_state.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_replay_map_set_state.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %rm_state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %rm_state.i, align 4
  br label %ocfs2_replay_map_set_state.exit

ocfs2_replay_map_set_state.exit:                  ; preds = %if.end3.i, %if.end.i.ocfs2_replay_map_set_state.exit_crit_edge
  %14 = ptrtoint ptr %replay_map.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %replay_map.i, align 4
  %tobool.not.i11 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i11, label %ocfs2_replay_map_set_state.exit.cleanup_crit_edge, label %if.end.i13

ocfs2_replay_map_set_state.exit.cleanup_crit_edge: ; preds = %ocfs2_replay_map_set_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i13:                                       ; preds = %ocfs2_replay_map_set_state.exit
  %rm_state.i12 = getelementptr inbounds %struct.ocfs2_replay_map, ptr %.pr, i32 0, i32 1
  %15 = ptrtoint ptr %rm_state.i12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rm_state.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 1
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.end.i13.ocfs2_queue_replay_slots.exit_crit_edge

if.end.i13.ocfs2_queue_replay_slots.exit_crit_edge: ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_queue_replay_slots.exit

for.cond.preheader.i:                             ; preds = %if.end.i13
  %17 = ptrtoint ptr %.pr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %.pr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp41.not.i = icmp eq i32 %18, 0
  br i1 %cmp41.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ocfs2_replay_map, ptr %.pr, i32 0, i32 2, i32 %i.02.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool5.not.i = icmp eq i8 %20, 0
  br i1 %tobool5.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %journal1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %journal1, align 4
  tail call fastcc void @ocfs2_queue_recovery_completion(ptr noundef %22, i32 noundef %i.02.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.02.i, 1
  %23 = ptrtoint ptr %.pr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %.pr, align 4
  %cmp4.i = icmp ult i32 %inc.i, %24
  br i1 %cmp4.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %25 = ptrtoint ptr %rm_state.i12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %rm_state.i12, align 4
  br label %ocfs2_queue_replay_slots.exit

ocfs2_queue_replay_slots.exit:                    ; preds = %for.end.i, %if.end.i13.ocfs2_queue_replay_slots.exit_crit_edge
  %26 = ptrtoint ptr %replay_map.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr18 = load ptr, ptr %replay_map.i, align 4
  %tobool.not.i15 = icmp eq ptr %.pr18, null
  br i1 %tobool.not.i15, label %ocfs2_queue_replay_slots.exit.cleanup_crit_edge, label %if.end.i16

ocfs2_queue_replay_slots.exit.cleanup_crit_edge:  ; preds = %ocfs2_queue_replay_slots.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i16:                                       ; preds = %ocfs2_queue_replay_slots.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %.pr18) #12
  %27 = ptrtoint ptr %replay_map.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %replay_map.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i16, %ocfs2_queue_replay_slots.exit.cleanup_crit_edge, %ocfs2_replay_map_set_state.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_queue_recovery_completion(ptr noundef %journal, i32 noundef %slot_num, ptr noundef %la_dinode, ptr noundef %tl_dinode, ptr noundef %qrec, i32 noundef %orphan_reco_type) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3136, i32 noundef 28) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  tail call void @kfree(ptr noundef %la_dinode) #12
  tail call void @kfree(ptr noundef %tl_dinode) #12
  %tobool1.not = icmp eq ptr %qrec, null
  br i1 %tobool1.not, label %if.then.do.body_crit_edge, label %if.then2

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ocfs2_free_quota_recovery(ptr noundef nonnull %qrec) #12
  br label %do.body

do.body:                                          ; preds = %if.then2, %if.then.do.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %1 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_queue_recovery_completion, i32 noundef 1329, ptr noundef nonnull @.str.1, i64 noundef -12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %cleanup

if.end15:                                         ; preds = %entry
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %prev.i, align 4
  %lri_la_dinode = getelementptr inbounds %struct.ocfs2_la_recovery_item, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %lri_la_dinode to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %la_dinode, ptr %lri_la_dinode, align 4
  %lri_slot = getelementptr inbounds %struct.ocfs2_la_recovery_item, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %lri_slot to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %slot_num, ptr %lri_slot, align 8
  %lri_tl_dinode = getelementptr inbounds %struct.ocfs2_la_recovery_item, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %lri_tl_dinode to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tl_dinode, ptr %lri_tl_dinode, align 8
  %lri_qrec = getelementptr inbounds %struct.ocfs2_la_recovery_item, ptr %call7.i, i32 0, i32 4
  %7 = ptrtoint ptr %lri_qrec to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %qrec, ptr %lri_qrec, align 4
  %lri_orphan_reco_type = getelementptr inbounds %struct.ocfs2_la_recovery_item, ptr %call7.i, i32 0, i32 5
  %8 = ptrtoint ptr %lri_orphan_reco_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %orphan_reco_type, ptr %lri_orphan_reco_type, align 8
  %j_lock = getelementptr inbounds %struct.ocfs2_journal, ptr %journal, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %j_lock) #12
  %j_la_cleanups = getelementptr inbounds %struct.ocfs2_journal, ptr %journal, i32 0, i32 10
  %prev.i40 = getelementptr inbounds %struct.ocfs2_journal, ptr %journal, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i40 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i40, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %10, ptr noundef %j_la_cleanups) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.list_add_tail.exit_crit_edge

if.end15.list_add_tail.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %prev.i40 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i, ptr %prev.i40, align 4
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %j_la_cleanups, ptr %call7.i, align 8
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end15.list_add_tail.exit_crit_edge
  %j_osb = getelementptr inbounds %struct.ocfs2_journal, ptr %journal, i32 0, i32 3
  %15 = ptrtoint ptr %j_osb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %j_osb, align 4
  %ocfs2_wq = getelementptr inbounds %struct.ocfs2_super, ptr %16, i32 0, i32 101
  %17 = ptrtoint ptr %ocfs2_wq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ocfs2_wq, align 4
  %j_recovery_work = getelementptr inbounds %struct.ocfs2_journal, ptr %journal, i32 0, i32 11
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %j_recovery_work) #12
  tail call void @_raw_spin_unlock(ptr noundef %j_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_schedule_truncate_log_flush(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_complete_quota_recovery(ptr nocapture noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %quota_rec = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 58
  %0 = ptrtoint ptr %quota_rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %quota_rec, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %journal = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 45
  %2 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %journal, align 4
  %slot_num = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 32
  %4 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slot_num, align 8
  tail call fastcc void @ocfs2_queue_recovery_completion(ptr noundef %3, i32 noundef %5, ptr noundef null, ptr noundef null, ptr noundef nonnull %1, i32 noundef 1)
  %6 = ptrtoint ptr %quota_rec to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %quota_rec, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_recovery_thread(ptr noundef %osb, i32 noundef %node_num) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %recovery_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %recovery_lock, i32 noundef 0) #12
  %node_num1 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 31
  %0 = ptrtoint ptr %node_num1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_num1, align 4
  %disable_recovery = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 43
  %2 = ptrtoint ptr %disable_recovery to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %disable_recovery, align 4
  %recovery_thread_task = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 42
  %4 = ptrtoint ptr %recovery_thread_task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %recovery_thread_task, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  %recovery_map.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 40
  %6 = ptrtoint ptr %recovery_map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %recovery_map.i, align 8
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #12
  %8 = ptrtoint ptr %recovery_map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %recovery_map.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %10 = ptrtoint ptr %osb_lock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %osb_lock.i, align 4
  %11 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %for.cond.preheader.i.i, !prof !296

for.cond.preheader.i.i:                           ; preds = %cond.false
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp18.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp18.not.i.i, label %for.cond.preheader.i.i.do.body.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.do.body.i_crit_edge:       ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %rm_entries.i.i = getelementptr inbounds %struct.ocfs2_recovery_map, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %rm_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rm_entries.i.i, align 4
  br label %for.body.i.i

do.body4.i.i:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 237, 0\0A.popsection", ""() #12, !srcloc !354
  unreachable

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.019.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %13
  br i1 %exitcond.not.i.i, label %for.cond.i.i.do.body.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.cond.i.i.do.body.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.019.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %15, i32 %i.019.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %node_num)
  %cmp10.i.i = icmp eq i32 %17, %node_num
  br i1 %cmp10.i.i, label %for.body.i.i.ocfs2_recovery_map_set.exit_crit_edge, label %for.cond.i.i

for.body.i.i.ocfs2_recovery_map_set.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_recovery_map_set.exit

do.body.i:                                        ; preds = %for.cond.i.i.do.body.i_crit_edge, %for.cond.preheader.i.i.do.body.i_crit_edge
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %7, align 4
  %max_slots.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 30
  %20 = ptrtoint ptr %max_slots.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_slots.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not.i = icmp ult i32 %19, %21
  br i1 %cmp.not.i, label %do.end11.i, label %do.body5.i, !prof !301

do.body5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !355
  unreachable

do.end11.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %rm_entries.i = getelementptr inbounds %struct.ocfs2_recovery_map, ptr %7, i32 0, i32 1
  %22 = ptrtoint ptr %rm_entries.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rm_entries.i, align 4
  %arrayidx.i = getelementptr i32, ptr %23, i32 %19
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %node_num, ptr %arrayidx.i, align 4
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %7, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %7, align 4
  br label %ocfs2_recovery_map_set.exit

ocfs2_recovery_map_set.exit:                      ; preds = %do.end11.i, %for.body.i.i.ocfs2_recovery_map_set.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end11.i ], [ 1, %for.body.i.i.ocfs2_recovery_map_set.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #12
  br label %cond.end

cond.end:                                         ; preds = %ocfs2_recovery_map_set.exit, %entry.cond.end_crit_edge
  %cond = phi i32 [ %retval.0.i, %ocfs2_recovery_map_set.exit ], [ -1, %entry.cond.end_crit_edge ]
  tail call fastcc void @trace_ocfs2_recovery_thread(i32 noundef %node_num, i32 noundef %1, i32 noundef %3, ptr noundef %5, i32 noundef %cond)
  %27 = ptrtoint ptr %disable_recovery to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %disable_recovery, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool4.not = icmp eq i32 %28, 0
  br i1 %tobool4.not, label %if.end, label %cond.end.out_crit_edge

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %cond.end
  %29 = ptrtoint ptr %recovery_thread_task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %recovery_thread_task, align 8
  %tobool6.not = icmp eq ptr %30, null
  br i1 %tobool6.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end8:                                          ; preds = %if.end
  %uuid_str = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 13
  %31 = ptrtoint ptr %uuid_str to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %uuid_str, align 4
  %call9 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @__ocfs2_recovery_thread, ptr noundef %osb, i32 noundef -1, ptr noundef nonnull @.str.24, ptr noundef %32) #12
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end13

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 @wake_up_process(ptr noundef %call9) #12
  br label %out.sink.split

if.then17:                                        ; preds = %if.end8
  %33 = ptrtoint ptr %recovery_thread_task to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9, ptr %recovery_thread_task, align 8
  %34 = ptrtoint ptr %call9 to i32
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %34, label %do.body [
    i32 -512, label %if.then17.out.sink.split_crit_edge
    i32 -4, label %if.then17.out.sink.split_crit_edge61
    i32 524289, label %if.then17.out.sink.split_crit_edge62
    i32 -28, label %if.then17.out.sink.split_crit_edge63
    i32 -122, label %if.then17.out.sink.split_crit_edge64
  ]

if.then17.out.sink.split_crit_edge64:             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.then17.out.sink.split_crit_edge63:             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.then17.out.sink.split_crit_edge62:             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.then17.out.sink.split_crit_edge61:             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.then17.out.sink.split_crit_edge:               ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

do.body:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %36 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %34 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_recovery_thread, i32 noundef 1537, ptr noundef nonnull @.str.1, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %out.sink.split

out.sink.split:                                   ; preds = %do.body, %if.then17.out.sink.split_crit_edge, %if.then17.out.sink.split_crit_edge61, %if.then17.out.sink.split_crit_edge62, %if.then17.out.sink.split_crit_edge63, %if.then17.out.sink.split_crit_edge64, %if.end13
  %call9.sink = phi ptr [ %call9, %if.end13 ], [ null, %if.then17.out.sink.split_crit_edge ], [ null, %if.then17.out.sink.split_crit_edge61 ], [ null, %if.then17.out.sink.split_crit_edge62 ], [ null, %if.then17.out.sink.split_crit_edge63 ], [ null, %if.then17.out.sink.split_crit_edge64 ], [ null, %do.body ]
  %37 = ptrtoint ptr %recovery_thread_task to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call9.sink, ptr %recovery_thread_task, align 8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end.out_crit_edge, %cond.end.out_crit_edge
  call void @mutex_unlock(ptr noundef %recovery_lock) #12
  %recovery_event = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 74
  call void @__wake_up(ptr noundef %recovery_event, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_recovery_thread(i32 noundef %node_num, i32 noundef %osb_node_num, i32 noundef %disable, ptr noundef %recovery_thread, i32 noundef %map_set) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recovery_thread, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_recovery_thread, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !356
  %call42 = tail call i32 @__traceiter_ocfs2_recovery_thread(ptr noundef null, i32 noundef %node_num, i32 noundef %osb_node_num, i32 noundef %disable, ptr noundef %recovery_thread, i32 noundef %map_set) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !357
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recovery_thread, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recovery_thread, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_recovery_thread.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_recovery_thread.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2646, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
define internal i32 @__ocfs2_recovery_thread(ptr noundef %arg) #0 align 64 {
entry:
  %p_blkno.i = alloca i64, align 8
  %p_blocks.i = alloca i64, align 8
  %bh.i = alloca ptr, align 4
  %_m.i320 = alloca i64, align 8
  %_m46.i = alloca i64, align 8
  %_m.i317 = alloca i64, align 8
  %_m4.i = alloca i64, align 8
  %inode.i.i = alloca ptr, align 4
  %bh.i.i = alloca ptr, align 4
  %_m.i.i = alloca i64, align 8
  %_m30.i.i = alloca i64, align 8
  %_m77.i.i = alloca i64, align 8
  %_m93.i.i = alloca i64, align 8
  %_m122.i.i = alloca i64, align 8
  %_m172.i.i = alloca i64, align 8
  %_m215.i.i = alloca i64, align 8
  %la_copy.i = alloca ptr, align 4
  %tl_copy.i = alloca ptr, align 4
  %_m.i = alloca i64, align 8
  %_m53.i = alloca i64, align 8
  %_m85.i = alloca i64, align 8
  %_m117.i = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m52 = alloca i64, align 8
  %_m89 = alloca i64, align 8
  %_m101 = alloca i64, align 8
  %_m134 = alloca i64, align 8
  %_m173 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %recovery_map = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 40
  %0 = ptrtoint ptr %recovery_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recovery_map, align 8
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %s_feature_ro_compat = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %s_feature_ro_compat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_feature_ro_compat, align 4
  %8 = and i32 %7, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %.not = icmp eq i32 %8, 0
  %call.i = tail call fastcc i32 @__ocfs2_wait_on_mount(ptr noundef %arg, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.bail_crit_edge, label %if.end

entry.bail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.end:                                           ; preds = %entry
  br i1 %.not, label %if.end.restart_crit_edge, label %if.then7

if.end.restart_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %restart

if.then7:                                         ; preds = %if.end
  %max_slots = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 30
  %9 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_slots, align 8
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4) #12
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %if.then7.kcalloc.exit_crit_edge, label %if.end7.i.i, !prof !296

if.then7.kcalloc.exit_crit_edge:                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %kcalloc.exit

if.end7.i.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %13 = extractvalue { i32, i1 } %11, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3392) #15
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %if.then7.kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %if.then7.kcalloc.exit_crit_edge ]
  %tobool9.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool9.not, label %kcalloc.exit.bail_crit_edge, label %kcalloc.exit.restart_crit_edge

kcalloc.exit.restart_crit_edge:                   ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %restart

kcalloc.exit.bail_crit_edge:                      ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

restart:                                          ; preds = %if.then194, %kcalloc.exit.restart_crit_edge, %if.end.restart_crit_edge
  %rm_quota.0 = phi ptr [ %rm_quota.1, %if.then194 ], [ %retval.0.i.i, %kcalloc.exit.restart_crit_edge ], [ null, %if.end.restart_crit_edge ]
  %rm_quota_used.0 = phi i32 [ %rm_quota_used.4, %if.then194 ], [ 0, %kcalloc.exit.restart_crit_edge ], [ 0, %if.end.restart_crit_edge ]
  %call13 = call i32 @ocfs2_super_lock(ptr noundef %arg, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end30

if.then15:                                        ; preds = %restart
  %14 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %call13, label %do.body [
    i32 -512, label %if.then15.bail_crit_edge
    i32 -4, label %if.then15.bail_crit_edge400
    i32 -28, label %if.then15.bail_crit_edge401
    i32 -122, label %if.then15.bail_crit_edge402
  ]

if.then15.bail_crit_edge402:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.then15.bail_crit_edge401:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.then15.bail_crit_edge400:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.then15.bail_crit_edge:                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

do.body:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %15 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call13 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.__ocfs2_recovery_thread, i32 noundef 1413, ptr noundef nonnull @.str.1, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %bail

if.end30:                                         ; preds = %restart
  %call31 = call i32 @ocfs2_compute_replay_slots(ptr noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call31)
  %cmp32 = icmp sgt i32 %call31, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call31)
  %cmp39.not = icmp eq i32 %call31, -4
  %or.cond = or i1 %cmp32, %cmp39.not
  br i1 %or.cond, label %if.end30.if.end62_crit_edge, label %do.body51

if.end30.if.end62_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

do.body51:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m52) #12
  %16 = ptrtoint ptr %_m52 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1152921504606846976, ptr %_m52, align 8
  %conv56 = sext i32 %call31 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m52, ptr noundef nonnull @__func__.__ocfs2_recovery_thread, i32 noundef 1419, ptr noundef nonnull @.str.1, i64 noundef %conv56) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m52) #12
  br label %if.end62

if.end62:                                         ; preds = %do.body51, %if.end30.if.end62_crit_edge
  %journal = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 45
  %17 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %journal, align 4
  %slot_num63 = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 32
  %19 = ptrtoint ptr %slot_num63 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slot_num63, align 8
  call fastcc void @ocfs2_queue_recovery_completion(ptr noundef %18, i32 noundef %20, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0)
  %osb_lock = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %osb_lock) #12
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool64.not367 = icmp eq i32 %22, 0
  br i1 %tobool64.not367, label %if.end62.while.end_crit_edge, label %while.body.lr.ph

if.end62.while.end_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end62
  %rm_entries = getelementptr inbounds %struct.ocfs2_recovery_map, ptr %1, i32 0, i32 1
  %node_num1.i = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 31
  %slot_recovery_generations.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 7
  %replay_map.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 41
  br label %while.body

while.body:                                       ; preds = %if.end108.while.body_crit_edge, %while.body.lr.ph
  %rm_quota_used.1368 = phi i32 [ %rm_quota_used.0, %while.body.lr.ph ], [ %rm_quota_used.3345, %if.end108.while.body_crit_edge ]
  %23 = ptrtoint ptr %rm_entries to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rm_entries, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @_raw_spin_unlock(ptr noundef %osb_lock) #12
  %call66 = call i32 @ocfs2_node_num_to_slot(ptr noundef %arg, i32 noundef %26) #12
  call fastcc void @trace_ocfs2_recovery_thread_node(i32 noundef %26, i32 noundef %call66)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call66)
  %cmp67 = icmp eq i32 %call66, -2
  br i1 %cmp67, label %while.body.if.then87_crit_edge, label %if.end70

while.body.if.then87_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then87

if.end70:                                         ; preds = %while.body
  br i1 %.not, label %if.end70.if.end84_crit_edge, label %for.cond.preheader

if.end70.if.end84_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

for.cond.preheader:                               ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rm_quota_used.1368)
  %cmp73363 = icmp sgt i32 %rm_quota_used.1368, 0
  br i1 %cmp73363, label %for.cond.preheader.land.rhs_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.preheader.land.rhs_crit_edge:            ; preds = %for.cond.preheader
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.cond.preheader.land.rhs_crit_edge
  %i.0364 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %for.cond.preheader.land.rhs_crit_edge ]
  %arrayidx75 = getelementptr i32, ptr %rm_quota.0, i32 %i.0364
  %27 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %call66)
  %cmp76.not = icmp eq i32 %28, %call66
  br i1 %cmp76.not, label %land.rhs.for.end_crit_edge, label %for.inc

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %land.rhs
  %inc = add nuw nsw i32 %i.0364, 1
  %exitcond.not = icmp eq i32 %inc, %rm_quota_used.1368
  br i1 %exitcond.not, label %for.inc.if.then80_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

for.inc.if.then80_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then80

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.0364, %land.rhs.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %rm_quota_used.1368)
  %cmp78 = icmp eq i32 %i.0.lcssa, %rm_quota_used.1368
  br i1 %cmp78, label %for.end.if.then80_crit_edge, label %for.end.if.end84_crit_edge

for.end.if.end84_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

for.end.if.then80_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then80

if.then80:                                        ; preds = %for.end.if.then80_crit_edge, %for.inc.if.then80_crit_edge
  %inc81 = add i32 %rm_quota_used.1368, 1
  %arrayidx82 = getelementptr i32, ptr %rm_quota.0, i32 %rm_quota_used.1368
  %29 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call66, ptr %arrayidx82, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %for.end.if.end84_crit_edge, %if.end70.if.end84_crit_edge
  %rm_quota_used.2 = phi i32 [ %inc81, %if.then80 ], [ %rm_quota_used.1368, %for.end.if.end84_crit_edge ], [ %rm_quota_used.1368, %if.end70.if.end84_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %la_copy.i) #12
  %30 = ptrtoint ptr %la_copy.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %la_copy.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tl_copy.i) #12
  %31 = ptrtoint ptr %tl_copy.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %tl_copy.i, align 4
  %32 = ptrtoint ptr %node_num1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %node_num1.i, align 4
  call fastcc void @trace_ocfs2_recover_node(i32 noundef %26, i32 noundef %call66, i32 noundef %33) #12
  %34 = ptrtoint ptr %node_num1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %node_num1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %26)
  %cmp.i = icmp eq i32 %35, %26
  br i1 %cmp.i, label %do.body4.i, label %do.end9.i, !prof !296

do.body4.i:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1742, 0\0A.popsection", ""() #12, !srcloc !358
  unreachable

do.end9.i:                                        ; preds = %if.end84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inode.i.i) #12
  %36 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %inode.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i.i) #12
  %37 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %bh.i.i, align 4
  %call.i.i = call fastcc i32 @ocfs2_read_journal_inode(ptr noundef %arg, i32 noundef %call66, ptr noundef nonnull %bh.i.i, ptr noundef nonnull %inode.i.i) #12
  %38 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call.i.i, label %do.body.i.i [
    i32 0, label %if.end12.i.i
    i32 -512, label %do.end9.i.if.end261.i.i_crit_edge
    i32 -4, label %do.end9.i.if.end261.i.i_crit_edge403
    i32 -28, label %do.end9.i.if.end261.i.i_crit_edge404
    i32 -122, label %do.end9.i.if.end261.i.i_crit_edge405
  ]

do.end9.i.if.end261.i.i_crit_edge405:             ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end261.i.i

do.end9.i.if.end261.i.i_crit_edge404:             ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end261.i.i

do.end9.i.if.end261.i.i_crit_edge403:             ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end261.i.i

do.end9.i.if.end261.i.i_crit_edge:                ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end261.i.i

do.body.i.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #12
  %39 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 1152921504606846976, ptr %_m.i.i, align 8
  %conv.i.i = sext i32 %call.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.ocfs2_replay_journal, i32 noundef 1599, ptr noundef nonnull @.str.1, i64 noundef %conv.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #12
  br label %if.end261.i.i

if.end12.i.i:                                     ; preds = %do.end9.i
  %40 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bh.i.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_data.i.i, align 4
  %id1.i.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %43, i32 0, i32 34
  %ij_recovery_generation.i.i.i = getelementptr inbounds %struct.anon.80, ptr %id1.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %ij_recovery_generation.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ij_recovery_generation.i.i.i, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #12
  %tobool.not.i.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i, label %if.end12.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i300

if.end12.i.i.brelse.exit.i.i_crit_edge:           ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.i.i

if.then.i.i.i300:                                 ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %41) #12
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i300, %if.end12.i.i.brelse.exit.i.i_crit_edge
  %47 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %bh.i.i, align 4
  %48 = ptrtoint ptr %slot_recovery_generations.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %slot_recovery_generations.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %49, i32 %call66
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %46)
  %cmp14.not.i.i = icmp eq i32 %51, %46
  br i1 %cmp14.not.i.i, label %if.end21.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_ocfs2_replay_journal_recovered(i32 noundef %call66, i32 noundef %51, i32 noundef %46) #12
  %52 = ptrtoint ptr %slot_recovery_generations.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %slot_recovery_generations.i.i, align 4
  %arrayidx20.i.i = getelementptr i32, ptr %53, i32 %call66
  %54 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %46, ptr %arrayidx20.i.i, align 4
  br label %if.end261.i.i

if.end21.i.i:                                     ; preds = %brelse.exit.i.i
  %55 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %inode.i.i, align 4
  %call22.i.i = call i32 @ocfs2_inode_lock_full_nested(ptr noundef %56, ptr noundef nonnull %bh.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp23.i.i = icmp slt i32 %call22.i.i, 0
  br i1 %cmp23.i.i, label %if.then25.i.i, label %if.end38.i.i

if.then25.i.i:                                    ; preds = %if.end21.i.i
  call fastcc void @trace_ocfs2_replay_journal_lock_err(i32 noundef %call22.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call22.i.i)
  %cmp26.not.i.i = icmp eq i32 %call22.i.i, -512
  br i1 %cmp26.not.i.i, label %if.then25.i.i.if.end261.i.i_crit_edge, label %do.body29.i.i

if.then25.i.i.if.end261.i.i_crit_edge:            ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end261.i.i

do.body29.i.i:                                    ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m30.i.i) #12
  %57 = ptrtoint ptr %_m30.i.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 1152921504606846976, ptr %_m30.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m30.i.i, ptr noundef nonnull @__func__.ocfs2_replay_journal, i32 noundef 1630, ptr noundef nonnull @.str.50) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m30.i.i) #12
  br label %if.end261.i.i

if.end38.i.i:                                     ; preds = %if.end21.i.i
  %58 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bh.i.i, align 4
  %b_data39.i.i = getelementptr inbounds %struct.buffer_head, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %b_data39.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %b_data39.i.i, align 4
  %id1.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %61, i32 0, i32 34
  %62 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id1.i.i, align 8
  %ij_recovery_generation.i350.i.i = getelementptr inbounds %struct.anon.80, ptr %id1.i.i, i32 0, i32 1
  %64 = and i32 %63, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool42.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool42.not.i.i, label %if.then43.i.i, label %if.end46.i.i

if.then43.i.i:                                    ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %ij_recovery_generation.i350.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ij_recovery_generation.i350.i.i, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66) #12
  call fastcc void @trace_ocfs2_replay_journal_skip(i32 noundef %26) #12
  %68 = ptrtoint ptr %slot_recovery_generations.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %slot_recovery_generations.i.i, align 4
  %arrayidx45.i.i = getelementptr i32, ptr %69, i32 %call66
  %70 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %67, ptr %arrayidx45.i.i, align 4
  br label %if.then260.i.i

if.end46.i.i:                                     ; preds = %if.end38.i.i
  %71 = ptrtoint ptr %replay_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %replay_map.i.i.i, align 4
  %tobool.not.i351.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i351.i.i, label %if.end46.i.i.ocfs2_replay_map_set_state.exit.i.i_crit_edge, label %if.end.i.i.i302

if.end46.i.i.ocfs2_replay_map_set_state.exit.i.i_crit_edge: ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_replay_map_set_state.exit.i.i

if.end.i.i.i302:                                  ; preds = %if.end46.i.i
  %rm_state.i.i.i = getelementptr inbounds %struct.ocfs2_replay_map, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %rm_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rm_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp.i.i.i301 = icmp eq i32 %74, 2
  br i1 %cmp.i.i.i301, label %if.end.i.i.i302.ocfs2_replay_map_set_state.exit.i.i_crit_edge, label %if.end3.i.i.i

if.end.i.i.i302.ocfs2_replay_map_set_state.exit.i.i_crit_edge: ; preds = %if.end.i.i.i302
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_replay_map_set_state.exit.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i302
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %rm_state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %rm_state.i.i.i, align 4
  br label %ocfs2_replay_map_set_state.exit.i.i

ocfs2_replay_map_set_state.exit.i.i:              ; preds = %if.end3.i.i.i, %if.end.i.i.i302.ocfs2_replay_map_set_state.exit.i.i_crit_edge, %if.end46.i.i.ocfs2_replay_map_set_state.exit.i.i_crit_edge
  %76 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sb, align 4
  %s_dev.i.i = getelementptr inbounds %struct.super_block, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %s_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %s_dev.i.i, align 8
  %shr.i.i = lshr i32 %79, 20
  %and53.i.i = and i32 %79, 1048575
  %call54.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %26, i32 noundef %call66, i32 noundef %shr.i.i, i32 noundef %and53.i.i) #18
  %i_clusters.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %61, i32 0, i32 6
  %80 = ptrtoint ptr %i_clusters.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %i_clusters.i.i, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #12
  %83 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %inode.i.i, align 4
  %ip_clusters.i.i = getelementptr i8, ptr %84, i32 -176
  %85 = ptrtoint ptr %ip_clusters.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %82, ptr %ip_clusters.i.i, align 8
  %86 = load ptr, ptr %inode.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p_blkno.i) #12
  %87 = ptrtoint ptr %p_blkno.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 -1, ptr %p_blkno.i, align 8, !annotation !294
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p_blocks.i) #12
  %88 = ptrtoint ptr %p_blocks.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 -1, ptr %p_blocks.i, align 8, !annotation !294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #12
  %89 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %bh.i, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %86, i32 0, i32 8
  %90 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 33
  %92 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_fs_info.i, align 16
  %call.i321 = call fastcc i64 @i_size_read(ptr noundef %86) #12
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 3
  %94 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %s_blocksize.i.i, align 16
  %sub.i.i = add i32 %95, -1
  %conv.i.i322 = zext i32 %sub.i.i to i64
  %add.i.i = add i64 %call.i321, %conv.i.i322
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 2
  %96 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %sh_prom.i.i = zext i8 %97 to i64
  %shr.i.i323 = lshr i64 %add.i.i, %sh_prom.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr.i.i323)
  %cmp94.not.i = icmp eq i64 %shr.i.i323, 0
  br i1 %cmp94.not.i, label %ocfs2_force_read_journal.exit.thread339, label %while.body.lr.ph.i

ocfs2_force_read_journal.exit.thread339:          ; preds = %ocfs2_replay_map_set_state.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_blocks.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_blkno.i) #12
  br label %if.end87.i.i

while.body.lr.ph.i:                               ; preds = %ocfs2_replay_map_set_state.exit.i.i
  %sb.i = getelementptr inbounds %struct.ocfs2_super, ptr %93, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %for.end.i333.while.body.i_crit_edge, %while.body.lr.ph.i
  %v_blkno.095.i = phi i64 [ 0, %while.body.lr.ph.i ], [ %add.i331, %for.end.i333.while.body.i_crit_edge ]
  %call3.i = call i32 @ocfs2_extent_map_get_blocks(ptr noundef %86, i64 noundef %v_blkno.095.i, ptr noundef nonnull %p_blkno.i, ptr noundef nonnull %p_blocks.i, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i324 = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i324, label %if.then.i, label %for.cond.preheader.i325

for.cond.preheader.i325:                          ; preds = %while.body.i
  %98 = ptrtoint ptr %p_blocks.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %p_blocks.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %99)
  %cmp1890.not.i = icmp eq i64 %99, 0
  br i1 %cmp1890.not.i, label %for.cond.preheader.i325.for.end.i333_crit_edge, label %for.cond.preheader.i325.for.body.i328_crit_edge

for.cond.preheader.i325.for.body.i328_crit_edge:  ; preds = %for.cond.preheader.i325
  br label %for.body.i328

for.cond.preheader.i325.for.end.i333_crit_edge:   ; preds = %for.cond.preheader.i325
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i333

if.then.i:                                        ; preds = %while.body.i
  %100 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call3.i, label %do.body.i327 [
    i32 -512, label %if.then.i.ocfs2_force_read_journal.exit.thread_crit_edge
    i32 -4, label %if.then.i.ocfs2_force_read_journal.exit.thread_crit_edge406
    i32 -28, label %if.then.i.ocfs2_force_read_journal.exit.thread_crit_edge407
    i32 -122, label %if.then.i.ocfs2_force_read_journal.exit.thread_crit_edge408
  ]

if.then.i.ocfs2_force_read_journal.exit.thread_crit_edge408: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_force_read_journal.exit.thread

if.then.i.ocfs2_force_read_journal.exit.thread_crit_edge407: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_force_read_journal.exit.thread

if.then.i.ocfs2_force_read_journal.exit.thread_crit_edge406: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_force_read_journal.exit.thread

if.then.i.ocfs2_force_read_journal.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_force_read_journal.exit.thread

do.body.i327:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i320) #12
  %101 = ptrtoint ptr %_m.i320 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 1152921504606846976, ptr %_m.i320, align 8
  %conv.i326 = sext i32 %call3.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i320, ptr noundef nonnull @__func__.ocfs2_force_read_journal, i32 noundef 1183, ptr noundef nonnull @.str.1, i64 noundef %conv.i326) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i320) #12
  br label %ocfs2_force_read_journal.exit.thread

for.body.i328:                                    ; preds = %for.inc.i330.for.body.i328_crit_edge, %for.cond.preheader.i325.for.body.i328_crit_edge
  %status.192.i = phi i32 [ %status.2.i, %for.inc.i330.for.body.i328_crit_edge ], [ %call3.i, %for.cond.preheader.i325.for.body.i328_crit_edge ]
  %i.091.i = phi i32 [ %inc.i329, %for.inc.i330.for.body.i328_crit_edge ], [ 0, %for.cond.preheader.i325.for.body.i328_crit_edge ]
  %102 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sb.i, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %103, i32 0, i32 26
  %104 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %s_bdev.i, align 4
  %106 = ptrtoint ptr %p_blkno.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %p_blkno.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %103, i32 0, i32 3
  %108 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %s_blocksize.i, align 16
  %call21.i = call ptr @__find_get_block(ptr noundef %105, i64 noundef %107, i32 noundef %109) #12
  %110 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call21.i, ptr %bh.i, align 4
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %for.body.i328.for.inc.i330_crit_edge, label %brelse.exit.i

for.body.i328.for.inc.i330_crit_edge:             ; preds = %for.body.i328
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i330

brelse.exit.i:                                    ; preds = %for.body.i328
  call void @__brelse(ptr noundef nonnull %call21.i) #12
  %111 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %bh.i, align 4
  %112 = ptrtoint ptr %p_blkno.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %p_blkno.i, align 8
  %call25.i = call i32 @ocfs2_read_blocks_sync(ptr noundef %93, i64 noundef %113, i32 noundef 1, ptr noundef nonnull %bh.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.then28.i, label %if.end56.i

if.then28.i:                                      ; preds = %brelse.exit.i
  %114 = zext i32 %call25.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %call25.i, label %do.body45.i [
    i32 -512, label %if.then28.i.ocfs2_force_read_journal.exit.thread_crit_edge
    i32 -4, label %if.then28.i.ocfs2_force_read_journal.exit.thread_crit_edge409
    i32 -28, label %if.then28.i.ocfs2_force_read_journal.exit.thread_crit_edge410
    i32 -122, label %if.then28.i.ocfs2_force_read_journal.exit.thread_crit_edge411
  ]

if.then28.i.ocfs2_force_read_journal.exit.thread_crit_edge411: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_force_read_journal.exit.thread

if.then28.i.ocfs2_force_read_journal.exit.thread_crit_edge410: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_force_read_journal.exit.thread

if.then28.i.ocfs2_force_read_journal.exit.thread_crit_edge409: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_force_read_journal.exit.thread

if.then28.i.ocfs2_force_read_journal.exit.thread_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_force_read_journal.exit.thread

do.body45.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m46.i) #12
  %115 = ptrtoint ptr %_m46.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 1152921504606846976, ptr %_m46.i, align 8
  %conv50.i = sext i32 %call25.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m46.i, ptr noundef nonnull @__func__.ocfs2_force_read_journal, i32 noundef 1201, ptr noundef nonnull @.str.1, i64 noundef %conv50.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m46.i) #12
  br label %ocfs2_force_read_journal.exit.thread

if.end56.i:                                       ; preds = %brelse.exit.i
  %116 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bh.i, align 4
  %tobool.not.i82.i = icmp eq ptr %117, null
  br i1 %tobool.not.i82.i, label %if.end56.i.brelse.exit84.i_crit_edge, label %if.then.i83.i

if.end56.i.brelse.exit84.i_crit_edge:             ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit84.i

if.then.i83.i:                                    ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %117) #12
  br label %brelse.exit84.i

brelse.exit84.i:                                  ; preds = %if.then.i83.i, %if.end56.i.brelse.exit84.i_crit_edge
  %118 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %bh.i, align 4
  br label %for.inc.i330

for.inc.i330:                                     ; preds = %brelse.exit84.i, %for.body.i328.for.inc.i330_crit_edge
  %status.2.i = phi i32 [ %call25.i, %brelse.exit84.i ], [ %status.192.i, %for.body.i328.for.inc.i330_crit_edge ]
  %inc.i329 = add i32 %i.091.i, 1
  %119 = ptrtoint ptr %p_blkno.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %p_blkno.i, align 8
  %inc57.i = add i64 %120, 1
  store i64 %inc57.i, ptr %p_blkno.i, align 8
  %conv17.i = sext i32 %inc.i329 to i64
  %121 = ptrtoint ptr %p_blocks.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %p_blocks.i, align 8
  %cmp18.i = icmp ugt i64 %122, %conv17.i
  br i1 %cmp18.i, label %for.inc.i330.for.body.i328_crit_edge, label %for.inc.i330.for.end.i333_crit_edge

for.inc.i330.for.end.i333_crit_edge:              ; preds = %for.inc.i330
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i333

for.inc.i330.for.body.i328_crit_edge:             ; preds = %for.inc.i330
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i328

for.end.i333:                                     ; preds = %for.inc.i330.for.end.i333_crit_edge, %for.cond.preheader.i325.for.end.i333_crit_edge
  %status.1.lcssa.i = phi i32 [ %call3.i, %for.cond.preheader.i325.for.end.i333_crit_edge ], [ %status.2.i, %for.inc.i330.for.end.i333_crit_edge ]
  %.lcssa.i = phi i64 [ 0, %for.cond.preheader.i325.for.end.i333_crit_edge ], [ %122, %for.inc.i330.for.end.i333_crit_edge ]
  %add.i331 = add i64 %.lcssa.i, %v_blkno.095.i
  %cmp.i332 = icmp ult i64 %add.i331, %shr.i.i323
  br i1 %cmp.i332, label %for.end.i333.while.body.i_crit_edge, label %ocfs2_force_read_journal.exit

for.end.i333.while.body.i_crit_edge:              ; preds = %for.end.i333
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

ocfs2_force_read_journal.exit.thread:             ; preds = %do.body45.i, %if.then28.i.ocfs2_force_read_journal.exit.thread_crit_edge, %if.then28.i.ocfs2_force_read_journal.exit.thread_crit_edge409, %if.then28.i.ocfs2_force_read_journal.exit.thread_crit_edge410, %if.then28.i.ocfs2_force_read_journal.exit.thread_crit_edge411, %do.body.i327, %if.then.i.ocfs2_force_read_journal.exit.thread_crit_edge, %if.then.i.ocfs2_force_read_journal.exit.thread_crit_edge406, %if.then.i.ocfs2_force_read_journal.exit.thread_crit_edge407, %if.then.i.ocfs2_force_read_journal.exit.thread_crit_edge408
  %status.3.i.ph = phi i32 [ %call25.i, %do.body45.i ], [ %call25.i, %if.then28.i.ocfs2_force_read_journal.exit.thread_crit_edge ], [ %call25.i, %if.then28.i.ocfs2_force_read_journal.exit.thread_crit_edge409 ], [ %call25.i, %if.then28.i.ocfs2_force_read_journal.exit.thread_crit_edge410 ], [ %call25.i, %if.then28.i.ocfs2_force_read_journal.exit.thread_crit_edge411 ], [ %call3.i, %do.body.i327 ], [ %call3.i, %if.then.i.ocfs2_force_read_journal.exit.thread_crit_edge ], [ %call3.i, %if.then.i.ocfs2_force_read_journal.exit.thread_crit_edge406 ], [ %call3.i, %if.then.i.ocfs2_force_read_journal.exit.thread_crit_edge407 ], [ %call3.i, %if.then.i.ocfs2_force_read_journal.exit.thread_crit_edge408 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_blocks.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_blkno.i) #12
  br label %if.then59.i.i

ocfs2_force_read_journal.exit:                    ; preds = %for.end.i333
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_blocks.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_blkno.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.lcssa.i)
  %cmp57.i.i = icmp slt i32 %status.1.lcssa.i, 0
  br i1 %cmp57.i.i, label %ocfs2_force_read_journal.exit.if.then59.i.i_crit_edge, label %ocfs2_force_read_journal.exit.if.end87.i.i_crit_edge

ocfs2_force_read_journal.exit.if.end87.i.i_crit_edge: ; preds = %ocfs2_force_read_journal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87.i.i

ocfs2_force_read_journal.exit.if.then59.i.i_crit_edge: ; preds = %ocfs2_force_read_journal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then59.i.i

if.then59.i.i:                                    ; preds = %ocfs2_force_read_journal.exit.if.then59.i.i_crit_edge, %ocfs2_force_read_journal.exit.thread
  %status.3.i338 = phi i32 [ %status.3.i.ph, %ocfs2_force_read_journal.exit.thread ], [ %status.1.lcssa.i, %ocfs2_force_read_journal.exit.if.then59.i.i_crit_edge ]
  %123 = zext i32 %status.3.i338 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %status.3.i338, label %do.body76.i.i [
    i32 -512, label %if.then59.i.i.if.then260.i.i_crit_edge
    i32 -4, label %if.then59.i.i.if.then260.i.i_crit_edge412
    i32 -28, label %if.then59.i.i.if.then260.i.i_crit_edge413
    i32 -122, label %if.then59.i.i.if.then260.i.i_crit_edge414
  ]

if.then59.i.i.if.then260.i.i_crit_edge414:        ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then260.i.i

if.then59.i.i.if.then260.i.i_crit_edge413:        ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then260.i.i

if.then59.i.i.if.then260.i.i_crit_edge412:        ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then260.i.i

if.then59.i.i.if.then260.i.i_crit_edge:           ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then260.i.i

do.body76.i.i:                                    ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m77.i.i) #12
  %124 = ptrtoint ptr %_m77.i.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 1152921504606846976, ptr %_m77.i.i, align 8
  %conv81.i.i = sext i32 %status.3.i338 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m77.i.i, ptr noundef nonnull @__func__.ocfs2_replay_journal, i32 noundef 1658, ptr noundef nonnull @.str.1, i64 noundef %conv81.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m77.i.i) #12
  br label %if.then260.i.i

if.end87.i.i:                                     ; preds = %ocfs2_force_read_journal.exit.if.end87.i.i_crit_edge, %ocfs2_force_read_journal.exit.thread339
  %125 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %inode.i.i, align 4
  %call88.i.i = call ptr @jbd2_journal_init_inode(ptr noundef %126) #12
  %cmp89.i.i = icmp eq ptr %call88.i.i, null
  br i1 %cmp89.i.i, label %do.body92.i.i, label %if.end100.i.i

do.body92.i.i:                                    ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m93.i.i) #12
  %127 = ptrtoint ptr %_m93.i.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 1152921504606846976, ptr %_m93.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m93.i.i, ptr noundef nonnull @__func__.ocfs2_replay_journal, i32 noundef 1664, ptr noundef nonnull @.str.20) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m93.i.i) #12
  br label %if.then260.i.i

if.end100.i.i:                                    ; preds = %if.end87.i.i
  %call101.i.i = call i32 @jbd2_journal_load(ptr noundef nonnull %call88.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i.i)
  %cmp102.i.i = icmp slt i32 %call101.i.i, 0
  br i1 %cmp102.i.i, label %if.then104.i.i, label %if.end149.i.i

if.then104.i.i:                                   ; preds = %if.end100.i.i
  %128 = zext i32 %call101.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %call101.i.i, label %do.body121.i.i [
    i32 -512, label %if.then104.i.i.if.end130.i.i_crit_edge
    i32 -4, label %if.then104.i.i.if.end130.i.i_crit_edge415
    i32 -28, label %if.then104.i.i.if.end130.i.i_crit_edge416
    i32 -122, label %if.then104.i.i.if.end130.i.i_crit_edge417
  ]

if.then104.i.i.if.end130.i.i_crit_edge417:        ; preds = %if.then104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130.i.i

if.then104.i.i.if.end130.i.i_crit_edge416:        ; preds = %if.then104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130.i.i

if.then104.i.i.if.end130.i.i_crit_edge415:        ; preds = %if.then104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130.i.i

if.then104.i.i.if.end130.i.i_crit_edge:           ; preds = %if.then104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130.i.i

do.body121.i.i:                                   ; preds = %if.then104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m122.i.i) #12
  %129 = ptrtoint ptr %_m122.i.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 1152921504606846976, ptr %_m122.i.i, align 8
  %conv126.i.i = sext i32 %call101.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m122.i.i, ptr noundef nonnull @__func__.ocfs2_replay_journal, i32 noundef 1671, ptr noundef nonnull @.str.1, i64 noundef %conv126.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m122.i.i) #12
  br label %if.end130.i.i

if.end130.i.i:                                    ; preds = %do.body121.i.i, %if.then104.i.i.if.end130.i.i_crit_edge, %if.then104.i.i.if.end130.i.i_crit_edge415, %if.then104.i.i.if.end130.i.i_crit_edge416, %if.then104.i.i.if.end130.i.i_crit_edge417
  %130 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %inode.i.i, align 4
  %call133.i.i = call ptr @igrab(ptr noundef %131) #12
  %tobool134.not.i.i = icmp eq ptr %call133.i.i, null
  br i1 %tobool134.not.i.i, label %do.body139.i.i, label %do.end147.i.i, !prof !296

do.body139.i.i:                                   ; preds = %if.end130.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1672, 0\0A.popsection", ""() #12, !srcloc !359
  unreachable

do.end147.i.i:                                    ; preds = %if.end130.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call148.i.i = call i32 @jbd2_journal_destroy(ptr noundef nonnull %call88.i.i) #12
  br label %if.then260.i.i

if.end149.i.i:                                    ; preds = %if.end100.i.i
  %132 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %sb, align 4
  %call.i318 = call i32 @jbd2_journal_errno(ptr noundef nonnull %call88.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i318)
  %tobool.not.i319 = icmp eq i32 %call.i318, 0
  br i1 %tobool.not.i319, label %if.end149.i.i.ocfs2_clear_journal_error.exit_crit_edge, label %do.body.i

if.end149.i.i.ocfs2_clear_journal_error.exit_crit_edge: ; preds = %if.end149.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_clear_journal_error.exit

do.body.i:                                        ; preds = %if.end149.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i317) #12
  %134 = ptrtoint ptr %_m.i317 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 1152921504606846976, ptr %_m.i317, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i317, ptr noundef nonnull @__func__.ocfs2_clear_journal_error, i32 noundef 1061, ptr noundef nonnull @.str.45, i32 noundef %call.i318, i32 noundef %call66) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i317) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m4.i) #12
  %135 = ptrtoint ptr %_m4.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 1152921504606846976, ptr %_m4.i, align 8
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %133, i32 0, i32 39
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m4.i, ptr noundef nonnull @__func__.ocfs2_clear_journal_error, i32 noundef 1063, ptr noundef nonnull @.str.46, ptr noundef %s_id.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m4.i) #12
  call void @jbd2_journal_ack_err(ptr noundef nonnull %call88.i.i) #12
  %call11.i = call i32 @jbd2_journal_clear_err(ptr noundef nonnull %call88.i.i) #12
  br label %ocfs2_clear_journal_error.exit

ocfs2_clear_journal_error.exit:                   ; preds = %do.body.i, %if.end149.i.i.ocfs2_clear_journal_error.exit_crit_edge
  call void @jbd2_journal_lock_updates(ptr noundef nonnull %call88.i.i) #12
  %call151.i.i = call i32 @jbd2_journal_flush(ptr noundef nonnull %call88.i.i, i32 noundef 0) #12
  call void @jbd2_journal_unlock_updates(ptr noundef nonnull %call88.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151.i.i)
  %cmp152.i.i = icmp slt i32 %call151.i.i, 0
  br i1 %cmp152.i.i, label %if.then154.i.i, label %ocfs2_clear_journal_error.exit.if.end182.i.i_crit_edge

ocfs2_clear_journal_error.exit.if.end182.i.i_crit_edge: ; preds = %ocfs2_clear_journal_error.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182.i.i

if.then154.i.i:                                   ; preds = %ocfs2_clear_journal_error.exit
  %136 = zext i32 %call151.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %call151.i.i, label %do.body171.i.i [
    i32 -512, label %if.then154.i.i.if.end182.i.i_crit_edge
    i32 -4, label %if.then154.i.i.if.end182.i.i_crit_edge418
    i32 -28, label %if.then154.i.i.if.end182.i.i_crit_edge419
    i32 -122, label %if.then154.i.i.if.end182.i.i_crit_edge420
  ]

if.then154.i.i.if.end182.i.i_crit_edge420:        ; preds = %if.then154.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182.i.i

if.then154.i.i.if.end182.i.i_crit_edge419:        ; preds = %if.then154.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182.i.i

if.then154.i.i.if.end182.i.i_crit_edge418:        ; preds = %if.then154.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182.i.i

if.then154.i.i.if.end182.i.i_crit_edge:           ; preds = %if.then154.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182.i.i

do.body171.i.i:                                   ; preds = %if.then154.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m172.i.i) #12
  %137 = ptrtoint ptr %_m172.i.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 1152921504606846976, ptr %_m172.i.i, align 8
  %conv176.i.i = sext i32 %call151.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m172.i.i, ptr noundef nonnull @__func__.ocfs2_replay_journal, i32 noundef 1684, ptr noundef nonnull @.str.1, i64 noundef %conv176.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m172.i.i) #12
  br label %if.end182.i.i

if.end182.i.i:                                    ; preds = %do.body171.i.i, %if.then154.i.i.if.end182.i.i_crit_edge, %if.then154.i.i.if.end182.i.i_crit_edge418, %if.then154.i.i.if.end182.i.i_crit_edge419, %if.then154.i.i.if.end182.i.i_crit_edge420, %ocfs2_clear_journal_error.exit.if.end182.i.i_crit_edge
  %138 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %id1.i.i, align 8
  %140 = and i32 %139, -16777217
  store i32 %140, ptr %id1.i.i, align 8
  %141 = ptrtoint ptr %ij_recovery_generation.i350.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %ij_recovery_generation.i350.i.i, align 4
  %143 = call i32 @llvm.bswap.i32(i32 %142) #12
  %add.i.i.i.i = add i32 %143, 1
  %144 = call i32 @llvm.bswap.i32(i32 %add.i.i.i.i) #12
  %145 = ptrtoint ptr %ij_recovery_generation.i350.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %ij_recovery_generation.i350.i.i, align 4
  %146 = ptrtoint ptr %slot_recovery_generations.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %slot_recovery_generations.i.i, align 4
  %arrayidx190.i.i = getelementptr i32, ptr %147, i32 %call66
  %148 = ptrtoint ptr %arrayidx190.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %add.i.i.i.i, ptr %arrayidx190.i.i, align 4
  %149 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %sb, align 4
  %151 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %bh.i.i, align 4
  %b_data192.i.i = getelementptr inbounds %struct.buffer_head, ptr %152, i32 0, i32 5
  %153 = ptrtoint ptr %b_data192.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %b_data192.i.i, align 4
  %i_check.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %61, i32 0, i32 27
  call void @ocfs2_compute_meta_ecc(ptr noundef %150, ptr noundef %154, ptr noundef %i_check.i.i) #12
  %155 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %bh.i.i, align 4
  %157 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %inode.i.i, align 4
  %ip_metadata_cache.i.i.i = getelementptr i8, ptr %158, i32 -56
  %call194.i.i = call i32 @ocfs2_write_block(ptr noundef %arg, ptr noundef %156, ptr noundef %ip_metadata_cache.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194.i.i)
  %cmp195.i.i = icmp slt i32 %call194.i.i, 0
  br i1 %cmp195.i.i, label %if.then197.i.i, label %if.end182.i.i.do.body226.i.i_crit_edge

if.end182.i.i.do.body226.i.i_crit_edge:           ; preds = %if.end182.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body226.i.i

if.then197.i.i:                                   ; preds = %if.end182.i.i
  %159 = zext i32 %call194.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %call194.i.i, label %do.body214.i.i [
    i32 -512, label %if.then197.i.i.do.body226.i.i_crit_edge
    i32 -4, label %if.then197.i.i.do.body226.i.i_crit_edge421
    i32 -28, label %if.then197.i.i.do.body226.i.i_crit_edge422
    i32 -122, label %if.then197.i.i.do.body226.i.i_crit_edge423
  ]

if.then197.i.i.do.body226.i.i_crit_edge423:       ; preds = %if.then197.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body226.i.i

if.then197.i.i.do.body226.i.i_crit_edge422:       ; preds = %if.then197.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body226.i.i

if.then197.i.i.do.body226.i.i_crit_edge421:       ; preds = %if.then197.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body226.i.i

if.then197.i.i.do.body226.i.i_crit_edge:          ; preds = %if.then197.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body226.i.i

do.body214.i.i:                                   ; preds = %if.then197.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m215.i.i) #12
  %160 = ptrtoint ptr %_m215.i.i to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 1152921504606846976, ptr %_m215.i.i, align 8
  %conv219.i.i = sext i32 %call194.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m215.i.i, ptr noundef nonnull @__func__.ocfs2_replay_journal, i32 noundef 1699, ptr noundef nonnull @.str.1, i64 noundef %conv219.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m215.i.i) #12
  br label %do.body226.i.i

do.body226.i.i:                                   ; preds = %do.body214.i.i, %if.then197.i.i.do.body226.i.i_crit_edge, %if.then197.i.i.do.body226.i.i_crit_edge421, %if.then197.i.i.do.body226.i.i_crit_edge422, %if.then197.i.i.do.body226.i.i_crit_edge423, %if.end182.i.i.do.body226.i.i_crit_edge
  %161 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %inode.i.i, align 4
  %call227.i.i = call ptr @igrab(ptr noundef %162) #12
  %tobool228.not.i.i = icmp eq ptr %call227.i.i, null
  br i1 %tobool228.not.i.i, label %do.body238.i.i, label %do.end246.i.i, !prof !296

do.body238.i.i:                                   ; preds = %do.body226.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1701, 0\0A.popsection", ""() #12, !srcloc !360
  unreachable

do.end246.i.i:                                    ; preds = %do.body226.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call247.i.i = call i32 @jbd2_journal_destroy(ptr noundef nonnull %call88.i.i) #12
  %163 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %sb, align 4
  %s_dev253.i.i = getelementptr inbounds %struct.super_block, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %s_dev253.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %s_dev253.i.i, align 8
  %shr254.i.i = lshr i32 %166, 20
  %and257.i.i = and i32 %166, 1048575
  %call258.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %26, i32 noundef %call66, i32 noundef %shr254.i.i, i32 noundef %and257.i.i) #18
  br label %if.then260.i.i

if.then260.i.i:                                   ; preds = %do.end246.i.i, %do.end147.i.i, %do.body92.i.i, %do.body76.i.i, %if.then59.i.i.if.then260.i.i_crit_edge, %if.then59.i.i.if.then260.i.i_crit_edge412, %if.then59.i.i.if.then260.i.i_crit_edge413, %if.then59.i.i.if.then260.i.i_crit_edge414, %if.then43.i.i
  %status.0.ph.i.i = phi i32 [ %status.3.i338, %do.body76.i.i ], [ %status.3.i338, %if.then59.i.i.if.then260.i.i_crit_edge ], [ %status.3.i338, %if.then59.i.i.if.then260.i.i_crit_edge412 ], [ %status.3.i338, %if.then59.i.i.if.then260.i.i_crit_edge413 ], [ %status.3.i338, %if.then59.i.i.if.then260.i.i_crit_edge414 ], [ %call22.i.i, %if.then43.i.i ], [ -5, %do.body92.i.i ], [ %call101.i.i, %do.end147.i.i ], [ %call194.i.i, %do.end246.i.i ]
  %167 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %inode.i.i, align 4
  call void @ocfs2_inode_unlock(ptr noundef %168, i32 noundef 1) #12
  br label %if.end261.i.i

if.end261.i.i:                                    ; preds = %if.then260.i.i, %do.body29.i.i, %if.then25.i.i.if.end261.i.i_crit_edge, %if.then16.i.i, %do.body.i.i, %do.end9.i.if.end261.i.i_crit_edge, %do.end9.i.if.end261.i.i_crit_edge403, %do.end9.i.if.end261.i.i_crit_edge404, %do.end9.i.if.end261.i.i_crit_edge405
  %status.0363.i.i = phi i32 [ %status.0.ph.i.i, %if.then260.i.i ], [ -512, %if.then25.i.i.if.end261.i.i_crit_edge ], [ %call22.i.i, %do.body29.i.i ], [ -16, %if.then16.i.i ], [ %call.i.i, %do.end9.i.if.end261.i.i_crit_edge ], [ %call.i.i, %do.end9.i.if.end261.i.i_crit_edge403 ], [ %call.i.i, %do.end9.i.if.end261.i.i_crit_edge404 ], [ %call.i.i, %do.end9.i.if.end261.i.i_crit_edge405 ], [ %call.i.i, %do.body.i.i ]
  %169 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %inode.i.i, align 4
  call void @iput(ptr noundef %170) #12
  %171 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bh.i.i, align 4
  %tobool.not.i356.i.i = icmp eq ptr %172, null
  br i1 %tobool.not.i356.i.i, label %if.end261.i.i.ocfs2_replay_journal.exit.i_crit_edge, label %if.then.i357.i.i

if.end261.i.i.ocfs2_replay_journal.exit.i_crit_edge: ; preds = %if.end261.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_replay_journal.exit.i

if.then.i357.i.i:                                 ; preds = %if.end261.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %172) #12
  br label %ocfs2_replay_journal.exit.i

ocfs2_replay_journal.exit.i:                      ; preds = %if.then.i357.i.i, %if.end261.i.i.ocfs2_replay_journal.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inode.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0363.i.i)
  %cmp10.i = icmp slt i32 %status.0363.i.i, 0
  br i1 %cmp10.i, label %if.then11.i, label %if.end31.i

if.then11.i:                                      ; preds = %ocfs2_replay_journal.exit.i
  %173 = zext i32 %status.0363.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %status.0363.i.i, label %do.body24.i [
    i32 -16, label %if.then13.i
    i32 -512, label %if.then11.i.do.body88_crit_edge
    i32 -4, label %if.then11.i.do.body88_crit_edge424
    i32 -28, label %if.then11.i.do.body88_crit_edge425
    i32 -122, label %if.then11.i.do.body88_crit_edge426
  ]

if.then11.i.do.body88_crit_edge426:               ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body88

if.then11.i.do.body88_crit_edge425:               ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body88

if.then11.i.do.body88_crit_edge424:               ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body88

if.then11.i.do.body88_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body88

if.then13.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_ocfs2_recover_node_skip(i32 noundef %call66, i32 noundef %26) #12
  br label %skip_recovery

do.body24.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #12
  %174 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv.i = sext i32 %status.0363.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_recover_node, i32 noundef 1751, ptr noundef nonnull @.str.1, i64 noundef %conv.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #12
  br label %do.body88

if.end31.i:                                       ; preds = %ocfs2_replay_journal.exit.i
  %call32.i = call i32 @ocfs2_begin_local_alloc_recovery(ptr noundef %arg, i32 noundef %call66, ptr noundef nonnull %la_copy.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %if.then35.i, label %if.end63.i

if.then35.i:                                      ; preds = %if.end31.i
  %175 = zext i32 %call32.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %call32.i, label %do.body52.i [
    i32 -512, label %if.then35.i.do.body88_crit_edge
    i32 -4, label %if.then35.i.do.body88_crit_edge427
    i32 -28, label %if.then35.i.do.body88_crit_edge428
    i32 -122, label %if.then35.i.do.body88_crit_edge429
  ]

if.then35.i.do.body88_crit_edge429:               ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body88

if.then35.i.do.body88_crit_edge428:               ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body88

if.then35.i.do.body88_crit_edge427:               ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body88

if.then35.i.do.body88_crit_edge:                  ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body88

do.body52.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m53.i) #12
  %176 = ptrtoint ptr %_m53.i to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 1152921504606846976, ptr %_m53.i, align 8
  %conv57.i = sext i32 %call32.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m53.i, ptr noundef nonnull @__func__.ocfs2_recover_node, i32 noundef 1758, ptr noundef nonnull @.str.1, i64 noundef %conv57.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m53.i) #12
  br label %do.body88

if.end63.i:                                       ; preds = %if.end31.i
  %call64.i = call i32 @ocfs2_begin_truncate_log_recovery(ptr noundef %arg, i32 noundef %call66, ptr noundef nonnull %tl_copy.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %cmp65.i = icmp slt i32 %call64.i, 0
  br i1 %cmp65.i, label %if.then67.i, label %if.end63.i.if.end95.i_crit_edge

if.end63.i.if.end95.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95.i

if.then67.i:                                      ; preds = %if.end63.i
  %177 = zext i32 %call64.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %call64.i, label %do.body84.i [
    i32 -512, label %if.then67.i.if.end95.i_crit_edge
    i32 -4, label %if.then67.i.if.end95.i_crit_edge430
    i32 -28, label %if.then67.i.if.end95.i_crit_edge431
    i32 -122, label %if.then67.i.if.end95.i_crit_edge432
  ]

if.then67.i.if.end95.i_crit_edge432:              ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95.i

if.then67.i.if.end95.i_crit_edge431:              ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95.i

if.then67.i.if.end95.i_crit_edge430:              ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95.i

if.then67.i.if.end95.i_crit_edge:                 ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95.i

do.body84.i:                                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m85.i) #12
  %178 = ptrtoint ptr %_m85.i to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 1152921504606846976, ptr %_m85.i, align 8
  %conv89.i = sext i32 %call64.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m85.i, ptr noundef nonnull @__func__.ocfs2_recover_node, i32 noundef 1767, ptr noundef nonnull @.str.1, i64 noundef %conv89.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m85.i) #12
  br label %if.end95.i

if.end95.i:                                       ; preds = %do.body84.i, %if.then67.i.if.end95.i_crit_edge, %if.then67.i.if.end95.i_crit_edge430, %if.then67.i.if.end95.i_crit_edge431, %if.then67.i.if.end95.i_crit_edge432, %if.end63.i.if.end95.i_crit_edge
  %call96.i = call i32 @ocfs2_clear_slot(ptr noundef %arg, i32 noundef %call66) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %cmp97.i = icmp slt i32 %call96.i, 0
  br i1 %cmp97.i, label %if.then99.i, label %if.end95.i.if.end127.i_crit_edge

if.end95.i.if.end127.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127.i

if.then99.i:                                      ; preds = %if.end95.i
  %179 = zext i32 %call96.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %call96.i, label %do.body116.i [
    i32 -512, label %if.then99.i.if.end127.i_crit_edge
    i32 -4, label %if.then99.i.if.end127.i_crit_edge433
    i32 -28, label %if.then99.i.if.end127.i_crit_edge434
    i32 -122, label %if.then99.i.if.end127.i_crit_edge435
  ]

if.then99.i.if.end127.i_crit_edge435:             ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127.i

if.then99.i.if.end127.i_crit_edge434:             ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127.i

if.then99.i.if.end127.i_crit_edge433:             ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127.i

if.then99.i.if.end127.i_crit_edge:                ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127.i

do.body116.i:                                     ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m117.i) #12
  %180 = ptrtoint ptr %_m117.i to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 1152921504606846976, ptr %_m117.i, align 8
  %conv121.i = sext i32 %call96.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m117.i, ptr noundef nonnull @__func__.ocfs2_recover_node, i32 noundef 1773, ptr noundef nonnull @.str.1, i64 noundef %conv121.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m117.i) #12
  br label %if.end127.i

if.end127.i:                                      ; preds = %do.body116.i, %if.then99.i.if.end127.i_crit_edge, %if.then99.i.if.end127.i_crit_edge433, %if.then99.i.if.end127.i_crit_edge434, %if.then99.i.if.end127.i_crit_edge435, %if.end95.i.if.end127.i_crit_edge
  %181 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %journal, align 4
  %183 = ptrtoint ptr %la_copy.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %la_copy.i, align 4
  %185 = ptrtoint ptr %tl_copy.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %tl_copy.i, align 4
  call fastcc void @ocfs2_queue_recovery_completion(ptr noundef %182, i32 noundef %call66, ptr noundef %184, ptr noundef %186, ptr noundef null, i32 noundef 1) #12
  br label %skip_recovery

skip_recovery:                                    ; preds = %if.end127.i, %if.then13.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tl_copy.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %la_copy.i) #12
  br label %if.then87

if.then87:                                        ; preds = %skip_recovery, %while.body.if.then87_crit_edge
  %rm_quota_used.3346 = phi i32 [ %rm_quota_used.2, %skip_recovery ], [ %rm_quota_used.1368, %while.body.if.then87_crit_edge ]
  %187 = ptrtoint ptr %recovery_map to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %recovery_map, align 8
  call void @_raw_spin_lock(ptr noundef %osb_lock) #12
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %188, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp30.not.i = icmp eq i32 %190, 0
  br i1 %cmp30.not.i, label %if.then87.ocfs2_recovery_map_clear.exit_crit_edge, label %for.body.lr.ph.i

if.then87.ocfs2_recovery_map_clear.exit_crit_edge: ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_recovery_map_clear.exit

for.body.lr.ph.i:                                 ; preds = %if.then87
  %rm_entries.i = getelementptr inbounds %struct.ocfs2_recovery_map, ptr %188, i32 0, i32 1
  %191 = ptrtoint ptr %rm_entries.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %rm_entries.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %192, i32 %i.031.i
  %193 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %26)
  %cmp1.i = icmp eq i32 %194, %26
  br i1 %cmp1.i, label %if.then4.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %190
  br i1 %exitcond.not.i, label %for.inc.i.ocfs2_recovery_map_clear.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.ocfs2_recovery_map_clear.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_recovery_map_clear.exit

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.le = getelementptr i32, ptr %192, i32 %i.031.i
  %add.i = add nuw i32 %i.031.i, 1
  %arrayidx8.i = getelementptr i32, ptr %192, i32 %add.i
  %195 = xor i32 %i.031.i, -1
  %sub10.i = add i32 %190, %195
  %mul.i = shl i32 %sub10.i, 2
  %196 = call ptr @memmove(ptr %arrayidx.i.le, ptr %arrayidx8.i, i32 %mul.i)
  %197 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %188, align 4
  %dec.i = add i32 %198, -1
  store i32 %dec.i, ptr %188, align 4
  br label %ocfs2_recovery_map_clear.exit

ocfs2_recovery_map_clear.exit:                    ; preds = %if.then4.i, %for.inc.i.ocfs2_recovery_map_clear.exit_crit_edge, %if.then87.ocfs2_recovery_map_clear.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %osb_lock) #12
  br label %if.end108

do.body88:                                        ; preds = %do.body52.i, %if.then35.i.do.body88_crit_edge, %if.then35.i.do.body88_crit_edge427, %if.then35.i.do.body88_crit_edge428, %if.then35.i.do.body88_crit_edge429, %do.body24.i, %if.then11.i.do.body88_crit_edge, %if.then11.i.do.body88_crit_edge424, %if.then11.i.do.body88_crit_edge425, %if.then11.i.do.body88_crit_edge426
  %status.0.i.ph = phi i32 [ %call32.i, %do.body52.i ], [ %call32.i, %if.then35.i.do.body88_crit_edge ], [ %call32.i, %if.then35.i.do.body88_crit_edge427 ], [ %call32.i, %if.then35.i.do.body88_crit_edge428 ], [ %call32.i, %if.then35.i.do.body88_crit_edge429 ], [ %status.0363.i.i, %do.body24.i ], [ %status.0363.i.i, %if.then11.i.do.body88_crit_edge ], [ %status.0363.i.i, %if.then11.i.do.body88_crit_edge424 ], [ %status.0363.i.i, %if.then11.i.do.body88_crit_edge425 ], [ %status.0363.i.i, %if.then11.i.do.body88_crit_edge426 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tl_copy.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %la_copy.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m89) #12
  %199 = ptrtoint ptr %_m89 to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 1152921504606846976, ptr %_m89, align 8
  %200 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %s_dev, align 8
  %shr = lshr i32 %203, 20
  %and96 = and i32 %203, 1048575
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m89, ptr noundef nonnull @__func__.__ocfs2_recovery_thread, i32 noundef 1461, ptr noundef nonnull @.str.48, i32 noundef %status.0.i.ph, i32 noundef %26, i32 noundef %shr, i32 noundef %and96) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m89) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m101) #12
  %204 = ptrtoint ptr %_m101 to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 1152921504606846976, ptr %_m101, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m101, ptr noundef nonnull @__func__.__ocfs2_recovery_thread, i32 noundef 1462, ptr noundef nonnull @.str.49) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m101) #12
  br label %if.end108

if.end108:                                        ; preds = %do.body88, %ocfs2_recovery_map_clear.exit
  %status.1347 = phi i32 [ %status.0.i.ph, %do.body88 ], [ 0, %ocfs2_recovery_map_clear.exit ]
  %rm_quota_used.3345 = phi i32 [ %rm_quota_used.2, %do.body88 ], [ %rm_quota_used.3346, %ocfs2_recovery_map_clear.exit ]
  call void @_raw_spin_lock(ptr noundef %osb_lock) #12
  %205 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %1, align 4
  %tobool64.not = icmp eq i32 %206, 0
  br i1 %tobool64.not, label %if.end108.while.end_crit_edge, label %if.end108.while.body_crit_edge

if.end108.while.body_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end108.while.end_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end108.while.end_crit_edge, %if.end62.while.end_crit_edge
  %rm_quota_used.1.lcssa = phi i32 [ %rm_quota_used.0, %if.end62.while.end_crit_edge ], [ %rm_quota_used.3345, %if.end108.while.end_crit_edge ]
  %status.0.lcssa = phi i32 [ %call31, %if.end62.while.end_crit_edge ], [ %status.1347, %if.end108.while.end_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %osb_lock) #12
  call fastcc void @trace_ocfs2_recovery_thread_end(i32 noundef %status.0.lcssa)
  %call111 = call i32 @ocfs2_check_journals_nolocks(ptr noundef %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -30, i32 %call111)
  %cmp112 = icmp eq i32 %call111, -30
  %spec.select = select i1 %cmp112, i32 0, i32 %call111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp114 = icmp slt i32 %spec.select, 0
  br i1 %cmp114, label %if.then116, label %while.end.if.end144_crit_edge

while.end.if.end144_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144

if.then116:                                       ; preds = %while.end
  %207 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %207, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %spec.select, label %do.body133 [
    i32 -512, label %if.then116.if.end144_crit_edge
    i32 -4, label %if.then116.if.end144_crit_edge436
    i32 -122, label %if.then116.if.end144_crit_edge437
    i32 -28, label %if.then116.if.end144_crit_edge438
  ]

if.then116.if.end144_crit_edge438:                ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144

if.then116.if.end144_crit_edge437:                ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144

if.then116.if.end144_crit_edge436:                ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144

if.then116.if.end144_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144

do.body133:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m134) #12
  %208 = ptrtoint ptr %_m134 to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 1152921504606846976, ptr %_m134, align 8
  %conv138 = sext i32 %spec.select to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m134, ptr noundef nonnull @__func__.__ocfs2_recovery_thread, i32 noundef 1474, ptr noundef nonnull @.str.1, i64 noundef %conv138) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m134) #12
  br label %if.end144

if.end144:                                        ; preds = %do.body133, %if.then116.if.end144_crit_edge, %if.then116.if.end144_crit_edge436, %if.then116.if.end144_crit_edge437, %if.then116.if.end144_crit_edge438, %while.end.if.end144_crit_edge
  %.not.not = xor i1 %.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rm_quota_used.1.lcssa)
  %cmp148371 = icmp sgt i32 %rm_quota_used.1.lcssa, 0
  %or.cond375 = select i1 %.not.not, i1 %cmp148371, i1 false
  br i1 %or.cond375, label %if.end144.for.body150_crit_edge, label %if.end144.if.end189_crit_edge

if.end144.if.end189_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end189

if.end144.for.body150_crit_edge:                  ; preds = %if.end144
  br label %for.body150

for.body150:                                      ; preds = %for.inc186.for.body150_crit_edge, %if.end144.for.body150_crit_edge
  %status.2373 = phi i32 [ %status.3, %for.inc186.for.body150_crit_edge ], [ %spec.select, %if.end144.for.body150_crit_edge ]
  %i.1372 = phi i32 [ %inc187, %for.inc186.for.body150_crit_edge ], [ 0, %if.end144.for.body150_crit_edge ]
  %arrayidx151 = getelementptr i32, ptr %rm_quota.0, i32 %i.1372
  %209 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx151, align 4
  %call152 = call ptr @ocfs2_begin_quota_recovery(ptr noundef %arg, i32 noundef %210) #12
  %cmp.i303 = icmp ugt ptr %call152, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i303, label %if.then154, label %if.end183

if.then154:                                       ; preds = %for.body150
  %211 = ptrtoint ptr %call152 to i32
  %212 = zext i32 %211 to i64
  call void @__sanitizer_cov_trace_switch(i64 %212, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %211, label %do.body172 [
    i32 -512, label %if.then154.for.inc186_crit_edge
    i32 -4, label %if.then154.for.inc186_crit_edge439
    i32 524289, label %if.then154.for.inc186_crit_edge440
    i32 -28, label %if.then154.for.inc186_crit_edge441
    i32 -122, label %if.then154.for.inc186_crit_edge442
  ]

if.then154.for.inc186_crit_edge442:               ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc186

if.then154.for.inc186_crit_edge441:               ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc186

if.then154.for.inc186_crit_edge440:               ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc186

if.then154.for.inc186_crit_edge439:               ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc186

if.then154.for.inc186_crit_edge:                  ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc186

do.body172:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m173) #12
  %213 = ptrtoint ptr %_m173 to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 1152921504606846976, ptr %_m173, align 8
  %conv177 = sext i32 %211 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m173, ptr noundef nonnull @__func__.__ocfs2_recovery_thread, i32 noundef 1484, ptr noundef nonnull @.str.1, i64 noundef %conv177) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m173) #12
  br label %for.inc186

if.end183:                                        ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #14
  %214 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %journal, align 4
  %216 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx151, align 4
  call fastcc void @ocfs2_queue_recovery_completion(ptr noundef %215, i32 noundef %217, ptr noundef null, ptr noundef null, ptr noundef %call152, i32 noundef 1)
  br label %for.inc186

for.inc186:                                       ; preds = %if.end183, %do.body172, %if.then154.for.inc186_crit_edge, %if.then154.for.inc186_crit_edge439, %if.then154.for.inc186_crit_edge440, %if.then154.for.inc186_crit_edge441, %if.then154.for.inc186_crit_edge442
  %status.3 = phi i32 [ %status.2373, %if.end183 ], [ %211, %if.then154.for.inc186_crit_edge ], [ %211, %if.then154.for.inc186_crit_edge439 ], [ %211, %if.then154.for.inc186_crit_edge440 ], [ %211, %if.then154.for.inc186_crit_edge441 ], [ %211, %if.then154.for.inc186_crit_edge442 ], [ %211, %do.body172 ]
  %inc187 = add nuw nsw i32 %i.1372, 1
  %exitcond379.not = icmp eq i32 %inc187, %rm_quota_used.1.lcssa
  br i1 %exitcond379.not, label %for.inc186.if.end189_crit_edge, label %for.inc186.for.body150_crit_edge

for.inc186.for.body150_crit_edge:                 ; preds = %for.inc186
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body150

for.inc186.if.end189_crit_edge:                   ; preds = %for.inc186
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end189

if.end189:                                        ; preds = %for.inc186.if.end189_crit_edge, %if.end144.if.end189_crit_edge
  %status.4 = phi i32 [ %spec.select, %if.end144.if.end189_crit_edge ], [ %status.3, %for.inc186.if.end189_crit_edge ]
  call void @ocfs2_super_unlock(ptr noundef %arg, i32 noundef 1) #12
  %replay_map1.i = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 41
  %218 = ptrtoint ptr %replay_map1.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %replay_map1.i, align 4
  %tobool.not.i = icmp eq ptr %219, null
  br i1 %tobool.not.i, label %if.end189.bail_crit_edge, label %if.end.i

if.end189.bail_crit_edge:                         ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.end.i:                                         ; preds = %if.end189
  %rm_state.i = getelementptr inbounds %struct.ocfs2_replay_map, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %rm_state.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %rm_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %221)
  %cmp.not.i = icmp eq i32 %221, 1
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.end.i.bail_crit_edge

if.end.i.bail_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

for.cond.preheader.i:                             ; preds = %if.end.i
  %222 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %cmp41.not.i = icmp eq i32 %223, 0
  br i1 %cmp41.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i307_crit_edge

for.cond.preheader.i.for.body.i307_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i307

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i307:                                    ; preds = %for.inc.i309.for.body.i307_crit_edge, %for.cond.preheader.i.for.body.i307_crit_edge
  %i.02.i = phi i32 [ %inc.i308, %for.inc.i309.for.body.i307_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i307_crit_edge ]
  %arrayidx.i306 = getelementptr %struct.ocfs2_replay_map, ptr %219, i32 0, i32 2, i32 %i.02.i
  %224 = ptrtoint ptr %arrayidx.i306 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx.i306, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool5.not.i = icmp eq i8 %225, 0
  br i1 %tobool5.not.i, label %for.body.i307.for.inc.i309_crit_edge, label %if.then6.i

for.body.i307.for.inc.i309_crit_edge:             ; preds = %for.body.i307
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i309

if.then6.i:                                       ; preds = %for.body.i307
  call void @__sanitizer_cov_trace_pc() #14
  %226 = ptrtoint ptr %journal to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %journal, align 4
  call fastcc void @ocfs2_queue_recovery_completion(ptr noundef %227, i32 noundef %i.02.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1) #12
  br label %for.inc.i309

for.inc.i309:                                     ; preds = %if.then6.i, %for.body.i307.for.inc.i309_crit_edge
  %inc.i308 = add nuw i32 %i.02.i, 1
  %228 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %219, align 4
  %cmp4.i = icmp ult i32 %inc.i308, %229
  br i1 %cmp4.i, label %for.inc.i309.for.body.i307_crit_edge, label %for.inc.i309.for.end.i_crit_edge

for.inc.i309.for.end.i_crit_edge:                 ; preds = %for.inc.i309
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i309.for.body.i307_crit_edge:             ; preds = %for.inc.i309
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i307

for.end.i:                                        ; preds = %for.inc.i309.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %230 = ptrtoint ptr %rm_state.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 2, ptr %rm_state.i, align 4
  br label %bail

bail:                                             ; preds = %for.end.i, %if.end.i.bail_crit_edge, %if.end189.bail_crit_edge, %do.body, %if.then15.bail_crit_edge, %if.then15.bail_crit_edge400, %if.then15.bail_crit_edge401, %if.then15.bail_crit_edge402, %kcalloc.exit.bail_crit_edge, %entry.bail_crit_edge
  %rm_quota.1 = phi ptr [ null, %entry.bail_crit_edge ], [ null, %kcalloc.exit.bail_crit_edge ], [ %rm_quota.0, %if.then15.bail_crit_edge ], [ %rm_quota.0, %if.then15.bail_crit_edge400 ], [ %rm_quota.0, %if.then15.bail_crit_edge401 ], [ %rm_quota.0, %if.then15.bail_crit_edge402 ], [ %rm_quota.0, %do.body ], [ %rm_quota.0, %if.end189.bail_crit_edge ], [ %rm_quota.0, %if.end.i.bail_crit_edge ], [ %rm_quota.0, %for.end.i ]
  %rm_quota_used.4 = phi i32 [ 0, %entry.bail_crit_edge ], [ 0, %kcalloc.exit.bail_crit_edge ], [ %rm_quota_used.0, %if.then15.bail_crit_edge ], [ %rm_quota_used.0, %if.then15.bail_crit_edge400 ], [ %rm_quota_used.0, %if.then15.bail_crit_edge401 ], [ %rm_quota_used.0, %if.then15.bail_crit_edge402 ], [ %rm_quota_used.0, %do.body ], [ %rm_quota_used.1.lcssa, %if.end189.bail_crit_edge ], [ %rm_quota_used.1.lcssa, %if.end.i.bail_crit_edge ], [ %rm_quota_used.1.lcssa, %for.end.i ]
  %status.5 = phi i32 [ %call.i, %entry.bail_crit_edge ], [ -12, %kcalloc.exit.bail_crit_edge ], [ %call13, %if.then15.bail_crit_edge ], [ %call13, %if.then15.bail_crit_edge400 ], [ %call13, %if.then15.bail_crit_edge401 ], [ %call13, %if.then15.bail_crit_edge402 ], [ %call13, %do.body ], [ %status.4, %if.end189.bail_crit_edge ], [ %status.4, %if.end.i.bail_crit_edge ], [ %status.4, %for.end.i ]
  %recovery_lock = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 39
  call void @mutex_lock_nested(ptr noundef %recovery_lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.5)
  %tobool190.not = icmp eq i32 %status.5, 0
  br i1 %tobool190.not, label %land.lhs.true191, label %bail.if.end196_crit_edge

bail.if.end196_crit_edge:                         ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end196

land.lhs.true191:                                 ; preds = %bail
  %231 = ptrtoint ptr %recovery_map to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %recovery_map, align 8
  %osb_lock.i311 = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 21
  call void @_raw_spin_lock(ptr noundef %osb_lock.i311) #12
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %232, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %cmp.i312.not = icmp eq i32 %234, 0
  call void @_raw_spin_unlock(ptr noundef %osb_lock.i311) #12
  br i1 %cmp.i312.not, label %land.lhs.true191.if.end196_crit_edge, label %if.then194

land.lhs.true191.if.end196_crit_edge:             ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end196

if.then194:                                       ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %recovery_lock) #12
  br label %restart

if.end196:                                        ; preds = %land.lhs.true191.if.end196_crit_edge, %bail.if.end196_crit_edge
  %replay_map1.i314 = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 41
  %235 = ptrtoint ptr %replay_map1.i314 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %replay_map1.i314, align 4
  %tobool.not.i315 = icmp eq ptr %236, null
  br i1 %tobool.not.i315, label %if.end196.ocfs2_free_replay_slots.exit_crit_edge, label %if.end.i316

if.end196.ocfs2_free_replay_slots.exit_crit_edge: ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_free_replay_slots.exit

if.end.i316:                                      ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %236) #12
  %237 = ptrtoint ptr %replay_map1.i314 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr null, ptr %replay_map1.i314, align 4
  br label %ocfs2_free_replay_slots.exit

ocfs2_free_replay_slots.exit:                     ; preds = %if.end.i316, %if.end196.ocfs2_free_replay_slots.exit_crit_edge
  %recovery_thread_task = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 42
  %238 = ptrtoint ptr %recovery_thread_task to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr null, ptr %recovery_thread_task, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !361
  call void @arm_heavy_mb() #12
  %recovery_event = getelementptr inbounds %struct.ocfs2_super, ptr %arg, i32 0, i32 74
  call void @__wake_up(ptr noundef %recovery_event, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  call void @mutex_unlock(ptr noundef %recovery_lock) #12
  br i1 %.not, label %ocfs2_free_replay_slots.exit.if.end203_crit_edge, label %if.then202

ocfs2_free_replay_slots.exit.if.end203_crit_edge: ; preds = %ocfs2_free_replay_slots.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end203

if.then202:                                       ; preds = %ocfs2_free_replay_slots.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef %rm_quota.1) #12
  br label %if.end203

if.end203:                                        ; preds = %if.then202, %ocfs2_free_replay_slots.exit.if.end203_crit_edge
  ret i32 %status.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_mark_dead_nodes(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  %_m.i = alloca i64, align 8
  %_m6.i = alloca i64, align 8
  %_m30.i = alloca i64, align 8
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %node_num = alloca i32, align 4
  %bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m60 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %node_num) #12
  %0 = ptrtoint ptr %node_num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %node_num, align 4, !annotation !294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %1 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %bh, align 4
  %max_slots = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 30
  %2 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_slots, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp124.not = icmp eq i32 %3, 0
  br i1 %cmp124.not, label %entry.bail_crit_edge, label %for.body.lr.ph

entry.bail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

for.body.lr.ph:                                   ; preds = %entry
  %osb_lock = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  %slot_recovery_generations = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 7
  %slot_num = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 32
  %recovery_map.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = call fastcc i32 @ocfs2_read_journal_inode(ptr noundef %osb, i32 noundef %i.0125, ptr noundef nonnull %bh, ptr noundef null)
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %call, label %do.body [
    i32 0, label %if.end13
    i32 -512, label %for.body.bail_crit_edge
    i32 -4, label %for.body.bail_crit_edge178
    i32 -28, label %for.body.bail_crit_edge179
    i32 -122, label %for.body.bail_crit_edge180
  ]

for.body.bail_crit_edge180:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

for.body.bail_crit_edge179:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

for.body.bail_crit_edge178:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

for.body.bail_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %5 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_mark_dead_nodes, i32 noundef 1842, ptr noundef nonnull @.str.1, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %bail

if.end13:                                         ; preds = %for.body
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  %id1.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %9, i32 0, i32 34
  %ij_recovery_generation.i = getelementptr inbounds %struct.anon.80, ptr %id1.i, i32 0, i32 1
  %10 = ptrtoint ptr %ij_recovery_generation.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ij_recovery_generation.i, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11) #12
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end13.brelse.exit_crit_edge, label %if.then.i

if.end13.brelse.exit_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %7) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end13.brelse.exit_crit_edge
  %13 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %bh, align 4
  call void @_raw_spin_lock(ptr noundef %osb_lock) #12
  %14 = ptrtoint ptr %slot_recovery_generations to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slot_recovery_generations, align 4
  %arrayidx = getelementptr i32, ptr %15, i32 %i.0125
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %12, ptr %arrayidx, align 4
  %17 = load ptr, ptr %slot_recovery_generations, align 4
  %arrayidx16 = getelementptr i32, ptr %17, i32 %i.0125
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx16, align 4
  call fastcc void @trace_ocfs2_mark_dead_nodes(i32 noundef %i.0125, i32 noundef %19)
  %20 = ptrtoint ptr %slot_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slot_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0125, i32 %21)
  %cmp17 = icmp eq i32 %i.0125, %21
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %osb_lock) #12
  br label %for.inc

if.end21:                                         ; preds = %brelse.exit
  %call22 = call i32 @ocfs2_slot_to_node_num_locked(ptr noundef %osb, i32 noundef %i.0125, ptr noundef nonnull %node_num) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call22)
  %cmp23 = icmp eq i32 %call22, -2
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %osb_lock) #12
  br label %for.inc

if.end27:                                         ; preds = %if.end21
  %22 = ptrtoint ptr %node_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %node_num, align 4
  %24 = ptrtoint ptr %recovery_map.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %recovery_map.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %26 = ptrtoint ptr %osb_lock to i32
  call void @__asan_load4_noabort(i32 %26)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %osb_lock, align 4
  %27 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %for.cond.preheader.i, !prof !296

for.cond.preheader.i:                             ; preds = %if.end27
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp18.not.i = icmp eq i32 %29, 0
  br i1 %cmp18.not.i, label %for.cond.preheader.i.if.end32_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end32_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %rm_entries.i = getelementptr inbounds %struct.ocfs2_recovery_map, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %rm_entries.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rm_entries.i, align 4
  br label %for.body.i

do.body4.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 237, 0\0A.popsection", ""() #12, !srcloc !354
  unreachable

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %for.cond.i.if.end32_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.if.end32_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %31, i32 %i.019.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %23)
  %cmp10.i = icmp eq i32 %33, %23
  br i1 %cmp10.i, label %if.then30, label %for.cond.i

if.then30:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %osb_lock) #12
  br label %for.inc

if.end32:                                         ; preds = %for.cond.i.if.end32_crit_edge, %for.cond.preheader.i.if.end32_crit_edge
  call void @_raw_spin_unlock(ptr noundef %osb_lock) #12
  %call.i = call ptr @ocfs2_get_system_file_inode(ptr noundef %osb, i32 noundef 10, i32 noundef %i.0125) #12
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #12
  %34 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 1152921504606846976, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_trylock_journal, i32 noundef 1797, ptr noundef nonnull @.str.55) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #12
  br label %if.else.thread

if.end2.i:                                        ; preds = %if.end32
  %call3.i = call zeroext i1 @is_bad_inode(ptr noundef nonnull %call.i) #12
  br i1 %call3.i, label %do.body5.i, label %if.end13.i

do.body5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m6.i) #12
  %35 = ptrtoint ptr %_m6.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1152921504606846976, ptr %_m6.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m6.i, ptr noundef nonnull @__func__.ocfs2_trylock_journal, i32 noundef 1802, ptr noundef nonnull @.str.17) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m6.i) #12
  call void @iput(ptr noundef nonnull %call.i) #12
  br label %if.else.thread

if.end13.i:                                       ; preds = %if.end2.i
  %ip_flags.i = getelementptr i8, ptr %call.i, i32 -76
  %36 = ptrtoint ptr %ip_flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ip_flags.i, align 4
  %or.i = or i32 %37, 2
  store i32 %or.i, ptr %ip_flags.i, align 4
  %call15.i = call i32 @ocfs2_inode_lock_full_nested(ptr noundef nonnull %call.i, ptr noundef null, i32 noundef 1, i32 noundef 3, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.then17.i, label %ocfs2_trylock_journal.exit

if.then17.i:                                      ; preds = %if.end13.i
  %38 = zext i32 %call15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %call15.i, label %do.body29.i [
    i32 -11, label %if.else.thread147
    i32 -512, label %if.then17.i.if.else_crit_edge
    i32 -4, label %if.then17.i.if.else_crit_edge181
    i32 -28, label %if.then17.i.if.else_crit_edge182
    i32 -122, label %if.then17.i.if.else_crit_edge183
  ]

if.then17.i.if.else_crit_edge183:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then17.i.if.else_crit_edge182:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then17.i.if.else_crit_edge181:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then17.i.if.else_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.else.thread147:                                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @iput(ptr noundef nonnull %call.i) #12
  br label %for.inc

do.body29.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m30.i) #12
  %39 = ptrtoint ptr %_m30.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 1152921504606846976, ptr %_m30.i, align 8
  %conv.i = sext i32 %call15.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m30.i, ptr noundef nonnull @__func__.ocfs2_trylock_journal, i32 noundef 1814, ptr noundef nonnull @.str.1, i64 noundef %conv.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m30.i) #12
  br label %if.else

ocfs2_trylock_journal.exit:                       ; preds = %if.end13.i
  call void @ocfs2_inode_unlock(ptr noundef nonnull %call.i, i32 noundef 1) #12
  call void @iput(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool35.not = icmp eq i32 %call15.i, 0
  br i1 %tobool35.not, label %if.then36, label %ocfs2_trylock_journal.exit.for.inc_crit_edge

ocfs2_trylock_journal.exit.for.inc_crit_edge:     ; preds = %ocfs2_trylock_journal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then36:                                        ; preds = %ocfs2_trylock_journal.exit
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %node_num to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %node_num, align 4
  call void @ocfs2_recovery_thread(ptr noundef %osb, i32 noundef %41)
  br label %for.inc

if.else.thread:                                   ; preds = %do.body5.i, %do.body.i
  call void @iput(ptr noundef null) #12
  br label %do.body59

if.else:                                          ; preds = %do.body29.i, %if.then17.i.if.else_crit_edge, %if.then17.i.if.else_crit_edge181, %if.then17.i.if.else_crit_edge182, %if.then17.i.if.else_crit_edge183
  call void @iput(ptr noundef nonnull %call.i) #12
  %42 = zext i32 %call15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %call15.i, label %if.else.do.body59_crit_edge [
    i32 -11, label %if.else.for.inc_crit_edge
    i32 -512, label %if.else.bail_crit_edge
    i32 -4, label %if.else.bail_crit_edge184
    i32 -28, label %if.else.bail_crit_edge185
    i32 -122, label %if.else.bail_crit_edge186
  ]

if.else.bail_crit_edge186:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.else.bail_crit_edge185:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.else.bail_crit_edge184:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.else.bail_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else.do.body59_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body59

do.body59:                                        ; preds = %if.else.do.body59_crit_edge, %if.else.thread
  %status.0.i.ph146 = phi i32 [ -13, %if.else.thread ], [ %call15.i, %if.else.do.body59_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m60) #12
  %43 = ptrtoint ptr %_m60 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 1152921504606846976, ptr %_m60, align 8
  %conv64 = sext i32 %status.0.i.ph146 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m60, ptr noundef nonnull @__func__.ocfs2_mark_dead_nodes, i32 noundef 1883, ptr noundef nonnull @.str.1, i64 noundef %conv64) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m60) #12
  br label %bail

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then36, %ocfs2_trylock_journal.exit.for.inc_crit_edge, %if.else.thread147, %if.then30, %if.then25, %if.then19
  %inc = add nuw i32 %i.0125, 1
  %44 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_slots, align 8
  %cmp = icmp ult i32 %inc, %45
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.bail_crit_edge

for.inc.bail_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

bail:                                             ; preds = %for.inc.bail_crit_edge, %do.body59, %if.else.bail_crit_edge, %if.else.bail_crit_edge184, %if.else.bail_crit_edge185, %if.else.bail_crit_edge186, %do.body, %for.body.bail_crit_edge, %for.body.bail_crit_edge178, %for.body.bail_crit_edge179, %for.body.bail_crit_edge180, %entry.bail_crit_edge
  %status.0 = phi i32 [ %call, %do.body ], [ %status.0.i.ph146, %do.body59 ], [ 0, %entry.bail_crit_edge ], [ %call, %for.body.bail_crit_edge ], [ %call, %for.body.bail_crit_edge178 ], [ %call, %for.body.bail_crit_edge179 ], [ %call, %for.body.bail_crit_edge180 ], [ 0, %for.inc.bail_crit_edge ], [ %call15.i, %if.else.bail_crit_edge ], [ %call15.i, %if.else.bail_crit_edge184 ], [ %call15.i, %if.else.bail_crit_edge185 ], [ %call15.i, %if.else.bail_crit_edge186 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %node_num) #12
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_read_journal_inode(ptr noundef %osb, i32 noundef %slot_num, ptr noundef %bh, ptr noundef writeonly %ret_inode) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %_m50 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %max_slots = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 30
  %0 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_slots, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %slot_num)
  %cmp.not = icmp ugt i32 %1, %slot_num
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !301

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1554, 0\0A.popsection", ""() #12, !srcloc !362
  unreachable

do.end7:                                          ; preds = %entry
  %call = tail call ptr @ocfs2_get_system_file_inode(ptr noundef %osb, i32 noundef 10, i32 noundef %slot_num) #12
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %bail.thread97, label %lor.lhs.false

bail.thread97:                                    ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %2 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_read_journal_inode, i32 noundef 1559, ptr noundef nonnull @.str.1, i64 noundef -13) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %if.end68

lor.lhs.false:                                    ; preds = %do.end7
  %call9 = tail call zeroext i1 @is_bad_inode(ptr noundef nonnull %call) #12
  br i1 %call9, label %if.then62.thread, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false
  %ip_flags = getelementptr i8, ptr %call, i32 -76
  %3 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ip_flags, align 4
  %or = or i32 %4, 2
  store i32 %or, ptr %ip_flags, align 4
  %call29 = tail call i32 @ocfs2_read_inode_block_full(ptr noundef nonnull %call, ptr noundef %bh, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.then62

if.then32:                                        ; preds = %if.end27
  %5 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %call29, label %do.body49 [
    i32 -512, label %if.then32.if.then66_crit_edge
    i32 -4, label %if.then32.if.then66_crit_edge108
    i32 -28, label %if.then32.if.then66_crit_edge109
    i32 -122, label %if.then32.if.then66_crit_edge110
  ]

if.then32.if.then66_crit_edge110:                 ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then66

if.then32.if.then66_crit_edge109:                 ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then66

if.then32.if.then66_crit_edge108:                 ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then66

if.then32.if.then66_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then66

do.body49:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m50) #12
  %6 = ptrtoint ptr %_m50 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606846976, ptr %_m50, align 8
  %conv54 = sext i32 %call29 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m50, ptr noundef nonnull @__func__.ocfs2_read_journal_inode, i32 noundef 1566, ptr noundef nonnull @.str.1, i64 noundef %conv54) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m50) #12
  br label %if.then66

if.then62.thread:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %7 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_read_journal_inode, i32 noundef 1559, ptr noundef nonnull @.str.1, i64 noundef -13) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %if.then66

if.then62:                                        ; preds = %if.end27
  %tobool65.not = icmp eq ptr %ret_inode, null
  br i1 %tobool65.not, label %if.then62.if.then66_crit_edge, label %if.else

if.then62.if.then66_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then66

if.then66:                                        ; preds = %if.then62.if.then66_crit_edge, %if.then62.thread, %do.body49, %if.then32.if.then66_crit_edge, %if.then32.if.then66_crit_edge108, %if.then32.if.then66_crit_edge109, %if.then32.if.then66_crit_edge110
  %status.095102 = phi i32 [ -13, %if.then62.thread ], [ 0, %if.then62.if.then66_crit_edge ], [ %call29, %do.body49 ], [ %call29, %if.then32.if.then66_crit_edge ], [ %call29, %if.then32.if.then66_crit_edge108 ], [ %call29, %if.then32.if.then66_crit_edge109 ], [ %call29, %if.then32.if.then66_crit_edge110 ]
  call void @iput(ptr noundef nonnull %call) #12
  br label %if.end68

if.else:                                          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %ret_inode to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %ret_inode, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then66, %bail.thread97
  %status.096 = phi i32 [ %status.095102, %if.then66 ], [ 0, %if.else ], [ -13, %bail.thread97 ]
  ret i32 %status.096
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_mark_dead_nodes(i32 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_mark_dead_nodes, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_mark_dead_nodes, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !363
  %call42 = tail call i32 @__traceiter_ocfs2_mark_dead_nodes(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !364
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_mark_dead_nodes, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_mark_dead_nodes, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_mark_dead_nodes.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_mark_dead_nodes.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2658, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
define dso_local void @ocfs2_orphan_scan_stop(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %os_state = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %os_state, i32 noundef 4) #12
  %0 = ptrtoint ptr %os_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %os_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %osb_orphan_scan = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93
  %call.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %os_state, i32 noundef 4) #12
  %2 = ptrtoint ptr %os_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %os_state, align 4
  tail call void @mutex_lock_nested(ptr noundef %osb_orphan_scan, i32 noundef 0) #12
  %os_orphan_scan_work = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 3
  %call2 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %os_orphan_scan_work) #12
  tail call void @mutex_unlock(ptr noundef %osb_orphan_scan) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_orphan_scan_init(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %osb_orphan_scan = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93
  %os_osb = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 1
  %0 = ptrtoint ptr %os_osb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %osb, ptr %os_osb, align 4
  %os_count = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 5
  %1 = ptrtoint ptr %os_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %os_count, align 8
  %os_seqno = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 6
  %2 = ptrtoint ptr %os_seqno to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %os_seqno, align 4
  tail call void @__mutex_init(ptr noundef %osb_orphan_scan, ptr noundef nonnull @.str.25, ptr noundef nonnull @ocfs2_orphan_scan_init.__key) #12
  %os_orphan_scan_work = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 3
  tail call void @__init_work(ptr noundef %os_orphan_scan_work, i32 noundef 0) #12
  %3 = ptrtoint ptr %os_orphan_scan_work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %os_orphan_scan_work, align 8
  %lockdep_map = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @ocfs2_orphan_scan_init.__key.26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry9 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 3, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 3, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ocfs2_orphan_scan_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.29, ptr noundef nonnull @ocfs2_orphan_scan_init.__key.28) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_orphan_scan_work(ptr noundef %work) #0 align 64 {
entry:
  %time.i = alloca i32, align 4
  %seqno.i = alloca i32, align 4
  %_m.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -488
  %os_osb = getelementptr i8, ptr %work, i32 -396
  %0 = ptrtoint ptr %os_osb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %os_osb, align 4
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seqno.i) #12
  %2 = ptrtoint ptr %seqno.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %seqno.i, align 4
  %os_state.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 93, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %os_state.i, i32 noundef 4) #12
  %3 = ptrtoint ptr %os_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %os_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  br i1 %cmp.i, label %entry.ocfs2_queue_orphan_scan.exit_crit_edge, label %if.end.i

entry.ocfs2_queue_orphan_scan.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_queue_orphan_scan.exit

if.end.i:                                         ; preds = %entry
  %os_count.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 93, i32 5
  %5 = ptrtoint ptr %os_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %os_count.i, align 8
  %os_seqno.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 93, i32 6
  %7 = ptrtoint ptr %os_seqno.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %os_seqno.i, align 4
  %call.i.i69.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %os_state.i, i32 noundef 4) #12
  %9 = ptrtoint ptr %os_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %os_state.i, align 4
  tail call fastcc void @trace_ocfs2_queue_orphan_scan_begin(i32 noundef %6, i32 noundef %8, i32 noundef %10) #12
  %call3.i = call i32 @ocfs2_orphan_scan_lock(ptr noundef %1, ptr noundef nonnull %seqno.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end21.i

if.then5.i:                                       ; preds = %if.end.i
  %11 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %call3.i, label %do.body.i [
    i32 -11, label %if.then5.i.ocfs2_queue_orphan_scan.exit_crit_edge
    i32 -512, label %if.then5.i.ocfs2_queue_orphan_scan.exit_crit_edge9
    i32 -4, label %if.then5.i.ocfs2_queue_orphan_scan.exit_crit_edge10
    i32 -28, label %if.then5.i.ocfs2_queue_orphan_scan.exit_crit_edge11
    i32 -122, label %if.then5.i.ocfs2_queue_orphan_scan.exit_crit_edge12
  ]

if.then5.i.ocfs2_queue_orphan_scan.exit_crit_edge12: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_queue_orphan_scan.exit

if.then5.i.ocfs2_queue_orphan_scan.exit_crit_edge11: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_queue_orphan_scan.exit

if.then5.i.ocfs2_queue_orphan_scan.exit_crit_edge10: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_queue_orphan_scan.exit

if.then5.i.ocfs2_queue_orphan_scan.exit_crit_edge9: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_queue_orphan_scan.exit

if.then5.i.ocfs2_queue_orphan_scan.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_queue_orphan_scan.exit

do.body.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #12
  %12 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv.i = sext i32 %call3.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_queue_orphan_scan, i32 noundef 1951, ptr noundef nonnull @.str.1, i64 noundef %conv.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #12
  br label %ocfs2_queue_orphan_scan.exit

if.end21.i:                                       ; preds = %if.end.i
  %call.i.i70.i = call zeroext i1 @__kasan_check_read(ptr noundef %os_state.i, i32 noundef 4) #12
  %13 = ptrtoint ptr %os_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %os_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp24.i = icmp eq i32 %14, 1
  br i1 %cmp24.i, label %if.end21.i.unlock.i_crit_edge, label %if.end27.i

if.end21.i.unlock.i_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock.i

if.end27.i:                                       ; preds = %if.end21.i
  %15 = ptrtoint ptr %os_seqno.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %os_seqno.i, align 4
  %17 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seqno.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp29.not.i = icmp eq i32 %16, %18
  br i1 %cmp29.not.i, label %for.cond.preheader.i, label %if.then31.i

for.cond.preheader.i:                             ; preds = %if.end27.i
  %max_slots.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 30
  %19 = ptrtoint ptr %max_slots.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_slots.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp3472.not.i = icmp eq i32 %20, 0
  br i1 %cmp3472.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %journal.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 45
  br label %for.body.i

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %os_seqno.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %os_seqno.i, align 4
  br label %unlock.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.073.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %journal.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %journal.i, align 4
  call fastcc void @ocfs2_queue_recovery_completion(ptr noundef %23, i32 noundef %i.073.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #12
  %inc.i = add nuw i32 %i.073.i, 1
  %24 = ptrtoint ptr %max_slots.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_slots.i, align 8
  %cmp34.i = icmp ult i32 %inc.i, %25
  br i1 %cmp34.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %26 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %seqno.i, align 4
  %inc36.i = add i32 %27, 1
  store i32 %inc36.i, ptr %seqno.i, align 4
  %28 = ptrtoint ptr %os_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %os_count.i, align 8
  %inc38.i = add i32 %29, 1
  store i32 %inc38.i, ptr %os_count.i, align 8
  %call39.i = call i64 @ktime_get_seconds() #12
  %os_scantime.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 93, i32 4
  %30 = ptrtoint ptr %os_scantime.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %call39.i, ptr %os_scantime.i, align 8
  br label %unlock.i

unlock.i:                                         ; preds = %for.end.i, %if.then31.i, %if.end21.i.unlock.i_crit_edge
  %31 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %seqno.i, align 4
  call void @ocfs2_orphan_scan_unlock(ptr noundef %1, i32 noundef %32) #12
  br label %ocfs2_queue_orphan_scan.exit

ocfs2_queue_orphan_scan.exit:                     ; preds = %unlock.i, %do.body.i, %if.then5.i.ocfs2_queue_orphan_scan.exit_crit_edge, %if.then5.i.ocfs2_queue_orphan_scan.exit_crit_edge9, %if.then5.i.ocfs2_queue_orphan_scan.exit_crit_edge10, %if.then5.i.ocfs2_queue_orphan_scan.exit_crit_edge11, %if.then5.i.ocfs2_queue_orphan_scan.exit_crit_edge12, %entry.ocfs2_queue_orphan_scan.exit_crit_edge
  %os_count40.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 93, i32 5
  %33 = ptrtoint ptr %os_count40.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %os_count40.i, align 8
  %os_seqno41.i = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 93, i32 6
  %35 = ptrtoint ptr %os_seqno41.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %os_seqno41.i, align 4
  %call.i.i71.i = call zeroext i1 @__kasan_check_read(ptr noundef %os_state.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %os_state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %os_state.i, align 4
  call fastcc void @trace_ocfs2_queue_orphan_scan_end(i32 noundef %34, i32 noundef %36, i32 noundef %38) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seqno.i) #12
  %os_state = getelementptr i8, ptr %work, i32 120
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %os_state, i32 noundef 4) #12
  %39 = ptrtoint ptr %os_state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %os_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp = icmp eq i32 %40, 0
  br i1 %cmp, label %if.then, label %ocfs2_queue_orphan_scan.exit.if.end_crit_edge

ocfs2_queue_orphan_scan.exit.if.end_crit_edge:    ; preds = %ocfs2_queue_orphan_scan.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %ocfs2_queue_orphan_scan.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ocfs2_wq = getelementptr inbounds %struct.ocfs2_super, ptr %1, i32 0, i32 101
  %41 = ptrtoint ptr %ocfs2_wq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ocfs2_wq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time.i) #12
  %43 = ptrtoint ptr %time.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %time.i, align 4, !annotation !294
  call void @get_random_bytes(ptr noundef nonnull %time.i, i32 noundef 4) #12
  %44 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %time.i, align 4
  %rem.i = urem i32 %45, 5000
  %add.i = add nuw nsw i32 %rem.i, 300000
  store i32 %add.i, ptr %time.i, align 4
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %add.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time.i) #12
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %work, i32 noundef %call2.i.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %ocfs2_queue_orphan_scan.exit.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_orphan_scan_start(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  %time.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get_seconds() #12
  %os_scantime = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 4
  %0 = ptrtoint ptr %os_scantime to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call, ptr %os_scantime, align 8
  %osb_lock.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %osb_lock.i) #12
  %osb_flags.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 23
  %1 = ptrtoint ptr %osb_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %osb_flags.i, align 8
  %and.i = and i32 %2, 2
  tail call void @_raw_spin_unlock(ptr noundef %osb_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 19
  %3 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i14 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14)
  %tobool.not.i = icmp eq i32 %and.i14, 0
  br i1 %tobool.not.i, label %ocfs2_mount_local.exit, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

ocfs2_mount_local.exit:                           ; preds = %lor.lhs.false
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 28
  %5 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_mount_opt.i, align 8
  %7 = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.else, label %ocfs2_mount_local.exit.if.then_crit_edge

ocfs2_mount_local.exit.if.then_crit_edge:         ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %ocfs2_mount_local.exit.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %os_state = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %os_state, i32 noundef 4) #12
  %8 = ptrtoint ptr %os_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %os_state, align 4
  br label %if.end

if.else:                                          ; preds = %ocfs2_mount_local.exit
  call void @__sanitizer_cov_trace_pc() #14
  %os_state4 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 7
  %call.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %os_state4, i32 noundef 4) #12
  %9 = ptrtoint ptr %os_state4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %os_state4, align 4
  %ocfs2_wq = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 101
  %10 = ptrtoint ptr %ocfs2_wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ocfs2_wq, align 4
  %os_orphan_scan_work = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 93, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time.i) #12
  %12 = ptrtoint ptr %time.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %time.i, align 4, !annotation !294
  call void @get_random_bytes(ptr noundef nonnull %time.i, i32 noundef 4) #12
  %13 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %time.i, align 4
  %rem.i = urem i32 %14, 5000
  %add.i = add nuw nsw i32 %rem.i, 300000
  store i32 %add.i, ptr %time.i, align 4
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %add.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time.i) #12
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %os_orphan_scan_work, i32 noundef %call2.i.i) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_check_journals_nolocks(ptr noundef %osb) local_unnamed_addr #0 align 64 {
entry:
  %di_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %di_bh) #12
  %0 = ptrtoint ptr %di_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %di_bh, align 4
  %max_slots = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 30
  %1 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_slots, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp39.not = icmp eq i32 %2, 0
  br i1 %cmp39.not, label %entry.out.thread_crit_edge, label %for.body.lr.ph

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

for.body.lr.ph:                                   ; preds = %entry
  %slot_recovery_generations = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.body.lr.ph
  %journal_dirty.041 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %brelse.exit.for.body_crit_edge ]
  %slot.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %brelse.exit.for.body_crit_edge ]
  %call = call fastcc i32 @ocfs2_read_journal_inode(ptr noundef %osb, i32 noundef %slot.040, ptr noundef nonnull %di_bh, ptr noundef null)
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %call, label %do.body [
    i32 0, label %if.end13
    i32 -512, label %for.body.out_crit_edge
    i32 -4, label %for.body.out_crit_edge75
    i32 524289, label %for.body.out_crit_edge76
    i32 -28, label %for.body.out_crit_edge77
    i32 -122, label %for.body.out_crit_edge78
  ]

for.body.out_crit_edge78:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.out_crit_edge77:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.out_crit_edge76:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.out_crit_edge75:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_check_journals_nolocks, i32 noundef 2363, ptr noundef nonnull @.str.1, i64 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  br label %out

if.end13:                                         ; preds = %for.body
  %5 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %di_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_data, align 4
  %id1.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %8, i32 0, i32 34
  %ij_recovery_generation.i = getelementptr inbounds %struct.anon.80, ptr %id1.i, i32 0, i32 1
  %9 = ptrtoint ptr %ij_recovery_generation.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ij_recovery_generation.i, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10) #12
  %12 = ptrtoint ptr %slot_recovery_generations to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slot_recovery_generations, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 %slot.040
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id1.i, align 8
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool16.not = icmp eq i32 %17, 0
  %spec.select = select i1 %tobool16.not, i32 %journal_dirty.041, i32 1
  %18 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %di_bh, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end13.brelse.exit_crit_edge, label %if.then.i

if.end13.brelse.exit_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %19) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end13.brelse.exit_crit_edge
  %20 = ptrtoint ptr %di_bh to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %di_bh, align 4
  %inc = add nuw i32 %slot.040, 1
  %21 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_slots, align 8
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %brelse.exit.for.body_crit_edge, label %brelse.exit.out_crit_edge

brelse.exit.out_crit_edge:                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

out:                                              ; preds = %brelse.exit.out_crit_edge, %do.body, %for.body.out_crit_edge, %for.body.out_crit_edge75, %for.body.out_crit_edge76, %for.body.out_crit_edge77, %for.body.out_crit_edge78
  %journal_dirty.038 = phi i32 [ %journal_dirty.041, %do.body ], [ %spec.select, %brelse.exit.out_crit_edge ], [ %journal_dirty.041, %for.body.out_crit_edge ], [ %journal_dirty.041, %for.body.out_crit_edge75 ], [ %journal_dirty.041, %for.body.out_crit_edge76 ], [ %journal_dirty.041, %for.body.out_crit_edge77 ], [ %journal_dirty.041, %for.body.out_crit_edge78 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %journal_dirty.038)
  %tobool19.not = icmp eq i32 %journal_dirty.038, 0
  br i1 %tobool19.not, label %out.out.thread_crit_edge, label %out._crit_edge

out._crit_edge:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %23

out.out.thread_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

out.thread:                                       ; preds = %out.out.thread_crit_edge, %entry.out.thread_crit_edge
  %ret.162 = phi i32 [ %call, %out.out.thread_crit_edge ], [ 0, %entry.out.thread_crit_edge ]
  br label %23

23:                                               ; preds = %out.thread, %out._crit_edge
  %24 = phi i32 [ %ret.162, %out.thread ], [ -30, %out._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %di_bh) #12
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_extend_trans(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_extend_trans_restart(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_allocate_extend_trans(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_metadata_cache_get_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_journal_access(i64 noundef %ull, i64 noundef %ull1, i32 noundef %value2, i32 noundef %value3) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_access, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_journal_access, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !365
  %call42 = tail call i32 @__traceiter_ocfs2_journal_access(ptr noundef null, i64 noundef %ull, i64 noundef %ull1, i32 noundef %value2, i32 noundef %value3) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !366
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_access, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_journal_access, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_journal_access.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_journal_access.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2585, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
declare dso_local i64 @ocfs2_metadata_cache_owner(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ocfs2_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_metadata_cache_io_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_get_write_access(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_get_undo_access(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_set_triggers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_metadata_cache_io_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_journal_access(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_frozen_trigger(ptr nocapture noundef readonly %triggers, ptr nocapture noundef readnone %bh, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ot_offset = getelementptr inbounds %struct.ocfs2_triggers, ptr %triggers, i32 0, i32 1
  %0 = ptrtoint ptr %ot_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ot_offset, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %1
  tail call void @ocfs2_block_check_compute(ptr noundef %data, i32 noundef %size, ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_abort_trigger(ptr nocapture noundef readnone %triggers, ptr noundef %bh) #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #12
  %0 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1152921504606846976, ptr %_m, align 8
  %1 = ptrtoint ptr %bh to i32
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %2 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %b_blocknr, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_abort_trigger, i32 noundef 557, ptr noundef nonnull @.str.42, i32 noundef %1, i64 noundef %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #12
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 6
  %4 = ptrtoint ptr %b_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_bdev, align 8
  %bd_super = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %bd_super to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_super, align 8
  %call = call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %7, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_abort_trigger, ptr noundef nonnull @.str.43) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_block_check_compute(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_db_frozen_trigger(ptr nocapture noundef readnone %triggers, ptr nocapture noundef readnone %bh, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ocfs2_dir_trailer_from_size(i32 noundef %size, ptr noundef %data) #12
  %db_check = getelementptr inbounds %struct.ocfs2_dir_block_trailer, ptr %call, i32 0, i32 11
  tail call void @ocfs2_block_check_compute(ptr noundef %data, i32 noundef %size, ptr noundef %db_check) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_dir_trailer_from_size(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_dq_frozen_trigger(ptr nocapture noundef readnone %triggers, ptr nocapture noundef readnone %bh, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.i = add i32 %size, -8
  %add.ptr.i = getelementptr i8, ptr %data, i32 %sub.i
  tail call void @ocfs2_block_check_compute(ptr noundef %data, i32 noundef %size, ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_journal_dirty(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_journal_init(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_journal_init_maxlen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_journal_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_journal_shutdown_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_compute_meta_ecc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_write_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_errno(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_ack_err(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_clear_err(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_complete_recovery(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ocfs2_wait_on_mount(ptr noundef %osb, i32 noundef %quota) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 2289) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quota)
  %tobool.not = icmp eq i32 %quota, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %vol_state = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 38
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vol_state, i32 noundef 4) #12
  %0 = ptrtoint ptr %vol_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %vol_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true.do.end28_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true.do.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %vol_state4 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 38
  %call.i.i48 = tail call zeroext i1 @__kasan_check_read(ptr noundef %vol_state4, i32 noundef 4) #12
  %2 = ptrtoint ptr %vol_state4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %vol_state4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp6 = icmp eq i32 %3, 2
  br i1 %cmp6, label %lor.lhs.false.do.end28_crit_edge, label %lor.lhs.false7

lor.lhs.false.do.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call.i.i49 = tail call zeroext i1 @__kasan_check_read(ptr noundef %vol_state4, i32 noundef 4) #12
  %4 = ptrtoint ptr %vol_state4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %vol_state4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp10 = icmp eq i32 %5, 4
  br i1 %cmp10, label %lor.lhs.false7.do.end28_crit_edge, label %if.end

lor.lhs.false7.do.end28_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

if.end:                                           ; preds = %lor.lhs.false7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %osb_mount_event = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 84
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end
  %call11 = call i32 @prepare_to_wait_event(ptr noundef %osb_mount_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  br i1 %tobool.not, label %land.lhs.true13, label %for.cond.lor.lhs.false17_crit_edge

for.cond.lor.lhs.false17_crit_edge:               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false17

land.lhs.true13:                                  ; preds = %for.cond
  %call.i.i50 = call zeroext i1 @__kasan_check_read(ptr noundef %vol_state4, i32 noundef 4) #12
  %7 = ptrtoint ptr %vol_state4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %vol_state4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp16 = icmp eq i32 %8, 1
  br i1 %cmp16, label %land.lhs.true13.for.end_crit_edge, label %land.lhs.true13.lor.lhs.false17_crit_edge

land.lhs.true13.lor.lhs.false17_crit_edge:        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false17

land.lhs.true13.for.end_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false17:                                  ; preds = %land.lhs.true13.lor.lhs.false17_crit_edge, %for.cond.lor.lhs.false17_crit_edge
  %call.i.i51 = call zeroext i1 @__kasan_check_read(ptr noundef %vol_state4, i32 noundef 4) #12
  %9 = ptrtoint ptr %vol_state4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %vol_state4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp20 = icmp eq i32 %10, 2
  br i1 %cmp20, label %lor.lhs.false17.for.end_crit_edge, label %lor.lhs.false21

lor.lhs.false17.for.end_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %call.i.i52 = call zeroext i1 @__kasan_check_read(ptr noundef %vol_state4, i32 noundef 4) #12
  %11 = ptrtoint ptr %vol_state4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %vol_state4, align 4
  %cmp24 = icmp eq i32 %12, 4
  br i1 %cmp24, label %lor.lhs.false21.for.end_crit_edge, label %cleanup

lor.lhs.false21.for.end_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup:                                          ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  call void @schedule() #12
  br label %for.cond

for.end:                                          ; preds = %lor.lhs.false21.for.end_crit_edge, %lor.lhs.false17.for.end_crit_edge, %land.lhs.true13.for.end_crit_edge
  call void @finish_wait(ptr noundef %osb_mount_event, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %do.end28

do.end28:                                         ; preds = %for.end, %lor.lhs.false7.do.end28_crit_edge, %lor.lhs.false.do.end28_crit_edge, %land.lhs.true.do.end28_crit_edge
  %vol_state29 = getelementptr inbounds %struct.ocfs2_super, ptr %osb, i32 0, i32 38
  %call.i.i53 = call zeroext i1 @__kasan_check_read(ptr noundef %vol_state29, i32 noundef 4) #12
  %13 = ptrtoint ptr %vol_state29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %vol_state29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp31 = icmp eq i32 %14, 4
  br i1 %cmp31, label %if.then32, label %do.end28.return_crit_edge

do.end28.return_crit_edge:                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then32:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_ocfs2_wait_on_mount()
  br label %return

return:                                           ; preds = %if.then32, %do.end28.return_crit_edge
  %retval.0 = phi i32 [ -16, %if.then32 ], [ 0, %do.end28.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_wait_on_mount() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_wait_on_mount, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_wait_on_mount, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !367
  %call42 = tail call i32 @__traceiter_ocfs2_wait_on_mount(ptr noundef null, i32 noundef 4) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !368
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !301

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_wait_on_mount, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_wait_on_mount, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_ocfs2_wait_on_mount.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_wait_on_mount.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2670, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_wait_on_mount(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_complete_recovery_slot(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_complete_recovery_end(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_free_quota_recovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_recovery_thread(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_super_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_node_num_to_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_recovery_thread_node(i32 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recovery_thread_node, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_recovery_thread_node, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !369
  %call42 = tail call i32 @__traceiter_ocfs2_recovery_thread_node(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !370
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recovery_thread_node, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recovery_thread_node, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_recovery_thread_node.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_recovery_thread_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2621, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_recovery_thread_end(i32 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recovery_thread_end, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_recovery_thread_end, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !371
  %call42 = tail call i32 @__traceiter_ocfs2_recovery_thread_end(ptr noundef null, i32 noundef %num) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !372
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recovery_thread_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recovery_thread_end, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_recovery_thread_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_recovery_thread_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2623, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
declare dso_local ptr @ocfs2_begin_quota_recovery(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_super_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_recovery_thread_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_recover_node(i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recover_node, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_recover_node, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !373
  %call42 = tail call i32 @__traceiter_ocfs2_recover_node(ptr noundef null, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !374
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recover_node, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recover_node, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_recover_node.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_recover_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2654, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_recover_node_skip(i32 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recover_node_skip, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_recover_node_skip, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !375
  %call42 = tail call i32 @__traceiter_ocfs2_recover_node_skip(ptr noundef null, i32 noundef %val1, i32 noundef %val2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !376
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recover_node_skip, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recover_node_skip, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_recover_node_skip.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_recover_node_skip.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2656, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
declare dso_local i32 @ocfs2_begin_local_alloc_recovery(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_begin_truncate_log_recovery(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_clear_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_recover_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_replay_journal_recovered(i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_replay_journal_recovered, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_replay_journal_recovered, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !377
  %call42 = tail call i32 @__traceiter_ocfs2_replay_journal_recovered(ptr noundef null, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !378
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_replay_journal_recovered, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_replay_journal_recovered, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_replay_journal_recovered.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_replay_journal_recovered.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2648, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_replay_journal_lock_err(i32 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_replay_journal_lock_err, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_replay_journal_lock_err, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !379
  %call42 = tail call i32 @__traceiter_ocfs2_replay_journal_lock_err(ptr noundef null, i32 noundef %num) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !380
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_replay_journal_lock_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_replay_journal_lock_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_replay_journal_lock_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_replay_journal_lock_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2650, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_replay_journal_skip(i32 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_replay_journal_skip, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_replay_journal_skip, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !381
  %call42 = tail call i32 @__traceiter_ocfs2_replay_journal_skip(ptr noundef null, i32 noundef %num) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !382
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_replay_journal_skip, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_replay_journal_skip, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_replay_journal_skip.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_replay_journal_skip.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2652, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_replay_journal_recovered(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_replay_journal_lock_err(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_replay_journal_skip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_extent_map_get_blocks(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__find_get_block(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_blocks_sync(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_recover_node_skip(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_recovery_thread_end(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_inode_block_full(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_mark_dead_nodes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_queue_orphan_scan_begin(i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_queue_orphan_scan_begin, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_queue_orphan_scan_begin, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !383
  %call42 = tail call i32 @__traceiter_ocfs2_queue_orphan_scan_begin(ptr noundef null, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !384
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_queue_orphan_scan_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_queue_orphan_scan_begin, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_queue_orphan_scan_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_queue_orphan_scan_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2660, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
declare dso_local i32 @ocfs2_orphan_scan_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_orphan_scan_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_queue_orphan_scan_end(i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_queue_orphan_scan_end, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_queue_orphan_scan_end, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !385
  %call42 = tail call i32 @__traceiter_ocfs2_queue_orphan_scan_end(ptr noundef null, i32 noundef %value1, i32 noundef %value2, i32 noundef %value3) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !386
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_queue_orphan_scan_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_queue_orphan_scan_end, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_queue_orphan_scan_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_queue_orphan_scan_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2662, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
declare dso_local i32 @__traceiter_ocfs2_queue_orphan_scan_begin(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_queue_orphan_scan_end(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_recover_orphans(i32 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recover_orphans, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_recover_orphans, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !387
  %call42 = tail call i32 @__traceiter_ocfs2_recover_orphans(ptr noundef null, i32 noundef %num) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !388
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recover_orphans, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recover_orphans, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_recover_orphans.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_recover_orphans.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2666, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_recover_orphans_iput(i64 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recover_orphans_iput, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_recover_orphans_iput, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !389
  %call42 = tail call i32 @__traceiter_ocfs2_recover_orphans_iput(ptr noundef null, i64 noundef %num) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !390
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recover_orphans_iput, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_recover_orphans_iput, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_recover_orphans_iput.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_recover_orphans_iput.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2668, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
declare dso_local i32 @ocfs2_rw_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_truncate_file(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_del_inode_from_orphan(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_rw_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_recover_orphans(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_node_map_set_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_orphan_filldir(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %name, i32 noundef %name_len, i64 noundef %pos, i64 noundef %ino, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %name_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %name_len, label %entry.if.end6_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true2
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %1)
  %rhsc = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %rhsc)
  %tobool.not = icmp eq i8 %rhsc, 46
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true2:                                   ; preds = %entry
  %call3 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(3) @.str.57, ptr noundef %name, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end6_crit_edge

land.lhs.true2.if.end6_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true2.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %orphan_reco_type = getelementptr inbounds %struct.ocfs2_orphan_filldir_priv, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %orphan_reco_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %orphan_reco_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %land.lhs.true8, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true8:                                   ; preds = %if.end6
  %call9 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.58, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end12_crit_edge

land.lhs.true8.if.end12_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true8.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %osb = getelementptr inbounds %struct.ocfs2_orphan_filldir_priv, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %osb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %osb, align 4
  %call13 = tail call ptr @ocfs2_iget(ptr noundef %5, i64 noundef %ino, i32 noundef 2, i32 noundef 0) #12
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.58, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end16.if.end21_crit_edge

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %ip_flags = getelementptr i8, ptr %call13, i32 -76
  %6 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ip_flags, align 4
  %or = or i32 %7, 128
  store i32 %or, ptr %ip_flags, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16.if.end21_crit_edge
  %ip_next_orphan = getelementptr i8, ptr %call13, i32 -60
  %8 = ptrtoint ptr %ip_next_orphan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ip_next_orphan, align 4
  %tobool23.not = icmp eq ptr %9, null
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iput(ptr noundef %call13) #12
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i44 = getelementptr i8, ptr %call13, i32 -1608
  %10 = ptrtoint ptr %add.ptr.i44 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr.i44, align 8
  tail call fastcc void @trace_ocfs2_orphan_filldir(i64 noundef %11)
  %head = getelementptr inbounds %struct.ocfs2_orphan_filldir_priv, ptr %ctx, i32 0, i32 1
  %12 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head, align 8
  %14 = ptrtoint ptr %ip_next_orphan to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %ip_next_orphan, align 4
  store ptr %call13, ptr %head, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then24, %if.end12.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true2.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_dir_foreach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_iget(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_orphan_filldir(i64 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_orphan_filldir, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_orphan_filldir, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !391
  %call42 = tail call i32 @__traceiter_ocfs2_orphan_filldir(ptr noundef null, i64 noundef %num) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !392
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_orphan_filldir, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_orphan_filldir, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_orphan_filldir.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_orphan_filldir.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2664, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
declare dso_local i32 @__traceiter_ocfs2_orphan_filldir(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_node_map_clear_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_recover_orphans_iput(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @printk_timed_ratelimit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_commit_cache_begin(i32 noundef %num) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_commit_cache_begin, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_commit_cache_begin, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !393
  %call42 = tail call i32 @__traceiter_ocfs2_commit_cache_begin(ptr noundef null, i32 noundef %num) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !394
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_commit_cache_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_commit_cache_begin, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_commit_cache_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_commit_cache_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2575, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_commit_cache_end(i64 noundef %val1, i32 noundef %val2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_commit_cache_end, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_commit_cache_end, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !301

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !395
  %call42 = tail call i32 @__traceiter_ocfs2_commit_cache_end(ptr noundef null, i64 noundef %val1, i32 noundef %val2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !396
  %13 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !301

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !284) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_commit_cache_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_commit_cache_end, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ocfs2_commit_cache_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_ocfs2_commit_cache_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 2577, ptr noundef nonnull @.str.34) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  %31 = tail call i32 @llvm.read_register.i32(metadata !284) #12
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
declare dso_local void @ocfs2_wake_downconvert_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_commit_cache_begin(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_commit_cache_end(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !53, !55, !57, !59, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !81, !82, !83, !84, !86, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !113, !114, !116, !118, !120, !121, !123, !125, !127, !128, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !166, !168, !169, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !190, !191, !193, !195, !197, !199, !200, !202, !204, !205, !207, !209, !211, !212, !213, !215, !216, !217, !219, !220, !222, !223, !225, !226, !228, !230, !231, !233, !234, !236, !238, !239, !241, !242, !244, !246, !247, !249, !250, !252, !254, !255, !257, !259, !261, !263, !265, !266, !268, !269, !271, !273, !274, !276, !278, !280, !281, !283}
!llvm.named.register.sp = !{!284}
!llvm.module.flags = !{!285, !286, !287, !288, !289, !290, !291, !292}
!llvm.ident = !{!293}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/journal.c", i32 43, i32 1}
!2 = !{ptr @trans_inc_lock, !1, !"trans_inc_lock", i1 false, i1 false}
!3 = !{ptr @__func__.ocfs2_compute_replay_slots, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/journal.c", i32 120, i32 3}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ocfs2_recovery_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../fs/ocfs2/journal.c", i32 175, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ocfs2_recovery_init.__key.3, !10, !"__key", i1 false, i1 false}
!10 = !{!"../fs/ocfs2/journal.c", i32 178, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__func__.ocfs2_recovery_init, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ocfs2/journal.c", i32 184, i32 3}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ocfs2/journal.c", i32 213, i32 2}
!16 = !{ptr @__func__.ocfs2_start_trans, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ocfs2/journal.c", i32 359, i32 3}
!18 = !{ptr @__PRETTY_FUNCTION__.ocfs2_start_trans, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ocfs2/journal.c", i32 362, i32 4}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__func__.ocfs2_commit_trans, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/journal.c", i32 384, i32 3}
!23 = !{ptr @__func__.ocfs2_extend_trans, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/journal.c", i32 440, i32 4}
!25 = !{ptr @__func__.ocfs2_allocate_extend_trans, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/journal.c", i32 470, i32 3}
!27 = !{ptr @__func__.ocfs2_journal_dirty, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/journal.c", i32 779, i32 3}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/journal.c", i32 784, i32 4}
!31 = !{ptr @__PRETTY_FUNCTION__.ocfs2_journal_dirty, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/journal.c", i32 789, i32 4}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__func__.ocfs2_journal_init, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ocfs2/journal.c", i32 826, i32 3}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ocfs2_journal_init.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../fs/ocfs2/journal.c", i32 834, i32 2}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ocfs2_journal_init.__key.11, !41, !"__key", i1 false, i1 false}
!41 = !{!"../fs/ocfs2/journal.c", i32 835, i32 2}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ocfs2_journal_init.__key.13, !44, !"__key", i1 false, i1 false}
!44 = !{!"../fs/ocfs2/journal.c", i32 836, i32 2}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ocfs2_journal_init.__key.15, !47, !"__key", i1 false, i1 false}
!47 = !{!"../fs/ocfs2/journal.c", i32 839, i32 2}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ocfs2/journal.c", i32 851, i32 3}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ocfs2/journal.c", i32 867, i32 4}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/journal.c", i32 875, i32 3}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/journal.c", i32 888, i32 3}
!57 = !{ptr @__func__.ocfs2_journal_shutdown, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ocfs2/journal.c", i32 1021, i32 4}
!59 = !{ptr @__func__.ocfs2_journal_load, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ocfs2/journal.c", i32 1081, i32 3}
!61 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ocfs2/journal.c", i32 1103, i32 22}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ocfs2/journal.c", i32 1108, i32 4}
!66 = !{ptr @__func__.ocfs2_journal_wipe, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ocfs2/journal.c", i32 1130, i32 3}
!68 = !{ptr @__func__.ocfs2_complete_recovery, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ocfs2/journal.c", i32 1273, i32 5}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ocfs2/journal.c", i32 1534, i32 31}
!72 = !{ptr @__func__.ocfs2_recovery_thread, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ocfs2/journal.c", i32 1537, i32 3}
!74 = !{ptr @__func__.ocfs2_mark_dead_nodes, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ocfs2/journal.c", i32 1842, i32 4}
!76 = !{ptr @ocfs2_orphan_scan_init.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../fs/ocfs2/journal.c", i32 2021, i32 2}
!78 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ocfs2_orphan_scan_init.__key.26, !80, !"__key", i1 false, i1 false}
!80 = !{!"../fs/ocfs2/journal.c", i32 2022, i32 2}
!81 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ocfs2_orphan_scan_init.__key.28, !80, !"__key", i1 false, i1 false}
!83 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @__func__.ocfs2_check_journals_nolocks, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ocfs2/journal.c", i32 2363, i32 4}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!90 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2579, i32 1}
!94 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!96 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!99 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2581, i32 1}
!102 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2583, i32 1}
!105 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!106 = !{ptr @__func__.__ocfs2_journal_access, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/ocfs2/journal.c", i32 653, i32 3}
!108 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ocfs2/journal.c", i32 654, i32 3}
!111 = !{ptr @__PRETTY_FUNCTION__.__ocfs2_journal_access, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ocfs2/journal.c", i32 670, i32 11}
!113 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ocfs2/journal.c", i32 697, i32 3}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/ocfs2/journal.c", i32 704, i32 3}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2585, i32 1}
!120 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!121 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!123 = !{ptr @di_triggers, !124, !"di_triggers", i1 false, i1 false}
!124 = !{!"../fs/ocfs2/journal.c", i32 563, i32 30}
!125 = !{ptr @__func__.ocfs2_abort_trigger, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/ocfs2/journal.c", i32 553, i32 2}
!127 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @__PRETTY_FUNCTION__.ocfs2_abort_trigger, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/ocfs2/journal.c", i32 559, i32 2}
!130 = !{ptr @.str.43, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @eb_triggers, !132, !"eb_triggers", i1 false, i1 false}
!132 = !{!"../fs/ocfs2/journal.c", i32 571, i32 30}
!133 = !{ptr @rb_triggers, !134, !"rb_triggers", i1 false, i1 false}
!134 = !{!"../fs/ocfs2/journal.c", i32 579, i32 30}
!135 = !{ptr @gd_triggers, !136, !"gd_triggers", i1 false, i1 false}
!136 = !{!"../fs/ocfs2/journal.c", i32 587, i32 30}
!137 = !{ptr @db_triggers, !138, !"db_triggers", i1 false, i1 false}
!138 = !{!"../fs/ocfs2/journal.c", i32 595, i32 30}
!139 = !{ptr @xb_triggers, !140, !"xb_triggers", i1 false, i1 false}
!140 = !{!"../fs/ocfs2/journal.c", i32 602, i32 30}
!141 = !{ptr @dq_triggers, !142, !"dq_triggers", i1 false, i1 false}
!142 = !{!"../fs/ocfs2/journal.c", i32 610, i32 30}
!143 = !{ptr @dr_triggers, !144, !"dr_triggers", i1 false, i1 false}
!144 = !{!"../fs/ocfs2/journal.c", i32 617, i32 30}
!145 = !{ptr @dl_triggers, !146, !"dl_triggers", i1 false, i1 false}
!146 = !{!"../fs/ocfs2/journal.c", i32 625, i32 30}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2587, i32 1}
!149 = distinct !{null, !148, !"__warned", i1 false, i1 false}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2589, i32 1}
!152 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!153 = distinct !{null, !154, !"__already_done", i1 false, i1 false}
!154 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2591, i32 1}
!155 = distinct !{null, !154, !"__warned", i1 false, i1 false}
!156 = distinct !{null, !157, !"__already_done", i1 false, i1 false}
!157 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2593, i32 1}
!158 = distinct !{null, !157, !"__warned", i1 false, i1 false}
!159 = distinct !{null, !160, !"__already_done", i1 false, i1 false}
!160 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2595, i32 1}
!161 = distinct !{null, !160, !"__warned", i1 false, i1 false}
!162 = !{ptr @.str.44, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/ocfs2/journal.c", i32 949, i32 2}
!164 = !{ptr @__func__.ocfs2_journal_toggle_dirty, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/ocfs2/journal.c", i32 964, i32 3}
!166 = !{ptr @__func__.ocfs2_clear_journal_error, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/ocfs2/journal.c", i32 1060, i32 3}
!168 = !{ptr @.str.45, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.46, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/ocfs2/journal.c", i32 1062, i32 3}
!171 = distinct !{null, !172, !"__already_done", i1 false, i1 false}
!172 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2597, i32 1}
!173 = distinct !{null, !172, !"__warned", i1 false, i1 false}
!174 = distinct !{null, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/ocfs2/journal.c", i32 2296, i32 3}
!176 = distinct !{null, !175, !"<string literal>", i1 false, i1 false}
!177 = distinct !{null, !178, !"__already_done", i1 false, i1 false}
!178 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2670, i32 1}
!179 = distinct !{null, !178, !"__warned", i1 false, i1 false}
!180 = distinct !{null, !181, !"__already_done", i1 false, i1 false}
!181 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2601, i32 1}
!182 = distinct !{null, !181, !"__warned", i1 false, i1 false}
!183 = distinct !{null, !184, !"__already_done", i1 false, i1 false}
!184 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2599, i32 1}
!185 = distinct !{null, !184, !"__warned", i1 false, i1 false}
!186 = !{ptr @__func__.ocfs2_queue_recovery_completion, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/ocfs2/journal.c", i32 1329, i32 3}
!188 = distinct !{null, !189, !"__already_done", i1 false, i1 false}
!189 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2625, i32 1}
!190 = distinct !{null, !189, !"__warned", i1 false, i1 false}
!191 = !{ptr @__func__.__ocfs2_recovery_thread, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/ocfs2/journal.c", i32 1413, i32 3}
!193 = !{ptr @.str.48, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/ocfs2/journal.c", i32 1458, i32 4}
!195 = !{ptr @.str.49, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/ocfs2/journal.c", i32 1462, i32 4}
!197 = distinct !{null, !198, !"__already_done", i1 false, i1 false}
!198 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2621, i32 1}
!199 = distinct !{null, !198, !"__warned", i1 false, i1 false}
!200 = !{ptr @__func__.ocfs2_recover_node, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/ocfs2/journal.c", i32 1751, i32 3}
!202 = distinct !{null, !203, !"__already_done", i1 false, i1 false}
!203 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2654, i32 1}
!204 = distinct !{null, !203, !"__warned", i1 false, i1 false}
!205 = !{ptr @__func__.ocfs2_replay_journal, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/ocfs2/journal.c", i32 1599, i32 3}
!207 = !{ptr @.str.50, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/ocfs2/journal.c", i32 1630, i32 4}
!209 = !{ptr @.str.51, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/ocfs2/journal.c", i32 1650, i32 2}
!211 = !{ptr @ocfs2_replay_journal._entry, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @ocfs2_replay_journal._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.53, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/ocfs2/journal.c", i32 1705, i32 2}
!215 = !{ptr @ocfs2_replay_journal._entry.52, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @ocfs2_replay_journal._entry_ptr.54, !214, !"_entry_ptr", i1 false, i1 false}
!217 = distinct !{null, !218, !"__already_done", i1 false, i1 false}
!218 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2648, i32 1}
!219 = distinct !{null, !218, !"__warned", i1 false, i1 false}
!220 = distinct !{null, !221, !"__already_done", i1 false, i1 false}
!221 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2650, i32 1}
!222 = distinct !{null, !221, !"__warned", i1 false, i1 false}
!223 = distinct !{null, !224, !"__already_done", i1 false, i1 false}
!224 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2652, i32 1}
!225 = distinct !{null, !224, !"__warned", i1 false, i1 false}
!226 = !{ptr @__func__.ocfs2_force_read_journal, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/ocfs2/journal.c", i32 1183, i32 4}
!228 = distinct !{null, !229, !"__already_done", i1 false, i1 false}
!229 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2656, i32 1}
!230 = distinct !{null, !229, !"__warned", i1 false, i1 false}
!231 = distinct !{null, !232, !"__already_done", i1 false, i1 false}
!232 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2623, i32 1}
!233 = distinct !{null, !232, !"__warned", i1 false, i1 false}
!234 = !{ptr @__func__.ocfs2_read_journal_inode, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../fs/ocfs2/journal.c", i32 1559, i32 3}
!236 = distinct !{null, !237, !"__already_done", i1 false, i1 false}
!237 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2658, i32 1}
!238 = distinct !{null, !237, !"__warned", i1 false, i1 false}
!239 = !{ptr @__func__.ocfs2_trylock_journal, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/ocfs2/journal.c", i32 1797, i32 3}
!241 = !{ptr @.str.55, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @__func__.ocfs2_queue_orphan_scan, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/ocfs2/journal.c", i32 1951, i32 4}
!244 = distinct !{null, !245, !"__already_done", i1 false, i1 false}
!245 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2660, i32 1}
!246 = distinct !{null, !245, !"__warned", i1 false, i1 false}
!247 = distinct !{null, !248, !"__already_done", i1 false, i1 false}
!248 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2662, i32 1}
!249 = distinct !{null, !248, !"__warned", i1 false, i1 false}
!250 = !{ptr @__func__.ocfs2_recover_orphans, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../fs/ocfs2/journal.c", i32 2212, i32 3}
!252 = distinct !{null, !253, !"__already_done", i1 false, i1 false}
!253 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2666, i32 1}
!254 = distinct !{null, !253, !"__warned", i1 false, i1 false}
!255 = !{ptr @__func__.ocfs2_queue_orphans, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../fs/ocfs2/journal.c", i32 2111, i32 3}
!257 = distinct !{null, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../fs/ocfs2/journal.c", i32 2055, i32 32}
!259 = !{ptr @.str.57, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../fs/ocfs2/journal.c", i32 2057, i32 32}
!261 = !{ptr @.str.58, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/ocfs2/journal.c", i32 2062, i32 20}
!263 = distinct !{null, !264, !"__already_done", i1 false, i1 false}
!264 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2664, i32 1}
!265 = distinct !{null, !264, !"__warned", i1 false, i1 false}
!266 = distinct !{null, !267, !"__already_done", i1 false, i1 false}
!267 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2668, i32 1}
!268 = distinct !{null, !267, !"__warned", i1 false, i1 false}
!269 = !{ptr @ocfs2_commit_thread.abort_warn_time, !270, !"abort_warn_time", i1 false, i1 false}
!270 = !{!"../fs/ocfs2/journal.c", i32 2322, i32 25}
!271 = !{ptr @__func__.ocfs2_commit_thread, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../fs/ocfs2/journal.c", i32 2326, i32 5}
!273 = !{ptr @.str.59, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.60, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../fs/ocfs2/journal.c", i32 2337, i32 4}
!276 = !{ptr @__func__.ocfs2_commit_cache, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/ocfs2/journal.c", i32 315, i32 3}
!278 = distinct !{null, !279, !"__already_done", i1 false, i1 false}
!279 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2575, i32 1}
!280 = distinct !{null, !279, !"__warned", i1 false, i1 false}
!281 = distinct !{null, !282, !"__already_done", i1 false, i1 false}
!282 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 2577, i32 1}
!283 = distinct !{null, !282, !"__warned", i1 false, i1 false}
!284 = !{!"sp"}
!285 = !{i32 1, !"wchar_size", i32 2}
!286 = !{i32 1, !"min_enum_size", i32 4}
!287 = !{i32 8, !"branch-target-enforcement", i32 0}
!288 = !{i32 8, !"sign-return-address", i32 0}
!289 = !{i32 8, !"sign-return-address-all", i32 0}
!290 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!291 = !{i32 7, !"uwtable", i32 1}
!292 = !{i32 7, !"frame-pointer", i32 2}
!293 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!294 = !{!"auto-init"}
!295 = !{i64 2161275767}
!296 = !{!"branch_weights", i32 1, i32 2000}
!297 = !{i64 2161281715, i64 2161282198, i64 2161281752, i64 2161281808, i64 2161281842, i64 2161281866, i64 2161281907, i64 2161281928, i64 2161281956, i64 2161281990}
!298 = !{i64 2161283357, i64 2161283840, i64 2161283394, i64 2161283450, i64 2161283484, i64 2161283508, i64 2161283549, i64 2161283570, i64 2161283598, i64 2161283632}
!299 = !{i64 2161284938, i64 2161285421, i64 2161284975, i64 2161285031, i64 2161285065, i64 2161285089, i64 2161285130, i64 2161285151, i64 2161285179, i64 2161285213}
!300 = !{i64 2152396968}
!301 = !{!"branch_weights", i32 2000, i32 1}
!302 = !{i64 1118506, i64 1118567}
!303 = !{i64 1121238}
!304 = !{i64 1121523}
!305 = !{i64 2152405818}
!306 = !{i64 2148713826, i64 2148713852, i64 2148713881, i64 2148713915, i64 2148713946, i64 2148713969}
!307 = !{i64 2152415772}
!308 = !{i64 2152425267}
!309 = !{i64 2152434744}
!310 = !{i64 2161287142, i64 2161287625, i64 2161287179, i64 2161287235, i64 2161287269, i64 2161287293, i64 2161287334, i64 2161287355, i64 2161287383, i64 2161287417}
!311 = !{i64 2161293296, i64 2161293779, i64 2161293333, i64 2161293389, i64 2161293423, i64 2161293447, i64 2161293488, i64 2161293509, i64 2161293537, i64 2161293571}
!312 = !{i64 2161294871, i64 2161295354, i64 2161294908, i64 2161294964, i64 2161294998, i64 2161295022, i64 2161295063, i64 2161295084, i64 2161295112, i64 2161295146}
!313 = !{i64 2148538424, i64 2148538429, i64 2148538442, i64 2148538486, i64 2148538520, i64 2148538541}
!314 = !{i64 2160414922}
!315 = !{i64 2160415141}
!316 = !{i64 2149534831}
!317 = !{i64 2149535867}
!318 = !{i64 2160435520}
!319 = !{i64 2160435741}
!320 = !{i64 2161296967, i64 2161297450, i64 2161297004, i64 2161297060, i64 2161297094, i64 2161297118, i64 2161297159, i64 2161297180, i64 2161297208, i64 2161297242}
!321 = !{i64 2160452689}
!322 = !{i64 2160452926}
!323 = !{i64 2161302544, i64 2161303027, i64 2161302581, i64 2161302637, i64 2161302671, i64 2161302695, i64 2161302736, i64 2161302757, i64 2161302785, i64 2161302819}
!324 = !{i64 2161304111, i64 2161304594, i64 2161304148, i64 2161304204, i64 2161304238, i64 2161304262, i64 2161304303, i64 2161304324, i64 2161304352, i64 2161304386}
!325 = !{i64 2161305670, i64 2161306153, i64 2161305707, i64 2161305763, i64 2161305797, i64 2161305821, i64 2161305862, i64 2161305883, i64 2161305911, i64 2161305945}
!326 = !{i64 2148722684, i64 2148722716, i64 2148722745, i64 2148722779, i64 2148722810, i64 2148722833}
!327 = !{i64 2148811789}
!328 = !{i64 2160491947}
!329 = !{i64 2160492154}
!330 = !{i64 2152556657}
!331 = !{i64 2152556499}
!332 = !{i64 2152556827}
!333 = !{i64 2150142641}
!334 = !{i64 2160509292}
!335 = !{i64 2160509523}
!336 = !{i64 2160526082}
!337 = !{i64 2160526301}
!338 = !{i64 2161316238, i64 2161316721, i64 2161316275, i64 2161316331, i64 2161316365, i64 2161316389, i64 2161316430, i64 2161316451, i64 2161316479, i64 2161316513}
!339 = !{i64 2161317713, i64 2161318196, i64 2161317750, i64 2161317806, i64 2161317840, i64 2161317864, i64 2161317905, i64 2161317926, i64 2161317954, i64 2161317988}
!340 = !{i64 2161319372, i64 2161319856, i64 2161319409, i64 2161319465, i64 2161319499, i64 2161319523, i64 2161319564, i64 2161319585, i64 2161319613, i64 2161319647}
!341 = !{i64 2160542781}
!342 = !{i64 2160542994}
!343 = !{i64 2160563690}
!344 = !{i64 2160563921}
!345 = !{i64 2161313832, i64 2161314315, i64 2161313869, i64 2161313925, i64 2161313959, i64 2161313983, i64 2161314024, i64 2161314045, i64 2161314073, i64 2161314107}
!346 = !{i64 2161322640, i64 2161323124, i64 2161322677, i64 2161322733, i64 2161322767, i64 2161322791, i64 2161322832, i64 2161322853, i64 2161322881, i64 2161322915}
!347 = !{i64 2161326241, i64 2161326725, i64 2161326278, i64 2161326334, i64 2161326368, i64 2161326392, i64 2161326433, i64 2161326454, i64 2161326482, i64 2161326516}
!348 = !{i64 2160580787}
!349 = !{i64 2160581002}
!350 = !{i64 2160619755}
!351 = !{i64 2160620026}
!352 = !{i64 2160597585}
!353 = !{i64 2160597808}
!354 = !{i64 2161277816, i64 2161278299, i64 2161277853, i64 2161277909, i64 2161277943, i64 2161277967, i64 2161278008, i64 2161278029, i64 2161278057, i64 2161278091}
!355 = !{i64 2161279427, i64 2161279910, i64 2161279464, i64 2161279520, i64 2161279554, i64 2161279578, i64 2161279619, i64 2161279640, i64 2161279668, i64 2161279702}
!356 = !{i64 2160676392}
!357 = !{i64 2160676711}
!358 = !{i64 2161363528, i64 2161364012, i64 2161363565, i64 2161363621, i64 2161363655, i64 2161363679, i64 2161363720, i64 2161363741, i64 2161363769, i64 2161363803}
!359 = !{i64 2161352973, i64 2161353457, i64 2161353010, i64 2161353066, i64 2161353100, i64 2161353124, i64 2161353165, i64 2161353186, i64 2161353214, i64 2161353248}
!360 = !{i64 2161359955, i64 2161360439, i64 2161359992, i64 2161360048, i64 2161360082, i64 2161360106, i64 2161360147, i64 2161360168, i64 2161360196, i64 2161360230}
!361 = !{i64 2161344076}
!362 = !{i64 2161345714, i64 2161346198, i64 2161345751, i64 2161345807, i64 2161345841, i64 2161345865, i64 2161345906, i64 2161345927, i64 2161345955, i64 2161345989}
!363 = !{i64 2160785299}
!364 = !{i64 2160785524}
!365 = !{i64 2160471017}
!366 = !{i64 2160471270}
!367 = !{i64 2160896909}
!368 = !{i64 2160897116}
!369 = !{i64 2160637317}
!370 = !{i64 2160637552}
!371 = !{i64 2160654247}
!372 = !{i64 2160654466}
!373 = !{i64 2160751017}
!374 = !{i64 2160751260}
!375 = !{i64 2160768140}
!376 = !{i64 2160768369}
!377 = !{i64 2160694837}
!378 = !{i64 2160695104}
!379 = !{i64 2160712331}
!380 = !{i64 2160712558}
!381 = !{i64 2160733406}
!382 = !{i64 2160733625}
!383 = !{i64 2160807298}
!384 = !{i64 2160807563}
!385 = !{i64 2160825746}
!386 = !{i64 2160826007}
!387 = !{i64 2160863415}
!388 = !{i64 2160863626}
!389 = !{i64 2160880261}
!390 = !{i64 2160880482}
!391 = !{i64 2160842952}
!392 = !{i64 2160843161}
!393 = !{i64 2160380949}
!394 = !{i64 2160381166}
!395 = !{i64 2160398194}
!396 = !{i64 2160398421}
