; ModuleID = '/llk/IR_all_yes/fs/btrfs/delalloc-space.c_pt.bc'
source_filename = "../fs/btrfs/delalloc-space.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.83 }
%struct.atomic_t = type { i32 }
%union.anon.83 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.rb_root = type { ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.78, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.78 = type { i64 }
%struct.btrfs_inode = type { ptr, %struct.btrfs_key, %struct.spinlock, %struct.extent_map_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.mutex, %struct.btrfs_ordered_inode_tree, %struct.list_head, %struct.rb_node, i32, %struct.atomic_t, i64, i64, i64, i32, i32, i64, %union.anon.79, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, %struct.btrfs_block_rsv, i32, i32, ptr, %struct.timespec64, %struct.list_head, %struct.rw_semaphore, %struct.inode }
%struct.btrfs_ordered_inode_tree = type { %struct.spinlock, %struct.rb_root, ptr }
%union.anon.79 = type { i64 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.74 = type { i32 }
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.77 = type { ptr }
%struct.extent_changeset = type { i32, %struct.ulist }
%struct.ulist = type { i32, %struct.list_head, %struct.rb_root }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.btrfs_space_info = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i32, i8, i32, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, %struct.rw_semaphore, [9 x %struct.list_head], %struct.kobject, [9 x ptr] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"IS_ALIGNED(len, fs_info->sectorsize)\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fs/btrfs/delalloc-space.c\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"delalloc\00", [23 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/btrfs/space-info.h\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"space_info\00", [21 x i8] zeroinitializer }, align 32
@__tracepoint_update_bytes_may_use = external dso_local global %struct.tracepoint, align 4
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/btrfs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_update_bytes_may_use.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/btrfs/btrfs_inode.h\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_inode_mod_outstanding_extents = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_inode_mod_outstanding_extents.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_btrfs_space_reservation = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_space_reservation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -12]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -12]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 169, i32 2 }
@___asan_gen_.20 = private constant [29 x i8] c"../fs/btrfs/delalloc-space.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 358, i32 47 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 3491, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"../fs/btrfs/space-info.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 110, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [32 x i8] c"../include/trace/events/btrfs.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 2250, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 108, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [26 x i8] c"../fs/btrfs/btrfs_inode.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 313, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_alloc_data_chunk_ondemand(ptr nocapture noundef readonly %inode, i64 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info2 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info2, align 8
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %4 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sectorsize, align 4
  %tree_root.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %tree_root.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tree_root.i, align 4
  %cmp.i = icmp eq ptr %1, %7
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.btrfs_is_free_space_inode.exit_crit_edge

entry.btrfs_is_free_space_inode.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_is_free_space_inode.exit

land.lhs.true.i:                                  ; preds = %entry
  %location.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %8 = ptrtoint ptr %location.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %location.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not.i.i = icmp eq i64 %9, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.if.then.i.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i
  %type.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %11)
  %cmp.i.i = icmp eq i8 %11, -124
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge

lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_ino.exit.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %land.lhs.true.i.if.then.i.i_crit_edge
  %i_ino.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %12 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino.i.i, align 8
  %conv3.i.i = zext i32 %13 to i64
  br label %btrfs_ino.exit.i

btrfs_ino.exit.i:                                 ; preds = %if.then.i.i, %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge
  %ino.0.i.i = phi i64 [ %conv3.i.i, %if.then.i.i ], [ %9, %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %ino.0.i.i)
  %cmp2.not.i = icmp eq i64 %ino.0.i.i, 1
  br i1 %cmp2.not.i, label %btrfs_ino.exit.i.btrfs_is_free_space_inode.exit_crit_edge, label %btrfs_ino.exit.i.btrfs_is_free_space_inode.exit.thread_crit_edge

btrfs_ino.exit.i.btrfs_is_free_space_inode.exit.thread_crit_edge: ; preds = %btrfs_ino.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_is_free_space_inode.exit.thread

btrfs_ino.exit.i.btrfs_is_free_space_inode.exit_crit_edge: ; preds = %btrfs_ino.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_is_free_space_inode.exit

btrfs_is_free_space_inode.exit:                   ; preds = %btrfs_ino.exit.i.btrfs_is_free_space_inode.exit_crit_edge, %entry.btrfs_is_free_space_inode.exit_crit_edge
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %14 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -12, i64 %15)
  %cmp3.i = icmp eq i64 %15, -12
  br i1 %cmp3.i, label %btrfs_is_free_space_inode.exit.btrfs_is_free_space_inode.exit.thread_crit_edge, label %btrfs_is_free_space_inode.exit._crit_edge

btrfs_is_free_space_inode.exit._crit_edge:        ; preds = %btrfs_is_free_space_inode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %16

btrfs_is_free_space_inode.exit.btrfs_is_free_space_inode.exit.thread_crit_edge: ; preds = %btrfs_is_free_space_inode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_is_free_space_inode.exit.thread

btrfs_is_free_space_inode.exit.thread:            ; preds = %btrfs_is_free_space_inode.exit.btrfs_is_free_space_inode.exit.thread_crit_edge, %btrfs_ino.exit.i.btrfs_is_free_space_inode.exit.thread_crit_edge
  br label %16

16:                                               ; preds = %btrfs_is_free_space_inode.exit.thread, %btrfs_is_free_space_inode.exit._crit_edge
  %17 = phi i32 [ 4, %btrfs_is_free_space_inode.exit.thread ], [ 3, %btrfs_is_free_space_inode.exit._crit_edge ]
  %conv = zext i32 %5 to i64
  %sub = add i64 %bytes, -1
  %add = add i64 %sub, %conv
  %neg = sub nsw i64 0, %conv
  %and = and i64 %add, %neg
  %call6 = tail call i32 @btrfs_reserve_data_bytes(ptr noundef %3, i64 noundef %and, i32 noundef %17) #7
  ret i32 %call6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_reserve_data_bytes(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_check_data_free_space(ptr noundef %inode, ptr noundef %reserved, i64 noundef %start, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 8
  %add = add i64 %start, -1
  %sub = add i64 %add, %len
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %4 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sectorsize, align 4
  %sub2 = add i32 %5, -1
  %conv = zext i32 %sub2 to i64
  %or = or i64 %sub, %conv
  %add3 = add i64 %or, 1
  %neg = xor i64 %conv, -1
  %and = and i64 %neg, %start
  %sub7 = sub i64 %add3, %and
  %tree_root.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %tree_root.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tree_root.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, %7
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %entry.btrfs_is_free_space_inode.exit.i_crit_edge

entry.btrfs_is_free_space_inode.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_is_free_space_inode.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %location.i.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %8 = ptrtoint ptr %location.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %location.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not.i.i.i = icmp eq i64 %9, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

land.lhs.true.i.i.if.then.i.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true.i.i
  %type.i.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %11)
  %cmp.i.i.i = icmp eq i8 %11, -124
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge

lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_ino.exit.i.i

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %land.lhs.true.i.i.if.then.i.i.i_crit_edge
  %i_ino.i.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %12 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino.i.i.i, align 8
  %conv3.i.i.i = zext i32 %13 to i64
  br label %btrfs_ino.exit.i.i

btrfs_ino.exit.i.i:                               ; preds = %if.then.i.i.i, %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge
  %ino.0.i.i.i = phi i64 [ %conv3.i.i.i, %if.then.i.i.i ], [ %9, %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %ino.0.i.i.i)
  %cmp2.not.i.i = icmp eq i64 %ino.0.i.i.i, 1
  br i1 %cmp2.not.i.i, label %btrfs_ino.exit.i.i.btrfs_is_free_space_inode.exit.i_crit_edge, label %btrfs_ino.exit.i.i.btrfs_is_free_space_inode.exit.thread.i_crit_edge

btrfs_ino.exit.i.i.btrfs_is_free_space_inode.exit.thread.i_crit_edge: ; preds = %btrfs_ino.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_is_free_space_inode.exit.thread.i

btrfs_ino.exit.i.i.btrfs_is_free_space_inode.exit.i_crit_edge: ; preds = %btrfs_ino.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_is_free_space_inode.exit.i

btrfs_is_free_space_inode.exit.i:                 ; preds = %btrfs_ino.exit.i.i.btrfs_is_free_space_inode.exit.i_crit_edge, %entry.btrfs_is_free_space_inode.exit.i_crit_edge
  %location.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %14 = ptrtoint ptr %location.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %location.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -12, i64 %15)
  %cmp3.i.i = icmp eq i64 %15, -12
  br i1 %cmp3.i.i, label %btrfs_is_free_space_inode.exit.i.btrfs_is_free_space_inode.exit.thread.i_crit_edge, label %btrfs_is_free_space_inode.exit.i.btrfs_alloc_data_chunk_ondemand.exit_crit_edge

btrfs_is_free_space_inode.exit.i.btrfs_alloc_data_chunk_ondemand.exit_crit_edge: ; preds = %btrfs_is_free_space_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_alloc_data_chunk_ondemand.exit

btrfs_is_free_space_inode.exit.i.btrfs_is_free_space_inode.exit.thread.i_crit_edge: ; preds = %btrfs_is_free_space_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_is_free_space_inode.exit.thread.i

btrfs_is_free_space_inode.exit.thread.i:          ; preds = %btrfs_is_free_space_inode.exit.i.btrfs_is_free_space_inode.exit.thread.i_crit_edge, %btrfs_ino.exit.i.i.btrfs_is_free_space_inode.exit.thread.i_crit_edge
  br label %btrfs_alloc_data_chunk_ondemand.exit

btrfs_alloc_data_chunk_ondemand.exit:             ; preds = %btrfs_is_free_space_inode.exit.thread.i, %btrfs_is_free_space_inode.exit.i.btrfs_alloc_data_chunk_ondemand.exit_crit_edge
  %16 = phi i32 [ 4, %btrfs_is_free_space_inode.exit.thread.i ], [ 3, %btrfs_is_free_space_inode.exit.i.btrfs_alloc_data_chunk_ondemand.exit_crit_edge ]
  %conv.i = zext i32 %5 to i64
  %sub.i = add nsw i64 %conv.i, -1
  %add.i = add i64 %sub.i, %sub7
  %neg.i = sub nsw i64 0, %conv.i
  %and.i = and i64 %add.i, %neg.i
  %call6.i = tail call i32 @btrfs_reserve_data_bytes(ptr noundef %3, i64 noundef %and.i, i32 noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %btrfs_alloc_data_chunk_ondemand.exit.cleanup_crit_edge, label %if.end

btrfs_alloc_data_chunk_ondemand.exit.cleanup_crit_edge: ; preds = %btrfs_alloc_data_chunk_ondemand.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %btrfs_alloc_data_chunk_ondemand.exit
  %call14 = tail call i32 @btrfs_qgroup_reserve_data(ptr noundef %inode, ptr noundef %reserved, i64 noundef %and, i64 noundef %sub7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %if.end
  tail call void @btrfs_free_reserved_data_space_noquota(ptr noundef %3, i64 noundef %sub7)
  %17 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reserved, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.then17.extent_changeset_free.exit_crit_edge, label %extent_changeset_release.exit.i

if.then17.extent_changeset_free.exit_crit_edge:   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %extent_changeset_free.exit

extent_changeset_release.exit.i:                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %18, align 4
  %range_changed.i.i = getelementptr inbounds %struct.extent_changeset, ptr %18, i32 0, i32 1
  tail call void @ulist_release(ptr noundef %range_changed.i.i) #7
  tail call void @kfree(ptr noundef nonnull %18) #7
  br label %extent_changeset_free.exit

extent_changeset_free.exit:                       ; preds = %extent_changeset_release.exit.i, %if.then17.extent_changeset_free.exit_crit_edge
  %20 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %reserved, align 4
  br label %cleanup

cleanup:                                          ; preds = %extent_changeset_free.exit, %if.end.cleanup_crit_edge, %btrfs_alloc_data_chunk_ondemand.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6.i, %btrfs_alloc_data_chunk_ondemand.exit.cleanup_crit_edge ], [ %call14, %extent_changeset_free.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_qgroup_reserve_data(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_free_reserved_data_space_noquota(ptr noundef %fs_info, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 167
  %0 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sectorsize, align 4
  %conv = zext i32 %1 to i64
  %sub = add nsw i64 %conv, -1
  %and = and i64 %sub, %len
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %cond.end, label %cond.false, !prof !40

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail() #10
  unreachable

cond.end:                                         ; preds = %entry
  %data_sinfo3 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 102
  %2 = ptrtoint ptr %data_sinfo3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_sinfo3, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #7
  %sub.i = sub i64 0, %len
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp.i.i = icmp slt i64 %sub.i, 0
  %cond.i.i = select i1 %cmp.i.i, i64 %len, i64 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %cond.end.if.end.i.i_crit_edge, label %land.rhs.i.i

cond.end.if.end.i.i_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %cond.end
  %dep_map.i.i = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp1.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp1.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !41

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 110, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %cond.end.if.end.i.i_crit_edge
  %bytes_may_use.i.i = getelementptr inbounds %struct.btrfs_space_info, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %bytes_may_use.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bytes_may_use.i.i, align 8
  tail call fastcc void @trace_update_bytes_may_use(ptr noundef %fs_info, ptr noundef %3, i64 noundef %6, i64 noundef %sub.i) #7
  %flags.i.i = getelementptr inbounds %struct.btrfs_space_info, ptr %3, i32 0, i32 14
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %flags.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp25.i.i = icmp sgt i64 %sub.i, 0
  %conv.i.i = zext i1 %cmp25.i.i to i32
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, ptr noundef nonnull @.str.7, i64 noundef %8, i64 noundef %cond.i.i, i32 noundef %conv.i.i) #7
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.end60.i.i_crit_edge

if.end.i.i.if.end60.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %9 = ptrtoint ptr %bytes_may_use.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bytes_may_use.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %len)
  %cmp30.i.i = icmp ult i64 %10, %len
  br i1 %cmp30.i.i, label %do.end45.i.i, label %land.lhs.true.i.i.if.end60.i.i_crit_edge

land.lhs.true.i.i.if.end60.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i.i

do.end45.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 110, i32 noundef 9, ptr noundef null) #7
  br label %btrfs_space_info_free_bytes_may_use.exit

if.end60.i.i:                                     ; preds = %land.lhs.true.i.i.if.end60.i.i_crit_edge, %if.end.i.i.if.end60.i.i_crit_edge
  %11 = ptrtoint ptr %bytes_may_use.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bytes_may_use.i.i, align 8
  %add.i.i = sub i64 %12, %len
  br label %btrfs_space_info_free_bytes_may_use.exit

btrfs_space_info_free_bytes_may_use.exit:         ; preds = %if.end60.i.i, %do.end45.i.i
  %storemerge.i.i = phi i64 [ %add.i.i, %if.end60.i.i ], [ 0, %do.end45.i.i ]
  %13 = ptrtoint ptr %bytes_may_use.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %storemerge.i.i, ptr %bytes_may_use.i.i, align 8
  tail call void @btrfs_try_granting_tickets(ptr noundef %fs_info, ptr noundef %3) #7
  tail call void @_raw_spin_unlock(ptr noundef %3) #7
  ret void
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail() unnamed_addr #3 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 169) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #7, !srcloc !42
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_free_reserved_data_space(ptr noundef %inode, ptr noundef %reserved, i64 noundef %start, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 8
  %add = add i64 %start, -1
  %sub = add i64 %add, %len
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %4 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sectorsize, align 4
  %sub2 = add i32 %5, -1
  %conv = zext i32 %sub2 to i64
  %or = or i64 %sub, %conv
  %add3 = add i64 %or, 1
  %neg = xor i64 %conv, -1
  %and = and i64 %neg, %start
  %sub7 = sub i64 %add3, %and
  tail call void @btrfs_free_reserved_data_space_noquota(ptr noundef %3, i64 noundef %sub7)
  %call = tail call i32 @btrfs_qgroup_free_data(ptr noundef %inode, ptr noundef %reserved, i64 noundef %and, i64 noundef %sub7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_qgroup_free_data(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_delalloc_reserve_metadata(ptr noundef %inode, i64 noundef %num_bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info2 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info2, align 8
  %block_rsv3 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 30
  %tree_root.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tree_root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tree_root.i, align 4
  %cmp.i = icmp eq ptr %1, %5
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.btrfs_is_free_space_inode.exit_crit_edge

entry.btrfs_is_free_space_inode.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_is_free_space_inode.exit

land.lhs.true.i:                                  ; preds = %entry
  %location.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %6 = ptrtoint ptr %location.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %location.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not.i.i = icmp eq i64 %7, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.if.then.i.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i
  %type.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %9)
  %cmp.i.i = icmp eq i8 %9, -124
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge

lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_ino.exit.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %land.lhs.true.i.if.then.i.i_crit_edge
  %i_ino.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %10 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino.i.i, align 8
  %conv3.i.i = zext i32 %11 to i64
  br label %btrfs_ino.exit.i

btrfs_ino.exit.i:                                 ; preds = %if.then.i.i, %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge
  %ino.0.i.i = phi i64 [ %conv3.i.i, %if.then.i.i ], [ %7, %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %ino.0.i.i)
  %cmp2.not.i = icmp eq i64 %ino.0.i.i, 1
  br i1 %cmp2.not.i, label %btrfs_ino.exit.i.btrfs_is_free_space_inode.exit_crit_edge, label %btrfs_ino.exit.i.if.end11_crit_edge

btrfs_ino.exit.i.if.end11_crit_edge:              ; preds = %btrfs_ino.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

btrfs_ino.exit.i.btrfs_is_free_space_inode.exit_crit_edge: ; preds = %btrfs_ino.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_is_free_space_inode.exit

btrfs_is_free_space_inode.exit:                   ; preds = %btrfs_ino.exit.i.btrfs_is_free_space_inode.exit_crit_edge, %entry.btrfs_is_free_space_inode.exit_crit_edge
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %12 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -12, i64 %13)
  %cmp3.i = icmp eq i64 %13, -12
  br i1 %cmp3.i, label %btrfs_is_free_space_inode.exit.if.end11_crit_edge, label %if.else

btrfs_is_free_space_inode.exit.if.end11_crit_edge: ; preds = %btrfs_is_free_space_inode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.else:                                          ; preds = %btrfs_is_free_space_inode.exit
  %14 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 146
  %18 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %journal_info, align 4
  %tobool.not = icmp eq ptr %19, null
  %spec.select = select i1 %tobool.not, i32 5, i32 1
  %call6 = tail call i32 @btrfs_transaction_in_commit(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else.if.end11_crit_edge, label %if.then8

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @schedule_timeout(i32 noundef 1) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.else.if.end11_crit_edge, %btrfs_is_free_space_inode.exit.if.end11_crit_edge, %btrfs_ino.exit.i.if.end11_crit_edge
  %flush.1 = phi i32 [ %spec.select, %if.then8 ], [ %spec.select, %if.else.if.end11_crit_edge ], [ 0, %btrfs_is_free_space_inode.exit.if.end11_crit_edge ], [ 0, %btrfs_ino.exit.i.if.end11_crit_edge ]
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %20 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sectorsize, align 4
  %conv = zext i32 %21 to i64
  %sub = add i64 %num_bytes, -1
  %add = add i64 %sub, %conv
  %neg = sub nsw i64 0, %conv
  %and = and i64 %add, %neg
  %sectorsize_bits.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 168
  %22 = ptrtoint ptr %sectorsize_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sectorsize_bits.i.i, align 8
  %sh_prom.i.i = zext i32 %23 to i64
  %shr.i.i = lshr i64 %and, %sh_prom.i.i
  %csums_per_leaf.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 170
  %24 = ptrtoint ptr %csums_per_leaf.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %csums_per_leaf.i.i, align 8
  %conv.i13.i = zext i32 %25 to i64
  %add.i.i = add nsw i64 %conv.i13.i, -1
  %sub.i14.i = add i64 %shr.i.i, %add.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i14.i)
  %cmp171.i.i = icmp ult i64 %sub.i14.i, 4294967296
  br i1 %cmp171.i.i, label %if.then175.i.i, label %if.else181.i.i, !prof !40

if.then175.i.i:                                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %conv176.i.i = trunc i64 %sub.i14.i to i32
  %div179.i.i = udiv i32 %conv176.i.i, %25
  br label %calc_inode_reservations.exit

if.else181.i.i:                                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %25, i64 %sub.i14.i) #12, !srcloc !43
  %asmresult1.i.i.i = extractvalue { i64, i64 } %26, 1
  %extract.t20.i = trunc i64 %asmresult1.i.i.i to i32
  br label %calc_inode_reservations.exit

calc_inode_reservations.exit:                     ; preds = %if.else181.i.i, %if.then175.i.i
  %_tmp.0.i.off0.i = phi i32 [ %div179.i.i, %if.then175.i.i ], [ %extract.t20.i, %if.else181.i.i ]
  %sub.i.i = add i64 %and, 134217727
  %shr.i.i.i.i = lshr i64 %sub.i.i, 27
  %conv.i.i = trunc i64 %shr.i.i.i.i to i32
  %conv.i = and i64 %shr.i.i.i.i, 4294967295
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 166
  %27 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nodesize.i.i, align 8
  %conv.i15.i = zext i32 %28 to i64
  %conv3.i = add i32 %_tmp.0.i.off0.i, %conv.i.i
  %conv2.i.i = zext i32 %conv3.i to i64
  %mul1.i.i = shl nuw nsw i64 %conv2.i.i, 4
  %mul3.i22.i = or i64 %mul1.i.i, 8
  %add5.i = mul i64 %mul3.i22.i, %conv.i15.i
  %mul.i = mul nuw i64 %conv.i, %conv.i15.i
  %conv15 = trunc i64 %mul.i to i32
  %call.i = tail call i32 @__btrfs_qgroup_reserve_meta(ptr noundef %1, i32 noundef %conv15, i32 noundef 2, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.end19, label %calc_inode_reservations.exit.cleanup_crit_edge

calc_inode_reservations.exit.cleanup_crit_edge:   ; preds = %calc_inode_reservations.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %calc_inode_reservations.exit
  %call20 = tail call i32 @btrfs_reserve_metadata_bytes(ptr noundef %3, ptr noundef %block_rsv3, i64 noundef %add5.i, i32 noundef %flush.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__btrfs_qgroup_free_meta(ptr noundef %1, i32 noundef %conv15, i32 noundef 2) #7
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %lock = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %29 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %if.end24.if.end.i70_crit_edge, label %land.rhs.i

if.end24.if.end.i70_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i70

land.rhs.i:                                       ; preds = %if.end24
  %dep_map.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i70_crit_edge, !prof !41

land.rhs.i.if.end.i70_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i70

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 313, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i70

if.end.i70:                                       ; preds = %do.end.i, %land.rhs.i.if.end.i70_crit_edge, %if.end24.if.end.i70_crit_edge
  %outstanding_extents.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 29
  %30 = ptrtoint ptr %outstanding_extents.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %outstanding_extents.i, align 8
  %add.i = add i32 %31, %conv.i.i
  store i32 %add.i, ptr %outstanding_extents.i, align 8
  %32 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %inode, align 8
  %fs_info.i.i = getelementptr inbounds %struct.btrfs_root, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fs_info.i.i, align 8
  %tree_root.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %tree_root.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tree_root.i.i, align 4
  %cmp.i.i69 = icmp eq ptr %33, %37
  br i1 %cmp.i.i69, label %land.lhs.true.i.i, label %if.end.i70.btrfs_is_free_space_inode.exit.i_crit_edge

if.end.i70.btrfs_is_free_space_inode.exit.i_crit_edge: ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_is_free_space_inode.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i70
  %location.i.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %38 = ptrtoint ptr %location.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %location.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %tobool.not.i.i.i = icmp eq i64 %39, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

land.lhs.true.i.i.if.then.i.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true.i.i
  %type.i.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %41)
  %cmp.i.i.i = icmp eq i8 %41, -124
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge

lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_ino.exit.i.i

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %land.lhs.true.i.i.if.then.i.i.i_crit_edge
  %i_ino.i.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %42 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_ino.i.i.i, align 8
  %conv3.i.i.i = zext i32 %43 to i64
  br label %btrfs_ino.exit.i.i

btrfs_ino.exit.i.i:                               ; preds = %if.then.i.i.i, %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge
  %ino.0.i.i.i = phi i64 [ %conv3.i.i.i, %if.then.i.i.i ], [ %39, %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %ino.0.i.i.i)
  %cmp2.not.i.i = icmp eq i64 %ino.0.i.i.i, 1
  br i1 %cmp2.not.i.i, label %btrfs_ino.exit.i.i.btrfs_is_free_space_inode.exit.i_crit_edge, label %btrfs_ino.exit.i.i.btrfs_mod_outstanding_extents.exit_crit_edge

btrfs_ino.exit.i.i.btrfs_mod_outstanding_extents.exit_crit_edge: ; preds = %btrfs_ino.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_mod_outstanding_extents.exit

btrfs_ino.exit.i.i.btrfs_is_free_space_inode.exit.i_crit_edge: ; preds = %btrfs_ino.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_is_free_space_inode.exit.i

btrfs_is_free_space_inode.exit.i:                 ; preds = %btrfs_ino.exit.i.i.btrfs_is_free_space_inode.exit.i_crit_edge, %if.end.i70.btrfs_is_free_space_inode.exit.i_crit_edge
  %location.i.i71 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %44 = ptrtoint ptr %location.i.i71 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %location.i.i71, align 4
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i64 %45, label %lor.lhs.false.i.i74 [
    i64 -12, label %btrfs_is_free_space_inode.exit.i.btrfs_mod_outstanding_extents.exit_crit_edge
    i64 0, label %btrfs_is_free_space_inode.exit.i.if.then.i.i77_crit_edge
  ]

btrfs_is_free_space_inode.exit.i.if.then.i.i77_crit_edge: ; preds = %btrfs_is_free_space_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i77

btrfs_is_free_space_inode.exit.i.btrfs_mod_outstanding_extents.exit_crit_edge: ; preds = %btrfs_is_free_space_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_mod_outstanding_extents.exit

lor.lhs.false.i.i74:                              ; preds = %btrfs_is_free_space_inode.exit.i
  %type.i.i73 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %type.i.i73 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %type.i.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %47)
  %cmp.i35.i = icmp eq i8 %47, -124
  br i1 %cmp.i35.i, label %lor.lhs.false.i.i74.if.then.i.i77_crit_edge, label %lor.lhs.false.i.i74.btrfs_ino.exit.i79_crit_edge

lor.lhs.false.i.i74.btrfs_ino.exit.i79_crit_edge: ; preds = %lor.lhs.false.i.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_ino.exit.i79

lor.lhs.false.i.i74.if.then.i.i77_crit_edge:      ; preds = %lor.lhs.false.i.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i77

if.then.i.i77:                                    ; preds = %lor.lhs.false.i.i74.if.then.i.i77_crit_edge, %btrfs_is_free_space_inode.exit.i.if.then.i.i77_crit_edge
  %i_ino.i.i75 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %48 = ptrtoint ptr %i_ino.i.i75 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i_ino.i.i75, align 8
  %conv3.i.i76 = zext i32 %49 to i64
  br label %btrfs_ino.exit.i79

btrfs_ino.exit.i79:                               ; preds = %if.then.i.i77, %lor.lhs.false.i.i74.btrfs_ino.exit.i79_crit_edge
  %ino.0.i.i78 = phi i64 [ %conv3.i.i76, %if.then.i.i77 ], [ %45, %lor.lhs.false.i.i74.btrfs_ino.exit.i79_crit_edge ]
  tail call fastcc void @trace_btrfs_inode_mod_outstanding_extents(ptr noundef %33, i64 noundef %ino.0.i.i78, i32 noundef %conv.i.i) #7
  br label %btrfs_mod_outstanding_extents.exit

btrfs_mod_outstanding_extents.exit:               ; preds = %btrfs_ino.exit.i79, %btrfs_is_free_space_inode.exit.i.btrfs_mod_outstanding_extents.exit_crit_edge, %btrfs_ino.exit.i.i.btrfs_mod_outstanding_extents.exit_crit_edge
  %csum_bytes = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 26
  %50 = ptrtoint ptr %csum_bytes to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %csum_bytes, align 8
  %add26 = add i64 %51, %and
  store i64 %add26, ptr %csum_bytes, align 8
  tail call fastcc void @btrfs_calculate_inode_block_rsv_size(ptr noundef %3, ptr noundef %inode)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  tail call void @btrfs_block_rsv_add_bytes(ptr noundef %block_rsv3, i64 noundef %add5.i, i1 noundef zeroext false) #7
  %52 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fs_info2, align 8
  %location.i80 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %54 = ptrtoint ptr %location.i80 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %location.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %tobool.not.i81 = icmp eq i64 %55, 0
  br i1 %tobool.not.i81, label %btrfs_mod_outstanding_extents.exit.if.then.i_crit_edge, label %lor.lhs.false.i

btrfs_mod_outstanding_extents.exit.if.then.i_crit_edge: ; preds = %btrfs_mod_outstanding_extents.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %btrfs_mod_outstanding_extents.exit
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %57)
  %cmp.i82 = icmp eq i8 %57, -124
  br i1 %cmp.i82, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %btrfs_mod_outstanding_extents.exit.if.then.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %58 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i_ino.i, align 8
  %conv3.i83 = zext i32 %59 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i83, %if.then.i ], [ %55, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %53, ptr noundef nonnull @.str.2, i64 noundef %ino.0.i, i64 noundef %add5.i, i32 noundef 1)
  %lock30 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 30, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock30) #7
  %qgroup_rsv_reserved = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 30, i32 8
  %60 = ptrtoint ptr %qgroup_rsv_reserved to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %qgroup_rsv_reserved, align 8
  %add31 = add i64 %61, %mul.i
  store i64 %add31, ptr %qgroup_rsv_reserved, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock30) #7
  br label %cleanup

cleanup:                                          ; preds = %btrfs_ino.exit, %if.then22, %calc_inode_reservations.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.then22 ], [ 0, %btrfs_ino.exit ], [ %call.i, %calc_inode_reservations.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_transaction_in_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_reserve_metadata_bytes(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_calculate_inode_block_rsv_size(ptr nocapture noundef readonly %fs_info, ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !41

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 242, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %outstanding_extents25 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 29
  %1 = ptrtoint ptr %outstanding_extents25 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %outstanding_extents25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool26.not = icmp eq i32 %2, 0
  br i1 %tobool26.not, label %if.end.if.end30_crit_edge, label %if.then27

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 166
  %3 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nodesize.i, align 8
  %conv.i = zext i32 %4 to i64
  %conv2.i = zext i32 %2 to i64
  %mul1.i = shl nuw nsw i64 %conv2.i, 4
  %mul3.i63 = or i64 %mul1.i, 8
  %add = mul i64 %mul3.i63, %conv.i
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end.if.end30_crit_edge
  %reserve_size.0 = phi i64 [ %add, %if.then27 ], [ 0, %if.end.if.end30_crit_edge ]
  %csum_bytes = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 26
  %5 = ptrtoint ptr %csum_bytes to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %csum_bytes, align 8
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 168
  %7 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sectorsize_bits.i, align 8
  %sh_prom.i = zext i32 %8 to i64
  %shr.i = lshr i64 %6, %sh_prom.i
  %csums_per_leaf.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 170
  %9 = ptrtoint ptr %csums_per_leaf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %csums_per_leaf.i, align 8
  %conv.i56 = zext i32 %10 to i64
  %add.i = add nsw i64 %conv.i56, -1
  %sub.i = add i64 %add.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp171.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp171.i, label %if.then175.i, label %if.else181.i, !prof !40

if.then175.i:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %conv176.i = trunc i64 %sub.i to i32
  %div179.i = udiv i32 %conv176.i, %10
  br label %btrfs_csum_bytes_to_leaves.exit

if.else181.i:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %sub.i) #12, !srcloc !43
  %asmresult1.i.i = extractvalue { i64, i64 } %11, 1
  %extract.t65 = trunc i64 %asmresult1.i.i to i32
  br label %btrfs_csum_bytes_to_leaves.exit

btrfs_csum_bytes_to_leaves.exit:                  ; preds = %if.else181.i, %if.then175.i
  %_tmp.0.i.off0 = phi i32 [ %div179.i, %if.then175.i ], [ %extract.t65, %if.else181.i ]
  %block_rsv1 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 30
  %nodesize.i58 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 166
  %12 = ptrtoint ptr %nodesize.i58 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nodesize.i58, align 8
  %conv.i59 = zext i32 %13 to i64
  %conv2.i60 = zext i32 %_tmp.0.i.off0 to i64
  %mul1.i61 = shl nuw nsw i64 %conv2.i60, 4
  %mul3.i62 = mul i64 %mul1.i61, %conv.i59
  %add33 = add i64 %mul3.i62, %reserve_size.0
  %conv34 = zext i32 %2 to i64
  %mul = mul nuw i64 %conv.i59, %conv34
  %lock36 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 30, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock36) #7
  %14 = ptrtoint ptr %block_rsv1 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %add33, ptr %block_rsv1, align 8
  %qgroup_rsv_size37 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 30, i32 7
  %15 = ptrtoint ptr %qgroup_rsv_size37 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %mul, ptr %qgroup_rsv_size37, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock36) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_block_rsv_add_bytes(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, ptr noundef %type, i64 noundef %val, i64 noundef %bytes, i32 noundef %reserve) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 1), ptr blockaddress(@trace_btrfs_space_reservation, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !44

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !40

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  %call42 = tail call i32 @__traceiter_btrfs_space_reservation(ptr noundef null, ptr noundef %fs_info, ptr noundef %type, i64 noundef %val, i64 noundef %bytes, i32 noundef %reserve) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !30) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !40

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_space_reservation.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_btrfs_space_reservation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1076, ptr noundef nonnull @.str.9) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !48
  %31 = tail call i32 @llvm.read_register.i32(metadata !30) #7
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
define dso_local void @btrfs_delalloc_release_metadata(ptr noundef %inode, i64 noundef %num_bytes, i1 noundef zeroext %qgroup_free) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 8
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %4 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sectorsize, align 4
  %conv = zext i32 %5 to i64
  %sub = add i64 %num_bytes, -1
  %add = add i64 %sub, %conv
  %neg = sub nsw i64 0, %conv
  %and = and i64 %add, %neg
  %lock = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %csum_bytes = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 26
  %6 = ptrtoint ptr %csum_bytes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %csum_bytes, align 8
  %sub5 = sub i64 %7, %and
  store i64 %sub5, ptr %csum_bytes, align 8
  tail call fastcc void @btrfs_calculate_inode_block_rsv_size(ptr noundef %3, ptr noundef %inode)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  %fs_state.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 149
  %8 = ptrtoint ptr %fs_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %fs_state.i, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @btrfs_inode_rsv_release(ptr noundef %inode, i1 noundef zeroext %qgroup_free)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_inode_rsv_release(ptr noundef %inode, i1 noundef zeroext %qgroup_free) unnamed_addr #0 align 64 {
entry:
  %qgroup_to_release = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 8
  %block_rsv2 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qgroup_to_release) #7
  %4 = ptrtoint ptr %qgroup_to_release to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %qgroup_to_release, align 8
  %call = call i64 @btrfs_block_rsv_release(ptr noundef %3, ptr noundef %block_rsv2, i64 noundef 0, ptr noundef nonnull %qgroup_to_release) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp.not = icmp eq i64 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %5 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not.i = icmp eq i64 %6, 0
  br i1 %tobool.not.i, label %if.then.if.then.i_crit_edge, label %lor.lhs.false.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %8)
  %cmp.i = icmp eq i8 %8, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %9 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %10 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %6, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  call fastcc void @trace_btrfs_space_reservation(ptr noundef %3, ptr noundef nonnull @.str.2, i64 noundef %ino.0.i, i64 noundef %call, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %btrfs_ino.exit, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %inode, align 8
  %13 = ptrtoint ptr %qgroup_to_release to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %qgroup_to_release, align 8
  %conv = trunc i64 %14 to i32
  br i1 %qgroup_free, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__btrfs_qgroup_free_meta(ptr noundef %12, i32 noundef %conv, i32 noundef 2) #7
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @btrfs_qgroup_convert_reserved_meta(ptr noundef %12, i32 noundef %conv) #7
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qgroup_to_release) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_delalloc_release_extents(ptr noundef %inode, i64 noundef %num_bytes) local_unnamed_addr #0 align 64 {
entry:
  %qgroup_to_release.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 8
  %lock = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %sub.i = add i64 %num_bytes, 134217727
  %shr.i.i.i = lshr i64 %sub.i, 27
  %conv.i = trunc i64 %shr.i.i.i to i32
  %sub = sub i32 0, %conv.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !41

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 313, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %outstanding_extents.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 29
  %5 = ptrtoint ptr %outstanding_extents.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %outstanding_extents.i, align 8
  %add.i = sub i32 %6, %conv.i
  store i32 %add.i, ptr %outstanding_extents.i, align 8
  %7 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inode, align 8
  %fs_info.i.i = getelementptr inbounds %struct.btrfs_root, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_info.i.i, align 8
  %tree_root.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %tree_root.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tree_root.i.i, align 4
  %cmp.i.i = icmp eq ptr %8, %12
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.btrfs_is_free_space_inode.exit.i_crit_edge

if.end.i.btrfs_is_free_space_inode.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_is_free_space_inode.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %location.i.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %13 = ptrtoint ptr %location.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %location.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not.i.i.i = icmp eq i64 %14, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

land.lhs.true.i.i.if.then.i.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true.i.i
  %type.i.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %16)
  %cmp.i.i.i = icmp eq i8 %16, -124
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge

lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_ino.exit.i.i

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %land.lhs.true.i.i.if.then.i.i.i_crit_edge
  %i_ino.i.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %17 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino.i.i.i, align 8
  %conv3.i.i.i = zext i32 %18 to i64
  br label %btrfs_ino.exit.i.i

btrfs_ino.exit.i.i:                               ; preds = %if.then.i.i.i, %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge
  %ino.0.i.i.i = phi i64 [ %conv3.i.i.i, %if.then.i.i.i ], [ %14, %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %ino.0.i.i.i)
  %cmp2.not.i.i = icmp eq i64 %ino.0.i.i.i, 1
  br i1 %cmp2.not.i.i, label %btrfs_ino.exit.i.i.btrfs_is_free_space_inode.exit.i_crit_edge, label %btrfs_ino.exit.i.i.btrfs_mod_outstanding_extents.exit_crit_edge

btrfs_ino.exit.i.i.btrfs_mod_outstanding_extents.exit_crit_edge: ; preds = %btrfs_ino.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_mod_outstanding_extents.exit

btrfs_ino.exit.i.i.btrfs_is_free_space_inode.exit.i_crit_edge: ; preds = %btrfs_ino.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_is_free_space_inode.exit.i

btrfs_is_free_space_inode.exit.i:                 ; preds = %btrfs_ino.exit.i.i.btrfs_is_free_space_inode.exit.i_crit_edge, %if.end.i.btrfs_is_free_space_inode.exit.i_crit_edge
  %location.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %19 = ptrtoint ptr %location.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %location.i.i, align 4
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.12)
  switch i64 %20, label %lor.lhs.false.i.i [
    i64 -12, label %btrfs_is_free_space_inode.exit.i.btrfs_mod_outstanding_extents.exit_crit_edge
    i64 0, label %btrfs_is_free_space_inode.exit.i.if.then.i.i_crit_edge
  ]

btrfs_is_free_space_inode.exit.i.if.then.i.i_crit_edge: ; preds = %btrfs_is_free_space_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

btrfs_is_free_space_inode.exit.i.btrfs_mod_outstanding_extents.exit_crit_edge: ; preds = %btrfs_is_free_space_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_mod_outstanding_extents.exit

lor.lhs.false.i.i:                                ; preds = %btrfs_is_free_space_inode.exit.i
  %type.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %22)
  %cmp.i35.i = icmp eq i8 %22, -124
  br i1 %cmp.i35.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge

lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_ino.exit.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %btrfs_is_free_space_inode.exit.i.if.then.i.i_crit_edge
  %i_ino.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %23 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino.i.i, align 8
  %conv3.i.i = zext i32 %24 to i64
  br label %btrfs_ino.exit.i

btrfs_ino.exit.i:                                 ; preds = %if.then.i.i, %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge
  %ino.0.i.i = phi i64 [ %conv3.i.i, %if.then.i.i ], [ %20, %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge ]
  tail call fastcc void @trace_btrfs_inode_mod_outstanding_extents(ptr noundef %8, i64 noundef %ino.0.i.i, i32 noundef %sub) #7
  br label %btrfs_mod_outstanding_extents.exit

btrfs_mod_outstanding_extents.exit:               ; preds = %btrfs_ino.exit.i, %btrfs_is_free_space_inode.exit.i.btrfs_mod_outstanding_extents.exit_crit_edge, %btrfs_ino.exit.i.i.btrfs_mod_outstanding_extents.exit_crit_edge
  tail call fastcc void @btrfs_calculate_inode_block_rsv_size(ptr noundef %3, ptr noundef %inode)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  %fs_state.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 149
  %25 = ptrtoint ptr %fs_state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %fs_state.i, align 4
  %27 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %if.end, label %btrfs_mod_outstanding_extents.exit.cleanup_crit_edge

btrfs_mod_outstanding_extents.exit.cleanup_crit_edge: ; preds = %btrfs_mod_outstanding_extents.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %btrfs_mod_outstanding_extents.exit
  %28 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %inode, align 8
  %fs_info1.i = getelementptr inbounds %struct.btrfs_root, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fs_info1.i, align 8
  %block_rsv2.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qgroup_to_release.i) #7
  %32 = ptrtoint ptr %qgroup_to_release.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %qgroup_to_release.i, align 8
  %call.i = call i64 @btrfs_block_rsv_release(ptr noundef %31, ptr noundef %block_rsv2.i, i64 noundef 0, ptr noundef nonnull %qgroup_to_release.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp.not.i11 = icmp eq i64 %call.i, 0
  br i1 %cmp.not.i11, label %if.end.btrfs_inode_rsv_release.exit_crit_edge, label %if.then.i

if.end.btrfs_inode_rsv_release.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_inode_rsv_release.exit

if.then.i:                                        ; preds = %if.end
  %location.i.i12 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %33 = ptrtoint ptr %location.i.i12 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %location.i.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool.not.i.i13 = icmp eq i64 %34, 0
  br i1 %tobool.not.i.i13, label %if.then.i.if.then.i.i19_crit_edge, label %lor.lhs.false.i.i16

if.then.i.if.then.i.i19_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i19

lor.lhs.false.i.i16:                              ; preds = %if.then.i
  %type.i.i14 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %type.i.i14 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %type.i.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %36)
  %cmp.i.i15 = icmp eq i8 %36, -124
  br i1 %cmp.i.i15, label %lor.lhs.false.i.i16.if.then.i.i19_crit_edge, label %lor.lhs.false.i.i16.btrfs_ino.exit.i21_crit_edge

lor.lhs.false.i.i16.btrfs_ino.exit.i21_crit_edge: ; preds = %lor.lhs.false.i.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_ino.exit.i21

lor.lhs.false.i.i16.if.then.i.i19_crit_edge:      ; preds = %lor.lhs.false.i.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i19

if.then.i.i19:                                    ; preds = %lor.lhs.false.i.i16.if.then.i.i19_crit_edge, %if.then.i.if.then.i.i19_crit_edge
  %i_ino.i.i17 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %37 = ptrtoint ptr %i_ino.i.i17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_ino.i.i17, align 8
  %conv3.i.i18 = zext i32 %38 to i64
  br label %btrfs_ino.exit.i21

btrfs_ino.exit.i21:                               ; preds = %if.then.i.i19, %lor.lhs.false.i.i16.btrfs_ino.exit.i21_crit_edge
  %ino.0.i.i20 = phi i64 [ %conv3.i.i18, %if.then.i.i19 ], [ %34, %lor.lhs.false.i.i16.btrfs_ino.exit.i21_crit_edge ]
  call fastcc void @trace_btrfs_space_reservation(ptr noundef %31, ptr noundef nonnull @.str.2, i64 noundef %ino.0.i.i20, i64 noundef %call.i, i32 noundef 0) #7
  br label %btrfs_inode_rsv_release.exit

btrfs_inode_rsv_release.exit:                     ; preds = %btrfs_ino.exit.i21, %if.end.btrfs_inode_rsv_release.exit_crit_edge
  %39 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %inode, align 8
  %41 = ptrtoint ptr %qgroup_to_release.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %qgroup_to_release.i, align 8
  %conv.i22 = trunc i64 %42 to i32
  call void @__btrfs_qgroup_free_meta(ptr noundef %40, i32 noundef %conv.i22, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qgroup_to_release.i) #7
  br label %cleanup

cleanup:                                          ; preds = %btrfs_inode_rsv_release.exit, %btrfs_mod_outstanding_extents.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_delalloc_reserve_space(ptr noundef %inode, ptr noundef %reserved, i64 noundef %start, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @btrfs_check_data_free_space(ptr noundef %inode, ptr noundef %reserved, i64 noundef %start, i64 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @btrfs_delalloc_reserve_metadata(ptr noundef %inode, i64 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %0 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reserved, align 4
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode, align 8
  %fs_info1.i = getelementptr inbounds %struct.btrfs_root, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info1.i, align 8
  %add.i = add i64 %start, -1
  %sub.i = add i64 %add.i, %len
  %sectorsize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 167
  %6 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sectorsize.i, align 4
  %sub2.i = add i32 %7, -1
  %conv.i = zext i32 %sub2.i to i64
  %or.i = or i64 %sub.i, %conv.i
  %add3.i = add i64 %or.i, 1
  %neg.i = xor i64 %conv.i, -1
  %and.i = and i64 %neg.i, %start
  %sub7.i = sub i64 %add3.i, %and.i
  tail call void @btrfs_free_reserved_data_space_noquota(ptr noundef %5, i64 noundef %sub7.i) #7
  %call.i = tail call i32 @btrfs_qgroup_free_data(ptr noundef %inode, ptr noundef %1, i64 noundef %and.i, i64 noundef %sub7.i) #7
  %8 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reserved, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then3.extent_changeset_free.exit_crit_edge, label %extent_changeset_release.exit.i

if.then3.extent_changeset_free.exit_crit_edge:    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %extent_changeset_free.exit

extent_changeset_release.exit.i:                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %range_changed.i.i = getelementptr inbounds %struct.extent_changeset, ptr %9, i32 0, i32 1
  tail call void @ulist_release(ptr noundef %range_changed.i.i) #7
  tail call void @kfree(ptr noundef nonnull %9) #7
  br label %extent_changeset_free.exit

extent_changeset_free.exit:                       ; preds = %extent_changeset_release.exit.i, %if.then3.extent_changeset_free.exit_crit_edge
  %11 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %reserved, align 4
  br label %cleanup

cleanup:                                          ; preds = %extent_changeset_free.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %extent_changeset_free.exit ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_delalloc_release_space(ptr noundef %inode, ptr noundef %reserved, i64 noundef %start, i64 noundef %len, i1 noundef zeroext %qgroup_free) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info1.i = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1.i, align 8
  %sectorsize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 167
  %4 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sectorsize.i, align 4
  %conv.i = zext i32 %5 to i64
  %sub.i = add i64 %len, -1
  %add.i = add i64 %sub.i, %conv.i
  %neg.i = sub nsw i64 0, %conv.i
  %and.i = and i64 %add.i, %neg.i
  %lock.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %csum_bytes.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 26
  %6 = ptrtoint ptr %csum_bytes.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %csum_bytes.i, align 8
  %sub5.i = sub i64 %7, %and.i
  store i64 %sub5.i, ptr %csum_bytes.i, align 8
  tail call fastcc void @btrfs_calculate_inode_block_rsv_size(ptr noundef %3, ptr noundef %inode) #7
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %fs_state.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 149
  %8 = ptrtoint ptr %fs_state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %fs_state.i.i, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.btrfs_delalloc_release_metadata.exit_crit_edge

entry.btrfs_delalloc_release_metadata.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_delalloc_release_metadata.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @btrfs_inode_rsv_release(ptr noundef %inode, i1 noundef zeroext %qgroup_free) #7
  br label %btrfs_delalloc_release_metadata.exit

btrfs_delalloc_release_metadata.exit:             ; preds = %if.end.i, %entry.btrfs_delalloc_release_metadata.exit_crit_edge
  %11 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %inode, align 8
  %fs_info1.i3 = getelementptr inbounds %struct.btrfs_root, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %fs_info1.i3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fs_info1.i3, align 8
  %sub.i5 = add i64 %sub.i, %start
  %sectorsize.i6 = getelementptr inbounds %struct.btrfs_fs_info, ptr %14, i32 0, i32 167
  %15 = ptrtoint ptr %sectorsize.i6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sectorsize.i6, align 4
  %sub2.i = add i32 %16, -1
  %conv.i7 = zext i32 %sub2.i to i64
  %or.i = or i64 %sub.i5, %conv.i7
  %add3.i = add i64 %or.i, 1
  %neg.i8 = xor i64 %conv.i7, -1
  %and.i9 = and i64 %neg.i8, %start
  %sub7.i = sub i64 %add3.i, %and.i9
  tail call void @btrfs_free_reserved_data_space_noquota(ptr noundef %14, i64 noundef %sub7.i) #7
  %call.i = tail call i32 @btrfs_qgroup_free_data(ptr noundef %inode, ptr noundef %reserved, i64 noundef %and.i9, i64 noundef %sub7.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ulist_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_try_granting_tickets(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_update_bytes_may_use(ptr noundef %fs_info, ptr noundef %sinfo, i64 noundef %old, i64 noundef %diff) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_update_bytes_may_use, i32 0, i32 1), ptr blockaddress(@trace_update_bytes_may_use, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !44

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !40

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  %call42 = tail call i32 @__traceiter_update_bytes_may_use(ptr noundef null, ptr noundef %fs_info, ptr noundef %sinfo, i64 noundef %old, i64 noundef %diff) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !30) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !40

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_update_bytes_may_use, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_update_bytes_may_use, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_update_bytes_may_use.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_update_bytes_may_use.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 2256, ptr noundef nonnull @.str.9) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !48
  %31 = tail call i32 @llvm.read_register.i32(metadata !30) #7
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
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_update_bytes_may_use(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__btrfs_qgroup_reserve_meta(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__btrfs_qgroup_free_meta(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_inode_mod_outstanding_extents(ptr noundef %root, i64 noundef %ino, i32 noundef %mod) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_inode_mod_outstanding_extents, i32 0, i32 1), ptr blockaddress(@trace_btrfs_inode_mod_outstanding_extents, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !44

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !40

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !51
  %call42 = tail call i32 @__traceiter_btrfs_inode_mod_outstanding_extents(ptr noundef null, ptr noundef %root, i64 noundef %ino, i32 noundef %mod) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !30) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !40

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_inode_mod_outstanding_extents, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_inode_mod_outstanding_extents, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_inode_mod_outstanding_extents.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_btrfs_inode_mod_outstanding_extents.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 1864, ptr noundef nonnull @.str.9) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !48
  %31 = tail call i32 @llvm.read_register.i32(metadata !30) #7
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
declare dso_local i32 @__traceiter_btrfs_inode_mod_outstanding_extents(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_space_reservation(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_block_rsv_release(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_qgroup_convert_reserved_meta(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold noreturn }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !16, !17, !18, !19, !21, !22, !24, !26, !27, !29}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/delalloc-space.c", i32 169, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/btrfs/delalloc-space.c", i32 358, i32 47}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @assertfail._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @assertfail._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/btrfs/space-info.h", i32 110, i32 1}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/trace/events/btrfs.h", i32 2250, i32 1}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!18 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/btrfs/btrfs_inode.h", i32 313, i32 2}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/trace/events/btrfs.h", i32 1844, i32 1}
!26 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/trace/events/btrfs.h", i32 1052, i32 1}
!29 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2158191323, i64 2158191805, i64 2158191360, i64 2158191416, i64 2158191450, i64 2158191474, i64 2158191515, i64 2158191536, i64 2158191564, i64 2158191598}
!43 = !{i64 2148663620, i64 2148663900, i64 2148664234, i64 2148664568}
!44 = !{i64 2148414512, i64 2148414517, i64 2148414530, i64 2148414574, i64 2148414608, i64 2148414629}
!45 = !{i64 2155386455}
!46 = !{i64 2155386732}
!47 = !{i64 2150157727}
!48 = !{i64 2150158763}
!49 = !{i64 2156406611}
!50 = !{i64 2156406864}
!51 = !{i64 2155991675}
!52 = !{i64 2155991936}
