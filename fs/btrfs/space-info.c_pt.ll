; ModuleID = '/llk/IR_all_yes/fs/btrfs/space-info.c_pt.bc'
source_filename = "../fs/btrfs/space-info.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.81 }
%struct.atomic_t = type { i32 }
%union.anon.81 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.btrfs_space_info = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i32, i8, i32, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, %struct.rw_semaphore, [9 x %struct.list_head], %struct.kobject, [9 x ptr] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.86, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.atomic64_t = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%union.anon.86 = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.reserve_ticket = type { i64, i32, i8, %struct.list_head, %struct.wait_queue_head }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"s_info\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/btrfs/space-info.c\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"found\00", [26 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.3 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\016block group %llu has %llu bytes, %llu used %llu pinned %llu reserved %llu zone_unusable %s\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[readonly]\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@btrfs_init_async_reclaim_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&fs_info->async_reclaim_work)\00", [48 x i8] zeroinitializer }, align 32
@btrfs_init_async_reclaim_work.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&fs_info->async_data_reclaim_work)\00", [43 x i8] zeroinitializer }, align 32
@btrfs_init_async_reclaim_work.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&fs_info->preempt_reclaim_work)\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"space_info:enospc\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"flush == BTRFS_RESERVE_FLUSH_DATA || flush == BTRFS_RESERVE_FLUSH_FREE_SPACE_INODE\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"!current->journal_info || flush != BTRFS_RESERVE_FLUSH_DATA\00", [36 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@create_space_info.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&space_info->groups_sem\00", [40 x i8] zeroinitializer }, align 32
@create_space_info.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&space_info->lock\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/btrfs/space-info.h\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"space_info\00", [21 x i8] zeroinitializer }, align 32
@__tracepoint_update_bytes_may_use = external dso_local global %struct.tracepoint, align 4
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/btrfs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_update_bytes_may_use.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"space_info->reclaim_size >= ticket->bytes\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016space_info %llu has %lld free, is %sfull\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"\016space_info total=%llu, used=%llu, pinned=%llu, reserved=%llu, may_use=%llu, readonly=%llu zone_unusable=%llu\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016global_block_rsv: size %llu reserved %llu\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016trans_block_rsv: size %llu reserved %llu\00", [53 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016chunk_block_rsv: size %llu reserved %llu\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016delayed_block_rsv: size %llu reserved %llu\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016delayed_refs_rsv: size %llu reserved %llu\00", [52 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"current->journal_info == NULL\00", [34 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_flush_space = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_flush_space.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016cannot satisfy tickets, dumping space info\00", [51 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016failing ticket with %llu bytes\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_fail_all_tickets = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_fail_all_tickets.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@data_flush_states = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 7, i32 10, i32 11, i32 9], [16 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_done_preemptive_reclaim = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_done_preemptive_reclaim.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"orig_bytes\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"!current->journal_info || flush != BTRFS_RESERVE_FLUSH_ALL\00", [37 x i8] zeroinitializer }, align 32
@__reserve_bytes.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ticket.wait\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enospc\00", [25 x i8] zeroinitializer }, align 32
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"preempt\00", [24 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_reserve_ticket = external dso_local global %struct.tracepoint, align 4
@__tracepoint_btrfs_trigger_flush = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_trigger_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@priority_flush_states = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 8], [20 x i8] zeroinitializer }, align 32
@evict_flush_states = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 11], [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"list_empty(&ticket->list)\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"!(ticket->bytes == 0 && ticket->error)\00", [57 x i8] zeroinitializer }, align 32
@trace_btrfs_reserve_ticket.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_btrfs_space_reservation = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_space_reservation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 6]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.46 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.47 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 164, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 265, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 454, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1234, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1235, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1236, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1612, i32 42 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1639, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1641, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 3491, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 197, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 198, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [25 x i8] c"../fs/btrfs/space-info.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 110, i32 1 }
@___asan_gen_.127 = private unnamed_addr constant [32 x i8] c"../include/trace/events/btrfs.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 2250, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 108, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 355, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 418, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 422, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 428, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 429, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 430, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 431, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 432, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 688, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 896, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 909, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant [18 x i8] c"data_flush_states\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1148, i32 37 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1488, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1489, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1534, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1557, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1575, i32 28 }
@___asan_gen_.186 = private unnamed_addr constant [22 x i8] c"priority_flush_states\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1240, i32 37 }
@___asan_gen_.189 = private unnamed_addr constant [19 x i8] c"evict_flush_states\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1246, i32 37 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1410, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1415, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.199 = private constant [25 x i8] c"../fs/btrfs/space-info.c\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1422, i32 2 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @btrfs_init_async_reclaim_work.__key, ptr @.str.6, ptr @btrfs_init_async_reclaim_work.__key.7, ptr @.str.8, ptr @btrfs_init_async_reclaim_work.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @create_space_info.__key, ptr @.str.17, ptr @create_space_info.__key.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @data_flush_states, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @priority_flush_states, ptr @evict_flush_states, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_init_async_reclaim_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_init_async_reclaim_work.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_init_async_reclaim_work.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_space_info.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_space_info.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_flush_states to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @priority_flush_states to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evict_flush_states to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @btrfs_space_info_used(ptr noundef readonly %s_info, i1 noundef zeroext %may_use_included) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s_info, null
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !121

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 164) #15
  unreachable

cond.end:                                         ; preds = %entry
  %bytes_used = getelementptr inbounds %struct.btrfs_space_info, ptr %s_info, i32 0, i32 2
  %0 = ptrtoint ptr %bytes_used to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %bytes_used, align 8
  %bytes_reserved = getelementptr inbounds %struct.btrfs_space_info, ptr %s_info, i32 0, i32 4
  %2 = ptrtoint ptr %bytes_reserved to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bytes_reserved, align 8
  %bytes_pinned = getelementptr inbounds %struct.btrfs_space_info, ptr %s_info, i32 0, i32 3
  %4 = ptrtoint ptr %bytes_pinned to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bytes_pinned, align 8
  %bytes_readonly = getelementptr inbounds %struct.btrfs_space_info, ptr %s_info, i32 0, i32 6
  %6 = ptrtoint ptr %bytes_readonly to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bytes_readonly, align 8
  %bytes_zone_unusable = getelementptr inbounds %struct.btrfs_space_info, ptr %s_info, i32 0, i32 7
  %8 = ptrtoint ptr %bytes_zone_unusable to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bytes_zone_unusable, align 8
  br i1 %may_use_included, label %cond.true7, label %cond.end.cond.end9_crit_edge

cond.end.cond.end9_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end9

cond.true7:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %bytes_may_use = getelementptr inbounds %struct.btrfs_space_info, ptr %s_info, i32 0, i32 5
  %10 = ptrtoint ptr %bytes_may_use to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bytes_may_use, align 8
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true7, %cond.end.cond.end9_crit_edge
  %cond = phi i64 [ %11, %cond.true7 ], [ 0, %cond.end.cond.end9_crit_edge ]
  %add = add i64 %3, %1
  %add3 = add i64 %add, %5
  %add4 = add i64 %add3, %7
  %add5 = add i64 %add4, %9
  %add10 = add i64 %add5, %cond
  ret i64 %add10
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #1 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %expr, ptr noundef nonnull @.str.1, i32 noundef %line) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #12, !srcloc !122
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_clear_space_info_full(ptr noundef readonly %info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %space_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 101
  %0 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn9 = load ptr, ptr %space_info, align 4
  %cmp.not10 = icmp eq ptr %.pn9, %space_info
  br i1 %cmp.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn11 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn9, %entry.for.body_crit_edge ]
  %full = getelementptr i8, ptr %.pn11, i32 -36
  %1 = ptrtoint ptr %full to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %full, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %full, align 4
  %2 = ptrtoint ptr %.pn11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn11, align 4
  %cmp.not = icmp eq ptr %.pn, %space_info
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_init_space_info(ptr noundef %fs_info) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %super_copy = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 43
  %0 = ptrtoint ptr %super_copy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %super_copy, align 8
  %root.i = getelementptr inbounds %struct.btrfs_super_block, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %root.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %root.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %incompat_flags.i = getelementptr inbounds %struct.btrfs_super_block, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %incompat_flags.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %incompat_flags.i, align 1
  %call5 = tail call fastcc i32 @create_space_info(ptr noundef %fs_info, i64 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %6 = and i64 %5, 288230376151711744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool2.not = icmp eq i64 %6, 0
  br i1 %tobool2.not, label %if.else, label %if.end8.cleanup.sink.split_crit_edge

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end8
  %call12 = tail call fastcc i32 @create_space_info(ptr noundef %fs_info, i64 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.else.cleanup.sink.split_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.end8.cleanup.sink.split_crit_edge
  %.sink = phi i64 [ 5, %if.end8.cleanup.sink.split_crit_edge ], [ 1, %if.else.cleanup.sink.split_crit_edge ]
  %call16 = tail call fastcc i32 @create_space_info(ptr noundef %fs_info, i64 noundef %.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call12, %if.else.cleanup_crit_edge ], [ %call16, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @create_space_info(ptr noundef %info, i64 noundef %flags) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 544) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %arrayidx, ptr %arrayidx, align 8
  %prev.i = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %prev.i, align 4
  %arrayidx.1 = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 8
  %prev.i.1 = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx.1, ptr %prev.i.1, align 4
  %arrayidx.2 = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 8
  %prev.i.2 = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx.2, ptr %prev.i.2, align 4
  %arrayidx.3 = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 3
  %7 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %arrayidx.3, ptr %arrayidx.3, align 8
  %prev.i.3 = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.3, ptr %prev.i.3, align 4
  %arrayidx.4 = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 4
  %9 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %arrayidx.4, ptr %arrayidx.4, align 8
  %prev.i.4 = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i.4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.4, ptr %prev.i.4, align 4
  %arrayidx.5 = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 5
  %11 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx.5, ptr %arrayidx.5, align 8
  %prev.i.5 = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 5, i32 1
  %12 = ptrtoint ptr %prev.i.5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.5, ptr %prev.i.5, align 4
  %arrayidx.6 = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 6
  %13 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %arrayidx.6, ptr %arrayidx.6, align 8
  %prev.i.6 = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 6, i32 1
  %14 = ptrtoint ptr %prev.i.6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.6, ptr %prev.i.6, align 4
  %arrayidx.7 = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 7
  %15 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %arrayidx.7, ptr %arrayidx.7, align 8
  %prev.i.7 = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 7, i32 1
  %16 = ptrtoint ptr %prev.i.7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx.7, ptr %prev.i.7, align 4
  %arrayidx.8 = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 8
  %17 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %arrayidx.8, ptr %arrayidx.8, align 8
  %prev.i.8 = getelementptr %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 22, i32 8, i32 1
  %18 = ptrtoint ptr %prev.i.8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx.8, ptr %prev.i.8, align 4
  %groups_sem = getelementptr inbounds %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 21
  tail call void @__init_rwsem(ptr noundef %groups_sem, ptr noundef nonnull @.str.17, ptr noundef nonnull @create_space_info.__key) #12
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @create_space_info.__key.18, i16 noundef signext 3) #12
  %and = and i64 %flags, 7
  %flags5 = getelementptr inbounds %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 14
  %19 = ptrtoint ptr %flags5 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %and, ptr %flags5, align 8
  %force_alloc = getelementptr inbounds %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %force_alloc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %force_alloc, align 8
  %ro_bgs = getelementptr inbounds %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 16
  %21 = ptrtoint ptr %ro_bgs to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %ro_bgs, ptr %ro_bgs, align 8
  %prev.i36 = getelementptr inbounds %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 16, i32 1
  %22 = ptrtoint ptr %prev.i36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ro_bgs, ptr %prev.i36, align 4
  %tickets = getelementptr inbounds %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 18
  %23 = ptrtoint ptr %tickets to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %tickets, ptr %tickets, align 8
  %prev.i37 = getelementptr inbounds %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %tickets, ptr %prev.i37, align 4
  %priority_tickets = getelementptr inbounds %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 17
  %25 = ptrtoint ptr %priority_tickets to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %priority_tickets, ptr %priority_tickets, align 8
  %prev.i38 = getelementptr inbounds %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 17, i32 1
  %26 = ptrtoint ptr %prev.i38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %priority_tickets, ptr %prev.i38, align 4
  %clamp = getelementptr inbounds %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 9
  %27 = ptrtoint ptr %clamp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %clamp, align 8
  %call6 = tail call i32 @btrfs_sysfs_add_space_info_type(ptr noundef %info, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %for.body.preheader
  %list = getelementptr inbounds %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 15
  %space_info10 = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 101
  %28 = ptrtoint ptr %space_info10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %space_info10, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %space_info10, ptr noundef %29) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end9.list_add.exit_crit_edge

if.end9.list_add.exit_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list, ptr %prev1.i.i, align 4
  %31 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.btrfs_space_info, ptr %call7.i.i, i32 0, i32 15, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %space_info10, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %space_info10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list, ptr %space_info10, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end9.list_add.exit_crit_edge
  %and11 = and i64 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %list_add.exit.cleanup_crit_edge, label %if.then13

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  %data_sinfo = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 102
  %34 = ptrtoint ptr %data_sinfo to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %data_sinfo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %list_add.exit.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call6, %for.body.preheader.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %list_add.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_update_space_info(ptr noundef %info, i64 noundef %flags, i64 noundef %total_bytes, i64 noundef %bytes_used, i64 noundef %bytes_readonly, i64 noundef %bytes_zone_unusable, ptr nocapture noundef writeonly %space_info) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @btrfs_bg_type_to_factor(i64 noundef %flags) #12
  %space_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 101
  %and.i = and i64 %flags, 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %space_info.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %space_info.i
  br i1 %cmp.not.i, label %for.cond.i.cond.false_crit_edge, label %for.body.i

for.cond.i.cond.false_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

for.body.i:                                       ; preds = %for.cond.i
  %flags1.i = getelementptr i8, ptr %.pn.i, i32 -8
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %flags1.i, align 8
  %and2.i = and i64 %and.i, %2
  %tobool.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %btrfs_find_space_info.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

btrfs_find_space_info.exit:                       ; preds = %for.body.i
  %found.0.le.i = getelementptr i8, ptr %.pn.i, i32 -152
  %tobool.not = icmp eq ptr %found.0.le.i, null
  br i1 %tobool.not, label %btrfs_find_space_info.exit.cond.false_crit_edge, label %cond.end, !prof !121

btrfs_find_space_info.exit.cond.false_crit_edge:  ; preds = %btrfs_find_space_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.false:                                       ; preds = %btrfs_find_space_info.exit.cond.false_crit_edge, %for.cond.i.cond.false_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 265) #15
  unreachable

cond.end:                                         ; preds = %btrfs_find_space_info.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull %found.0.le.i) #12
  %total_bytes4 = getelementptr i8, ptr %.pn.i, i32 -104
  %3 = ptrtoint ptr %total_bytes4 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %total_bytes4, align 8
  %add = add i64 %4, %total_bytes
  store i64 %add, ptr %total_bytes4, align 8
  %conv = sext i32 %call to i64
  %mul = mul i64 %conv, %total_bytes
  %disk_total = getelementptr i8, ptr %.pn.i, i32 -16
  %5 = ptrtoint ptr %disk_total to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %disk_total, align 8
  %add5 = add i64 %6, %mul
  store i64 %add5, ptr %disk_total, align 8
  %bytes_used6 = getelementptr i8, ptr %.pn.i, i32 -96
  %7 = ptrtoint ptr %bytes_used6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %bytes_used6, align 8
  %add7 = add i64 %8, %bytes_used
  store i64 %add7, ptr %bytes_used6, align 8
  %mul9 = mul i64 %conv, %bytes_used
  %disk_used = getelementptr i8, ptr %.pn.i, i32 -24
  %9 = ptrtoint ptr %disk_used to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %disk_used, align 8
  %add10 = add i64 %10, %mul9
  store i64 %add10, ptr %disk_used, align 8
  %bytes_readonly11 = getelementptr i8, ptr %.pn.i, i32 -64
  %11 = ptrtoint ptr %bytes_readonly11 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bytes_readonly11, align 8
  %add12 = add i64 %12, %bytes_readonly
  store i64 %add12, ptr %bytes_readonly11, align 8
  %bytes_zone_unusable13 = getelementptr i8, ptr %.pn.i, i32 -56
  %13 = ptrtoint ptr %bytes_zone_unusable13 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bytes_zone_unusable13, align 8
  %add14 = add i64 %14, %bytes_zone_unusable
  store i64 %add14, ptr %bytes_zone_unusable13, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %total_bytes)
  %cmp.not = icmp eq i64 %total_bytes, 0
  br i1 %cmp.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %full = getelementptr i8, ptr %.pn.i, i32 -36
  %15 = ptrtoint ptr %full to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %full, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %full, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  tail call void @btrfs_try_granting_tickets(ptr noundef %info, ptr noundef nonnull %found.0.le.i)
  tail call void @_raw_spin_unlock(ptr noundef nonnull %found.0.le.i) #12
  %16 = ptrtoint ptr %space_info to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %found.0.le.i, ptr %space_info, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_bg_type_to_factor(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_find_space_info(ptr noundef readonly %info, i64 noundef %flags) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %space_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 101
  %and = and i64 %flags, 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %space_info, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %space_info
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %flags1 = getelementptr i8, ptr %.pn, i32 -8
  %1 = ptrtoint ptr %flags1 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %flags1, align 8
  %and2 = and i64 %and, %2
  %tobool.not = icmp eq i64 %and2, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %cleanup.split.loop.exit14

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

cleanup.split.loop.exit14:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %found.0.le = getelementptr i8, ptr %.pn, i32 -152
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit14, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %found.0.le, %cleanup.split.loop.exit14 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_try_granting_tickets(ptr noundef %fs_info, ptr noundef %space_info) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.anon, ptr %space_info, i32 0, i32 1
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !121

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 370, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %priority_tickets = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 17
  %tobool.not.i = icmp eq ptr %space_info, null
  %bytes_used.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 2
  %bytes_reserved.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 4
  %bytes_pinned.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 3
  %bytes_readonly.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 6
  %bytes_zone_unusable.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 7
  %bytes_may_use.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 5
  %total_bytes = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 1
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %space_info, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 14
  %reclaim_size.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 19
  %tickets_id = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 20
  %tickets = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 18
  br label %again

again:                                            ; preds = %while.end.again_crit_edge, %if.end
  %flush.0 = phi i32 [ 0, %if.end ], [ 5, %while.end.again_crit_edge ]
  %head.0 = phi ptr [ %priority_tickets, %if.end ], [ %tickets, %while.end.again_crit_edge ]
  %1 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %head.0, align 4
  %cmp.i.not71 = icmp eq ptr %2, %head.0
  br i1 %cmp.i.not71, label %again.while.end_crit_edge, label %while.body.lr.ph

again.while.end_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %again
  br i1 %tobool.not.i, label %cond.false.i, label %while.body.lr.ph.while.body_crit_edge, !prof !121

while.body.lr.ph.while.body_crit_edge:            ; preds = %while.body.lr.ph
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph.while.body_crit_edge
  %3 = phi ptr [ %51, %cleanup.while.body_crit_edge ], [ %2, %while.body.lr.ph.while.body_crit_edge ]
  %4 = ptrtoint ptr %bytes_used.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bytes_used.i, align 8
  %6 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bytes_reserved.i, align 8
  %8 = ptrtoint ptr %bytes_pinned.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bytes_pinned.i, align 8
  %10 = ptrtoint ptr %bytes_readonly.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bytes_readonly.i, align 8
  %12 = ptrtoint ptr %bytes_zone_unusable.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bytes_zone_unusable.i, align 8
  %14 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bytes_may_use.i, align 8
  %add.i = add i64 %7, %5
  %add3.i = add i64 %add.i, %9
  %add4.i = add i64 %add3.i, %11
  %add5.i = add i64 %add4.i, %13
  %add10.i = add i64 %add5.i, %15
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr, align 8
  %add = add i64 %add10.i, %17
  %18 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %total_bytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %19)
  %cmp30.not = icmp ugt i64 %add, %19
  br i1 %cmp30.not, label %lor.lhs.false, label %while.body.if.then34_crit_edge

while.body.if.then34_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34

cond.false.i:                                     ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 164) #18
  unreachable

lor.lhs.false:                                    ; preds = %while.body
  %call32 = tail call i32 @btrfs_can_overcommit(ptr noundef %fs_info, ptr noundef nonnull %space_info, i64 noundef %17, i32 noundef %flush.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %lor.lhs.false.while.end_crit_edge, label %if.then34thread-pre-split

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then34thread-pre-split:                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %20)
  %.pr = load i64, ptr %add.ptr, align 8
  br label %if.then34

if.then34:                                        ; preds = %if.then34thread-pre-split, %while.body.if.then34_crit_edge
  %21 = phi i64 [ %.pr, %if.then34thread-pre-split ], [ %17, %while.body.if.then34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp.i61 = icmp slt i64 %21, 0
  %sub.i = sub i64 0, %21
  %cond.i = select i1 %cmp.i61, i64 %sub.i, i64 %21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %22 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i62 = icmp eq i32 %22, 0
  br i1 %tobool.not.i62, label %if.then34.if.end.i_crit_edge, label %land.rhs.i

if.then34.if.end.i_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then34
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp1.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !121

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 110, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then34.if.end.i_crit_edge
  %23 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %bytes_may_use.i, align 8
  tail call fastcc void @trace_update_bytes_may_use(ptr noundef %fs_info, ptr noundef nonnull %space_info, i64 noundef %24, i64 noundef %21) #12
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp25.i = icmp sgt i64 %21, 0
  %conv.i64 = zext i1 %cmp25.i to i32
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, ptr noundef nonnull @.str.21, i64 noundef %26, i64 noundef %cond.i, i32 noundef %conv.i64) #12
  br i1 %cmp.i61, label %land.lhs.true.i, label %if.end.i.if.end60.i_crit_edge

if.end.i.if.end60.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %27 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bytes_may_use.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %sub.i)
  %cmp30.i = icmp ult i64 %28, %sub.i
  br i1 %cmp30.i, label %do.end45.i, label %land.lhs.true.i.if.end60.i_crit_edge

land.lhs.true.i.if.end60.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

do.end45.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 110, i32 noundef 9, ptr noundef null) #12
  br label %btrfs_space_info_update_bytes_may_use.exit

if.end60.i:                                       ; preds = %land.lhs.true.i.if.end60.i_crit_edge, %if.end.i.if.end60.i_crit_edge
  %29 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bytes_may_use.i, align 8
  %add.i65 = add i64 %30, %21
  br label %btrfs_space_info_update_bytes_may_use.exit

btrfs_space_info_update_bytes_may_use.exit:       ; preds = %if.end60.i, %do.end45.i
  %storemerge.i = phi i64 [ %add.i65, %if.end60.i ], [ 0, %do.end45.i ]
  %31 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %storemerge.i, ptr %bytes_may_use.i, align 8
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %3, align 4
  %cmp.i.not.i = icmp eq ptr %33, %3
  br i1 %cmp.i.not.i, label %btrfs_space_info_update_bytes_may_use.exit.cleanup_crit_edge, label %if.then.i

btrfs_space_info_update_bytes_may_use.exit.cleanup_crit_edge: ; preds = %btrfs_space_info_update_bytes_may_use.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %btrfs_space_info_update_bytes_may_use.exit
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %3, i32 4
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i.i = getelementptr i8, ptr %3, i32 4
  %41 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %3, ptr %prev.i3.i.i, align 4
  %42 = ptrtoint ptr %reclaim_size.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %reclaim_size.i, align 8
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %45)
  %cmp.not.i = icmp ult i64 %43, %45
  br i1 %cmp.not.i, label %cond.false.i66, label %cond.end.i, !prof !121

cond.false.i66:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.25, i32 noundef 355) #18
  unreachable

cond.end.i:                                       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i67 = sub i64 %43, %45
  %46 = ptrtoint ptr %reclaim_size.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %sub.i67, ptr %reclaim_size.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.end.i, %btrfs_space_info_update_bytes_may_use.exit.cleanup_crit_edge
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 0, ptr %add.ptr, align 8
  %48 = ptrtoint ptr %tickets_id to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %tickets_id, align 8
  %inc = add i64 %49, 1
  store i64 %inc, ptr %tickets_id, align 8
  %wait = getelementptr i8, ptr %3, i32 8
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %50 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %head.0, align 4
  %cmp.i.not = icmp eq ptr %51, %head.0
  br i1 %cmp.i.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge, %again.while.end_crit_edge
  %cmp40 = icmp eq ptr %head.0, %priority_tickets
  br i1 %cmp40, label %while.end.again_crit_edge, label %if.end42

while.end.again_crit_edge:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %again

if.end42:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_can_overcommit(ptr noundef %fs_info, ptr noundef readonly %space_info, i64 noundef %bytes, i32 noundef %flush) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags, align 8
  %and = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %space_info, null
  br i1 %tobool.not.i, label %cond.false.i, label %btrfs_space_info_used.exit, !prof !121

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 164) #18
  unreachable

btrfs_space_info_used.exit:                       ; preds = %if.end
  %bytes_used.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 2
  %2 = ptrtoint ptr %bytes_used.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bytes_used.i, align 8
  %bytes_reserved.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 4
  %4 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bytes_reserved.i, align 8
  %bytes_pinned.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 3
  %6 = ptrtoint ptr %bytes_pinned.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bytes_pinned.i, align 8
  %bytes_readonly.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 6
  %8 = ptrtoint ptr %bytes_readonly.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bytes_readonly.i, align 8
  %bytes_zone_unusable.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 7
  %10 = ptrtoint ptr %bytes_zone_unusable.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bytes_zone_unusable.i, align 8
  %bytes_may_use.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 5
  %12 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bytes_may_use.i, align 8
  %and.i = and i64 %1, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i9 = icmp eq i64 %and.i, 0
  %..i = select i1 %tobool.not.i9, i64 4, i64 2
  %call.i15.i = tail call i64 @btrfs_get_alloc_profile(ptr noundef %fs_info, i64 noundef %..i) #12
  %free_chunk_space.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_chunk_space.i, i32 noundef 8) #12
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %free_chunk_space.i) #12
  %call3.i = tail call i32 @btrfs_bg_type_to_factor(i64 noundef %call.i15.i) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %call.i.i)
  %cmp164.i.i.i = icmp ult i64 %call.i.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !123

if.then168.i.i.i:                                 ; preds = %btrfs_space_info_used.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i.i = trunc i64 %call.i.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %call3.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %calc_available_free_space.exit

if.else174.i.i.i:                                 ; preds = %btrfs_space_info_used.exit
  call void @__sanitizer_cov_trace_pc() #14
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call3.i, i64 %call.i.i) #19, !srcloc !124
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %14, 1
  br label %calc_available_free_space.exit

calc_available_free_space.exit:                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %flush)
  %cmp.i = icmp eq i32 %flush, 5
  %avail.0.v.i = select i1 %cmp.i, i64 3, i64 1
  %avail.0.i = lshr i64 %dividend.addr.0.i.i.i, %avail.0.v.i
  %add.i = add i64 %3, %bytes
  %add3.i = add i64 %add.i, %5
  %add4.i = add i64 %add3.i, %7
  %add5.i = add i64 %add4.i, %9
  %add10.i = add i64 %add5.i, %11
  %add = add i64 %add10.i, %13
  %total_bytes = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 1
  %15 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %total_bytes, align 8
  %add2 = add i64 %16, %avail.0.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add2)
  %cmp = icmp ult i64 %add, %add2
  %. = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %calc_available_free_space.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %calc_available_free_space.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_dump_space_info(ptr noundef %fs_info, ptr noundef %info, i64 noundef %bytes, i32 noundef %dump_block_groups) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %info) #12
  tail call fastcc void @__btrfs_dump_space_info(ptr noundef %fs_info, ptr noundef %info)
  tail call void @_raw_spin_unlock(ptr noundef %info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dump_block_groups)
  %tobool.not = icmp eq i32 %dump_block_groups, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %groups_sem = getelementptr inbounds %struct.btrfs_space_info, ptr %info, i32 0, i32 21
  tail call void @down_read(ptr noundef %groups_sem) #12
  br label %again

again:                                            ; preds = %for.end.again_crit_edge, %if.end
  %index.0 = phi i32 [ 0, %if.end ], [ %inc, %for.end.again_crit_edge ]
  %arrayidx = getelementptr %struct.btrfs_space_info, ptr %info, i32 0, i32 22, i32 %index.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn37 = load ptr, ptr %arrayidx, align 4
  %cmp.not38 = icmp eq ptr %.pn37, %arrayidx
  br i1 %cmp.not38, label %again.for.end_crit_edge, label %again.for.body_crit_edge

again.for.body_crit_edge:                         ; preds = %again
  br label %for.body

again.for.end_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %again.for.body_crit_edge
  %.pn39 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn37, %again.for.body_crit_edge ]
  %cache.0 = getelementptr i8, ptr %.pn39, i32 -284
  %lock4 = getelementptr i8, ptr %.pn39, i32 -276
  tail call void @_raw_spin_lock(ptr noundef %lock4) #12
  %start = getelementptr i8, ptr %.pn39, i32 -228
  %1 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %start, align 8
  %length = getelementptr i8, ptr %.pn39, i32 -220
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %length, align 8
  %used = getelementptr i8, ptr %.pn39, i32 -196
  %5 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %used, align 8
  %pinned = getelementptr i8, ptr %.pn39, i32 -212
  %7 = ptrtoint ptr %pinned to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pinned, align 8
  %reserved = getelementptr i8, ptr %.pn39, i32 -204
  %9 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %reserved, align 8
  %zone_unusable = getelementptr i8, ptr %.pn39, i32 348
  %11 = ptrtoint ptr %zone_unusable to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %zone_unusable, align 8
  %ro = getelementptr i8, ptr %.pn39, i32 -48
  %13 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  %cond = select i1 %tobool5.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.3, i64 noundef %2, i64 noundef %4, i64 noundef %6, i64 noundef %8, i64 noundef %10, i64 noundef %12, ptr noundef nonnull %cond) #16
  tail call void @_raw_spin_unlock(ptr noundef %lock4) #12
  tail call void @btrfs_dump_free_space(ptr noundef %cache.0, i64 noundef %bytes) #12
  %15 = ptrtoint ptr %.pn39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn39, align 4
  %cmp.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %again.for.end_crit_edge
  %inc = add nuw nsw i32 %index.0, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %if.end14, label %for.end.again_crit_edge

for.end.again_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %again

if.end14:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_read(ptr noundef %groups_sem) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__btrfs_dump_space_info(ptr noundef %fs_info, ptr noundef %info) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.anon, ptr %info, i32 0, i32 1
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !121

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 415, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %info, null
  br i1 %tobool.not.i, label %cond.false.i, label %btrfs_space_info_used.exit, !prof !121

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 164) #18
  unreachable

btrfs_space_info_used.exit:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %total_bytes = getelementptr inbounds %struct.btrfs_space_info, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %total_bytes, align 8
  %flags = getelementptr inbounds %struct.btrfs_space_info, ptr %info, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %flags, align 8
  %bytes_used.i = getelementptr inbounds %struct.btrfs_space_info, ptr %info, i32 0, i32 2
  %5 = ptrtoint ptr %bytes_used.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bytes_used.i, align 8
  %bytes_reserved.i = getelementptr inbounds %struct.btrfs_space_info, ptr %info, i32 0, i32 4
  %7 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %bytes_reserved.i, align 8
  %bytes_pinned.i = getelementptr inbounds %struct.btrfs_space_info, ptr %info, i32 0, i32 3
  %9 = ptrtoint ptr %bytes_pinned.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bytes_pinned.i, align 8
  %bytes_readonly.i = getelementptr inbounds %struct.btrfs_space_info, ptr %info, i32 0, i32 6
  %11 = ptrtoint ptr %bytes_readonly.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bytes_readonly.i, align 8
  %bytes_zone_unusable.i = getelementptr inbounds %struct.btrfs_space_info, ptr %info, i32 0, i32 7
  %13 = ptrtoint ptr %bytes_zone_unusable.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bytes_zone_unusable.i, align 8
  %bytes_may_use.i = getelementptr inbounds %struct.btrfs_space_info, ptr %info, i32 0, i32 5
  %15 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %bytes_may_use.i, align 8
  %17 = add i64 %6, %8
  %18 = add i64 %17, %10
  %19 = add i64 %18, %12
  %20 = add i64 %19, %14
  %21 = add i64 %20, %16
  %sub = sub i64 %2, %21
  %full = getelementptr inbounds %struct.btrfs_space_info, ptr %info, i32 0, i32 10
  %22 = ptrtoint ptr %full to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %full, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool25.not = icmp sgt i8 %bf.load, -1
  %cond = select i1 %tobool25.not, ptr @.str.27, ptr @.str.5
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.26, i64 noundef %4, i64 noundef %sub, ptr noundef nonnull %cond) #16
  %23 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %total_bytes, align 8
  %25 = ptrtoint ptr %bytes_used.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %bytes_used.i, align 8
  %27 = ptrtoint ptr %bytes_pinned.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bytes_pinned.i, align 8
  %29 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bytes_reserved.i, align 8
  %31 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %bytes_may_use.i, align 8
  %33 = ptrtoint ptr %bytes_readonly.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %bytes_readonly.i, align 8
  %35 = ptrtoint ptr %bytes_zone_unusable.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %bytes_zone_unusable.i, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.28, i64 noundef %24, i64 noundef %26, i64 noundef %28, i64 noundef %30, i64 noundef %32, i64 noundef %34, i64 noundef %36) #16
  %global_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20
  %lock28 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock28) #12
  %37 = ptrtoint ptr %global_block_rsv to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %global_block_rsv, align 8
  %reserved = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 1
  %39 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %reserved, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.29, i64 noundef %38, i64 noundef %40) #16
  tail call void @_raw_spin_unlock(ptr noundef %lock28) #12
  %trans_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 21
  %lock34 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 21, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock34) #12
  %41 = ptrtoint ptr %trans_block_rsv to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %trans_block_rsv, align 8
  %reserved36 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 21, i32 1
  %43 = ptrtoint ptr %reserved36 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %reserved36, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.30, i64 noundef %42, i64 noundef %44) #16
  tail call void @_raw_spin_unlock(ptr noundef %lock34) #12
  %chunk_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 22
  %lock42 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 22, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock42) #12
  %45 = ptrtoint ptr %chunk_block_rsv to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %chunk_block_rsv, align 8
  %reserved44 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 22, i32 1
  %47 = ptrtoint ptr %reserved44 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %reserved44, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.31, i64 noundef %46, i64 noundef %48) #16
  tail call void @_raw_spin_unlock(ptr noundef %lock42) #12
  %delayed_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 23
  %lock50 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 23, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock50) #12
  %49 = ptrtoint ptr %delayed_block_rsv to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %delayed_block_rsv, align 8
  %reserved52 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 23, i32 1
  %51 = ptrtoint ptr %reserved52 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %reserved52, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.32, i64 noundef %50, i64 noundef %52) #16
  tail call void @_raw_spin_unlock(ptr noundef %lock50) #12
  %delayed_refs_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24
  %lock58 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock58) #12
  %53 = ptrtoint ptr %delayed_refs_rsv to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %delayed_refs_rsv, align 8
  %reserved60 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24, i32 1
  %55 = ptrtoint ptr %reserved60 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %reserved60, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.33, i64 noundef %54, i64 noundef %56) #16
  tail call void @_raw_spin_unlock(ptr noundef %lock58) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_dump_free_space(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_init_async_reclaim_work(ptr noundef %fs_info) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %async_reclaim_work = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 156
  tail call void @__init_work(ptr noundef %async_reclaim_work, i32 noundef 0) #12
  %0 = ptrtoint ptr %async_reclaim_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %async_reclaim_work, align 8
  %lockdep_map = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 156, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @btrfs_init_async_reclaim_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry4 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 156, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 156, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 156, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @btrfs_async_reclaim_metadata_space, ptr %func, align 4
  %async_data_reclaim_work = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 157
  tail call void @__init_work(ptr noundef %async_data_reclaim_work, i32 noundef 0) #12
  %4 = ptrtoint ptr %async_data_reclaim_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %async_data_reclaim_work, align 4
  %lockdep_map12 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 157, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map12, ptr noundef nonnull @.str.8, ptr noundef nonnull @btrfs_init_async_reclaim_work.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry14 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 157, i32 1
  %5 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i44 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 157, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i44 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry14, ptr %prev.i44, align 4
  %func16 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 157, i32 2
  %7 = ptrtoint ptr %func16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @btrfs_async_reclaim_data_space, ptr %func16, align 4
  %preempt_reclaim_work = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 158
  tail call void @__init_work(ptr noundef %preempt_reclaim_work, i32 noundef 0) #12
  %8 = ptrtoint ptr %preempt_reclaim_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %preempt_reclaim_work, align 8
  %lockdep_map24 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 158, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map24, ptr noundef nonnull @.str.10, ptr noundef nonnull @btrfs_init_async_reclaim_work.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry26 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 158, i32 1
  %9 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry26, ptr %entry26, align 4
  %prev.i45 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 158, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry26, ptr %prev.i45, align 4
  %func28 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 158, i32 2
  %11 = ptrtoint ptr %func28 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @btrfs_preempt_reclaim_metadata_space, ptr %func28, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btrfs_async_reclaim_metadata_space(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -5176
  %space_info.i = getelementptr i8, ptr %work, i32 -2220
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %space_info.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %space_info.i
  br i1 %cmp.not.i, label %for.cond.i.btrfs_find_space_info.exit_crit_edge, label %for.body.i

for.cond.i.btrfs_find_space_info.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %btrfs_find_space_info.exit

for.body.i:                                       ; preds = %for.cond.i
  %flags1.i = getelementptr i8, ptr %.pn.i, i32 -8
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %flags1.i, align 8
  %and2.i = and i64 %2, 4
  %tobool.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup.split.loop.exit14.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

cleanup.split.loop.exit14.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %found.0.le.i = getelementptr i8, ptr %.pn.i, i32 -152
  br label %btrfs_find_space_info.exit

btrfs_find_space_info.exit:                       ; preds = %cleanup.split.loop.exit14.i, %for.cond.i.btrfs_find_space_info.exit_crit_edge
  %retval.0.i = phi ptr [ %found.0.le.i, %cleanup.split.loop.exit14.i ], [ null, %for.cond.i.btrfs_find_space_info.exit_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %retval.0.i) #12
  %call1 = tail call fastcc i64 @btrfs_calc_reclaim_metadata_size(ptr noundef %add.ptr, ptr noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1)
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %btrfs_find_space_info.exit.cleanup_crit_edge, label %if.end

btrfs_find_space_info.exit.cleanup_crit_edge:     ; preds = %btrfs_find_space_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %btrfs_find_space_info.exit
  %tickets_id = getelementptr inbounds %struct.btrfs_space_info, ptr %retval.0.i, i32 0, i32 20
  %3 = ptrtoint ptr %tickets_id to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tickets_id, align 8
  tail call void @_raw_spin_unlock(ptr noundef %retval.0.i) #12
  tail call fastcc void @flush_space(ptr noundef %add.ptr, ptr noundef %retval.0.i, i64 noundef %call1, i32 noundef 1, i1 noundef zeroext false)
  tail call void @_raw_spin_lock(ptr noundef %retval.0.i) #12
  %tickets = getelementptr inbounds %struct.btrfs_space_info, ptr %retval.0.i, i32 0, i32 18
  %5 = ptrtoint ptr %tickets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %tickets, align 4
  %cmp.i.not97 = icmp eq ptr %6, %tickets
  br i1 %cmp.i.not97, label %if.end.cleanup_crit_edge, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  br label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end49.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %last_tickets_id.0100 = phi i64 [ %8, %if.end49.if.end13_crit_edge ], [ %4, %if.end.if.end13_crit_edge ]
  %commit_cycles.099 = phi i32 [ %commit_cycles.2, %if.end49.if.end13_crit_edge ], [ 0, %if.end.if.end13_crit_edge ]
  %flush_state.098 = phi i32 [ %flush_state.4, %if.end49.if.end13_crit_edge ], [ 1, %if.end.if.end13_crit_edge ]
  %call14 = tail call fastcc i64 @btrfs_calc_reclaim_metadata_size(ptr noundef %add.ptr, ptr noundef %retval.0.i)
  %7 = ptrtoint ptr %tickets_id to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tickets_id, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %last_tickets_id.0100, i64 %8)
  %cmp = icmp eq i64 %last_tickets_id.0100, %8
  %inc = add nuw nsw i32 %flush_state.098, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %commit_cycles.099)
  %tobool18.not = icmp eq i32 %commit_cycles.099, 0
  %dec = add i32 %commit_cycles.099, -1
  %spec.select = select i1 %tobool18.not, i32 0, i32 %dec
  %flush_state.1 = select i1 %cmp, i32 %inc, i32 1
  %commit_cycles.1 = select i1 %cmp, i32 %commit_cycles.099, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %flush_state.1)
  %cmp22 = icmp eq i32 %flush_state.1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %commit_cycles.1)
  %tobool23.not = icmp eq i32 %commit_cycles.1, 0
  %spec.select91 = select i1 %tobool23.not, i32 8, i32 7
  %flush_state.2 = select i1 %cmp22, i32 %spec.select91, i32 %flush_state.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %flush_state.2)
  %cmp27 = icmp eq i32 %flush_state.2, 9
  %spec.select92 = select i1 %tobool23.not, i32 10, i32 9
  %flush_state.3 = select i1 %cmp27, i32 %spec.select92, i32 %flush_state.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %flush_state.3)
  %cmp33 = icmp ugt i32 %flush_state.3, 11
  br i1 %cmp33, label %if.then34, label %if.end13.if.end49_crit_edge

if.end13.if.end49_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then34:                                        ; preds = %if.end13
  %inc35 = add i32 %commit_cycles.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc35)
  %cmp36 = icmp sgt i32 %inc35, 2
  br i1 %cmp36, label %if.then37, label %if.then34.if.end49_crit_edge

if.then34.if.end49_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then37:                                        ; preds = %if.then34
  %call38 = tail call fastcc zeroext i1 @maybe_fail_all_tickets(ptr noundef %add.ptr, ptr noundef %retval.0.i)
  br i1 %call38, label %if.then37.if.end49_crit_edge, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then37.if.end49_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end49:                                         ; preds = %if.then37.if.end49_crit_edge, %if.then34.if.end49_crit_edge, %if.end13.if.end49_crit_edge
  %flush_state.4 = phi i32 [ %flush_state.3, %if.end13.if.end49_crit_edge ], [ 1, %if.then37.if.end49_crit_edge ], [ 1, %if.then34.if.end49_crit_edge ]
  %commit_cycles.2 = phi i32 [ %commit_cycles.1, %if.end13.if.end49_crit_edge ], [ %commit_cycles.1, %if.then37.if.end49_crit_edge ], [ %inc35, %if.then34.if.end49_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %retval.0.i) #12
  tail call fastcc void @flush_space(ptr noundef %add.ptr, ptr noundef %retval.0.i, i64 noundef %call14, i32 noundef %flush_state.4, i1 noundef zeroext false)
  tail call void @_raw_spin_lock(ptr noundef %retval.0.i) #12
  %9 = ptrtoint ptr %tickets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %tickets, align 4
  %cmp.i.not = icmp eq ptr %10, %tickets
  br i1 %cmp.i.not, label %if.end49.cleanup_crit_edge, label %if.end49.if.end13_crit_edge

if.end49.if.end13_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end49.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.end.cleanup_crit_edge, %btrfs_find_space_info.exit.cleanup_crit_edge
  %flush42 = getelementptr inbounds %struct.btrfs_space_info, ptr %retval.0.i, i32 0, i32 10
  %11 = ptrtoint ptr %flush42 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load43 = load i8, ptr %flush42, align 4
  %bf.clear44 = and i8 %bf.load43, -33
  store i8 %bf.clear44, ptr %flush42, align 4
  tail call void @_raw_spin_unlock(ptr noundef %retval.0.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btrfs_async_reclaim_data_space(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -5220
  %data_sinfo = getelementptr i8, ptr %work, i32 -2256
  %0 = ptrtoint ptr %data_sinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_sinfo, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #12
  %tickets = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %tickets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %tickets, align 4
  %cmp.i.not = icmp eq ptr %3, %tickets
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %flush = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %tickets_id = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %tickets_id to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tickets_id, align 8
  tail call void @_raw_spin_unlock(ptr noundef %1) #12
  %full = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %full to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load3133 = load i8, ptr %full, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load3133)
  %tobool4.not134 = icmp sgt i8 %bf.load3133, -1
  br i1 %tobool4.not134, label %while.body.lr.ph, label %if.end.while.cond25.preheader_crit_edge

if.end.while.cond25.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond25.preheader

while.body.lr.ph:                                 ; preds = %if.end
  %tree_root.i = getelementptr i8, ptr %work, i32 -5200
  %flags.i = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 14
  %fs_state = getelementptr i8, ptr %work, i32 -748
  br label %while.body

while.cond25.preheader:                           ; preds = %if.end22.while.cond25.preheader_crit_edge, %if.end.while.cond25.preheader_crit_edge
  %last_tickets_id.0.lcssa = phi i64 [ %5, %if.end.while.cond25.preheader_crit_edge ], [ %19, %if.end22.while.cond25.preheader_crit_edge ]
  %fs_state61 = getelementptr i8, ptr %work, i32 -748
  br label %while.body26

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %while.body.lr.ph
  %7 = ptrtoint ptr %tree_root.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tree_root.i, align 4
  %call31.i = tail call ptr @btrfs_join_transaction(ptr noundef %8) #12
  %cmp.i110.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110.i, label %if.then33.i, label %if.end35.i

if.then33.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call31.i to i32
  br label %flush_space.exit

if.end35.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %flags.i, align 8
  %call36.i = tail call i64 @btrfs_get_alloc_profile(ptr noundef %add.ptr, i64 noundef %11) #12
  %call39.i = tail call i32 @btrfs_chunk_alloc(ptr noundef %call31.i, i64 noundef %call36.i, i32 noundef 2) #12
  %call40.i = tail call i32 @btrfs_end_transaction(ptr noundef %call31.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp41.i = icmp sgt i32 %call39.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call39.i)
  %cmp43.i = icmp eq i32 %call39.i, -28
  %or.cond.i = or i1 %cmp41.i, %cmp43.i
  %spec.select.i = select i1 %or.cond.i, i32 0, i32 %call39.i
  br label %flush_space.exit

flush_space.exit:                                 ; preds = %if.end35.i, %if.then33.i
  %ret.0.i = phi i32 [ %9, %if.then33.i ], [ %spec.select.i, %if.end35.i ]
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %flags.i, align 8
  tail call fastcc void @trace_btrfs_flush_space(ptr noundef %add.ptr, i64 noundef %13, i64 noundef -1, i32 noundef 9, i32 noundef %ret.0.i, i1 noundef zeroext false) #12
  tail call void @_raw_spin_lock(ptr noundef %1) #12
  %14 = ptrtoint ptr %tickets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %tickets, align 4
  %cmp.i121.not = icmp eq ptr %15, %tickets
  br i1 %cmp.i121.not, label %flush_space.exit.cleanup.sink.split_crit_edge, label %if.end15

flush_space.exit.cleanup.sink.split_crit_edge:    ; preds = %flush_space.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end15:                                         ; preds = %flush_space.exit
  %16 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %fs_state, align 4
  %and1.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool17.not = icmp eq i32 %and1.i, 0
  br i1 %tobool17.not, label %if.end22, label %if.end15.aborted_fs_crit_edge, !prof !123

if.end15.aborted_fs_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %aborted_fs

if.end22:                                         ; preds = %if.end15
  %18 = ptrtoint ptr %tickets_id to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tickets_id, align 8
  tail call void @_raw_spin_unlock(ptr noundef %1) #12
  %20 = ptrtoint ptr %full to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load3 = load i8, ptr %full, align 4
  %tobool4.not = icmp sgt i8 %bf.load3, -1
  br i1 %tobool4.not, label %if.end22.while.body_crit_edge, label %if.end22.while.cond25.preheader_crit_edge

if.end22.while.cond25.preheader_crit_edge:        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond25.preheader

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body26:                                     ; preds = %if.end72.while.body26_crit_edge, %while.cond25.preheader
  %flush_state.0136 = phi i32 [ 0, %while.cond25.preheader ], [ %flush_state.3, %if.end72.while.body26_crit_edge ]
  %last_tickets_id.1135 = phi i64 [ %last_tickets_id.0.lcssa, %while.cond25.preheader ], [ %26, %if.end72.while.body26_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @data_flush_states, i32 0, i32 %flush_state.0136
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  tail call fastcc void @flush_space(ptr noundef %add.ptr, ptr noundef %1, i64 noundef -1, i32 noundef %22, i1 noundef zeroext false)
  tail call void @_raw_spin_lock(ptr noundef %1) #12
  %23 = ptrtoint ptr %tickets to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %tickets, align 4
  %cmp.i123.not = icmp eq ptr %24, %tickets
  br i1 %cmp.i123.not, label %while.body26.cleanup.sink.split_crit_edge, label %if.end37

while.body26.cleanup.sink.split_crit_edge:        ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end37:                                         ; preds = %while.body26
  %25 = ptrtoint ptr %tickets_id to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tickets_id, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %last_tickets_id.1135, i64 %26)
  %cmp39 = icmp eq i64 %last_tickets_id.1135, %26
  %inc = add nuw nsw i32 %flush_state.0136, 1
  %flush_state.1 = select i1 %cmp39, i32 %inc, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %flush_state.1)
  %cmp43 = icmp ugt i32 %flush_state.1, 3
  br i1 %cmp43, label %if.then44, label %if.end37.if.end72_crit_edge

if.end37.if.end72_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then44:                                        ; preds = %if.end37
  %27 = ptrtoint ptr %full to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load46 = load i8, ptr %full, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load46)
  %tobool49.not = icmp sgt i8 %bf.load46, -1
  br i1 %tobool49.not, label %if.then44.if.end60_crit_edge, label %if.then50

if.then44.if.end60_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then50:                                        ; preds = %if.then44
  %call51 = tail call fastcc zeroext i1 @maybe_fail_all_tickets(ptr noundef %add.ptr, ptr noundef %1)
  br i1 %call51, label %if.then50.if.end60_crit_edge, label %if.else53

if.then50.if.end60_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.else53:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %full to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load55 = load i8, ptr %full, align 4
  %bf.clear56 = and i8 %bf.load55, -33
  store i8 %bf.clear56, ptr %full, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else53, %if.then50.if.end60_crit_edge, %if.then44.if.end60_crit_edge
  %flush_state.2 = phi i32 [ 4, %if.else53 ], [ 0, %if.then50.if.end60_crit_edge ], [ 0, %if.then44.if.end60_crit_edge ]
  %29 = ptrtoint ptr %fs_state61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %fs_state61, align 4
  %and1.i120 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i120)
  %tobool63.not = icmp eq i32 %and1.i120, 0
  br i1 %tobool63.not, label %if.end60.if.end72_crit_edge, label %if.end60.aborted_fs_crit_edge, !prof !123

if.end60.aborted_fs_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %aborted_fs

if.end60.if.end72_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.end72:                                         ; preds = %if.end60.if.end72_crit_edge, %if.end37.if.end72_crit_edge
  %flush_state.3 = phi i32 [ %flush_state.2, %if.end60.if.end72_crit_edge ], [ %flush_state.1, %if.end37.if.end72_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %1) #12
  %cmp = icmp ult i32 %flush_state.3, 4
  br i1 %cmp, label %if.end72.while.body26_crit_edge, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end72.while.body26_crit_edge:                  ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body26

aborted_fs:                                       ; preds = %if.end60.aborted_fs_crit_edge, %if.end15.aborted_fs_crit_edge
  %call75 = tail call fastcc zeroext i1 @maybe_fail_all_tickets(ptr noundef %add.ptr, ptr noundef %1)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %aborted_fs, %while.body26.cleanup.sink.split_crit_edge, %flush_space.exit.cleanup.sink.split_crit_edge, %if.then
  %full.sink138 = phi ptr [ %full, %aborted_fs ], [ %flush, %if.then ], [ %full, %while.body26.cleanup.sink.split_crit_edge ], [ %full, %flush_space.exit.cleanup.sink.split_crit_edge ]
  %31 = ptrtoint ptr %full.sink138 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load77 = load i8, ptr %full.sink138, align 4
  %bf.clear78 = and i8 %bf.load77, -33
  store i8 %bf.clear78, ptr %full.sink138, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end72.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btrfs_preempt_reclaim_metadata_space(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -5264
  %space_info.i = getelementptr i8, ptr %work, i32 -2308
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %space_info.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %space_info.i
  br i1 %cmp.not.i, label %for.cond.i.btrfs_find_space_info.exit_crit_edge, label %for.body.i

for.cond.i.btrfs_find_space_info.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %btrfs_find_space_info.exit

for.body.i:                                       ; preds = %for.cond.i
  %flags1.i = getelementptr i8, ptr %.pn.i, i32 -8
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %flags1.i, align 8
  %and2.i = and i64 %2, 4
  %tobool.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %cleanup.split.loop.exit14.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

cleanup.split.loop.exit14.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %found.0.le.i = getelementptr i8, ptr %.pn.i, i32 -152
  br label %btrfs_find_space_info.exit

btrfs_find_space_info.exit:                       ; preds = %cleanup.split.loop.exit14.i, %for.cond.i.btrfs_find_space_info.exit_crit_edge
  %retval.0.i = phi ptr [ %found.0.le.i, %cleanup.split.loop.exit14.i ], [ null, %for.cond.i.btrfs_find_space_info.exit_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %retval.0.i) #12
  %call388 = tail call fastcc zeroext i1 @need_preemptive_reclaim(ptr noundef %add.ptr, ptr noundef %retval.0.i)
  br i1 %call388, label %while.body.lr.ph, label %btrfs_find_space_info.exit.if.end44_crit_edge

btrfs_find_space_info.exit.if.end44_crit_edge:    ; preds = %btrfs_find_space_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

while.body.lr.ph:                                 ; preds = %btrfs_find_space_info.exit
  %reserved = getelementptr i8, ptr %work, i32 -4856
  %reserved4 = getelementptr i8, ptr %work, i32 -4592
  %reserved5 = getelementptr i8, ptr %work, i32 -4504
  %reserved7 = getelementptr i8, ptr %work, i32 -4768
  %bytes_may_use = getelementptr inbounds %struct.btrfs_space_info, ptr %retval.0.i, i32 0, i32 5
  %bytes_pinned = getelementptr inbounds %struct.btrfs_space_info, ptr %retval.0.i, i32 0, i32 3
  %nodesize.i = getelementptr i8, ptr %work, i32 336
  br label %while.body

while.body:                                       ; preds = %if.end33.while.body_crit_edge, %while.body.lr.ph
  %loops.089 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end33.while.body_crit_edge ]
  %3 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %reserved, align 8
  %inc = add i32 %loops.089, 1
  %5 = ptrtoint ptr %reserved4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %reserved4, align 8
  %add = add i64 %6, %4
  %7 = ptrtoint ptr %reserved5 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %reserved5, align 8
  %add6 = add i64 %add, %8
  %9 = ptrtoint ptr %reserved7 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %reserved7, align 8
  %add8 = add i64 %add6, %10
  %11 = ptrtoint ptr %bytes_may_use to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bytes_may_use, align 8
  %sub = sub i64 %12, %add8
  %13 = tail call i64 @llvm.usub.sat.i64(i64 %12, i64 %add8)
  tail call void @_raw_spin_unlock(ptr noundef %retval.0.i) #12
  %sub11 = sub i64 %add8, %4
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %sub11)
  %cmp12 = icmp ugt i64 %13, %sub11
  br i1 %cmp12, label %while.body.if.end30_crit_edge, label %if.else

while.body.if.end30_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.else:                                          ; preds = %while.body
  %14 = ptrtoint ptr %bytes_pinned to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bytes_pinned, align 8
  %16 = ptrtoint ptr %reserved4 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %reserved4, align 8
  %18 = ptrtoint ptr %reserved5 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %reserved5, align 8
  %add16 = add i64 %19, %17
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %add16)
  %cmp17 = icmp ugt i64 %15, %add16
  br i1 %cmp17, label %if.else.if.end30_crit_edge, label %if.else20

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp23 = icmp ugt i64 %17, %19
  %. = select i1 %cmp23, i32 1, i32 3
  %20 = tail call i64 @llvm.umax.i64(i64 %17, i64 %19)
  br label %if.end30

if.end30:                                         ; preds = %if.else20, %if.else.if.end30_crit_edge, %while.body.if.end30_crit_edge
  %flush.0 = phi i32 [ 5, %while.body.if.end30_crit_edge ], [ 11, %if.else.if.end30_crit_edge ], [ %., %if.else20 ]
  %to_reclaim.0 = phi i64 [ %sub, %while.body.if.end30_crit_edge ], [ %15, %if.else.if.end30_crit_edge ], [ %20, %if.else20 ]
  %shr = lshr i64 %to_reclaim.0, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %to_reclaim.0)
  %tobool.not = icmp ult i64 %to_reclaim.0, 4
  br i1 %tobool.not, label %if.then31, label %if.end30.if.end33_crit_edge

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then31:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nodesize.i, align 8
  %conv.i = zext i32 %22 to i64
  %mul1.i = shl nuw nsw i64 %conv.i, 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end30.if.end33_crit_edge
  %to_reclaim.1 = phi i64 [ %shr, %if.end30.if.end33_crit_edge ], [ %mul1.i, %if.then31 ]
  tail call fastcc void @flush_space(ptr noundef %add.ptr, ptr noundef %retval.0.i, i64 noundef %to_reclaim.1, i32 noundef %flush.0, i1 noundef zeroext true)
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 1104, i32 noundef 0) #12
  %call.i = tail call i32 @__cond_resched() #12
  tail call void @_raw_spin_lock(ptr noundef %retval.0.i) #12
  %call3 = tail call fastcc zeroext i1 @need_preemptive_reclaim(ptr noundef %add.ptr, ptr noundef %retval.0.i)
  br i1 %call3, label %if.end33.while.body_crit_edge, label %while.end

if.end33.while.body_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.089)
  %phi.cmp = icmp eq i32 %loops.089, 0
  br i1 %phi.cmp, label %land.lhs.true, label %while.end.if.end44_crit_edge

while.end.if.end44_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

land.lhs.true:                                    ; preds = %while.end
  %reclaim_size = getelementptr inbounds %struct.btrfs_space_info, ptr %retval.0.i, i32 0, i32 19
  %23 = ptrtoint ptr %reclaim_size to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %reclaim_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool38.not = icmp eq i64 %24, 0
  br i1 %tobool38.not, label %if.then39, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %clamp = getelementptr inbounds %struct.btrfs_space_info, ptr %retval.0.i, i32 0, i32 9
  %25 = ptrtoint ptr %clamp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clamp, align 8
  %sub40 = add i32 %26, -1
  %27 = tail call i32 @llvm.smax.i32(i32 %sub40, i32 1)
  %28 = ptrtoint ptr %clamp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %clamp, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %land.lhs.true.if.end44_crit_edge, %while.end.if.end44_crit_edge, %btrfs_find_space_info.exit.if.end44_crit_edge
  tail call fastcc void @trace_btrfs_done_preemptive_reclaim(ptr noundef %add.ptr, ptr noundef %retval.0.i)
  tail call void @_raw_spin_unlock(ptr noundef %retval.0.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_reserve_metadata_bytes(ptr noundef %fs_info, ptr nocapture noundef readonly %block_rsv, i64 noundef %orig_bytes, i32 noundef %flush) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %space_info = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 2
  %0 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %space_info, align 8
  %call = tail call fastcc i32 @__reserve_bytes(ptr noundef %fs_info, ptr noundef %1, i64 noundef %orig_bytes, i32 noundef %flush)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp = icmp eq i32 %call, -28
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %space_info, align 8
  %flags = getelementptr inbounds %struct.btrfs_space_info, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %flags, align 8
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, ptr noundef nonnull @.str.11, i64 noundef %5, i64 noundef %orig_bytes, i32 noundef 1)
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 31
  %6 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mount_opt, align 8
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %space_info, align 8
  tail call void @_raw_spin_lock(ptr noundef %9) #12
  tail call fastcc void @__btrfs_dump_space_info(ptr noundef %fs_info, ptr noundef %9) #12
  tail call void @_raw_spin_unlock(ptr noundef %9) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__reserve_bytes(ptr noundef %fs_info, ptr noundef %space_info, i64 noundef %orig_bytes, i32 noundef %flush) unnamed_addr #4 align 64 {
entry:
  %wait.i.i = alloca %struct.wait_queue_entry, align 4
  %ticket = alloca %struct.reserve_ticket, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %ticket) #12
  %0 = call ptr @memset(ptr %ticket, i32 255, i32 80)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %orig_bytes)
  %tobool.not = icmp eq i64 %orig_bytes, 0
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !121

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.37, i32 noundef 1488) #15
  unreachable

cond.end:                                         ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 146
  %5 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %journal_info, align 4
  %tobool3.not = icmp eq ptr %6, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %flush)
  %cmp = icmp ne i32 %flush, 5
  %spec.select = or i1 %cmp, %tobool3.not
  br i1 %spec.select, label %cond.end12, label %cond.false11, !prof !123

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.38, i32 noundef 1489) #15
  unreachable

cond.end12:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %flush)
  %cmp13 = icmp eq i32 %flush, 3
  %async_data_reclaim_work = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 157
  %async_reclaim_work = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 156
  %async_work.0 = select i1 %cmp13, ptr %async_data_reclaim_work, ptr %async_reclaim_work
  tail call void @_raw_spin_lock(ptr noundef %space_info) #12
  %tobool.not.i = icmp eq ptr %space_info, null
  br i1 %tobool.not.i, label %cond.false.i, label %btrfs_space_info_used.exit, !prof !121

cond.false.i:                                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 164) #18
  unreachable

btrfs_space_info_used.exit:                       ; preds = %cond.end12
  %bytes_used.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 2
  %7 = ptrtoint ptr %bytes_used.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %bytes_used.i, align 8
  %bytes_reserved.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 4
  %9 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bytes_reserved.i, align 8
  %bytes_pinned.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 3
  %11 = ptrtoint ptr %bytes_pinned.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bytes_pinned.i, align 8
  %bytes_readonly.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 6
  %13 = ptrtoint ptr %bytes_readonly.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bytes_readonly.i, align 8
  %bytes_zone_unusable.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 7
  %15 = ptrtoint ptr %bytes_zone_unusable.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %bytes_zone_unusable.i, align 8
  %bytes_may_use.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 5
  %17 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %bytes_may_use.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flush)
  %cmp16 = icmp eq i32 %flush, 0
  %19 = zext i32 %flush to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %flush, label %if.else26 [
    i32 6, label %btrfs_space_info_used.exit.if.then17_crit_edge
    i32 5, label %btrfs_space_info_used.exit.if.then17_crit_edge205
    i32 0, label %btrfs_space_info_used.exit.if.then17_crit_edge206
  ]

btrfs_space_info_used.exit.if.then17_crit_edge206: ; preds = %btrfs_space_info_used.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

btrfs_space_info_used.exit.if.then17_crit_edge205: ; preds = %btrfs_space_info_used.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

btrfs_space_info_used.exit.if.then17_crit_edge:   ; preds = %btrfs_space_info_used.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.then17:                                        ; preds = %btrfs_space_info_used.exit.if.then17_crit_edge, %btrfs_space_info_used.exit.if.then17_crit_edge205, %btrfs_space_info_used.exit.if.then17_crit_edge206
  %tickets = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 18
  %20 = ptrtoint ptr %tickets to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %tickets, align 4
  %cmp.i.not = icmp eq ptr %21, %tickets
  br i1 %cmp.i.not, label %if.end33, label %if.then17.if.end40_crit_edge

if.then17.if.end40_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.else26:                                        ; preds = %btrfs_space_info_used.exit
  %priority_tickets27 = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 17
  %22 = ptrtoint ptr %priority_tickets27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %priority_tickets27, align 4
  %cmp.i165.not = icmp eq ptr %23, %priority_tickets27
  br i1 %cmp.i165.not, label %if.else26.land.lhs.true_crit_edge, label %if.else26.if.end40_crit_edge

if.else26.if.end40_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.else26.land.lhs.true_crit_edge:                ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.end33:                                         ; preds = %if.then17
  %priority_tickets = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 17
  %24 = ptrtoint ptr %priority_tickets to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %priority_tickets, align 4
  %cmp.i163.not = icmp eq ptr %25, %priority_tickets
  br i1 %cmp.i163.not, label %if.end33.land.lhs.true_crit_edge, label %if.end33.if.end40_crit_edge

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.end33.land.lhs.true_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end33.land.lhs.true_crit_edge, %if.else26.land.lhs.true_crit_edge
  %add.i = add i64 %8, %orig_bytes
  %add3.i = add i64 %add.i, %10
  %add4.i = add i64 %add3.i, %12
  %add5.i = add i64 %add4.i, %14
  %add10.i = add i64 %add5.i, %16
  %add = add i64 %add10.i, %18
  %total_bytes = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 1
  %26 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %total_bytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %27)
  %cmp35.not = icmp ugt i64 %add, %27
  br i1 %cmp35.not, label %lor.lhs.false36, label %land.lhs.true.if.then39_crit_edge

land.lhs.true.if.then39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

lor.lhs.false36:                                  ; preds = %land.lhs.true
  %call37 = tail call i32 @btrfs_can_overcommit(ptr noundef %fs_info, ptr noundef nonnull %space_info, i64 noundef %orig_bytes, i32 noundef %flush)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %lor.lhs.false36.if.end40_crit_edge, label %lor.lhs.false36.if.then39_crit_edge

lor.lhs.false36.if.then39_crit_edge:              ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

lor.lhs.false36.if.end40_crit_edge:               ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then39:                                        ; preds = %lor.lhs.false36.if.then39_crit_edge, %land.lhs.true.if.then39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %orig_bytes)
  %cmp.i167 = icmp slt i64 %orig_bytes, 0
  %sub.i = sub i64 0, %orig_bytes
  %cond.i = select i1 %cmp.i167, i64 %sub.i, i64 %orig_bytes
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i168 = icmp eq i32 %28, 0
  br i1 %tobool.not.i168, label %if.then39.if.end.i_crit_edge, label %land.rhs.i

if.then39.if.end.i_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then39
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %space_info, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp1.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !121

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 110, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then39.if.end.i_crit_edge
  %29 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bytes_may_use.i, align 8
  tail call fastcc void @trace_update_bytes_may_use(ptr noundef %fs_info, ptr noundef nonnull %space_info, i64 noundef %30, i64 noundef %orig_bytes) #12
  %flags.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 14
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %orig_bytes)
  %cmp25.i = icmp sgt i64 %orig_bytes, 0
  %conv.i170 = zext i1 %cmp25.i to i32
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, ptr noundef nonnull @.str.21, i64 noundef %32, i64 noundef %cond.i, i32 noundef %conv.i170) #12
  br i1 %cmp.i167, label %land.lhs.true.i, label %if.end.i.if.end60.i_crit_edge

if.end.i.if.end60.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %33 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %bytes_may_use.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %sub.i)
  %cmp30.i = icmp ult i64 %34, %sub.i
  br i1 %cmp30.i, label %do.end45.i, label %land.lhs.true.i.if.end60.i_crit_edge

land.lhs.true.i.if.end60.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

do.end45.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 110, i32 noundef 9, ptr noundef null) #12
  br label %land.lhs.true74

if.end60.i:                                       ; preds = %land.lhs.true.i.if.end60.i_crit_edge, %if.end.i.if.end60.i_crit_edge
  %35 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %bytes_may_use.i, align 8
  %add.i171 = add i64 %36, %orig_bytes
  br label %land.lhs.true74

if.end40:                                         ; preds = %lor.lhs.false36.if.end40_crit_edge, %if.end33.if.end40_crit_edge, %if.else26.if.end40_crit_edge, %if.then17.if.end40_crit_edge
  br i1 %cmp16, label %if.end40.if.end93.thread_crit_edge, label %if.then44

if.end40.if.end93.thread_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93.thread

if.then44:                                        ; preds = %if.end40
  %37 = ptrtoint ptr %ticket to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %orig_bytes, ptr %ticket, align 8
  %error = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 1
  %38 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %error, align 8
  %reclaim_size = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 19
  %39 = ptrtoint ptr %reclaim_size to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %reclaim_size, align 8
  %add46 = add i64 %40, %orig_bytes
  store i64 %add46, ptr %reclaim_size, align 8
  %wait = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 4
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.39, ptr noundef nonnull @__reserve_bytes.__key) #12
  %41 = and i32 %flush, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %42 = icmp eq i32 %41, 2
  %steal = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 2
  %frombool48 = zext i1 %42 to i8
  %43 = ptrtoint ptr %steal to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool48, ptr %steal, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_reserve_ticket, i32 0, i32 1), ptr blockaddress(@__reserve_bytes, %if.then50)) #12
          to label %if.end52 [label %if.then50], !srcloc !125

if.then50:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call i64 @ktime_get() #12
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.then44
  %start_ns.0 = phi i64 [ %call.i, %if.then50 ], [ 0, %if.then44 ]
  %44 = zext i32 %flush to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %flush, label %if.else68 [
    i32 6, label %if.end52.if.then58_crit_edge
    i32 5, label %if.end52.if.then58_crit_edge207
    i32 3, label %if.end52.if.then58_crit_edge208
  ]

if.end52.if.then58_crit_edge208:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

if.end52.if.then58_crit_edge207:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

if.end52.if.then58_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

if.then58:                                        ; preds = %if.end52.if.then58_crit_edge, %if.end52.if.then58_crit_edge207, %if.end52.if.then58_crit_edge208
  %list = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 3
  %tickets59 = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 18
  %prev.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 18, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i, align 4
  %call.i.i172 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %46, ptr noundef %tickets59) #12
  br i1 %call.i.i172, label %if.end.i.i, label %if.then58.list_add_tail.exit_crit_edge

if.then58.list_add_tail.exit_crit_edge:           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list, ptr %prev.i, align 4
  %48 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %tickets59, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %list, ptr %46, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then58.list_add_tail.exit_crit_edge
  %flush60 = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 10
  %51 = ptrtoint ptr %flush60 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %flush60, align 4
  %52 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool61.not = icmp eq i8 %52, 0
  br i1 %tobool61.not, label %if.then62, label %list_add_tail.exit.if.end99_crit_edge

list_add_tail.exit.if.end99_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.then62:                                        ; preds = %list_add_tail.exit
  %ordered_bytes.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 96
  %call.i.i173 = call i64 @__percpu_counter_sum(ptr noundef %ordered_bytes.i) #12
  %53 = call i64 @llvm.smax.i64(i64 %call.i.i173, i64 0) #12
  %delalloc_bytes.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 95
  %call.i8.i = call i64 @__percpu_counter_sum(ptr noundef %delalloc_bytes.i) #12
  %54 = call i64 @llvm.smax.i64(i64 %call.i8.i, i64 0) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %53, i64 %54)
  %cmp.i174 = icmp ult i64 %53, %54
  br i1 %cmp.i174, label %if.then.i, label %if.then62.maybe_clamp_preempt.exit_crit_edge

if.then62.maybe_clamp_preempt.exit_crit_edge:     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %maybe_clamp_preempt.exit

if.then.i:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  %clamp.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 9
  %55 = ptrtoint ptr %clamp.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %clamp.i, align 8
  %add.i175 = add i32 %56, 1
  %57 = call i32 @llvm.smin.i32(i32 %add.i175, i32 8) #12
  %58 = ptrtoint ptr %clamp.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %clamp.i, align 8
  br label %maybe_clamp_preempt.exit

maybe_clamp_preempt.exit:                         ; preds = %if.then.i, %if.then62.maybe_clamp_preempt.exit_crit_edge
  %59 = ptrtoint ptr %flush60 to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load64 = load i8, ptr %flush60, align 4
  %bf.set = or i8 %bf.load64, 32
  store i8 %bf.set, ptr %flush60, align 4
  %flags = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 14
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %flags, align 8
  call fastcc void @trace_btrfs_trigger_flush(ptr noundef %fs_info, i64 noundef %61, i64 noundef %orig_bytes, i32 noundef %flush, ptr noundef nonnull @.str.40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %62 = load ptr, ptr @system_unbound_wq, align 4
  %call.i177 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %62, ptr noundef %async_work.0) #12
  br label %if.end99

if.else68:                                        ; preds = %if.end52
  %list69 = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 3
  %priority_tickets70 = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 17
  %prev.i178 = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 17, i32 1
  %63 = ptrtoint ptr %prev.i178 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i178, align 4
  %call.i.i179 = call zeroext i1 @__list_add_valid(ptr noundef %list69, ptr noundef %64, ptr noundef %priority_tickets70) #12
  br i1 %call.i.i179, label %if.end.i.i181, label %if.else68.if.end99_crit_edge

if.else68.if.end99_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.end.i.i181:                                    ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %prev.i178 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %list69, ptr %prev.i178, align 4
  %66 = ptrtoint ptr %list69 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %priority_tickets70, ptr %list69, align 8
  %prev3.i.i180 = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %prev3.i.i180 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i180, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %list69, ptr %64, align 4
  br label %if.end99

land.lhs.true74:                                  ; preds = %if.end60.i, %do.end45.i
  %storemerge.i = phi i64 [ %add.i171, %if.end60.i ], [ 0, %do.end45.i ]
  %69 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %storemerge.i, ptr %bytes_may_use.i, align 8
  %70 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %flags.i, align 8
  %and = and i64 %71, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool76.not = icmp eq i64 %and, 0
  br i1 %tobool76.not, label %land.lhs.true74.if.end93.thread_crit_edge, label %if.then77

land.lhs.true74.if.end93.thread_crit_edge:        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93.thread

if.then77:                                        ; preds = %land.lhs.true74
  %flags79 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 1
  %72 = ptrtoint ptr %flags79 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %flags79, align 4
  %74 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool81.not = icmp eq i32 %74, 0
  br i1 %tobool81.not, label %land.lhs.true82, label %if.then77.if.end93.thread_crit_edge

if.then77.if.end93.thread_crit_edge:              ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93.thread

land.lhs.true82:                                  ; preds = %if.then77
  %preempt_reclaim_work = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 158
  %call83 = tail call i32 @work_busy(ptr noundef %preempt_reclaim_work) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %land.lhs.true85, label %land.lhs.true82.if.end93.thread_crit_edge

land.lhs.true82.if.end93.thread_crit_edge:        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93.thread

land.lhs.true85:                                  ; preds = %land.lhs.true82
  %call86 = tail call fastcc zeroext i1 @need_preemptive_reclaim(ptr noundef %fs_info, ptr noundef nonnull %space_info)
  br i1 %call86, label %if.then87, label %land.lhs.true85.if.end93.thread_crit_edge

land.lhs.true85.if.end93.thread_crit_edge:        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93.thread

if.then87:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %flags.i, align 8
  tail call fastcc void @trace_btrfs_trigger_flush(ptr noundef %fs_info, i64 noundef %76, i64 noundef %orig_bytes, i32 noundef %flush, ptr noundef nonnull @.str.41)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %77 = load ptr, ptr @system_unbound_wq, align 4
  %call.i183 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %77, ptr noundef %preempt_reclaim_work) #12
  br label %if.end93.thread

if.end93.thread:                                  ; preds = %if.then87, %land.lhs.true85.if.end93.thread_crit_edge, %land.lhs.true82.if.end93.thread_crit_edge, %if.then77.if.end93.thread_crit_edge, %land.lhs.true74.if.end93.thread_crit_edge, %if.end40.if.end93.thread_crit_edge
  %ret.0192.ph = phi i32 [ -28, %if.end40.if.end93.thread_crit_edge ], [ 0, %land.lhs.true74.if.end93.thread_crit_edge ], [ 0, %land.lhs.true85.if.end93.thread_crit_edge ], [ 0, %if.then87 ], [ 0, %land.lhs.true82.if.end93.thread_crit_edge ], [ 0, %if.then77.if.end93.thread_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull %space_info) #12
  br label %cleanup

if.end99:                                         ; preds = %if.end.i.i181, %if.else68.if.end99_crit_edge, %maybe_clamp_preempt.exit, %list_add_tail.exit.if.end99_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull %space_info) #12
  %78 = zext i32 %flush to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %flush, label %sw.default.i [
    i32 3, label %if.end99.sw.bb.i_crit_edge
    i32 5, label %if.end99.sw.bb.i_crit_edge209
    i32 6, label %if.end99.sw.bb.i_crit_edge210
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 4, label %sw.bb3.i
  ]

if.end99.sw.bb.i_crit_edge210:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end99.sw.bb.i_crit_edge209:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end99.sw.bb.i_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end99.sw.bb.i_crit_edge, %if.end99.sw.bb.i_crit_edge209, %if.end99.sw.bb.i_crit_edge210
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i.i) #12
  %79 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 1
  %80 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 2
  %81 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 3
  %82 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i.i, i32 0, i32 3, i32 1
  %83 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %wait.i.i, align 4
  %84 = call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %task.i.i, align 8
  %88 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %79, align 4
  %89 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @autoremove_wake_function, ptr %80, align 4
  %90 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %81, ptr %81, align 4
  %91 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %81, ptr %82, align 4
  call void @_raw_spin_lock(ptr noundef nonnull %space_info) #12
  %92 = ptrtoint ptr %ticket to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %ticket, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %93)
  %cmp.not1.i.i = icmp eq i64 %93, 0
  br i1 %cmp.not1.i.i, label %sw.bb.i.wait_reserve_ticket.exit.i_crit_edge, label %sw.bb.i.land.rhs.i.i_crit_edge

sw.bb.i.land.rhs.i.i_crit_edge:                   ; preds = %sw.bb.i
  br label %land.rhs.i.i

sw.bb.i.wait_reserve_ticket.exit.i_crit_edge:     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_reserve_ticket.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i.i184.land.rhs.i.i_crit_edge, %sw.bb.i.land.rhs.i.i_crit_edge
  %94 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp4.i.i = icmp eq i32 %95, 0
  br i1 %cmp4.i.i, label %while.body.i.i, label %land.rhs.i.i.wait_reserve_ticket.exit.i_crit_edge

land.rhs.i.i.wait_reserve_ticket.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_reserve_ticket.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %call6.i.i = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %wait.i.i, i32 noundef 258) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i184, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %list.i.i.i = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 3
  %96 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile ptr, ptr %list.i.i.i, align 8
  %cmp.i.not.i.i.i = icmp eq ptr %97, %list.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.remove_ticket.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.remove_ticket.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %remove_ticket.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i.i) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.list_del_init.exit.i.i.i_crit_edge

if.then.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 3, i32 1
  %98 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %100 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %list.i.i.i, align 8
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %prev1.i.i.i.i.i.i, align 4
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %101, ptr %99, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %104 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %list.i.i.i, ptr %list.i.i.i, align 8
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 3, i32 1
  %105 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %list.i.i.i, ptr %prev.i3.i.i.i.i, align 4
  %106 = ptrtoint ptr %reclaim_size to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %reclaim_size, align 8
  %108 = ptrtoint ptr %ticket to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %ticket, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %109)
  %cmp.not.i.i.i = icmp ult i64 %107, %109
  br i1 %cmp.not.i.i.i, label %cond.false.i.i.i, label %cond.end.i.i.i, !prof !121

cond.false.i.i.i:                                 ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.25, i32 noundef 355) #18
  unreachable

cond.end.i.i.i:                                   ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = sub i64 %107, %109
  %110 = ptrtoint ptr %reclaim_size to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %sub.i.i.i, ptr %reclaim_size, align 8
  br label %remove_ticket.exit.i.i

remove_ticket.exit.i.i:                           ; preds = %cond.end.i.i.i, %if.then.i.i.remove_ticket.exit.i.i_crit_edge
  %111 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -4, ptr %error, align 8
  br label %wait_reserve_ticket.exit.i

if.end.i.i184:                                    ; preds = %while.body.i.i
  call void @_raw_spin_unlock(ptr noundef %space_info) #12
  call void @schedule() #12
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %wait.i.i) #12
  call void @_raw_spin_lock(ptr noundef %space_info) #12
  %112 = ptrtoint ptr %ticket to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %ticket, align 8
  %cmp.not.i.i = icmp eq i64 %113, 0
  br i1 %cmp.not.i.i, label %if.end.i.i184.wait_reserve_ticket.exit.i_crit_edge, label %if.end.i.i184.land.rhs.i.i_crit_edge

if.end.i.i184.land.rhs.i.i_crit_edge:             ; preds = %if.end.i.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

if.end.i.i184.wait_reserve_ticket.exit.i_crit_edge: ; preds = %if.end.i.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_reserve_ticket.exit.i

wait_reserve_ticket.exit.i:                       ; preds = %if.end.i.i184.wait_reserve_ticket.exit.i_crit_edge, %remove_ticket.exit.i.i, %land.rhs.i.i.wait_reserve_ticket.exit.i_crit_edge, %sw.bb.i.wait_reserve_ticket.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %space_info) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i.i) #12
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @priority_reclaim_metadata_space(ptr noundef %fs_info, ptr noundef nonnull %space_info, ptr noundef nonnull %ticket, ptr noundef nonnull @priority_flush_states, i32 noundef 3) #12
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @priority_reclaim_metadata_space(ptr noundef %fs_info, ptr noundef nonnull %space_info, ptr noundef nonnull %ticket, ptr noundef nonnull @evict_flush_states, i32 noundef 9) #12
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end99
  call void @_raw_spin_lock(ptr noundef nonnull %space_info) #12
  %114 = ptrtoint ptr %ticket to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %ticket, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %115)
  %cmp.i.i = icmp eq i64 %115, 0
  br i1 %cmp.i.i, label %sw.bb3.i.priority_reclaim_data_space.exit.i_crit_edge, label %while.cond.preheader.i.i

sw.bb3.i.priority_reclaim_data_space.exit.i_crit_edge: ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %priority_reclaim_data_space.exit.i

while.cond.preheader.i.i:                         ; preds = %sw.bb3.i
  %full.i.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 10
  %tree_root.i.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 2
  %flags.i.i.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 14
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %flush_space.exit.i.i.while.cond.i.i_crit_edge, %while.cond.preheader.i.i
  %116 = ptrtoint ptr %full.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load.i.i = load i8, ptr %full.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i37.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i37.i, label %while.body.i38.i, label %while.end.i.i

while.body.i38.i:                                 ; preds = %while.cond.i.i
  call void @_raw_spin_unlock(ptr noundef %space_info) #12
  %117 = ptrtoint ptr %tree_root.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tree_root.i.i.i, align 4
  %call31.i.i.i = call ptr @btrfs_join_transaction(ptr noundef %118) #12
  %cmp.i110.i.i.i = icmp ugt ptr %call31.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110.i.i.i, label %if.then33.i.i.i, label %if.end35.i.i.i

if.then33.i.i.i:                                  ; preds = %while.body.i38.i
  call void @__sanitizer_cov_trace_pc() #14
  %119 = ptrtoint ptr %call31.i.i.i to i32
  br label %flush_space.exit.i.i

if.end35.i.i.i:                                   ; preds = %while.body.i38.i
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %flags.i.i.i, align 8
  %call36.i.i.i = call i64 @btrfs_get_alloc_profile(ptr noundef %fs_info, i64 noundef %121) #12
  %call39.i.i.i = call i32 @btrfs_chunk_alloc(ptr noundef %call31.i.i.i, i64 noundef %call36.i.i.i, i32 noundef 2) #12
  %call40.i.i.i = call i32 @btrfs_end_transaction(ptr noundef %call31.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i.i)
  %cmp41.i.i.i = icmp sgt i32 %call39.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call39.i.i.i)
  %cmp43.i.i.i = icmp eq i32 %call39.i.i.i, -28
  %or.cond.i.i.i = or i1 %cmp41.i.i.i, %cmp43.i.i.i
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i32 0, i32 %call39.i.i.i
  br label %flush_space.exit.i.i

flush_space.exit.i.i:                             ; preds = %if.end35.i.i.i, %if.then33.i.i.i
  %ret.0.i.i.i = phi i32 [ %119, %if.then33.i.i.i ], [ %spec.select.i.i.i, %if.end35.i.i.i ]
  %122 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %flags.i.i.i, align 8
  call fastcc void @trace_btrfs_flush_space(ptr noundef %fs_info, i64 noundef %123, i64 noundef -1, i32 noundef 9, i32 noundef %ret.0.i.i.i, i1 noundef zeroext false) #12
  call void @_raw_spin_lock(ptr noundef %space_info) #12
  %124 = ptrtoint ptr %ticket to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %ticket, align 8
  %cmp5.i.i = icmp eq i64 %125, 0
  br i1 %cmp5.i.i, label %flush_space.exit.i.i.priority_reclaim_data_space.exit.i_crit_edge, label %flush_space.exit.i.i.while.cond.i.i_crit_edge

flush_space.exit.i.i.while.cond.i.i_crit_edge:    ; preds = %flush_space.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

flush_space.exit.i.i.priority_reclaim_data_space.exit.i_crit_edge: ; preds = %flush_space.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %priority_reclaim_data_space.exit.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %126 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -28, ptr %error, align 8
  %list.i.i40.i = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 3
  %127 = ptrtoint ptr %list.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile ptr, ptr %list.i.i40.i, align 8
  %cmp.i.not.i.i41.i = icmp eq ptr %128, %list.i.i40.i
  br i1 %cmp.i.not.i.i41.i, label %while.end.i.i.remove_ticket.exit.i54.i_crit_edge, label %if.then.i.i43.i

while.end.i.i.remove_ticket.exit.i54.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %remove_ticket.exit.i54.i

if.then.i.i43.i:                                  ; preds = %while.end.i.i
  %call.i.i.i.i42.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i.i40.i) #12
  br i1 %call.i.i.i.i42.i, label %if.end.i.i.i.i46.i, label %if.then.i.i43.i.list_del_init.exit.i.i50.i_crit_edge

if.then.i.i43.i.list_del_init.exit.i.i50.i_crit_edge: ; preds = %if.then.i.i43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i.i50.i

if.end.i.i.i.i46.i:                               ; preds = %if.then.i.i43.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i44.i = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 3, i32 1
  %129 = ptrtoint ptr %prev.i.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %prev.i.i.i.i44.i, align 4
  %131 = ptrtoint ptr %list.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %list.i.i40.i, align 8
  %prev1.i.i.i.i.i45.i = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %prev1.i.i.i.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %130, ptr %prev1.i.i.i.i.i45.i, align 4
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %132, ptr %130, align 4
  br label %list_del_init.exit.i.i50.i

list_del_init.exit.i.i50.i:                       ; preds = %if.end.i.i.i.i46.i, %if.then.i.i43.i.list_del_init.exit.i.i50.i_crit_edge
  %135 = ptrtoint ptr %list.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %list.i.i40.i, ptr %list.i.i40.i, align 8
  %prev.i3.i.i.i47.i = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 3, i32 1
  %136 = ptrtoint ptr %prev.i3.i.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %list.i.i40.i, ptr %prev.i3.i.i.i47.i, align 4
  %137 = ptrtoint ptr %reclaim_size to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %reclaim_size, align 8
  %139 = ptrtoint ptr %ticket to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %ticket, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %138, i64 %140)
  %cmp.not.i.i49.i = icmp ult i64 %138, %140
  br i1 %cmp.not.i.i49.i, label %cond.false.i.i51.i, label %cond.end.i.i53.i, !prof !121

cond.false.i.i51.i:                               ; preds = %list_del_init.exit.i.i50.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.25, i32 noundef 355) #18
  unreachable

cond.end.i.i53.i:                                 ; preds = %list_del_init.exit.i.i50.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i52.i = sub i64 %138, %140
  %141 = ptrtoint ptr %reclaim_size to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %sub.i.i52.i, ptr %reclaim_size, align 8
  br label %remove_ticket.exit.i54.i

remove_ticket.exit.i54.i:                         ; preds = %cond.end.i.i53.i, %while.end.i.i.remove_ticket.exit.i54.i_crit_edge
  call void @btrfs_try_granting_tickets(ptr noundef %fs_info, ptr noundef %space_info) #12
  br label %priority_reclaim_data_space.exit.i

priority_reclaim_data_space.exit.i:               ; preds = %remove_ticket.exit.i54.i, %flush_space.exit.i.i.priority_reclaim_data_space.exit.i_crit_edge, %sw.bb3.i.priority_reclaim_data_space.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %space_info) #12
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.42, i32 noundef 1410) #18
  unreachable

sw.epilog.i:                                      ; preds = %priority_reclaim_data_space.exit.i, %sw.bb2.i, %sw.bb1.i, %wait_reserve_ticket.exit.i
  %142 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %error, align 8
  %list.i = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 3
  %144 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile ptr, ptr %list.i, align 8
  %cmp.i55.not.i = icmp eq ptr %145, %list.i
  br i1 %cmp.i55.not.i, label %cond.end.i, label %cond.false.i185, !prof !123

cond.false.i185:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.43, i32 noundef 1415) #18
  unreachable

cond.end.i:                                       ; preds = %sw.epilog.i
  %146 = ptrtoint ptr %ticket to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %ticket, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %147)
  %cmp.i186 = icmp ne i64 %147, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool7.i = icmp eq i32 %143, 0
  %or.cond.i = select i1 %cmp.i186, i1 true, i1 %tobool7.i
  br i1 %or.cond.i, label %handle_reserve_ticket.exit, label %cond.false17.i, !prof !126

cond.false17.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.44, i32 noundef 1422) #18
  unreachable

handle_reserve_ticket.exit:                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i187 = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 14
  %148 = ptrtoint ptr %flags.i187 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %flags.i187, align 8
  call fastcc void @trace_btrfs_reserve_ticket(ptr noundef %fs_info, i64 noundef %149, i64 noundef %orig_bytes, i64 noundef %start_ns.0, i32 noundef %flush, i32 noundef %143) #12
  br label %cleanup

cleanup:                                          ; preds = %handle_reserve_ticket.exit, %if.end93.thread
  %retval.0 = phi i32 [ %143, %handle_reserve_ticket.exit ], [ %ret.0192.ph, %if.end93.thread ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ticket) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, ptr noundef %type, i64 noundef %val, i64 noundef %bytes, i32 noundef %reserve) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 1), ptr blockaddress(@trace_btrfs_space_reservation, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !125

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !123

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !127
  %call42 = tail call i32 @__traceiter_btrfs_space_reservation(ptr noundef null, ptr noundef %fs_info, ptr noundef %type, i64 noundef %val, i64 noundef %bytes, i32 noundef %reserve) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !128
  %13 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !123

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_btrfs_space_reservation.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_btrfs_space_reservation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 1076, ptr noundef nonnull @.str.23) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  %31 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
define dso_local i32 @btrfs_reserve_data_bytes(ptr noundef %fs_info, i64 noundef %bytes, i32 noundef %flush) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data_sinfo1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 102
  %0 = ptrtoint ptr %data_sinfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_sinfo1, align 4
  %flush.off = add i32 %flush, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flush.off)
  %switch = icmp ult i32 %flush.off, 2
  br i1 %switch, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.12, i32 noundef 1640) #15
  unreachable

cond.end:                                         ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 146
  %6 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %journal_info, align 4
  %tobool4.not = icmp eq ptr %7, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %flush)
  %cmp6 = icmp ne i32 %flush, 3
  %spec.select34 = or i1 %cmp6, %tobool4.not
  br i1 %spec.select34, label %cond.end16, label %cond.false15, !prof !123

cond.false15:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.13, i32 noundef 1641) #15
  unreachable

cond.end16:                                       ; preds = %cond.end
  %call17 = tail call fastcc i32 @__reserve_bytes(ptr noundef %fs_info, ptr noundef %1, i64 noundef %bytes, i32 noundef %flush)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call17)
  %cmp18 = icmp eq i32 %call17, -28
  br i1 %cmp18, label %if.then, label %cond.end16.if.end21_crit_edge

cond.end16.if.end21_crit_edge:                    ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then:                                          ; preds = %cond.end16
  %flags = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %flags, align 8
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, ptr noundef nonnull @.str.11, i64 noundef %9, i64 noundef %bytes, i32 noundef 1)
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 31
  %10 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mount_opt, align 8
  %and = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.then.if.end21_crit_edge, label %if.then20

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then20:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef %1) #12
  tail call fastcc void @__btrfs_dump_space_info(ptr noundef %fs_info, ptr noundef %1) #12
  tail call void @_raw_spin_unlock(ptr noundef %1) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then.if.end21_crit_edge, %cond.end16.if.end21_crit_edge
  ret i32 %call17
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_sysfs_add_space_info_type(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_alloc_profile(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_update_bytes_may_use(ptr noundef %fs_info, ptr noundef %sinfo, i64 noundef %old, i64 noundef %diff) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_update_bytes_may_use, i32 0, i32 1), ptr blockaddress(@trace_update_bytes_may_use, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !125

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !123

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  %call42 = tail call i32 @__traceiter_update_bytes_may_use(ptr noundef null, ptr noundef %fs_info, ptr noundef %sinfo, i64 noundef %old, i64 noundef %diff) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !132
  %13 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !123

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_update_bytes_may_use, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_update_bytes_may_use, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_update_bytes_may_use.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_update_bytes_may_use.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 2256, ptr noundef nonnull @.str.23) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  %31 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
declare dso_local i32 @__traceiter_update_bytes_may_use(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @btrfs_calc_reclaim_metadata_size(ptr noundef %fs_info, ptr noundef %space_info) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %reclaim_size = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 19
  %0 = ptrtoint ptr %reclaim_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %reclaim_size, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.anon, ptr %space_info, i32 0, i32 1
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !121

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 714, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %flags.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 14
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %4, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %..i = select i1 %tobool.not.i, i64 4, i64 2
  %call.i15.i = tail call i64 @btrfs_get_alloc_profile(ptr noundef %fs_info, i64 noundef %..i) #12
  %free_chunk_space.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_chunk_space.i, i32 noundef 8) #12
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %free_chunk_space.i) #12
  %call3.i = tail call i32 @btrfs_bg_type_to_factor(i64 noundef %call.i15.i) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %call.i.i)
  %cmp164.i.i.i = icmp ult i64 %call.i.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !123

if.then168.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i.i = trunc i64 %call.i.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %call3.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %calc_available_free_space.exit

if.else174.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call3.i, i64 %call.i.i) #19, !srcloc !124
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %5, 1
  br label %calc_available_free_space.exit

calc_available_free_space.exit:                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %tobool.not.i41 = icmp eq ptr %space_info, null
  br i1 %tobool.not.i41, label %cond.false.i, label %btrfs_space_info_used.exit, !prof !121

cond.false.i:                                     ; preds = %calc_available_free_space.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 164) #18
  unreachable

btrfs_space_info_used.exit:                       ; preds = %calc_available_free_space.exit
  call void @__sanitizer_cov_trace_pc() #14
  %avail.0.i = lshr i64 %dividend.addr.0.i.i.i, 3
  %bytes_used.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 2
  %6 = ptrtoint ptr %bytes_used.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bytes_used.i, align 8
  %bytes_reserved.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 4
  %8 = ptrtoint ptr %bytes_reserved.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bytes_reserved.i, align 8
  %bytes_pinned.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 3
  %10 = ptrtoint ptr %bytes_pinned.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bytes_pinned.i, align 8
  %bytes_readonly.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 6
  %12 = ptrtoint ptr %bytes_readonly.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bytes_readonly.i, align 8
  %bytes_zone_unusable.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 7
  %14 = ptrtoint ptr %bytes_zone_unusable.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bytes_zone_unusable.i, align 8
  %bytes_may_use.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 5
  %16 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bytes_may_use.i, align 8
  %add.i = add i64 %9, %7
  %add3.i = add i64 %add.i, %11
  %add4.i = add i64 %add3.i, %13
  %add5.i = add i64 %add4.i, %15
  %add10.i = add i64 %add5.i, %17
  %total_bytes = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 1
  %18 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %total_bytes, align 8
  %add = add i64 %19, %avail.0.i
  %20 = tail call i64 @llvm.usub.sat.i64(i64 %add10.i, i64 %add)
  %to_reclaim.0 = add i64 %20, %1
  ret i64 %to_reclaim.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flush_space(ptr noundef %fs_info, ptr noundef %space_info, i64 noundef %num_bytes, i32 noundef %state, i1 noundef zeroext %for_preempt) unnamed_addr #4 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 2
  %0 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tree_root, align 4
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 11, label %sw.bb49
    i32 10, label %sw.bb47
    i32 2, label %entry.if.end_crit_edge
    i32 1, label %if.then
    i32 9, label %entry.sw.bb30_crit_edge
    i32 3, label %entry.sw.bb15_crit_edge
    i32 4, label %entry.sw.bb15_crit_edge112
    i32 8, label %entry.sw.bb30_crit_edge113
    i32 7, label %if.then11
    i32 5, label %entry.if.end12_crit_edge
    i32 6, label %entry.if.end12_crit_edge114
  ]

entry.if.end12_crit_edge114:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

entry.sw.bb30_crit_edge113:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb30

entry.sw.bb15_crit_edge112:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15

entry.sw.bb30_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb30

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 166
  %3 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nodesize.i.i, align 8
  %conv.i.i = zext i32 %4 to i64
  %mul1.i.i = shl nuw nsw i64 %conv.i.i, 4
  %call1.i = tail call i64 @div64_u64(i64 noundef %num_bytes, i64 noundef %mul1.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1.i)
  %tobool.not.i = icmp eq i64 %call1.i, 0
  %5 = trunc i64 %call1.i to i32
  %.op = shl i32 %5, 1
  %conv = select i1 %tobool.not.i, i32 2, i32 %.op
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nr.0 = phi i32 [ %conv, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %call1 = tail call ptr @btrfs_join_transaction(ptr noundef %1) #12
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call1 to i32
  br label %sw.epilog

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 @btrfs_run_delayed_items_nr(ptr noundef %call1, i32 noundef %nr.0) #12
  %call7 = tail call i32 @btrfs_end_transaction(ptr noundef %call1) #12
  br label %sw.epilog

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %entry.if.end12_crit_edge, %entry.if.end12_crit_edge114
  %num_bytes.addr.0 = phi i64 [ -1, %if.then11 ], [ %num_bytes, %entry.if.end12_crit_edge ], [ %num_bytes, %entry.if.end12_crit_edge114 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %state)
  %cmp13 = icmp ne i32 %state, 5
  %delalloc_bytes2.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 95
  %call.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %delalloc_bytes2.i) #12
  %7 = tail call i64 @llvm.smax.i64(i64 %call.i.i, i64 0) #12
  %ordered_bytes3.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 96
  %call.i149.i = tail call i64 @__percpu_counter_sum(ptr noundef %ordered_bytes3.i) #12
  %8 = tail call i64 @llvm.smax.i64(i64 %call.i149.i, i64 0) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %call.i.i)
  %cmp.i102 = icmp slt i64 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %call.i149.i)
  %cmp5.i = icmp slt i64 %call.i149.i, 1
  %or.cond.i = select i1 %cmp.i102, i1 %cmp5.i, i1 false
  br i1 %or.cond.i, label %if.end12.sw.epilog_crit_edge, label %if.end.i

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %num_bytes.addr.0)
  %cmp6.i = icmp eq i64 %num_bytes.addr.0, -1
  br i1 %cmp6.i, label %if.end.i.if.end10.i_crit_edge, label %if.else.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i = lshr i64 %7, 3
  %9 = tail call i64 @llvm.umax.i64(i64 %shr.i, i64 %num_bytes.addr.0) #12
  %nodesize.i.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 166
  %10 = ptrtoint ptr %nodesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nodesize.i.i.i, align 8
  %conv.i.i.i = zext i32 %11 to i64
  %mul1.i.i.i = shl nuw nsw i64 %conv.i.i.i, 4
  %call1.i.i = tail call i64 @div64_u64(i64 noundef %9, i64 noundef %mul1.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1.i.i)
  %tobool.not.i.i = icmp eq i64 %call1.i.i, 0
  %call1.i.op.i = shl i64 %call1.i.i, 1
  %mul.i = select i1 %tobool.not.i.i, i64 2, i64 %call1.i.op.i
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.end.i.if.end10.i_crit_edge
  %items.0.i = phi i64 [ %mul.i, %if.else.i ], [ -1, %if.end.i.if.end10.i_crit_edge ]
  %to_reclaim.addr.0.i = phi i64 [ %9, %if.else.i ], [ -1, %if.end.i.if.end10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %tobool16.not163.i = icmp sgt i64 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i149.i)
  %tobool17.not164.i = icmp sgt i64 %call.i149.i, 0
  %or.cond142165.i = select i1 %tobool16.not163.i, i1 true, i1 %tobool17.not164.i
  br i1 %or.cond142165.i, label %while.body.lr.ph.i, label %if.end10.i.sw.epilog_crit_edge

if.end10.i.sw.epilog_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

while.body.lr.ph.i:                               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %7)
  %cmp12.i = icmp ugt i64 %8, %7
  %not.for_preempt.i = xor i1 %for_preempt, true
  %spec.select.i = and i1 %cmp12.i, %not.for_preempt.i
  %spec.select146.i = or i1 %cmp13, %spec.select.i
  %12 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 146
  %16 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %journal_info.i, align 4
  %async_delalloc_pages.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 70
  %async_submit_wait.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 41
  %tobool66.not.i = icmp eq ptr %17, null
  %or.cond144.i = select i1 %spec.select146.i, i1 %tobool66.not.i, i1 false
  %tickets.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 18
  %priority_tickets.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 17
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup90.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %delalloc_bytes.0167.i = phi i64 [ %7, %while.body.lr.ph.i ], [ %32, %cleanup90.i.while.body.i_crit_edge ]
  %loops.0166.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %cleanup90.i.while.body.i_crit_edge ]
  %18 = call i64 @llvm.umin.i64(i64 %delalloc_bytes.0167.i, i64 %to_reclaim.addr.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 8796093018112, i64 %18)
  %cmp27.i = icmp ult i64 %18, 8796093018112
  %shr25.i = lshr i64 %18, 12
  %extract.t.i = trunc i64 %shr25.i to i32
  %cond31.off0.i = select i1 %cmp27.i, i32 %extract.t.i, i32 2147483647
  %call32.i = call i32 @btrfs_start_delalloc_roots(ptr noundef %fs_info, i32 noundef %cond31.off0.i, i1 noundef zeroext true) #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %async_delalloc_pages.i, i32 noundef 4) #12
  %19 = ptrtoint ptr %async_delalloc_pages.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %async_delalloc_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool34.not.i = icmp eq i32 %20, 0
  br i1 %tobool34.not.i, label %while.body.i.skip_async.i_crit_edge, label %if.end36.i

while.body.i.skip_async.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_async.i

if.end36.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %cond31.off0.i)
  %cmp37.i = icmp sgt i32 %20, %cond31.off0.i
  %sub.i = sub i32 %20, %cond31.off0.i
  %async_pages.0.i = select i1 %cmp37.i, i32 %sub.i, i32 0
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 577) #12
  %call.i.i147.i = call zeroext i1 @__kasan_check_read(ptr noundef %async_delalloc_pages.i, i32 noundef 4) #12
  %21 = ptrtoint ptr %async_delalloc_pages.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %async_delalloc_pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %async_pages.0.i)
  %cmp48.not.i = icmp sgt i32 %22, %async_pages.0.i
  br i1 %cmp48.not.i, label %if.end51.i, label %if.end36.i.skip_async.i_crit_edge

if.end36.i.skip_async.i_crit_edge:                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_async.i

if.end51.i:                                       ; preds = %if.end36.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  %23 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #12
  %call52160.i = call i32 @prepare_to_wait_event(ptr noundef %async_submit_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #12
  %call.i.i148161.i = call zeroext i1 @__kasan_check_read(ptr noundef %async_delalloc_pages.i, i32 noundef 4) #12
  %24 = ptrtoint ptr %async_delalloc_pages.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %async_delalloc_pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %async_pages.0.i)
  %cmp55.not162.i = icmp sgt i32 %25, %async_pages.0.i
  br i1 %cmp55.not162.i, label %if.end51.i.cleanup.i_crit_edge, label %if.end51.i.for.end.i_crit_edge

if.end51.i.for.end.i_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end51.i.cleanup.i_crit_edge:                   ; preds = %if.end51.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end51.i.cleanup.i_crit_edge
  call void @schedule() #12
  %call52.i = call i32 @prepare_to_wait_event(ptr noundef %async_submit_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #12
  %call.i.i148.i = call zeroext i1 @__kasan_check_read(ptr noundef %async_delalloc_pages.i, i32 noundef 4) #12
  %26 = ptrtoint ptr %async_delalloc_pages.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %async_delalloc_pages.i, align 4
  %cmp55.not.i = icmp sgt i32 %27, %async_pages.0.i
  br i1 %cmp55.not.i, label %cleanup.i.cleanup.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end51.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %async_submit_wait.i, ptr noundef nonnull %__wq_entry.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  br label %skip_async.i

skip_async.i:                                     ; preds = %for.end.i, %if.end36.i.skip_async.i_crit_edge, %while.body.i.skip_async.i_crit_edge
  %inc.i = add nuw nsw i32 %loops.0166.i, 1
  br i1 %or.cond144.i, label %if.then67.i, label %if.else68.i

if.then67.i:                                      ; preds = %skip_async.i
  call void @btrfs_wait_ordered_roots(ptr noundef %fs_info, i64 noundef %items.0.i, i64 noundef 0, i64 noundef -1) #12
  br i1 %for_preempt, label %if.then67.i.sw.epilog_crit_edge, label %if.then67.i.if.end76.i_crit_edge

if.then67.i.if.end76.i_crit_edge:                 ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76.i

if.then67.i.sw.epilog_crit_edge:                  ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.else68.i:                                      ; preds = %skip_async.i
  %call69.i = call i32 @schedule_timeout_killable(i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp ne i32 %call69.i, 0
  %brmerge.i = or i1 %tobool70.not.i, %for_preempt
  br i1 %brmerge.i, label %if.else68.i.sw.epilog_crit_edge, label %if.else68.i.if.end76.i_crit_edge

if.else68.i.if.end76.i_crit_edge:                 ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76.i

if.else68.i.sw.epilog_crit_edge:                  ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end76.i:                                       ; preds = %if.else68.i.if.end76.i_crit_edge, %if.then67.i.if.end76.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %space_info) #12
  %28 = ptrtoint ptr %tickets.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %tickets.i, align 4
  %cmp.i.not.i = icmp eq ptr %29, %tickets.i
  br i1 %cmp.i.not.i, label %land.lhs.true79.i, label %if.end76.i.cleanup90.i_crit_edge

if.end76.i.cleanup90.i_crit_edge:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup90.i

land.lhs.true79.i:                                ; preds = %if.end76.i
  %30 = ptrtoint ptr %priority_tickets.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %priority_tickets.i, align 4
  %cmp.i150.not.i = icmp eq ptr %31, %priority_tickets.i
  br i1 %cmp.i150.not.i, label %if.then82.i, label %land.lhs.true79.i.cleanup90.i_crit_edge

land.lhs.true79.i.cleanup90.i_crit_edge:          ; preds = %land.lhs.true79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup90.i

if.then82.i:                                      ; preds = %land.lhs.true79.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %space_info) #12
  br label %sw.epilog

cleanup90.i:                                      ; preds = %land.lhs.true79.i.cleanup90.i_crit_edge, %if.end76.i.cleanup90.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %space_info) #12
  %call.i152.i = call i64 @__percpu_counter_sum(ptr noundef %delalloc_bytes2.i) #12
  %32 = call i64 @llvm.smax.i64(i64 %call.i152.i, i64 0) #12
  %call.i153.i = call i64 @__percpu_counter_sum(ptr noundef %ordered_bytes3.i) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i152.i)
  %tobool16.not.i = icmp sgt i64 %call.i152.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i153.i)
  %tobool17.not.i = icmp sgt i64 %call.i153.i, 0
  %or.cond142.i = select i1 %tobool16.not.i, i1 true, i1 %tobool17.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %loops.0166.i)
  %cmp18.i = icmp ult i32 %loops.0166.i, 2
  %or.cond143.i = select i1 %or.cond142.i, i1 %cmp18.i, i1 false
  br i1 %or.cond143.i, label %cleanup90.i.while.body.i_crit_edge, label %cleanup90.i.sw.epilog_crit_edge

cleanup90.i.sw.epilog_crit_edge:                  ; preds = %cleanup90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

cleanup90.i.while.body.i_crit_edge:               ; preds = %cleanup90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

sw.bb15:                                          ; preds = %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge112
  %call16 = tail call ptr @btrfs_join_transaction(ptr noundef %1) #12
  %cmp.i103 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then18, label %if.end20

if.then18:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %call16 to i32
  br label %sw.epilog

if.end20:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp21 = icmp eq i32 %state, 3
  br i1 %cmp21, label %if.then23, label %if.end20.if.end27_crit_edge

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %nodesize.i.i104 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 166
  %34 = ptrtoint ptr %nodesize.i.i104 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nodesize.i.i104, align 8
  %conv.i.i105 = zext i32 %35 to i64
  %mul1.i.i106 = shl nuw nsw i64 %conv.i.i105, 4
  %call1.i107 = tail call i64 @div64_u64(i64 noundef %num_bytes, i64 noundef %mul1.i.i106) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1.i107)
  %tobool.not.i108 = icmp eq i64 %call1.i107, 0
  %36 = trunc i64 %call1.i107 to i32
  %conv25 = select i1 %tobool.not.i108, i32 1, i32 %36
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end20.if.end27_crit_edge
  %nr.1 = phi i32 [ %conv25, %if.then23 ], [ 0, %if.end20.if.end27_crit_edge ]
  %call28 = tail call i32 @btrfs_run_delayed_refs(ptr noundef %call16, i32 noundef %nr.1) #12
  %call29 = tail call i32 @btrfs_end_transaction(ptr noundef %call16) #12
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry.sw.bb30_crit_edge, %entry.sw.bb30_crit_edge113
  %call31 = tail call ptr @btrfs_join_transaction(ptr noundef %1) #12
  %cmp.i110 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %if.then33, label %if.end35

if.then33:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %call31 to i32
  br label %sw.epilog

if.end35:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 14
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %flags, align 8
  %call36 = tail call i64 @btrfs_get_alloc_profile(ptr noundef %fs_info, i64 noundef %39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %state)
  %cmp37 = icmp eq i32 %state, 8
  %cond = select i1 %cmp37, i32 0, i32 2
  %call39 = tail call i32 @btrfs_chunk_alloc(ptr noundef %call31, i64 noundef %call36, i32 noundef %cond) #12
  %call40 = tail call i32 @btrfs_end_transaction(ptr noundef %call31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp41 = icmp sgt i32 %call39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call39)
  %cmp43 = icmp eq i32 %call39, -28
  %or.cond = or i1 %cmp41, %cmp43
  %spec.select = select i1 %or.cond, i32 0, i32 %call39
  br label %sw.epilog

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @btrfs_run_delayed_iputs(ptr noundef %fs_info) #12
  %call48 = tail call i32 @btrfs_wait_on_delayed_iputs(ptr noundef %fs_info) #12
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  %40 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 146
  %44 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %journal_info, align 4
  %cmp51 = icmp eq ptr %45, null
  br i1 %cmp51, label %cond.end, label %cond.false, !prof !123

cond.false:                                       ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.34, i32 noundef 688) #15
  unreachable

cond.end:                                         ; preds = %sw.bb49
  %call55 = tail call ptr @btrfs_join_transaction(ptr noundef %1) #12
  %cmp.i111 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %if.then57, label %if.end59

if.then57:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %call55 to i32
  br label %sw.epilog

if.end59:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %call60 = tail call i32 @btrfs_commit_transaction(ptr noundef %call55) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end59, %if.then57, %sw.bb47, %if.end35, %if.then33, %if.end27, %if.then18, %cleanup90.i.sw.epilog_crit_edge, %if.then82.i, %if.else68.i.sw.epilog_crit_edge, %if.then67.i.sw.epilog_crit_edge, %if.end10.i.sw.epilog_crit_edge, %if.end12.sw.epilog_crit_edge, %if.end5, %if.then3, %entry.sw.epilog_crit_edge
  %num_bytes.addr.1 = phi i64 [ %num_bytes, %if.then57 ], [ %num_bytes, %if.end59 ], [ %num_bytes, %sw.bb47 ], [ %num_bytes, %if.then33 ], [ %num_bytes, %if.then18 ], [ %num_bytes, %if.end27 ], [ %num_bytes, %if.then3 ], [ %num_bytes, %if.end5 ], [ %num_bytes, %entry.sw.epilog_crit_edge ], [ %num_bytes, %if.end35 ], [ %num_bytes.addr.0, %if.end12.sw.epilog_crit_edge ], [ %num_bytes.addr.0, %if.end10.i.sw.epilog_crit_edge ], [ %num_bytes.addr.0, %if.then82.i ], [ %num_bytes.addr.0, %if.then67.i.sw.epilog_crit_edge ], [ %num_bytes.addr.0, %if.else68.i.sw.epilog_crit_edge ], [ %num_bytes.addr.0, %cleanup90.i.sw.epilog_crit_edge ]
  %ret.0 = phi i32 [ %46, %if.then57 ], [ %call60, %if.end59 ], [ 0, %sw.bb47 ], [ %37, %if.then33 ], [ %33, %if.then18 ], [ 0, %if.end27 ], [ %6, %if.then3 ], [ %call6, %if.end5 ], [ -28, %entry.sw.epilog_crit_edge ], [ %spec.select, %if.end35 ], [ 0, %if.end12.sw.epilog_crit_edge ], [ 0, %if.end10.i.sw.epilog_crit_edge ], [ 0, %if.then82.i ], [ 0, %if.then67.i.sw.epilog_crit_edge ], [ 0, %if.else68.i.sw.epilog_crit_edge ], [ 0, %cleanup90.i.sw.epilog_crit_edge ]
  %flags61 = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 14
  %47 = ptrtoint ptr %flags61 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %flags61, align 8
  call fastcc void @trace_btrfs_flush_space(ptr noundef %fs_info, i64 noundef %48, i64 noundef %num_bytes.addr.1, i32 noundef %state, i32 noundef %ret.0, i1 noundef zeroext %for_preempt)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @maybe_fail_all_tickets(ptr noundef %fs_info, ptr noundef %space_info) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tickets_id1 = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 20
  %0 = ptrtoint ptr %tickets_id1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tickets_id1, align 8
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 149
  %2 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fs_state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  tail call fastcc void @trace_btrfs_fail_all_tickets(ptr noundef %fs_info, ptr noundef %space_info)
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 31
  %4 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mount_opt, align 8
  %and = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.35) #16
  tail call fastcc void @__btrfs_dump_space_info(ptr noundef %fs_info, ptr noundef %space_info)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tickets = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 18
  %6 = ptrtoint ptr %tickets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %tickets, align 4
  %cmp.i.not89 = icmp eq ptr %7, %tickets
  br i1 %cmp.i.not89, label %if.end.while.end_crit_edge, label %land.rhs.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end
  %reclaim_size.i67 = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 19
  br label %land.rhs

land.rhs:                                         ; preds = %if.end26.land.rhs_crit_edge, %land.rhs.lr.ph
  %8 = phi ptr [ %7, %land.rhs.lr.ph ], [ %62, %if.end26.land.rhs_crit_edge ]
  %9 = ptrtoint ptr %tickets_id1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tickets_id1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %10)
  %cmp = icmp eq i64 %1, %10
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %add.ptr = getelementptr i8, ptr %8, i32 -16
  br i1 %tobool.not, label %land.lhs.true, label %if.then21.critedge

land.lhs.true:                                    ; preds = %while.body
  %call10 = tail call fastcc zeroext i1 @steal_from_global_rsv(ptr noundef %fs_info, ptr noundef %space_info, ptr noundef %add.ptr)
  br i1 %call10, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true14.critedge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true14.critedge:                         ; preds = %land.lhs.true
  %11 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mount_opt, align 8
  %and16 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else.critedge57, label %if.then18

if.then18:                                        ; preds = %land.lhs.true14.critedge
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.36, i64 noundef %14) #16
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %8, align 4
  %cmp.i.not.i = icmp eq ptr %16, %8
  br i1 %cmp.i.not.i, label %if.then18.if.else_crit_edge, label %if.then.i

if.then18.if.else_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then.i:                                        ; preds = %if.then18
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %8, i32 4
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %8, ptr %8, align 4
  %prev.i3.i.i = getelementptr i8, ptr %8, i32 4
  %24 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %8, ptr %prev.i3.i.i, align 4
  %25 = ptrtoint ptr %reclaim_size.i67 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %reclaim_size.i67, align 8
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %28)
  %cmp.not.i = icmp ult i64 %26, %28
  br i1 %cmp.not.i, label %cond.false.i, label %cond.end.i, !prof !121

cond.false.i:                                     ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.25, i32 noundef 355) #18
  unreachable

cond.end.i:                                       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub i64 %26, %28
  br label %if.else.sink.split

if.then21.critedge:                               ; preds = %while.body
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %8, align 4
  %cmp.i.not.i60 = icmp eq ptr %30, %8
  br i1 %cmp.i.not.i60, label %if.then21.critedge.remove_ticket.exit73_crit_edge, label %if.then.i62

if.then21.critedge.remove_ticket.exit73_crit_edge: ; preds = %if.then21.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %remove_ticket.exit73

if.then.i62:                                      ; preds = %if.then21.critedge
  %call.i.i.i61 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #12
  br i1 %call.i.i.i61, label %if.end.i.i.i65, label %if.then.i62.list_del_init.exit.i69_crit_edge

if.then.i62.list_del_init.exit.i69_crit_edge:     ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i69

if.end.i.i.i65:                                   ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i63 = getelementptr i8, ptr %8, i32 4
  %31 = ptrtoint ptr %prev.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i63, align 4
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i64 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i64, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del_init.exit.i69

list_del_init.exit.i69:                           ; preds = %if.end.i.i.i65, %if.then.i62.list_del_init.exit.i69_crit_edge
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %8, ptr %8, align 4
  %prev.i3.i.i66 = getelementptr i8, ptr %8, i32 4
  %38 = ptrtoint ptr %prev.i3.i.i66 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %8, ptr %prev.i3.i.i66, align 4
  %39 = ptrtoint ptr %reclaim_size.i67 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %reclaim_size.i67, align 8
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %42)
  %cmp.not.i68 = icmp ult i64 %40, %42
  br i1 %cmp.not.i68, label %cond.false.i70, label %cond.end.i72, !prof !121

cond.false.i70:                                   ; preds = %list_del_init.exit.i69
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.25, i32 noundef 355) #18
  unreachable

cond.end.i72:                                     ; preds = %list_del_init.exit.i69
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i71 = sub i64 %40, %42
  %43 = ptrtoint ptr %reclaim_size.i67 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %sub.i71, ptr %reclaim_size.i67, align 8
  br label %remove_ticket.exit73

remove_ticket.exit73:                             ; preds = %cond.end.i72, %if.then21.critedge.remove_ticket.exit73_crit_edge
  %error = getelementptr i8, ptr %8, i32 -8
  %44 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -5, ptr %error, align 8
  %wait.c58 = getelementptr i8, ptr %8, i32 8
  tail call void @__wake_up(ptr noundef %wait.c58, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end26

if.else.critedge57:                               ; preds = %land.lhs.true14.critedge
  %45 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %8, align 4
  %cmp.i.not.i75 = icmp eq ptr %46, %8
  br i1 %cmp.i.not.i75, label %if.else.critedge57.if.else_crit_edge, label %if.then.i77

if.else.critedge57.if.else_crit_edge:             ; preds = %if.else.critedge57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then.i77:                                      ; preds = %if.else.critedge57
  %call.i.i.i76 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #12
  br i1 %call.i.i.i76, label %if.end.i.i.i80, label %if.then.i77.list_del_init.exit.i84_crit_edge

if.then.i77.list_del_init.exit.i84_crit_edge:     ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i84

if.end.i.i.i80:                                   ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i78 = getelementptr i8, ptr %8, i32 4
  %47 = ptrtoint ptr %prev.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i78, align 4
  %49 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i79 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i.i79, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del_init.exit.i84

list_del_init.exit.i84:                           ; preds = %if.end.i.i.i80, %if.then.i77.list_del_init.exit.i84_crit_edge
  %53 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %8, ptr %8, align 4
  %prev.i3.i.i81 = getelementptr i8, ptr %8, i32 4
  %54 = ptrtoint ptr %prev.i3.i.i81 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %8, ptr %prev.i3.i.i81, align 4
  %55 = ptrtoint ptr %reclaim_size.i67 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %reclaim_size.i67, align 8
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %58)
  %cmp.not.i83 = icmp ult i64 %56, %58
  br i1 %cmp.not.i83, label %cond.false.i85, label %cond.end.i87, !prof !121

cond.false.i85:                                   ; preds = %list_del_init.exit.i84
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.25, i32 noundef 355) #18
  unreachable

cond.end.i87:                                     ; preds = %list_del_init.exit.i84
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i86 = sub i64 %56, %58
  br label %if.else.sink.split

if.else.sink.split:                               ; preds = %cond.end.i87, %cond.end.i
  %sub.i86.sink = phi i64 [ %sub.i86, %cond.end.i87 ], [ %sub.i, %cond.end.i ]
  %59 = ptrtoint ptr %reclaim_size.i67 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %sub.i86.sink, ptr %reclaim_size.i67, align 8
  br label %if.else

if.else:                                          ; preds = %if.else.sink.split, %if.else.critedge57.if.else_crit_edge, %if.then18.if.else_crit_edge
  %error22 = getelementptr i8, ptr %8, i32 -8
  %60 = ptrtoint ptr %error22 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -28, ptr %error22, align 8
  %wait.c = getelementptr i8, ptr %8, i32 8
  tail call void @__wake_up(ptr noundef %wait.c, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  tail call void @btrfs_try_granting_tickets(ptr noundef %fs_info, ptr noundef %space_info)
  br label %if.end26

if.end26:                                         ; preds = %if.else, %remove_ticket.exit73
  %61 = ptrtoint ptr %tickets to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %tickets, align 4
  %cmp.i.not = icmp eq ptr %62, %tickets
  br i1 %cmp.i.not, label %if.end26.while.end_crit_edge, label %if.end26.land.rhs_crit_edge

if.end26.land.rhs_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end26.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end.while.end_crit_edge
  %63 = ptrtoint ptr %tickets_id1 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %tickets_id1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %64)
  %cmp28 = icmp ne i64 %1, %64
  br label %cleanup

cleanup:                                          ; preds = %while.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp28, %while.end ], [ true, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_join_transaction(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_run_delayed_items_nr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_end_transaction(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_run_delayed_refs(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_chunk_alloc(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_run_delayed_iputs(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_wait_on_delayed_iputs(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_commit_transaction(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_flush_space(ptr noundef %fs_info, i64 noundef %flags, i64 noundef %num_bytes, i32 noundef %state, i32 noundef %ret, i1 noundef zeroext %for_preempt) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_flush_space, i32 0, i32 1), ptr blockaddress(@trace_btrfs_flush_space, %do.body)) #12
          to label %if.end49 [label %do.body], !srcloc !125

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !123

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !133
  %call43 = tail call i32 @__traceiter_btrfs_flush_space(ptr noundef null, ptr noundef %fs_info, i64 noundef %flags, i64 noundef %num_bytes, i32 noundef %state, i32 noundef %ret, i1 noundef zeroext %for_preempt) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !134
  %13 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !123

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_flush_space, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_flush_space, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_btrfs_flush_space.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_btrfs_flush_space.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 1139, ptr noundef nonnull @.str.23) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  %31 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_start_delalloc_roots(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_wait_ordered_roots(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_killable(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_flush_space(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_fail_all_tickets(ptr noundef %fs_info, ptr noundef %sinfo) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_fail_all_tickets, i32 0, i32 1), ptr blockaddress(@trace_btrfs_fail_all_tickets, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !125

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !123

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !135
  %call42 = tail call i32 @__traceiter_btrfs_fail_all_tickets(ptr noundef null, ptr noundef %fs_info, ptr noundef %sinfo) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  %13 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !123

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_fail_all_tickets, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_fail_all_tickets, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_btrfs_fail_all_tickets.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_btrfs_fail_all_tickets.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 2112, ptr noundef nonnull @.str.23) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  %31 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
define internal fastcc zeroext i1 @steal_from_global_rsv(ptr noundef %fs_info, ptr noundef %space_info, ptr noundef %ticket) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %global_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20
  %steal = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 2
  %0 = ptrtoint ptr %steal to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %steal, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %space_info1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 2
  %2 = ptrtoint ptr %space_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %space_info1, align 8
  %cmp.not = icmp eq ptr %3, %space_info
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %4 = ptrtoint ptr %global_block_rsv to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %global_block_rsv, align 8
  %div79.i.i1.i = lshr i64 %5, 1
  %6 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79.i.i1.i, i64 3689348814741910323) #19, !srcloc !138
  %7 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79.i.i1.i, i64 %6) #19, !srcloc !139
  %reserved = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %reserved, align 8
  %10 = ptrtoint ptr %ticket to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ticket, align 8
  %add = add i64 %11, %7
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %add)
  %cmp4 = icmp ult i64 %9, %add
  br i1 %cmp4, label %if.end3.cleanup.sink.split_crit_edge, label %if.end7

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end3
  %sub = sub i64 %9, %11
  %12 = ptrtoint ptr %reserved to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %sub, ptr %reserved, align 8
  %list.i = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 3
  %13 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i = icmp eq ptr %14, %list.i
  br i1 %cmp.i.not.i, label %if.end7.remove_ticket.exit_crit_edge, label %if.then.i

if.end7.remove_ticket.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %remove_ticket.exit

if.then.i:                                        ; preds = %if.end7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %21 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list.i, ptr %prev.i3.i.i, align 4
  %reclaim_size.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 19
  %23 = ptrtoint ptr %reclaim_size.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %reclaim_size.i, align 8
  %25 = ptrtoint ptr %ticket to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ticket, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %26)
  %cmp.not.i = icmp ult i64 %24, %26
  br i1 %cmp.not.i, label %cond.false.i, label %cond.end.i, !prof !121

cond.false.i:                                     ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.25, i32 noundef 355) #18
  unreachable

cond.end.i:                                       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub i64 %24, %26
  %27 = ptrtoint ptr %reclaim_size.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %sub.i, ptr %reclaim_size.i, align 8
  br label %remove_ticket.exit

remove_ticket.exit:                               ; preds = %cond.end.i, %if.end7.remove_ticket.exit_crit_edge
  %28 = ptrtoint ptr %ticket to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %ticket, align 8
  %wait = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %tickets_id = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 20
  %29 = ptrtoint ptr %tickets_id to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %tickets_id, align 8
  %inc = add i64 %30, 1
  store i64 %inc, ptr %tickets_id, align 8
  %31 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %reserved, align 8
  %33 = ptrtoint ptr %global_block_rsv to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %global_block_rsv, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %34)
  %cmp13 = icmp ult i64 %32, %34
  br i1 %cmp13, label %if.then14, label %remove_ticket.exit.cleanup.sink.split_crit_edge

remove_ticket.exit.cleanup.sink.split_crit_edge:  ; preds = %remove_ticket.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then14:                                        ; preds = %remove_ticket.exit
  call void @__sanitizer_cov_trace_pc() #14
  %full = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 4
  %35 = ptrtoint ptr %full to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %full, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then14, %remove_ticket.exit.cleanup.sink.split_crit_edge, %if.end3.cleanup.sink.split_crit_edge
  %36 = xor i1 %cmp4, true
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ %36, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_fail_all_tickets(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @need_preemptive_reclaim(ptr noundef %fs_info, ptr nocapture noundef readonly %space_info) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reserved = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 1
  %0 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %reserved, align 8
  %total_bytes = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 1
  %2 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %total_bytes, align 8
  %mul.i = mul i64 %3, 90
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i, i32 0) #19, !srcloc !140
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %4, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #19, !srcloc !141
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %div158.i.i1.i = lshr i64 %asmresult10.i.i.i.i, 6
  %bytes_used = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 2
  %6 = ptrtoint ptr %bytes_used to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bytes_used, align 8
  %bytes_reserved = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 4
  %8 = ptrtoint ptr %bytes_reserved to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bytes_reserved, align 8
  %add = add i64 %7, %1
  %add1 = add i64 %add, %9
  call void @__sanitizer_cov_trace_cmp8(i64 %add1, i64 %div158.i.i1.i)
  %cmp.not = icmp ult i64 %add1, %div158.i.i1.i
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bytes_may_use = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 5
  %10 = ptrtoint ptr %bytes_may_use to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bytes_may_use, align 8
  %bytes_pinned = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 3
  %12 = ptrtoint ptr %bytes_pinned to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bytes_pinned, align 8
  %add2 = add i64 %13, %11
  call void @__sanitizer_cov_trace_cmp8(i64 %add2, i64 %1)
  %cmp3.not = icmp ule i64 %add2, %1
  %sub = sub i64 %add2, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 134217729, i64 %sub)
  %cmp6 = icmp ult i64 %sub, 134217729
  %or.cond = or i1 %cmp3.not, %cmp6
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %reclaim_size = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 19
  %14 = ptrtoint ptr %reclaim_size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %reclaim_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool.not = icmp eq i64 %15, 0
  br i1 %tobool.not, label %if.end10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  %flags.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 14
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %17, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %..i = select i1 %tobool.not.i, i64 4, i64 2
  %call.i15.i = tail call i64 @btrfs_get_alloc_profile(ptr noundef %fs_info, i64 noundef %..i) #12
  %free_chunk_space.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %free_chunk_space.i, i32 noundef 8) #12
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %free_chunk_space.i) #12
  %call3.i = tail call i32 @btrfs_bg_type_to_factor(i64 noundef %call.i15.i) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %call.i.i)
  %cmp164.i.i.i = icmp ult i64 %call.i.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !123

if.then168.i.i.i:                                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i.i = trunc i64 %call.i.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %call3.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %calc_available_free_space.exit

if.else174.i.i.i:                                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call3.i, i64 %call.i.i) #19, !srcloc !124
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %18, 1
  br label %calc_available_free_space.exit

calc_available_free_space.exit:                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %avail.0.i = lshr i64 %dividend.addr.0.i.i.i, 3
  %19 = ptrtoint ptr %bytes_used to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %bytes_used, align 8
  %21 = ptrtoint ptr %bytes_reserved to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bytes_reserved, align 8
  %bytes_readonly = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 6
  %23 = ptrtoint ptr %bytes_readonly to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %bytes_readonly, align 8
  %add14 = add i64 %20, %1
  %add15 = add i64 %add14, %22
  %add16 = add i64 %add15, %24
  %25 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %total_bytes, align 8
  %27 = tail call i64 @llvm.usub.sat.i64(i64 %26, i64 %add16)
  %thresh.0 = add i64 %27, %avail.0.i
  %clamp = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 9
  %28 = ptrtoint ptr %clamp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clamp, align 8
  %sh_prom = zext i32 %29 to i64
  %shr = lshr i64 %thresh.0, %sh_prom
  %30 = ptrtoint ptr %bytes_pinned to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bytes_pinned, align 8
  %count.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 96, i32 1
  %32 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load volatile i64, ptr %count.i, align 8
  %34 = tail call i64 @llvm.smax.i64(i64 %33, i64 0) #12
  %shr2691 = lshr i64 %34, 1
  %count.i85 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 95, i32 1
  %35 = ptrtoint ptr %count.i85 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load volatile i64, ptr %count.i85, align 8
  %37 = tail call i64 @llvm.smax.i64(i64 %36, i64 0) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr2691, i64 %37)
  %cmp28.not = icmp ult i64 %shr2691, %37
  br i1 %cmp28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %calc_available_free_space.exit
  call void @__sanitizer_cov_trace_pc() #14
  %reserved30 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24, i32 1
  %38 = ptrtoint ptr %reserved30 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %reserved30, align 8
  %reserved31 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 23, i32 1
  %40 = ptrtoint ptr %reserved31 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %reserved31, align 8
  %add32 = add i64 %41, %39
  br label %if.end37

if.else:                                          ; preds = %calc_available_free_space.exit
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %bytes_may_use to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %bytes_may_use, align 8
  %sub35 = sub i64 %43, %1
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then29
  %add32.pn = phi i64 [ %add32, %if.then29 ], [ %sub35, %if.else ]
  %used.0 = add i64 %add32.pn, %31
  call void @__sanitizer_cov_trace_cmp8(i64 %used.0, i64 %shr)
  %cmp38.not = icmp ult i64 %used.0, %shr
  br i1 %cmp38.not, label %if.end37.cleanup_crit_edge, label %land.lhs.true

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end37
  %flags.i86 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 1
  %44 = ptrtoint ptr %flags.i86 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %flags.i86, align 4
  %and1.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i87 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i87, label %land.rhs, label %btrfs_fs_closing.exit

btrfs_fs_closing.exit:                            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %flags.i86 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags.i86, align 4
  br label %cleanup

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 149
  %48 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %fs_state, align 4
  %50 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool42.not = icmp eq i32 %50, 0
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %btrfs_fs_closing.exit, %if.end37.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ false, %btrfs_fs_closing.exit ], [ false, %if.end37.cleanup_crit_edge ], [ %tobool42.not, %land.rhs ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_done_preemptive_reclaim(ptr noundef %fs_info, ptr noundef %sinfo) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_done_preemptive_reclaim, i32 0, i32 1), ptr blockaddress(@trace_btrfs_done_preemptive_reclaim, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !125

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !123

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !142
  %call42 = tail call i32 @__traceiter_btrfs_done_preemptive_reclaim(ptr noundef null, ptr noundef %fs_info, ptr noundef %sinfo) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  %13 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !123

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_done_preemptive_reclaim, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_done_preemptive_reclaim, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_btrfs_done_preemptive_reclaim.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_btrfs_done_preemptive_reclaim.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 2106, ptr noundef nonnull @.str.23) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  %31 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_done_preemptive_reclaim(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_trigger_flush(ptr noundef %fs_info, i64 noundef %flags, i64 noundef %bytes, i32 noundef %flush, ptr noundef %reason) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_trigger_flush, i32 0, i32 1), ptr blockaddress(@trace_btrfs_trigger_flush, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !125

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !123

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !144
  %call42 = tail call i32 @__traceiter_btrfs_trigger_flush(ptr noundef null, ptr noundef %fs_info, i64 noundef %flags, i64 noundef %bytes, i32 noundef %flush, ptr noundef %reason) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !145
  %13 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !123

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_trigger_flush, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_trigger_flush, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_btrfs_trigger_flush.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_btrfs_trigger_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 1106, ptr noundef nonnull @.str.23) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  %31 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
declare dso_local i32 @work_busy(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_trigger_flush(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @priority_reclaim_metadata_space(ptr noundef %fs_info, ptr noundef %space_info, ptr noundef %ticket, ptr nocapture noundef readonly %states, i32 noundef %states_nr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %space_info) #12
  %call = tail call fastcc i64 @btrfs_calc_reclaim_metadata_size(ptr noundef %fs_info, ptr noundef %space_info)
  %0 = ptrtoint ptr %ticket to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ticket, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %smax = call i32 @llvm.smax.i32(i32 %states_nr, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %flush_state.0 = phi i32 [ %inc, %while.body.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %flush_state.0, i32 %smax)
  %exitcond.not = icmp eq i32 %flush_state.0, %smax
  br i1 %exitcond.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  tail call void @_raw_spin_unlock(ptr noundef %space_info) #12
  %arrayidx = getelementptr i32, ptr %states, i32 %flush_state.0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  tail call fastcc void @flush_space(ptr noundef %fs_info, ptr noundef %space_info, i64 noundef %call, i32 noundef %3, i1 noundef zeroext false)
  %inc = add nuw i32 %flush_state.0, 1
  tail call void @_raw_spin_lock(ptr noundef %space_info) #12
  %4 = ptrtoint ptr %ticket to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ticket, align 8
  %cmp6 = icmp eq i64 %5, 0
  br i1 %cmp6, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %call10 = tail call fastcc zeroext i1 @steal_from_global_rsv(ptr noundef %fs_info, ptr noundef %space_info, ptr noundef %ticket)
  br i1 %call10, label %while.end.if.end12_crit_edge, label %if.then11

while.end.if.end12_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %while.end
  %error = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 1
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -28, ptr %error, align 8
  %list.i = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 3
  %7 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %list.i
  br i1 %cmp.i.not.i, label %if.then11.if.end12_crit_edge, label %if.then.i

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then.i:                                        ; preds = %if.then11
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %15 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.reserve_ticket, ptr %ticket, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list.i, ptr %prev.i3.i.i, align 4
  %reclaim_size.i = getelementptr inbounds %struct.btrfs_space_info, ptr %space_info, i32 0, i32 19
  %17 = ptrtoint ptr %reclaim_size.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %reclaim_size.i, align 8
  %19 = ptrtoint ptr %ticket to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ticket, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %20)
  %cmp.not.i = icmp ult i64 %18, %20
  br i1 %cmp.not.i, label %cond.false.i, label %cond.end.i, !prof !121

cond.false.i:                                     ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.25, i32 noundef 355) #18
  unreachable

cond.end.i:                                       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub i64 %18, %20
  %21 = ptrtoint ptr %reclaim_size.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %sub.i, ptr %reclaim_size.i, align 8
  br label %if.end12

if.end12:                                         ; preds = %cond.end.i, %if.then11.if.end12_crit_edge, %while.end.if.end12_crit_edge
  tail call void @btrfs_try_granting_tickets(ptr noundef %fs_info, ptr noundef %space_info)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %space_info) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_reserve_ticket(ptr noundef %fs_info, i64 noundef %flags, i64 noundef %bytes, i64 noundef %start_ns, i32 noundef %flush, i32 noundef %error) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_reserve_ticket, i32 0, i32 1), ptr blockaddress(@trace_btrfs_reserve_ticket, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !125

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !123

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !146
  %call42 = tail call i32 @__traceiter_btrfs_reserve_ticket(ptr noundef null, ptr noundef %fs_info, i64 noundef %flags, i64 noundef %bytes, i64 noundef %start_ns, i32 noundef %flush, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !147
  %13 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !123

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !111) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_reserve_ticket, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_reserve_ticket, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_btrfs_reserve_ticket.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_btrfs_reserve_ticket.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 2141, ptr noundef nonnull @.str.23) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  %31 = tail call i32 @llvm.read_register.i32(metadata !111) #12
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
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_reserve_ticket(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_space_reservation(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold noreturn }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71, !73, !75, !76, !78, !80, !81, !83, !85, !87, !88, !90, !92, !94, !95, !97, !99, !101, !103, !105, !107, !108, !110}
!llvm.named.register.sp = !{!111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/space-info.c", i32 164, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/btrfs/space-info.c", i32 265, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/btrfs/space-info.c", i32 454, i32 3}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @btrfs_init_async_reclaim_work.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../fs/btrfs/space-info.c", i32 1234, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @btrfs_init_async_reclaim_work.__key.7, !13, !"__key", i1 false, i1 false}
!13 = !{!"../fs/btrfs/space-info.c", i32 1235, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @btrfs_init_async_reclaim_work.__key.9, !16, !"__key", i1 false, i1 false}
!16 = !{!"../fs/btrfs/space-info.c", i32 1236, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/space-info.c", i32 1612, i32 42}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/btrfs/space-info.c", i32 1639, i32 2}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/btrfs/space-info.c", i32 1641, i32 2}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @assertfail._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @assertfail._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @create_space_info.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../fs/btrfs/space-info.c", i32 197, i32 2}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @create_space_info.__key.18, !34, !"__key", i1 false, i1 false}
!34 = !{!"../fs/btrfs/space-info.c", i32 198, i32 2}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/btrfs/space-info.h", i32 110, i32 1}
!38 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/trace/events/btrfs.h", i32 2250, i32 1}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!43 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!46 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/btrfs/space-info.c", i32 355, i32 3}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/btrfs/space-info.c", i32 418, i32 2}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/btrfs/space-info.c", i32 422, i32 2}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/btrfs/space-info.c", i32 428, i32 2}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/btrfs/space-info.c", i32 429, i32 2}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/btrfs/space-info.c", i32 430, i32 2}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/btrfs/space-info.c", i32 431, i32 2}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/btrfs/space-info.c", i32 432, i32 2}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/btrfs/space-info.c", i32 688, i32 3}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/trace/events/btrfs.h", i32 1109, i32 1}
!68 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/btrfs/space-info.c", i32 896, i32 3}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/btrfs/space-info.c", i32 909, i32 4}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/trace/events/btrfs.h", i32 2108, i32 1}
!75 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!76 = !{ptr @data_flush_states, !77, !"data_flush_states", i1 false, i1 false}
!77 = !{!"../fs/btrfs/space-info.c", i32 1148, i32 37}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/trace/events/btrfs.h", i32 2102, i32 1}
!80 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/btrfs/space-info.c", i32 1488, i32 2}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/btrfs/space-info.c", i32 1489, i32 2}
!85 = !{ptr @__reserve_bytes.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../fs/btrfs/space-info.c", i32 1534, i32 3}
!87 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/btrfs/space-info.c", i32 1557, i32 10}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/btrfs/space-info.c", i32 1575, i32 28}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/trace/events/btrfs.h", i32 1078, i32 1}
!94 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/btrfs/space-info.c", i32 1410, i32 3}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/btrfs/space-info.c", i32 1415, i32 2}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/btrfs/space-info.c", i32 1422, i32 2}
!101 = !{ptr @priority_flush_states, !102, !"priority_flush_states", i1 false, i1 false}
!102 = !{!"../fs/btrfs/space-info.c", i32 1240, i32 37}
!103 = !{ptr @evict_flush_states, !104, !"evict_flush_states", i1 false, i1 false}
!104 = !{!"../fs/btrfs/space-info.c", i32 1246, i32 37}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../include/trace/events/btrfs.h", i32 2114, i32 1}
!107 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../include/trace/events/btrfs.h", i32 1052, i32 1}
!110 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!111 = !{!"sp"}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{i64 2158234482, i64 2158234964, i64 2158234519, i64 2158234575, i64 2158234609, i64 2158234633, i64 2158234674, i64 2158234695, i64 2158234723, i64 2158234757}
!123 = !{!"branch_weights", i32 2000, i32 1}
!124 = !{i64 2148311962, i64 2148312242, i64 2148312576, i64 2148312910}
!125 = !{i64 2148286775, i64 2148286780, i64 2148286793, i64 2148286837, i64 2148286871, i64 2148286892}
!126 = !{!"branch_weights", i32 4001, i32 1}
!127 = !{i64 2155429614}
!128 = !{i64 2155429891}
!129 = !{i64 2149309455}
!130 = !{i64 2149310491}
!131 = !{i64 2156449770}
!132 = !{i64 2156450023}
!133 = !{i64 2155470217}
!134 = !{i64 2155470514}
!135 = !{i64 2156229596}
!136 = !{i64 2156229831}
!137 = !{i8 0, i8 2}
!138 = !{i64 826301, i64 826328}
!139 = !{i64 826641, i64 826668, i64 826702, i64 826723}
!140 = !{i64 826418, i64 826445, i64 826467, i64 826495}
!141 = !{i64 826826, i64 826853, i64 826886, i64 826907, i64 826934, i64 826960}
!142 = !{i64 2156207520}
!143 = !{i64 2156207769}
!144 = !{i64 2155447881}
!145 = !{i64 2155448154}
!146 = !{i64 2156247800}
!147 = !{i64 2156248093}
