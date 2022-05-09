; ModuleID = '/llk/IR_all_yes/fs/btrfs/ordered-data.c_pt.bc'
source_filename = "../fs/btrfs/ordered-data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { i32 }
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
%struct.btrfs_inode = type { ptr, %struct.btrfs_key, %struct.spinlock, %struct.extent_map_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.mutex, %struct.btrfs_ordered_inode_tree, %struct.list_head, %struct.rb_node, i32, %struct.atomic_t, i64, i64, i64, i32, i32, i64, %union.anon.83, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, %struct.btrfs_block_rsv, i32, i32, ptr, %struct.timespec64, %struct.list_head, %struct.rw_semaphore, %struct.inode }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.btrfs_ordered_inode_tree = type { %struct.spinlock, %struct.rb_root, ptr }
%union.anon.83 = type { i64 }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.76 = type { ptr }
%struct.btrfs_ordered_extent = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.rb_node, %struct.list_head, %struct.btrfs_work, %struct.completion, %struct.btrfs_work, %struct.list_head, i64, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.82, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%union.anon.82 = type { i64 }
%struct.btrfs_ordered_sum = type { i64, i32, %struct.list_head, [0 x i8] }
%struct.page = type { i32, %union.anon.17, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.btrfs_transaction = type { i64, %struct.atomic_t, %struct.atomic_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.extent_io_tree, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.btrfs_delayed_ref_root, ptr, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.list_head }
%struct.btrfs_delayed_ref_root = type { %struct.rb_root_cached, %struct.rb_root, %struct.spinlock, %struct.atomic_t, i32, i32, i64, i32, i64, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.extent_state = type { i64, i64, %struct.rb_node, %struct.wait_queue_head, %struct.refcount_struct, i32, ptr, %struct.list_head }
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

@.str = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"type == BTRFS_ORDERED_REGULAR || type == BTRFS_ORDERED_NOCOW || type == BTRFS_ORDERED_PREALLOC\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/btrfs/ordered-data.c\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"compress_type != BTRFS_COMPRESS_NONE\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"page->mapping && page_offset(page) <= file_offset && file_offset + num_bytes <= page_offset(page) + PAGE_SIZE\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"end + 1 - cur < U32_MAX\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\012bad ordered extent accounting, root=%llu ino=%llu OE offset=%llu OE len=%llu to_dec=%u left=%llu\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\012bad ordered accounting left %llu size %llu\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"list_empty(&entry->root_extent_list)\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"list_empty(&entry->log_list)\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RB_EMPTY_NODE(&entry->rb_node)\00", [33 x i8] zeroinitializer }, align 32
@btrfs_ordered_extent_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trans\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"inode_is_locked(&inode->vfs_inode)\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"list_empty(&ordered->log_list)\00", [33 x i8] zeroinitializer }, align 32
@__func__.btrfs_split_ordered_extent = private unnamed_addr constant [27 x i8] c"btrfs_split_ordered_extent\00", align 1
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"zoned: inconsistency in ordered tree at offset %llu\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"btrfs_ordered_extent\00", [43 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@.str.18 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"type == BTRFS_ORDERED_REGULAR || type == BTRFS_ORDERED_NOCOW || type == BTRFS_ORDERED_PREALLOC || type == BTRFS_ORDERED_COMPRESSED\00", [61 x i8] zeroinitializer }, align 32
@__btrfs_add_ordered_extent.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&entry->wait\00", [19 x i8] zeroinitializer }, align 32
@__func__.__btrfs_add_ordered_extent = private unnamed_addr constant [27 x i8] c"__btrfs_add_ordered_extent\00", align 1
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"inconsistency in ordered tree at offset %llu\00", [51 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_ordered_extent_add = external dso_local global %struct.tracepoint, align 4
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/btrfs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_btrfs_ordered_extent_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_ordered_extent_put = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_ordered_extent_put.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/btrfs/btrfs_inode.h\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_inode_mod_outstanding_extents = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_inode_mod_outstanding_extents.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_btrfs_ordered_extent_remove = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_ordered_extent_remove.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_btrfs_ordered_extent_start = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_ordered_extent_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@clone_ordered_extent.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@clone_ordered_extent.__already_done.26 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -12]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -12]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 254, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 278, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 335, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 387, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 407, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 483, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 519, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 520, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 521, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [27 x i8] c"btrfs_ordered_extent_cache\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 21, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 588, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 887, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 898, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1119, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1136, i32 49 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 3491, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 194, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 208, i32 2 }
@___asan_gen_.95 = private constant [27 x i8] c"../fs/btrfs/ordered-data.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 221, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 87, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [32 x i8] c"../include/trace/events/btrfs.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 566, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 108, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [26 x i8] c"../fs/btrfs/btrfs_inode.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 313, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @btrfs_ordered_extent_cache, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @init_completion.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_ordered_extent_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_add_ordered_extent(ptr noundef %inode, i64 noundef %file_offset, i64 noundef %disk_bytenr, i64 noundef %num_bytes, i64 noundef %disk_num_bytes, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %switch = icmp ult i32 %type, 3
  br i1 %switch, label %cond.end, label %cond.false.critedge

cond.false.critedge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 256) #13
  unreachable

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @__btrfs_add_ordered_extent(ptr noundef %inode, i64 noundef %file_offset, i64 noundef %disk_bytenr, i64 noundef %num_bytes, i64 noundef %disk_num_bytes, i32 noundef %type, i32 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #1 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %expr, ptr noundef nonnull @.str.1, i32 noundef %line) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #10, !srcloc !85
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__btrfs_add_ordered_extent(ptr noundef %inode, i64 noundef %file_offset, i64 noundef %disk_bytenr, i64 noundef %num_bytes, i64 noundef %disk_num_bytes, i32 noundef %type, i32 noundef %dio, i32 noundef %compress_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info2 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info2, align 8
  %ordered_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8
  %type.off = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.off)
  %switch = icmp ult i32 %type.off, 2
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @btrfs_qgroup_free_data(ptr noundef %inode, ptr noundef null, i64 noundef %file_offset, i64 noundef %num_bytes) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then.cleanup_crit_edge, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %call7 = tail call i32 @btrfs_qgroup_release_data(ptr noundef %inode, i64 noundef %file_offset, i64 noundef %num_bytes) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.else.cleanup_crit_edge, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %ret.0 = phi i32 [ %call7, %if.else.if.end11_crit_edge ], [ 0, %if.then.if.end11_crit_edge ]
  %4 = load ptr, ptr @btrfs_ordered_extent_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3392) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %file_offset, ptr %call.i, align 8
  %disk_bytenr16 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %disk_bytenr16 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %disk_bytenr, ptr %disk_bytenr16, align 8
  %num_bytes17 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %num_bytes17 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %num_bytes, ptr %num_bytes17, align 8
  %disk_num_bytes18 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %disk_num_bytes18 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %disk_num_bytes, ptr %disk_num_bytes18, align 8
  %bytes_left = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %bytes_left to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %num_bytes, ptr %bytes_left, align 8
  %vfs_inode = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37
  %call19 = tail call ptr @igrab(ptr noundef %vfs_inode) #10
  %inode20 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 11
  %10 = ptrtoint ptr %inode20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call19, ptr %inode20, align 8
  %compress_type21 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 8
  %11 = ptrtoint ptr %compress_type21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %compress_type, ptr %compress_type21, align 4
  %truncated_len = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %truncated_len to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %truncated_len, align 8
  %qgroup_rsv = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 9
  %13 = ptrtoint ptr %qgroup_rsv to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %ret.0, ptr %qgroup_rsv, align 8
  %physical = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 21
  %14 = ptrtoint ptr %physical to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %physical, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %switch148 = icmp ult i32 %type, 4
  br i1 %switch148, label %cond.end, label %cond.false, !prof !86

cond.false:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.18, i32 noundef 197) #13
  unreachable

cond.end:                                         ; preds = %if.end14
  %flags = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 7
  tail call void @_set_bit(i32 noundef %type, ptr noundef %flags) #10
  %ordered_bytes = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 96
  %delalloc_batch = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 98
  %15 = ptrtoint ptr %delalloc_batch to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delalloc_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %ordered_bytes, i64 noundef %num_bytes, i32 noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dio)
  %tobool30.not = icmp eq i32 %dio, 0
  br i1 %tobool30.not, label %cond.end.if.end33_crit_edge, label %if.then31

cond.end.if.end33_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then31:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #10
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %cond.end.if.end33_crit_edge
  %refs = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #10
  %17 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %refs, align 4
  %wait = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 14
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.19, ptr noundef nonnull @__btrfs_add_ordered_extent.__key) #10
  %list = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 12
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 12, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list, ptr %prev.i, align 8
  %log_list = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 13
  %20 = ptrtoint ptr %log_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %log_list, ptr %log_list, align 4
  %prev.i149 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 13, i32 1
  %21 = ptrtoint ptr %prev.i149 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %log_list, ptr %prev.i149, align 8
  %root_extent_list = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 16
  %22 = ptrtoint ptr %root_extent_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %root_extent_list, ptr %root_extent_list, align 4
  %prev.i150 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 16, i32 1
  %23 = ptrtoint ptr %prev.i150 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %root_extent_list, ptr %prev.i150, align 8
  %work_list = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 20
  %24 = ptrtoint ptr %work_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %work_list, ptr %work_list, align 4
  %prev.i151 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 20, i32 1
  %25 = ptrtoint ptr %prev.i151 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %work_list, ptr %prev.i151, align 8
  %completion = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 18
  %26 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 18, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_completion.__key) #10
  tail call fastcc void @trace_btrfs_ordered_extent_add(ptr noundef %inode, ptr noundef nonnull %call.i)
  tail call void @_raw_spin_lock_irq(ptr noundef %ordered_tree) #10
  %tree34 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8, i32 1
  %rb_node = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 15
  %27 = ptrtoint ptr %tree34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tree34, align 4
  %tobool.not22.i = icmp eq ptr %28, null
  br i1 %tobool.not22.i, label %if.end33.if.end47_crit_edge, label %if.end33.while.body.i_crit_edge

if.end33.while.body.i_crit_edge:                  ; preds = %if.end33
  br label %while.body.i

if.end33.if.end47_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.end33.while.body.i_crit_edge
  %29 = phi ptr [ %36, %if.end6.i.while.body.i_crit_edge ], [ %28, %if.end33.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %29, i32 -144
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %file_offset)
  %cmp.i = icmp ugt i64 %31, %file_offset
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  %num_bytes.i.i = getelementptr i8, ptr %29, i32 -128
  %32 = ptrtoint ptr %num_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %num_bytes.i.i, align 8
  %34 = tail call i64 @llvm.uadd.sat.i64(i64 %31, i64 %33) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %file_offset)
  %cmp3.not.i = icmp ugt i64 %34, %file_offset
  br i1 %cmp3.not.i, label %do.body38, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %35 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast.le.i = ptrtoint ptr %29 to i32
  br label %if.end47

do.body38:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, i32, i32, ptr, ...) @__btrfs_panic(ptr noundef %3, ptr noundef nonnull @__func__.__btrfs_add_ordered_extent, i32 noundef 223, i32 noundef -17, ptr noundef nonnull @.str.20, i64 noundef %file_offset) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ordered-data.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #10, !srcloc !87
  unreachable

if.end47:                                         ; preds = %while.cond.while.end_crit_edge.i, %if.end33.if.end47_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end33.if.end47_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %tree34, %if.end33.if.end47_crit_edge ]
  %37 = ptrtoint ptr %rb_node to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %parent.0.lcssa.i, ptr %rb_node, align 8
  %rb_right.i.i = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 15, i32 1
  %38 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call.i, i32 0, i32 15, i32 2
  %39 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %rb_left.i.i, align 8
  %40 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %rb_node, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %rb_node, ptr noundef %tree34) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %ordered_tree) #10
  %ordered_extent_lock = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 45
  tail call void @_raw_spin_lock(ptr noundef %ordered_extent_lock) #10
  %ordered_extents = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 46
  %prev.i152 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 46, i32 1
  %41 = ptrtoint ptr %prev.i152 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i152, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %root_extent_list, ptr noundef %42, ptr noundef %ordered_extents) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end47.list_add_tail.exit_crit_edge

if.end47.list_add_tail.exit_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %prev.i152 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %root_extent_list, ptr %prev.i152, align 4
  %44 = ptrtoint ptr %root_extent_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %ordered_extents, ptr %root_extent_list, align 4
  %45 = ptrtoint ptr %prev.i150 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev.i150, align 8
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %root_extent_list, ptr %42, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end47.list_add_tail.exit_crit_edge
  %nr_ordered_extents = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 48
  %47 = ptrtoint ptr %nr_ordered_extents to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %nr_ordered_extents, align 8
  %inc = add i64 %48, 1
  store i64 %inc, ptr %nr_ordered_extents, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %cmp51 = icmp eq i64 %48, 0
  br i1 %cmp51, label %if.then52, label %list_add_tail.exit.if.end76_crit_edge

list_add_tail.exit.if.end76_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then52:                                        ; preds = %list_add_tail.exit
  %ordered_root_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 71
  tail call void @_raw_spin_lock(ptr noundef %ordered_root_lock) #10
  %ordered_root = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 47
  %49 = ptrtoint ptr %ordered_root to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %ordered_root, align 4
  %cmp.i153.not = icmp eq ptr %50, %ordered_root
  br i1 %cmp.i153.not, label %do.end73, label %do.body65, !prof !88

do.body65:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ordered-data.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 232, 0\0A.popsection", ""() #10, !srcloc !89
  unreachable

do.end73:                                         ; preds = %if.then52
  %ordered_roots = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 72
  %prev.i154 = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 72, i32 1
  %51 = ptrtoint ptr %prev.i154 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i154, align 4
  %call.i.i155 = tail call zeroext i1 @__list_add_valid(ptr noundef %ordered_root, ptr noundef %52, ptr noundef %ordered_roots) #10
  br i1 %call.i.i155, label %if.end.i.i157, label %do.end73.list_add_tail.exit158_crit_edge

do.end73.list_add_tail.exit158_crit_edge:         ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit158

if.end.i.i157:                                    ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %prev.i154 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %ordered_root, ptr %prev.i154, align 4
  %54 = ptrtoint ptr %ordered_root to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %ordered_roots, ptr %ordered_root, align 4
  %prev3.i.i156 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 47, i32 1
  %55 = ptrtoint ptr %prev3.i.i156 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i156, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %ordered_root, ptr %52, align 4
  br label %list_add_tail.exit158

list_add_tail.exit158:                            ; preds = %if.end.i.i157, %do.end73.list_add_tail.exit158_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ordered_root_lock) #10
  br label %if.end76

if.end76:                                         ; preds = %list_add_tail.exit158, %list_add_tail.exit.if.end76_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ordered_extent_lock) #10
  %lock78 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock78) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %57 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i159 = icmp eq i32 %57, 0
  br i1 %tobool.not.i159, label %if.end76.if.end.i_crit_edge, label %land.rhs.i

if.end76.if.end.i_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end76
  %dep_map.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i.i160 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i160)
  %cmp.not.i = icmp eq i32 %call.i.i160, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !90

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 313, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end76.if.end.i_crit_edge
  %outstanding_extents.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 29
  %58 = ptrtoint ptr %outstanding_extents.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %outstanding_extents.i, align 8
  %add.i = add i32 %59, 1
  store i32 %add.i, ptr %outstanding_extents.i, align 8
  %60 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %inode, align 8
  %fs_info.i.i = getelementptr inbounds %struct.btrfs_root, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fs_info.i.i, align 8
  %tree_root.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %tree_root.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tree_root.i.i, align 4
  %cmp.i.i = icmp eq ptr %61, %65
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.btrfs_is_free_space_inode.exit.i_crit_edge

if.end.i.btrfs_is_free_space_inode.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_is_free_space_inode.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %location.i.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %66 = ptrtoint ptr %location.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %67 = load i64, ptr %location.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %67)
  %tobool.not.i.i.i = icmp eq i64 %67, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

land.lhs.true.i.i.if.then.i.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true.i.i
  %type.i.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %69)
  %cmp.i.i.i = icmp eq i8 %69, -124
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge

lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_ino.exit.i.i

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %land.lhs.true.i.i.if.then.i.i.i_crit_edge
  %i_ino.i.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %70 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %i_ino.i.i.i, align 8
  %conv3.i.i.i = zext i32 %71 to i64
  br label %btrfs_ino.exit.i.i

btrfs_ino.exit.i.i:                               ; preds = %if.then.i.i.i, %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge
  %ino.0.i.i.i = phi i64 [ %conv3.i.i.i, %if.then.i.i.i ], [ %67, %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %ino.0.i.i.i)
  %cmp2.not.i.i = icmp eq i64 %ino.0.i.i.i, 1
  br i1 %cmp2.not.i.i, label %btrfs_ino.exit.i.i.btrfs_is_free_space_inode.exit.i_crit_edge, label %btrfs_ino.exit.i.i.btrfs_mod_outstanding_extents.exit_crit_edge

btrfs_ino.exit.i.i.btrfs_mod_outstanding_extents.exit_crit_edge: ; preds = %btrfs_ino.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_mod_outstanding_extents.exit

btrfs_ino.exit.i.i.btrfs_is_free_space_inode.exit.i_crit_edge: ; preds = %btrfs_ino.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_is_free_space_inode.exit.i

btrfs_is_free_space_inode.exit.i:                 ; preds = %btrfs_ino.exit.i.i.btrfs_is_free_space_inode.exit.i_crit_edge, %if.end.i.btrfs_is_free_space_inode.exit.i_crit_edge
  %location.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %72 = ptrtoint ptr %location.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %73 = load i64, ptr %location.i.i, align 4
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values)
  switch i64 %73, label %lor.lhs.false.i.i [
    i64 -12, label %btrfs_is_free_space_inode.exit.i.btrfs_mod_outstanding_extents.exit_crit_edge
    i64 0, label %btrfs_is_free_space_inode.exit.i.if.then.i.i_crit_edge
  ]

btrfs_is_free_space_inode.exit.i.if.then.i.i_crit_edge: ; preds = %btrfs_is_free_space_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

btrfs_is_free_space_inode.exit.i.btrfs_mod_outstanding_extents.exit_crit_edge: ; preds = %btrfs_is_free_space_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_mod_outstanding_extents.exit

lor.lhs.false.i.i:                                ; preds = %btrfs_is_free_space_inode.exit.i
  %type.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %74 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %75)
  %cmp.i35.i = icmp eq i8 %75, -124
  br i1 %cmp.i35.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge

lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_ino.exit.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %btrfs_is_free_space_inode.exit.i.if.then.i.i_crit_edge
  %i_ino.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  %76 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %i_ino.i.i, align 8
  %conv3.i.i = zext i32 %77 to i64
  br label %btrfs_ino.exit.i

btrfs_ino.exit.i:                                 ; preds = %if.then.i.i, %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge
  %ino.0.i.i = phi i64 [ %conv3.i.i, %if.then.i.i ], [ %73, %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge ]
  tail call fastcc void @trace_btrfs_inode_mod_outstanding_extents(ptr noundef %61, i64 noundef %ino.0.i.i, i32 noundef 1) #10
  br label %btrfs_mod_outstanding_extents.exit

btrfs_mod_outstanding_extents.exit:               ; preds = %btrfs_ino.exit.i, %btrfs_is_free_space_inode.exit.i.btrfs_mod_outstanding_extents.exit_crit_edge, %btrfs_ino.exit.i.i.btrfs_mod_outstanding_extents.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock78) #10
  br label %cleanup

cleanup:                                          ; preds = %btrfs_mod_outstanding_extents.exit, %if.end11.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %btrfs_mod_outstanding_extents.exit ], [ %call, %if.then.cleanup_crit_edge ], [ %call7, %if.else.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_add_ordered_extent_dio(ptr noundef %inode, i64 noundef %file_offset, i64 noundef %disk_bytenr, i64 noundef %num_bytes, i64 noundef %disk_num_bytes, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %switch = icmp ult i32 %type, 3
  br i1 %switch, label %cond.end, label %cond.false.critedge

cond.false.critedge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 268) #13
  unreachable

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @__btrfs_add_ordered_extent(ptr noundef %inode, i64 noundef %file_offset, i64 noundef %disk_bytenr, i64 noundef %num_bytes, i64 noundef %disk_num_bytes, i32 noundef %type, i32 noundef 1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_add_ordered_extent_compress(ptr noundef %inode, i64 noundef %file_offset, i64 noundef %disk_bytenr, i64 noundef %num_bytes, i64 noundef %disk_num_bytes, i32 noundef %compress_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %compress_type)
  %cmp.not = icmp eq i32 %compress_type, 0
  br i1 %cmp.not, label %cond.false, label %cond.end, !prof !90

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 278) #13
  unreachable

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @__btrfs_add_ordered_extent(ptr noundef %inode, i64 noundef %file_offset, i64 noundef %disk_bytenr, i64 noundef %num_bytes, i64 noundef %disk_num_bytes, i32 noundef 3, i32 noundef 0, i32 noundef %compress_type)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_add_ordered_sum(ptr noundef %entry1, ptr noundef %sum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %inode = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 11
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %ordered_tree = getelementptr i8, ptr %1, i32 -428
  tail call void @_raw_spin_lock_irq(ptr noundef %ordered_tree) #10
  %list = getelementptr inbounds %struct.btrfs_ordered_sum, ptr %sum, i32 0, i32 2
  %list2 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %3, ptr noundef %list2) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list2, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_ordered_sum, ptr %sum, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %ordered_tree) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_mark_ordered_io_finished(ptr noundef %inode, ptr noundef %page, i64 noundef %file_offset, i64 noundef %num_bytes, ptr noundef %finish_func, i1 noundef zeroext %uptodate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ordered_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 8
  %tree_root.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tree_root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tree_root.i, align 4
  %cmp.i = icmp eq ptr %1, %5
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.btrfs_is_free_space_inode.exit_crit_edge

entry.btrfs_is_free_space_inode.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_ino.exit.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %cmp2.not.i, label %btrfs_ino.exit.i.btrfs_is_free_space_inode.exit_crit_edge, label %btrfs_ino.exit.i.btrfs_is_free_space_inode.exit.thread_crit_edge

btrfs_ino.exit.i.btrfs_is_free_space_inode.exit.thread_crit_edge: ; preds = %btrfs_ino.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_is_free_space_inode.exit.thread

btrfs_ino.exit.i.btrfs_is_free_space_inode.exit_crit_edge: ; preds = %btrfs_ino.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_is_free_space_inode.exit

btrfs_is_free_space_inode.exit:                   ; preds = %btrfs_ino.exit.i.btrfs_is_free_space_inode.exit_crit_edge, %entry.btrfs_is_free_space_inode.exit_crit_edge
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %12 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -12, i64 %13)
  %cmp3.i = icmp eq i64 %13, -12
  %endio_write_workers = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 84
  br i1 %cmp3.i, label %btrfs_is_free_space_inode.exit.btrfs_is_free_space_inode.exit.thread_crit_edge, label %btrfs_is_free_space_inode.exit._crit_edge

btrfs_is_free_space_inode.exit._crit_edge:        ; preds = %btrfs_is_free_space_inode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %14

btrfs_is_free_space_inode.exit.btrfs_is_free_space_inode.exit.thread_crit_edge: ; preds = %btrfs_is_free_space_inode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_is_free_space_inode.exit.thread

btrfs_is_free_space_inode.exit.thread:            ; preds = %btrfs_is_free_space_inode.exit.btrfs_is_free_space_inode.exit.thread_crit_edge, %btrfs_ino.exit.i.btrfs_is_free_space_inode.exit.thread_crit_edge
  %endio_freespace_worker245 = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 85
  br label %14

14:                                               ; preds = %btrfs_is_free_space_inode.exit.thread, %btrfs_is_free_space_inode.exit._crit_edge
  %15 = phi ptr [ %endio_freespace_worker245, %btrfs_is_free_space_inode.exit.thread ], [ %endio_write_workers, %btrfs_is_free_space_inode.exit._crit_edge ]
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %wq.0 = load ptr, ptr %15, align 4
  %tobool.not = icmp eq ptr %page, null
  br i1 %tobool.not, label %.do.body12_crit_edge, label %if.then3

.do.body12_crit_edge:                             ; preds = %14
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = add i64 %num_bytes, %file_offset
  br label %do.body12

if.then3:                                         ; preds = %14
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mapping, align 4
  %tobool4.not = icmp eq ptr %18, null
  br i1 %tobool4.not, label %if.then3.cond.false_crit_edge, label %land.lhs.true, !prof !90

if.then3.cond.false_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then3
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %20 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %file_offset)
  %cmp.not = icmp ugt i64 %shl.i, %file_offset
  br i1 %cmp.not, label %land.lhs.true.cond.false_crit_edge, label %land.rhs, !prof !90

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.rhs:                                         ; preds = %land.lhs.true
  %add = add i64 %num_bytes, %file_offset
  %add7 = add nuw nsw i64 %shl.i, 4096
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add7)
  %cmp8.not = icmp ugt i64 %add, %add7
  br i1 %cmp8.not, label %land.rhs.cond.false_crit_edge, label %land.rhs.do.body12_crit_edge, !prof !90

land.rhs.do.body12_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then3.cond.false_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 336) #13
  unreachable

do.body12:                                        ; preds = %land.rhs.do.body12_crit_edge, %.do.body12_crit_edge
  %add18.pre-phi = phi i64 [ %.pre, %.do.body12_crit_edge ], [ %add, %land.rhs.do.body12_crit_edge ]
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ordered_tree) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %add18.pre-phi, i64 %file_offset)
  %cmp19263 = icmp ugt i64 %add18.pre-phi, %file_offset
  br i1 %cmp19263, label %while.body.lr.ph, label %do.body12.while.end_crit_edge

do.body12.while.end_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.body12
  %tree1.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8, i32 1
  %last.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8, i32 2
  %location.i235 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 1, i32 1
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 11
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %flags.0268 = phi i32 [ %call15, %while.body.lr.ph ], [ %flags.2, %cleanup.while.body_crit_edge ]
  %cur.0264 = phi i64 [ %file_offset, %while.body.lr.ph ], [ %cur.1, %cleanup.while.body_crit_edge ]
  %21 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %last.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %while.body.if.end9.i_crit_edge, label %if.then.i

while.body.if.end9.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then.i:                                        ; preds = %while.body
  %add.ptr.i = getelementptr i8, ptr %22, i32 -144
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %cur.0264)
  %cmp.not.i = icmp ugt i64 %24, %cur.0264
  br i1 %cmp.not.i, label %if.then.i.if.end9.i_crit_edge, label %land.lhs.true.i230

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

land.lhs.true.i230:                               ; preds = %if.then.i
  %num_bytes.i = getelementptr i8, ptr %22, i32 -128
  %25 = ptrtoint ptr %num_bytes.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %num_bytes.i, align 8
  %add.i = add i64 %26, %24
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %cur.0264)
  %cmp6.i = icmp ugt i64 %add.i, %cur.0264
  br i1 %cmp6.i, label %land.lhs.true.i230.if.end24_crit_edge, label %land.lhs.true.i230.if.end9.i_crit_edge

land.lhs.true.i230.if.end9.i_crit_edge:           ; preds = %land.lhs.true.i230
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

land.lhs.true.i230.if.end24_crit_edge:            ; preds = %land.lhs.true.i230
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end9.i:                                        ; preds = %land.lhs.true.i230.if.end9.i_crit_edge, %if.then.i.if.end9.i_crit_edge, %while.body.if.end9.i_crit_edge
  %27 = ptrtoint ptr %tree1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %n.083.i.i = load ptr, ptr %tree1.i, align 4
  %tobool.not84.i.i = icmp eq ptr %n.083.i.i, null
  br i1 %tobool.not84.i.i, label %if.end9.i.while.cond10.i.i.preheader_crit_edge, label %if.end9.i.while.body.i.i_crit_edge

if.end9.i.while.body.i.i_crit_edge:               ; preds = %if.end9.i
  br label %while.body.i.i

if.end9.i.while.cond10.i.i.preheader_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond10.i.i.preheader

while.body.i.i:                                   ; preds = %if.end6.i.i.while.body.i.i_crit_edge, %if.end9.i.while.body.i.i_crit_edge
  %n.085.i.i = phi ptr [ %n.0.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %n.083.i.i, %if.end9.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %n.085.i.i, i32 -144
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %cur.0264)
  %cmp.i.i231 = icmp ugt i64 %29, %cur.0264
  br i1 %cmp.i.i231, label %if.then.i.i232, label %if.else.i.i

if.then.i.i232:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.085.i.i, i32 0, i32 2
  br label %if.end6.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %num_bytes.i.i.i = getelementptr i8, ptr %n.085.i.i, i32 -128
  %30 = ptrtoint ptr %num_bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %num_bytes.i.i.i, align 8
  %32 = tail call i64 @llvm.uadd.sat.i64(i64 %29, i64 %31) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %cur.0264)
  %cmp3.not.i.i = icmp ugt i64 %32, %cur.0264
  br i1 %cmp3.not.i.i, label %if.else.i.i.if.then14.i_crit_edge, label %if.then4.i.i

if.else.i.i.if.then14.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.085.i.i, i32 0, i32 1
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.then.i.i232
  %n.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i232 ], [ %rb_right.i.i, %if.then4.i.i ]
  %33 = ptrtoint ptr %n.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %n.0.i.i = load ptr, ptr %n.1.in.i.i, align 4
  %tobool.not.i.i233 = icmp eq ptr %n.0.i.i, null
  br i1 %tobool.not.i.i233, label %while.end.i.i.loopexit, label %if.end6.i.i.while.body.i.i_crit_edge

if.end6.i.i.while.body.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.end.i.i.loopexit:                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.le = getelementptr i8, ptr %n.085.i.i, i32 -144
  br label %while.cond10.i.i.preheader

while.cond10.i.i.preheader:                       ; preds = %while.end.i.i.loopexit, %if.end9.i.while.cond10.i.i.preheader_crit_edge
  %prev_entry.1.i.i.ph = phi ptr [ %add.ptr.i.i.le, %while.end.i.i.loopexit ], [ null, %if.end9.i.while.cond10.i.i.preheader_crit_edge ]
  %prev.1.i.i.ph = phi ptr [ %n.085.i.i, %while.end.i.i.loopexit ], [ null, %if.end9.i.while.cond10.i.i.preheader_crit_edge ]
  br label %while.cond10.i.i

while.cond10.i.i:                                 ; preds = %if.end18.i.i.while.cond10.i.i_crit_edge, %while.cond10.i.i.preheader
  %prev_entry.1.i.i = phi ptr [ %add.ptr21.i.i, %if.end18.i.i.while.cond10.i.i_crit_edge ], [ %prev_entry.1.i.i.ph, %while.cond10.i.i.preheader ]
  %prev.1.i.i = phi ptr [ %call15.i.i, %if.end18.i.i.while.cond10.i.i_crit_edge ], [ %prev.1.i.i.ph, %while.cond10.i.i.preheader ]
  %tobool11.not.i.i = icmp eq ptr %prev.1.i.i, null
  br i1 %tobool11.not.i.i, label %while.cond10.i.i.while.end_crit_edge, label %land.rhs.i.i

while.cond10.i.i.while.end_crit_edge:             ; preds = %while.cond10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.i.i:                                     ; preds = %while.cond10.i.i
  %34 = ptrtoint ptr %prev_entry.1.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %prev_entry.1.i.i, align 8
  %num_bytes.i77.i.i = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %prev_entry.1.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %num_bytes.i77.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %num_bytes.i77.i.i, align 8
  %38 = tail call i64 @llvm.uadd.sat.i64(i64 %35, i64 %37) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %cur.0264)
  %cmp13.not.i.i = icmp ugt i64 %38, %cur.0264
  br i1 %cmp13.not.i.i, label %land.rhs.i.i.land.rhs35.i.i.preheader_crit_edge, label %while.body14.i.i

land.rhs.i.i.land.rhs35.i.i.preheader_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i.preheader

while.body14.i.i:                                 ; preds = %land.rhs.i.i
  %call15.i.i = tail call ptr @rb_next(ptr noundef nonnull %prev.1.i.i) #10
  %tobool16.not.i.i = icmp eq ptr %call15.i.i, null
  br i1 %tobool16.not.i.i, label %while.body14.i.i.land.rhs35.i.i.preheader_crit_edge, label %if.end18.i.i

while.body14.i.i.land.rhs35.i.i.preheader_crit_edge: ; preds = %while.body14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i.preheader

if.end18.i.i:                                     ; preds = %while.body14.i.i
  %add.ptr21.i.i = getelementptr i8, ptr %call15.i.i, i32 -144
  %39 = ptrtoint ptr %add.ptr21.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %add.ptr21.i.i, align 8
  %num_bytes.i78.i.i = getelementptr i8, ptr %call15.i.i, i32 -128
  %41 = ptrtoint ptr %num_bytes.i78.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %num_bytes.i78.i.i, align 8
  %43 = tail call i64 @llvm.uadd.sat.i64(i64 %40, i64 %42) #10
  %cmp23.i.i = icmp ugt i64 %43, %cur.0264
  br i1 %cmp23.i.i, label %if.end18.i.i.land.rhs35.i.i.preheader_crit_edge, label %if.end18.i.i.while.cond10.i.i_crit_edge

if.end18.i.i.while.cond10.i.i_crit_edge:          ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond10.i.i

if.end18.i.i.land.rhs35.i.i.preheader_crit_edge:  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i.preheader

land.rhs35.i.i.preheader:                         ; preds = %if.end18.i.i.land.rhs35.i.i.preheader_crit_edge, %while.body14.i.i.land.rhs35.i.i.preheader_crit_edge, %land.rhs.i.i.land.rhs35.i.i.preheader_crit_edge
  br label %land.rhs35.i.i

land.rhs35.i.i:                                   ; preds = %while.body39.i.i.land.rhs35.i.i_crit_edge, %land.rhs35.i.i.preheader
  %call40.sink.i.i = phi ptr [ %call40.i.i, %while.body39.i.i.land.rhs35.i.i_crit_edge ], [ %prev.1.i.i, %land.rhs35.i.i.preheader ]
  %add.ptr46.i.i = getelementptr i8, ptr %call40.sink.i.i, i32 -144
  %44 = ptrtoint ptr %add.ptr46.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %add.ptr46.i.i, align 8
  %num_bytes.i79.i.i = getelementptr i8, ptr %call40.sink.i.i, i32 -128
  %46 = ptrtoint ptr %num_bytes.i79.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %num_bytes.i79.i.i, align 8
  %48 = tail call i64 @llvm.uadd.sat.i64(i64 %45, i64 %47) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %cur.0264)
  %cmp37.i.i = icmp ugt i64 %48, %cur.0264
  br i1 %cmp37.i.i, label %while.body39.i.i, label %land.rhs35.i.i.if.then14.i_crit_edge

land.rhs35.i.i.if.then14.i_crit_edge:             ; preds = %land.rhs35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

while.body39.i.i:                                 ; preds = %land.rhs35.i.i
  %call40.i.i = tail call ptr @rb_prev(ptr noundef nonnull %call40.sink.i.i) #10
  %tobool41.not.i.i = icmp eq ptr %call40.i.i, null
  br i1 %tobool41.not.i.i, label %while.body39.i.i.if.then14.i_crit_edge, label %while.body39.i.i.land.rhs35.i.i_crit_edge

while.body39.i.i.land.rhs35.i.i_crit_edge:        ; preds = %while.body39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i

while.body39.i.i.if.then14.i_crit_edge:           ; preds = %while.body39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

if.then14.i:                                      ; preds = %while.body39.i.i.if.then14.i_crit_edge, %land.rhs35.i.i.if.then14.i_crit_edge, %if.else.i.i.if.then14.i_crit_edge
  %ret.0.ph.i = phi ptr [ %call40.sink.i.i, %land.rhs35.i.i.if.then14.i_crit_edge ], [ %call40.sink.i.i, %while.body39.i.i.if.then14.i_crit_edge ], [ %n.085.i.i, %if.else.i.i.if.then14.i_crit_edge ]
  %49 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %ret.0.ph.i, ptr %last.i, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then14.i, %land.lhs.true.i230.if.end24_crit_edge
  %retval.0.i234.ph = phi ptr [ %ret.0.ph.i, %if.then14.i ], [ %22, %land.lhs.true.i230.if.end24_crit_edge ]
  %add.ptr = getelementptr i8, ptr %retval.0.i234.ph, i32 -144
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %add.ptr, align 8
  %num_bytes27 = getelementptr i8, ptr %retval.0.i234.ph, i32 -128
  %52 = ptrtoint ptr %num_bytes27 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %num_bytes27, align 8
  %add28 = add i64 %53, %51
  call void @__sanitizer_cov_trace_cmp8(i64 %cur.0264, i64 %add28)
  %cmp29.not = icmp ult i64 %cur.0264, %add28
  br i1 %cmp29.not, label %if.end40, label %if.then31

if.then31:                                        ; preds = %if.end24
  %call32 = tail call ptr @rb_next(ptr noundef nonnull %retval.0.i234.ph) #10
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.then31.while.end_crit_edge, label %if.end35

if.then31.while.end_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end35:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr38 = getelementptr i8, ptr %call32, i32 -144
  %54 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %add.ptr38, align 8
  br label %cleanup

if.end40:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_cmp8(i64 %cur.0264, i64 %51)
  %cmp42 = icmp ult i64 %cur.0264, %51
  br i1 %cmp42, label %if.end40.cleanup_crit_edge, label %if.end46

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %if.end40
  %56 = tail call i64 @llvm.umin.i64(i64 %add28, i64 %add18.pre-phi)
  %sub58 = sub i64 %56, %cur.0264
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %sub58)
  %cmp59 = icmp ult i64 %sub58, 4294967295
  br i1 %cmp59, label %cond.end69, label %cond.false68, !prof !88

cond.false68:                                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.4, i32 noundef 387) #13
  unreachable

cond.end69:                                       ; preds = %if.end46
  %conv72 = trunc i64 %sub58 to i32
  br i1 %tobool.not, label %cond.end69.if.end80_crit_edge, label %if.then74

cond.end69.if.end80_crit_edge:                    ; preds = %cond.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then74:                                        ; preds = %cond.end69
  %call75 = tail call zeroext i1 @btrfs_page_test_ordered(ptr noundef %3, ptr noundef nonnull %page, i64 noundef %cur.0264, i32 noundef %conv72) #10
  br i1 %call75, label %if.end79, label %if.then74.cleanup_crit_edge

if.then74.cleanup_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end79:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @btrfs_page_clear_ordered(ptr noundef %3, ptr noundef nonnull %page, i64 noundef %cur.0264, i32 noundef %conv72) #10
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %cond.end69.if.end80_crit_edge
  %bytes_left = getelementptr i8, ptr %retval.0.i234.ph, i32 -112
  %57 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %bytes_left, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %sub58)
  %cmp82 = icmp ult i64 %58, %sub58
  br i1 %cmp82, label %do.end102, label %if.else122, !prof !90

do.end102:                                        ; preds = %if.end80
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 406, i32 noundef 9, ptr noundef null) #10
  %59 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %inode, align 8
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %root_key, align 1
  %63 = ptrtoint ptr %location.i235 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %location.i235, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %64)
  %tobool.not.i236 = icmp eq i64 %64, 0
  br i1 %tobool.not.i236, label %do.end102.if.then.i238_crit_edge, label %lor.lhs.false.i

do.end102.if.then.i238_crit_edge:                 ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i238

lor.lhs.false.i:                                  ; preds = %do.end102
  %65 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %66)
  %cmp.i237 = icmp eq i8 %66, -124
  br i1 %cmp.i237, label %lor.lhs.false.i.if.then.i238_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i238_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i238

if.then.i238:                                     ; preds = %lor.lhs.false.i.if.then.i238_crit_edge, %do.end102.if.then.i238_crit_edge
  %67 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %68 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i238, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i238 ], [ %64, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %69 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %add.ptr, align 8
  %71 = ptrtoint ptr %num_bytes27 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %num_bytes27, align 8
  %73 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %bytes_left, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %3, ptr noundef nonnull @.str.5, i64 noundef %62, i64 noundef %ino.0.i, i64 noundef %70, i64 noundef %72, i32 noundef %conv72, i64 noundef %74) #14
  br label %if.end126

if.else122:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %sub125 = sub i64 %58, %sub58
  br label %if.end126

if.end126:                                        ; preds = %if.else122, %btrfs_ino.exit
  %storemerge = phi i64 [ %sub125, %if.else122 ], [ 0, %btrfs_ino.exit ]
  %75 = ptrtoint ptr %bytes_left to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %storemerge, ptr %bytes_left, align 8
  br i1 %uptodate, label %if.end126.if.end130_crit_edge, label %if.then128

if.end126.if.end130_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

if.then128:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  %flags129 = getelementptr i8, ptr %retval.0.i234.ph, i32 -88
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags129) #10
  %76 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load8_noabort(i32 %76)
  %.pr = load i64, ptr %bytes_left, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.end126.if.end130_crit_edge
  %77 = phi i64 [ %.pr, %if.then128 ], [ %storemerge, %if.end126.if.end130_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %77)
  %cmp132 = icmp eq i64 %77, 0
  br i1 %cmp132, label %if.then134, label %if.end130.cleanup_crit_edge

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then134:                                       ; preds = %if.end130
  %flags135 = getelementptr i8, ptr %retval.0.i234.ph, i32 -88
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags135) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !91
  %head.i.i.i = getelementptr i8, ptr %retval.0.i234.ph, i32 -8
  %78 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.i.not.i = icmp eq ptr %79, %head.i.i.i
  br i1 %cmp.i.i.i.not.i, label %if.then134.cond_wake_up.exit_crit_edge, label %if.then.i240

if.then134.cond_wake_up.exit_crit_edge:           ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond_wake_up.exit

if.then.i240:                                     ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #12
  %wait = getelementptr i8, ptr %retval.0.i234.ph, i32 -52
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cond_wake_up.exit

cond_wake_up.exit:                                ; preds = %if.then.i240, %if.then134.cond_wake_up.exit_crit_edge
  %refs = getelementptr i8, ptr %retval.0.i234.ph, i32 -76
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #10
  %80 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #10, !srcloc !92
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %cond_wake_up.exit.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !90

cond_wake_up.exit.if.end15.sink.split.i.i.i_crit_edge: ; preds = %cond_wake_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %cond_wake_up.exit
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %81 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %.not.i.i.i = icmp sgt i32 %81, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !88

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %cond_wake_up.exit.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %cond_wake_up.exit.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ordered_tree, i32 noundef %flags.0268) #10
  %work = getelementptr i8, ptr %retval.0.i234.ph, i32 20
  tail call void @btrfs_init_work(ptr noundef %work, ptr noundef %finish_func, ptr noundef null, ptr noundef null) #10
  tail call void @btrfs_queue_work(ptr noundef %wq.0, ptr noundef %work) #10
  %call147 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ordered_tree) #10
  br label %cleanup

cleanup:                                          ; preds = %refcount_inc.exit, %if.end130.cleanup_crit_edge, %if.then74.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end35
  %cur.1 = phi i64 [ %55, %if.end35 ], [ %51, %if.end40.cleanup_crit_edge ], [ %56, %if.then74.cleanup_crit_edge ], [ %56, %refcount_inc.exit ], [ %56, %if.end130.cleanup_crit_edge ]
  %flags.2 = phi i32 [ %flags.0268, %if.end35 ], [ %flags.0268, %if.end40.cleanup_crit_edge ], [ %flags.0268, %if.then74.cleanup_crit_edge ], [ %call147, %refcount_inc.exit ], [ %flags.0268, %if.end130.cleanup_crit_edge ]
  %cmp19 = icmp ult i64 %cur.1, %add18.pre-phi
  br i1 %cmp19, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then31.while.end_crit_edge, %while.cond10.i.i.while.end_crit_edge, %do.body12.while.end_crit_edge
  %flags.0261 = phi i32 [ %call15, %do.body12.while.end_crit_edge ], [ %flags.0268, %while.cond10.i.i.while.end_crit_edge ], [ %flags.2, %cleanup.while.end_crit_edge ], [ %flags.0268, %if.then31.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ordered_tree, i32 noundef %flags.0261) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btrfs_page_test_ordered(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_page_clear_ordered(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_init_work(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_dec_test_ordered_pending(ptr noundef %inode, ptr noundef %cached, i64 noundef %file_offset, i64 noundef %io_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ordered_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ordered_tree) #10
  %tobool.not = icmp eq ptr %cached, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %cached to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cached, align 4
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.have_entry_crit_edge

land.lhs.true.have_entry_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %have_entry

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tree1.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8, i32 1
  %last.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %last.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.if.end9.i_crit_edge, label %if.then.i

if.end.if.end9.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then.i:                                        ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %3, i32 -144
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %file_offset)
  %cmp.not.i = icmp ugt i64 %5, %file_offset
  br i1 %cmp.not.i, label %if.then.i.if.end9.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %num_bytes.i = getelementptr i8, ptr %3, i32 -128
  %6 = ptrtoint ptr %num_bytes.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %num_bytes.i, align 8
  %add.i = add i64 %7, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %file_offset)
  %cmp6.i = icmp ugt i64 %add.i, %file_offset
  br i1 %cmp6.i, label %land.lhs.true.i.if.end10_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

land.lhs.true.i.if.end10_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then.i.if.end9.i_crit_edge, %if.end.if.end9.i_crit_edge
  %8 = ptrtoint ptr %tree1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %n.083.i.i = load ptr, ptr %tree1.i, align 4
  %tobool.not84.i.i = icmp eq ptr %n.083.i.i, null
  br i1 %tobool.not84.i.i, label %if.end9.i.while.cond10.i.i.preheader_crit_edge, label %if.end9.i.while.body.i.i_crit_edge

if.end9.i.while.body.i.i_crit_edge:               ; preds = %if.end9.i
  br label %while.body.i.i

if.end9.i.while.cond10.i.i.preheader_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond10.i.i.preheader

while.body.i.i:                                   ; preds = %if.end6.i.i.while.body.i.i_crit_edge, %if.end9.i.while.body.i.i_crit_edge
  %n.085.i.i = phi ptr [ %n.0.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %n.083.i.i, %if.end9.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %n.085.i.i, i32 -144
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %file_offset)
  %cmp.i.i = icmp ugt i64 %10, %file_offset
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.085.i.i, i32 0, i32 2
  br label %if.end6.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %num_bytes.i.i.i = getelementptr i8, ptr %n.085.i.i, i32 -128
  %11 = ptrtoint ptr %num_bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %num_bytes.i.i.i, align 8
  %13 = tail call i64 @llvm.uadd.sat.i64(i64 %10, i64 %12) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %file_offset)
  %cmp3.not.i.i = icmp ugt i64 %13, %file_offset
  br i1 %cmp3.not.i.i, label %if.else.i.i.if.then14.i_crit_edge, label %if.then4.i.i

if.else.i.i.if.then14.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.085.i.i, i32 0, i32 1
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.then.i.i
  %n.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then4.i.i ]
  %14 = ptrtoint ptr %n.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %n.0.i.i = load ptr, ptr %n.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %n.0.i.i, null
  br i1 %tobool.not.i.i, label %while.end.i.i.loopexit, label %if.end6.i.i.while.body.i.i_crit_edge

if.end6.i.i.while.body.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.end.i.i.loopexit:                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.le = getelementptr i8, ptr %n.085.i.i, i32 -144
  br label %while.cond10.i.i.preheader

while.cond10.i.i.preheader:                       ; preds = %while.end.i.i.loopexit, %if.end9.i.while.cond10.i.i.preheader_crit_edge
  %prev_entry.1.i.i.ph = phi ptr [ %add.ptr.i.i.le, %while.end.i.i.loopexit ], [ null, %if.end9.i.while.cond10.i.i.preheader_crit_edge ]
  %prev.1.i.i.ph = phi ptr [ %n.085.i.i, %while.end.i.i.loopexit ], [ null, %if.end9.i.while.cond10.i.i.preheader_crit_edge ]
  br label %while.cond10.i.i

while.cond10.i.i:                                 ; preds = %if.end18.i.i.while.cond10.i.i_crit_edge, %while.cond10.i.i.preheader
  %prev_entry.1.i.i = phi ptr [ %add.ptr21.i.i, %if.end18.i.i.while.cond10.i.i_crit_edge ], [ %prev_entry.1.i.i.ph, %while.cond10.i.i.preheader ]
  %prev.1.i.i = phi ptr [ %call15.i.i, %if.end18.i.i.while.cond10.i.i_crit_edge ], [ %prev.1.i.i.ph, %while.cond10.i.i.preheader ]
  %tobool11.not.i.i = icmp eq ptr %prev.1.i.i, null
  br i1 %tobool11.not.i.i, label %while.cond10.i.i.if.end42_crit_edge, label %land.rhs.i.i

while.cond10.i.i.if.end42_crit_edge:              ; preds = %while.cond10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

land.rhs.i.i:                                     ; preds = %while.cond10.i.i
  %15 = ptrtoint ptr %prev_entry.1.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %prev_entry.1.i.i, align 8
  %num_bytes.i77.i.i = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %prev_entry.1.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %num_bytes.i77.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %num_bytes.i77.i.i, align 8
  %19 = tail call i64 @llvm.uadd.sat.i64(i64 %16, i64 %18) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %file_offset)
  %cmp13.not.i.i = icmp ugt i64 %19, %file_offset
  br i1 %cmp13.not.i.i, label %land.rhs.i.i.land.rhs35.i.i.preheader_crit_edge, label %while.body14.i.i

land.rhs.i.i.land.rhs35.i.i.preheader_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i.preheader

while.body14.i.i:                                 ; preds = %land.rhs.i.i
  %call15.i.i = tail call ptr @rb_next(ptr noundef nonnull %prev.1.i.i) #10
  %tobool16.not.i.i = icmp eq ptr %call15.i.i, null
  br i1 %tobool16.not.i.i, label %while.body14.i.i.land.rhs35.i.i.preheader_crit_edge, label %if.end18.i.i

while.body14.i.i.land.rhs35.i.i.preheader_crit_edge: ; preds = %while.body14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i.preheader

if.end18.i.i:                                     ; preds = %while.body14.i.i
  %add.ptr21.i.i = getelementptr i8, ptr %call15.i.i, i32 -144
  %20 = ptrtoint ptr %add.ptr21.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr21.i.i, align 8
  %num_bytes.i78.i.i = getelementptr i8, ptr %call15.i.i, i32 -128
  %22 = ptrtoint ptr %num_bytes.i78.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %num_bytes.i78.i.i, align 8
  %24 = tail call i64 @llvm.uadd.sat.i64(i64 %21, i64 %23) #10
  %cmp23.i.i = icmp ugt i64 %24, %file_offset
  br i1 %cmp23.i.i, label %if.end18.i.i.land.rhs35.i.i.preheader_crit_edge, label %if.end18.i.i.while.cond10.i.i_crit_edge

if.end18.i.i.while.cond10.i.i_crit_edge:          ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond10.i.i

if.end18.i.i.land.rhs35.i.i.preheader_crit_edge:  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i.preheader

land.rhs35.i.i.preheader:                         ; preds = %if.end18.i.i.land.rhs35.i.i.preheader_crit_edge, %while.body14.i.i.land.rhs35.i.i.preheader_crit_edge, %land.rhs.i.i.land.rhs35.i.i.preheader_crit_edge
  br label %land.rhs35.i.i

land.rhs35.i.i:                                   ; preds = %while.body39.i.i.land.rhs35.i.i_crit_edge, %land.rhs35.i.i.preheader
  %call40.sink.i.i = phi ptr [ %call40.i.i, %while.body39.i.i.land.rhs35.i.i_crit_edge ], [ %prev.1.i.i, %land.rhs35.i.i.preheader ]
  %add.ptr46.i.i = getelementptr i8, ptr %call40.sink.i.i, i32 -144
  %25 = ptrtoint ptr %add.ptr46.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %add.ptr46.i.i, align 8
  %num_bytes.i79.i.i = getelementptr i8, ptr %call40.sink.i.i, i32 -128
  %27 = ptrtoint ptr %num_bytes.i79.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %num_bytes.i79.i.i, align 8
  %29 = tail call i64 @llvm.uadd.sat.i64(i64 %26, i64 %28) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %file_offset)
  %cmp37.i.i = icmp ugt i64 %29, %file_offset
  br i1 %cmp37.i.i, label %while.body39.i.i, label %land.rhs35.i.i.if.then14.i_crit_edge

land.rhs35.i.i.if.then14.i_crit_edge:             ; preds = %land.rhs35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

while.body39.i.i:                                 ; preds = %land.rhs35.i.i
  %call40.i.i = tail call ptr @rb_prev(ptr noundef nonnull %call40.sink.i.i) #10
  %tobool41.not.i.i = icmp eq ptr %call40.i.i, null
  br i1 %tobool41.not.i.i, label %while.body39.i.i.if.then14.i_crit_edge, label %while.body39.i.i.land.rhs35.i.i_crit_edge

while.body39.i.i.land.rhs35.i.i_crit_edge:        ; preds = %while.body39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i

while.body39.i.i.if.then14.i_crit_edge:           ; preds = %while.body39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

if.then14.i:                                      ; preds = %while.body39.i.i.if.then14.i_crit_edge, %land.rhs35.i.i.if.then14.i_crit_edge, %if.else.i.i.if.then14.i_crit_edge
  %ret.0.ph.i = phi ptr [ %call40.sink.i.i, %land.rhs35.i.i.if.then14.i_crit_edge ], [ %call40.sink.i.i, %while.body39.i.i.if.then14.i_crit_edge ], [ %n.085.i.i, %if.else.i.i.if.then14.i_crit_edge ]
  %30 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ret.0.ph.i, ptr %last.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then14.i, %land.lhs.true.i.if.end10_crit_edge
  %retval.0.i.ph = phi ptr [ %ret.0.ph.i, %if.then14.i ], [ %3, %land.lhs.true.i.if.end10_crit_edge ]
  %add.ptr = getelementptr i8, ptr %retval.0.i.ph, i32 -144
  br label %have_entry

have_entry:                                       ; preds = %if.end10, %land.lhs.true.have_entry_crit_edge
  %entry1.0 = phi ptr [ %add.ptr, %if.end10 ], [ %1, %land.lhs.true.have_entry_crit_edge ]
  %31 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %entry1.0, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %file_offset)
  %cmp13.not = icmp ugt i64 %32, %file_offset
  br i1 %cmp13.not, label %have_entry.if.end42_crit_edge, label %land.lhs.true15

have_entry.if.end42_crit_edge:                    ; preds = %have_entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

land.lhs.true15:                                  ; preds = %have_entry
  %num_bytes = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1.0, i32 0, i32 2
  %33 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %num_bytes, align 8
  %add = add i64 %34, %32
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %file_offset)
  %cmp17 = icmp ugt i64 %add, %file_offset
  br i1 %cmp17, label %if.end20, label %land.lhs.true15.if.end42_crit_edge

land.lhs.true15.if.end42_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end20:                                         ; preds = %land.lhs.true15
  %bytes_left = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1.0, i32 0, i32 4
  %35 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %bytes_left, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %io_size)
  %cmp21 = icmp ult i64 %36, %io_size
  br i1 %cmp21, label %if.then23, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %inode, align 8
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fs_info, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %40, ptr noundef nonnull @.str.6, i64 noundef %36, i64 noundef %io_size) #14
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20.if.end25_crit_edge
  %41 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %bytes_left, align 8
  %sub = sub i64 %42, %io_size
  store i64 %sub, ptr %bytes_left, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %io_size)
  %cmp28 = icmp eq i64 %42, %io_size
  br i1 %cmp28, label %if.then30, label %if.end25.if.end42_crit_edge

if.end25.if.end42_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then30:                                        ; preds = %if.end25
  %flags31 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1.0, i32 0, i32 7
  %call32 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %flags31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  %head.i.i = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1.0, i32 0, i32 14, i32 1
  %43 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %44, %head.i.i
  br i1 %cmp.i.i.not.i, label %if.then30.out_crit_edge, label %if.then.i71

if.then30.out_crit_edge:                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.i71:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %wait = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1.0, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %out

out:                                              ; preds = %if.then.i71, %if.then30.out_crit_edge
  %finished.0.off0.not = xor i1 %tobool33.not, true
  %brmerge = or i1 %tobool.not, %finished.0.off0.not
  %tobool40.not = icmp eq ptr %entry1.0, null
  %or.cond = or i1 %tobool40.not, %brmerge
  br i1 %or.cond, label %out.if.end42_crit_edge, label %if.then41

out.if.end42_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then41:                                        ; preds = %out
  %45 = ptrtoint ptr %cached to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %entry1.0, ptr %cached, align 4
  %refs = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1.0, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #10
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #10, !srcloc !92
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then41.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !90

if.then41.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then41
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %47 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %.not.i.i.i = icmp sgt i32 %47, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end42_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !88

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end42_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then41.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then41.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #10
  br label %if.end42

if.end42:                                         ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end42_crit_edge, %out.if.end42_crit_edge, %if.end25.if.end42_crit_edge, %land.lhs.true15.if.end42_crit_edge, %have_entry.if.end42_crit_edge, %while.cond10.i.i.if.end42_crit_edge
  %finished.0.off081 = phi i1 [ %tobool33.not, %out.if.end42_crit_edge ], [ %tobool33.not, %if.else.i.i.i.if.end42_crit_edge ], [ %tobool33.not, %if.end15.sink.split.i.i.i ], [ false, %if.end25.if.end42_crit_edge ], [ false, %land.lhs.true15.if.end42_crit_edge ], [ false, %have_entry.if.end42_crit_edge ], [ false, %while.cond10.i.i.if.end42_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ordered_tree, i32 noundef %call3) #10
  ret i1 %finished.0.off081
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_put_ordered_extent(ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %inode = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 11
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -864
  tail call fastcc void @trace_btrfs_ordered_extent_put(ptr noundef %add.ptr.i, ptr noundef %entry1)
  %refs = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #10, !srcloc !94
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end37_crit_edge, label %if.then10.i.i.i, !prof !88

if.end5.i.i.i.if.end37_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #10
  br label %if.end37

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  %root_extent_list = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 16
  %3 = ptrtoint ptr %root_extent_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %root_extent_list, align 4
  %cmp.i.not = icmp eq ptr %4, %root_extent_list
  br i1 %cmp.i.not, label %cond.end, label %cond.false, !prof !88

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.7, i32 noundef 519) #13
  unreachable

cond.end:                                         ; preds = %if.then
  %log_list = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 13
  %5 = ptrtoint ptr %log_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %log_list, align 4
  %cmp.i50.not = icmp eq ptr %6, %log_list
  br i1 %cmp.i50.not, label %cond.end16, label %cond.false15, !prof !88

cond.false15:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.8, i32 noundef 520) #13
  unreachable

cond.end16:                                       ; preds = %cond.end
  %rb_node = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 15
  %7 = ptrtoint ptr %rb_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rb_node, align 8
  %9 = ptrtoint ptr %rb_node to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp = icmp eq i32 %8, %9
  br i1 %cmp, label %cond.end26, label %cond.false25, !prof !88

cond.false25:                                     ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.9, i32 noundef 521) #13
  unreachable

cond.end26:                                       ; preds = %cond.end16
  %10 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %inode, align 8
  %tobool28.not = icmp eq ptr %11, null
  br i1 %tobool28.not, label %cond.end26.if.end_crit_edge, label %if.then29

cond.end26.if.end_crit_edge:                      ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then29:                                        ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @btrfs_add_delayed_iput(ptr noundef nonnull %11) #10
  br label %if.end

if.end:                                           ; preds = %if.then29, %cond.end26.if.end_crit_edge
  %list = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 12
  %12 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %list, align 4
  %cmp.i52.not54 = icmp eq ptr %13, %list
  br i1 %cmp.i52.not54, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.end.while.body_crit_edge
  %14 = phi ptr [ %24, %list_del.exit.while.body_crit_edge ], [ %13, %if.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %14, i32 -12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kvfree(ptr noundef %add.ptr) #10
  %23 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %list, align 4
  %cmp.i52.not = icmp eq ptr %24, %list
  br i1 %cmp.i52.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %25 = load ptr, ptr @btrfs_ordered_extent_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %25, ptr noundef %entry1) #10
  br label %if.end37

if.end37:                                         ; preds = %while.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end37_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_ordered_extent_put(ptr noundef %inode, ptr noundef %ordered) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_ordered_extent_put, i32 0, i32 1), ptr blockaddress(@trace_btrfs_ordered_extent_put, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !96

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !88

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !97
  %call42 = tail call i32 @__traceiter_btrfs_ordered_extent_put(ptr noundef null, ptr noundef %inode, ptr noundef %ordered) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  %13 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !88

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_ordered_extent_put, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_ordered_extent_put, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_ordered_extent_put.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_btrfs_ordered_extent_put.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 596, ptr noundef nonnull @.str.23) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %31 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
declare dso_local void @btrfs_add_delayed_iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_remove_ordered_extent(ptr noundef %btrfs_inode, ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %btrfs_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btrfs_inode, align 8
  %fs_info3 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fs_info3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info3, align 8
  %lock = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i.i93 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93)
  %cmp.not.i = icmp eq i32 %call.i.i93, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !90

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 313, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %outstanding_extents.i = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 29
  %5 = ptrtoint ptr %outstanding_extents.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %outstanding_extents.i, align 8
  %add.i = add i32 %6, -1
  store i32 %add.i, ptr %outstanding_extents.i, align 8
  %7 = ptrtoint ptr %btrfs_inode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %btrfs_inode, align 8
  %fs_info.i.i = getelementptr inbounds %struct.btrfs_root, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_info.i.i, align 8
  %tree_root.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %tree_root.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tree_root.i.i, align 4
  %cmp.i.i94 = icmp eq ptr %8, %12
  br i1 %cmp.i.i94, label %land.lhs.true.i.i, label %if.end.i.btrfs_is_free_space_inode.exit.i_crit_edge

if.end.i.btrfs_is_free_space_inode.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_is_free_space_inode.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %location.i.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 1
  %13 = ptrtoint ptr %location.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %location.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not.i.i.i = icmp eq i64 %14, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

land.lhs.true.i.i.if.then.i.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true.i.i
  %type.i.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %16)
  %cmp.i.i.i = icmp eq i8 %16, -124
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge

lor.lhs.false.i.i.i.btrfs_ino.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_ino.exit.i.i

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %land.lhs.true.i.i.if.then.i.i.i_crit_edge
  %i_ino.i.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 37, i32 11
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_mod_outstanding_extents.exit

btrfs_ino.exit.i.i.btrfs_is_free_space_inode.exit.i_crit_edge: ; preds = %btrfs_ino.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_is_free_space_inode.exit.i

btrfs_is_free_space_inode.exit.i:                 ; preds = %btrfs_ino.exit.i.i.btrfs_is_free_space_inode.exit.i_crit_edge, %if.end.i.btrfs_is_free_space_inode.exit.i_crit_edge
  %location.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 1
  %19 = ptrtoint ptr %location.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %location.i.i, align 4
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.27)
  switch i64 %20, label %lor.lhs.false.i.i [
    i64 -12, label %btrfs_is_free_space_inode.exit.i.btrfs_mod_outstanding_extents.exit_crit_edge
    i64 0, label %btrfs_is_free_space_inode.exit.i.if.then.i.i_crit_edge
  ]

btrfs_is_free_space_inode.exit.i.if.then.i.i_crit_edge: ; preds = %btrfs_is_free_space_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

btrfs_is_free_space_inode.exit.i.btrfs_mod_outstanding_extents.exit_crit_edge: ; preds = %btrfs_is_free_space_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_mod_outstanding_extents.exit

lor.lhs.false.i.i:                                ; preds = %btrfs_is_free_space_inode.exit.i
  %type.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %22)
  %cmp.i35.i = icmp eq i8 %22, -124
  br i1 %cmp.i35.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge

lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %btrfs_ino.exit.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %btrfs_is_free_space_inode.exit.i.if.then.i.i_crit_edge
  %i_ino.i.i = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 37, i32 11
  %23 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino.i.i, align 8
  %conv3.i.i = zext i32 %24 to i64
  br label %btrfs_ino.exit.i

btrfs_ino.exit.i:                                 ; preds = %if.then.i.i, %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge
  %ino.0.i.i = phi i64 [ %conv3.i.i, %if.then.i.i ], [ %20, %lor.lhs.false.i.i.btrfs_ino.exit.i_crit_edge ]
  tail call fastcc void @trace_btrfs_inode_mod_outstanding_extents(ptr noundef %8, i64 noundef %ino.0.i.i, i32 noundef -1) #10
  br label %btrfs_mod_outstanding_extents.exit

btrfs_mod_outstanding_extents.exit:               ; preds = %btrfs_ino.exit.i, %btrfs_is_free_space_inode.exit.i.btrfs_mod_outstanding_extents.exit_crit_edge, %btrfs_ino.exit.i.i.btrfs_mod_outstanding_extents.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 2
  %25 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tree_root, align 4
  %cmp.not = icmp eq ptr %1, %26
  br i1 %cmp.not, label %btrfs_mod_outstanding_extents.exit.if.end_crit_edge, label %if.then

btrfs_mod_outstanding_extents.exit.if.end_crit_edge: ; preds = %btrfs_mod_outstanding_extents.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %btrfs_mod_outstanding_extents.exit
  call void @__sanitizer_cov_trace_pc() #12
  %num_bytes = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 2
  %27 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %num_bytes, align 8
  tail call void @btrfs_delalloc_release_metadata(ptr noundef %btrfs_inode, i64 noundef %28, i1 noundef zeroext false) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %btrfs_mod_outstanding_extents.exit.if.end_crit_edge
  %ordered_bytes = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 96
  %num_bytes5 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 2
  %29 = ptrtoint ptr %num_bytes5 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %num_bytes5, align 8
  %sub = sub i64 0, %30
  %delalloc_batch = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 98
  %31 = ptrtoint ptr %delalloc_batch to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %delalloc_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %ordered_bytes, i64 noundef %sub, i32 noundef %32) #10
  %ordered_tree = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %ordered_tree) #10
  %rb_node = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 15
  %tree7 = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 8, i32 1
  tail call void @rb_erase(ptr noundef %rb_node, ptr noundef %tree7) #10
  %33 = ptrtoint ptr %rb_node to i32
  %34 = ptrtoint ptr %rb_node to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %rb_node, align 4
  %last = getelementptr inbounds %struct.btrfs_inode, ptr %btrfs_inode, i32 0, i32 8, i32 2
  %35 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %last, align 4
  %cmp8 = icmp eq ptr %36, %rb_node
  br i1 %cmp8, label %if.then9, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %last, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %flags = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags) #10
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %ordered_tree) #10
  br i1 %tobool.not, label %if.end11.if.end29_crit_edge, label %if.then15

if.end11.if.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then15:                                        ; preds = %if.end11
  %trans_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 57
  tail call void @_raw_spin_lock(ptr noundef %trans_lock) #10
  %running_transaction = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 37
  %38 = ptrtoint ptr %running_transaction to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %running_transaction, align 8
  %tobool16.not = icmp eq ptr %39, null
  br i1 %tobool16.not, label %cond.false.critedge, label %if.then17

if.then17:                                        ; preds = %if.then15
  %use_count = getelementptr inbounds %struct.btrfs_transaction, ptr %39, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %use_count, i32 1, i32 3, i32 1) #10
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_count, ptr %use_count, i32 1, ptr elementtype(i32) %use_count) #10, !srcloc !92
  %asmresult.i.i.i.i.i95 = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i95)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i95, 0
  br i1 %tobool1.not.i.i.i, label %if.then17.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !90

if.then17.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then17
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i95, 1
  %41 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i95
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %.not.i.i.i = icmp sgt i32 %41, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !88

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then17.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then17.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use_count, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #10
  %pending_ordered = getelementptr inbounds %struct.btrfs_transaction, ptr %39, i32 0, i32 25
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_ordered, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @llvm.prefetch.p0(ptr %pending_ordered, i32 1, i32 3, i32 1) #10
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_ordered, ptr %pending_ordered, i32 1, ptr elementtype(i32) %pending_ordered) #10, !srcloc !102
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then26, label %refcount_inc.exit.if.end27_crit_edge

refcount_inc.exit.if.end27_crit_edge:             ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

cond.false.critedge:                              ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.10, i32 noundef 588) #13
  unreachable

if.then26:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pending_wait = getelementptr inbounds %struct.btrfs_transaction, ptr %39, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %pending_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %refcount_inc.exit.if.end27_crit_edge
  tail call void @btrfs_put_transaction(ptr noundef nonnull %39) #10
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end11.if.end29_crit_edge
  %ordered_extent_lock = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 45
  tail call void @_raw_spin_lock(ptr noundef %ordered_extent_lock) #10
  %root_extent_list = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 16
  %call.i.i96 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %root_extent_list) #10
  br i1 %call.i.i96, label %if.end.i.i, label %if.end29.list_del_init.exit_crit_edge

if.end29.list_del_init.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 16, i32 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %root_extent_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %root_extent_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end29.list_del_init.exit_crit_edge
  %49 = ptrtoint ptr %root_extent_list to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %root_extent_list, ptr %root_extent_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 16, i32 1
  %50 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %root_extent_list, ptr %prev.i3.i, align 4
  %nr_ordered_extents = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 48
  %51 = ptrtoint ptr %nr_ordered_extents to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %nr_ordered_extents, align 8
  %dec = add i64 %52, -1
  store i64 %dec, ptr %nr_ordered_extents, align 8
  tail call fastcc void @trace_btrfs_ordered_extent_remove(ptr noundef %btrfs_inode, ptr noundef %entry1)
  %53 = ptrtoint ptr %nr_ordered_extents to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %nr_ordered_extents, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %54)
  %tobool31.not = icmp eq i64 %54, 0
  br i1 %tobool31.not, label %if.then32, label %list_del_init.exit.if.end51_crit_edge

list_del_init.exit.if.end51_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then32:                                        ; preds = %list_del_init.exit
  %ordered_root_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 71
  tail call void @_raw_spin_lock(ptr noundef %ordered_root_lock) #10
  %ordered_root = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 47
  %55 = ptrtoint ptr %ordered_root to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %ordered_root, align 4
  %cmp.i.not = icmp eq ptr %56, %ordered_root
  br i1 %cmp.i.not, label %do.body42, label %do.end48, !prof !90

do.body42:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ordered-data.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 604, 0\0A.popsection", ""() #10, !srcloc !104
  unreachable

do.end48:                                         ; preds = %if.then32
  %call.i.i97 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ordered_root) #10
  br i1 %call.i.i97, label %if.end.i.i100, label %do.end48.list_del_init.exit102_crit_edge

do.end48.list_del_init.exit102_crit_edge:         ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit102

if.end.i.i100:                                    ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i98 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 47, i32 1
  %57 = ptrtoint ptr %prev.i.i98 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i98, align 4
  %59 = ptrtoint ptr %ordered_root to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ordered_root, align 4
  %prev1.i.i.i99 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i99, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del_init.exit102

list_del_init.exit102:                            ; preds = %if.end.i.i100, %do.end48.list_del_init.exit102_crit_edge
  %63 = ptrtoint ptr %ordered_root to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %ordered_root, ptr %ordered_root, align 4
  %prev.i3.i101 = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 47, i32 1
  %64 = ptrtoint ptr %prev.i3.i101 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %ordered_root, ptr %prev.i3.i101, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ordered_root_lock) #10
  br label %if.end51

if.end51:                                         ; preds = %list_del_init.exit102, %list_del_init.exit.if.end51_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ordered_extent_lock) #10
  %wait = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_delalloc_release_metadata(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_transaction(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_ordered_extent_remove(ptr noundef %inode, ptr noundef %ordered) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_ordered_extent_remove, i32 0, i32 1), ptr blockaddress(@trace_btrfs_ordered_extent_remove, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !96

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !88

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !105
  %call42 = tail call i32 @__traceiter_btrfs_ordered_extent_remove(ptr noundef null, ptr noundef %inode, ptr noundef %ordered) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  %13 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !88

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_ordered_extent_remove, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_ordered_extent_remove, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_ordered_extent_remove.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_btrfs_ordered_extent_remove.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 580, ptr noundef nonnull @.str.23) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %31 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
define dso_local i64 @btrfs_wait_ordered_extents(ptr noundef %root, i64 noundef %nr, i64 noundef %range_start, i64 noundef %range_len) local_unnamed_addr #0 align 64 {
entry:
  %splice = alloca %struct.list_head, align 4
  %skipped = alloca %struct.list_head, align 4
  %works = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %splice) #10
  %2 = getelementptr inbounds %struct.list_head, ptr %splice, i32 0, i32 1
  %3 = ptrtoint ptr %splice to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %splice, ptr %splice, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %splice, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %skipped) #10
  %5 = getelementptr inbounds %struct.list_head, ptr %skipped, i32 0, i32 1
  %6 = ptrtoint ptr %skipped to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %skipped, ptr %skipped, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %skipped, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %works) #10
  %8 = getelementptr inbounds %struct.list_head, ptr %works, i32 0, i32 1
  %9 = ptrtoint ptr %works to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %works, ptr %works, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %works, ptr %8, align 4
  %add = add i64 %range_len, %range_start
  %ordered_extent_mutex = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 44
  call void @mutex_lock_nested(ptr noundef %ordered_extent_mutex, i32 noundef 0) #10
  %ordered_extent_lock = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 45
  call void @_raw_spin_lock(ptr noundef %ordered_extent_lock) #10
  %ordered_extents = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 46
  %11 = ptrtoint ptr %ordered_extents to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %ordered_extents, align 4
  %cmp.i.not.i = icmp eq ptr %12, %ordered_extents
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %splice to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %splice, align 4
  %prev2.i.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 46, i32 1
  %15 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %splice, ptr %prev3.i.i, align 4
  store ptr %12, ptr %splice, align 4
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %14, ptr %16, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev6.i.i, align 4
  %20 = ptrtoint ptr %ordered_extents to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %ordered_extents, ptr %ordered_extents, align 4
  store ptr %ordered_extents, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nr)
  %tobool7.not112 = icmp eq i64 %nr, 0
  %21 = ptrtoint ptr %splice to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %splice, align 4
  %cmp.i109113 = icmp eq ptr %22, %splice
  %or.cond110114 = or i1 %cmp.i109113, %tobool7.not112
  br i1 %or.cond110114, label %list_splice_init.exit.while.end_crit_edge, label %while.body.lr.ph.lr.ph

list_splice_init.exit.while.end_crit_edge:        ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %list_splice_init.exit
  %prev.i2.i82 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 46, i32 1
  %flush_workers = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 78
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %list_add_tail.exit.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %23 = phi ptr [ %22, %while.body.lr.ph.lr.ph ], [ %66, %list_add_tail.exit.while.body.lr.ph_crit_edge ]
  %nr.addr.0.ph116 = phi i64 [ %nr, %while.body.lr.ph.lr.ph ], [ %spec.select, %list_add_tail.exit.while.body.lr.ph_crit_edge ]
  %count.0.ph115 = phi i64 [ 0, %while.body.lr.ph.lr.ph ], [ %inc, %list_add_tail.exit.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %list_move_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %24 = phi ptr [ %23, %while.body.lr.ph ], [ %42, %list_move_tail.exit.while.body_crit_edge ]
  %disk_bytenr = getelementptr i8, ptr %24, i32 -148
  %25 = ptrtoint ptr %disk_bytenr to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %disk_bytenr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %26)
  %cmp.not = icmp ugt i64 %add, %26
  br i1 %cmp.not, label %lor.lhs.false, label %while.body.if.then_crit_edge

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %disk_num_bytes = getelementptr i8, ptr %24, i32 -132
  %27 = ptrtoint ptr %disk_num_bytes to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %disk_num_bytes, align 8
  %add10 = add i64 %28, %26
  call void @__sanitizer_cov_trace_cmp8(i64 %add10, i64 %range_start)
  %cmp11.not = icmp ugt i64 %add10, %range_start
  br i1 %cmp11.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %while.body.if.then_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %24, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %5, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %24, ptr noundef %36, ptr noundef nonnull %skipped) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %24, ptr %5, align 4
  %38 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %skipped, ptr %24, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %24, ptr %36, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 646, i32 noundef 1) #10
  %call14 = call i32 @__cond_resched_lock(ptr noundef %ordered_extent_lock) #10
  %41 = ptrtoint ptr %splice to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %splice, align 4
  %cmp.i = icmp eq ptr %42, %splice
  br i1 %cmp.i, label %list_move_tail.exit.while.end_crit_edge, label %list_move_tail.exit.while.body_crit_edge

list_move_tail.exit.while.body_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  %call.i.i78 = call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #10
  br i1 %call.i.i78, label %if.end.i.i81, label %if.end.__list_del_entry.exit.i84_crit_edge

if.end.__list_del_entry.exit.i84_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i84

if.end.i.i81:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i79 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i79 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i79, align 4
  %45 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %24, align 4
  %prev1.i.i.i80 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i80, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %__list_del_entry.exit.i84

__list_del_entry.exit.i84:                        ; preds = %if.end.i.i81, %if.end.__list_del_entry.exit.i84_crit_edge
  %49 = ptrtoint ptr %prev.i2.i82 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i2.i82, align 4
  %call.i.i.i83 = call zeroext i1 @__list_add_valid(ptr noundef %24, ptr noundef %50, ptr noundef %ordered_extents) #10
  br i1 %call.i.i.i83, label %if.end.i.i.i86, label %__list_del_entry.exit.i84.list_move_tail.exit87_crit_edge

__list_del_entry.exit.i84.list_move_tail.exit87_crit_edge: ; preds = %__list_del_entry.exit.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit87

if.end.i.i.i86:                                   ; preds = %__list_del_entry.exit.i84
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %prev.i2.i82 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %24, ptr %prev.i2.i82, align 4
  %52 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %ordered_extents, ptr %24, align 4
  %prev3.i.i.i85 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i.i85, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %24, ptr %50, align 4
  br label %list_move_tail.exit87

list_move_tail.exit87:                            ; preds = %if.end.i.i.i86, %__list_del_entry.exit.i84.list_move_tail.exit87_crit_edge
  %refs = getelementptr i8, ptr %24, i32 -88
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #10
  %55 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #10, !srcloc !92
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %list_move_tail.exit87.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !90

list_move_tail.exit87.if.end15.sink.split.i.i.i_crit_edge: ; preds = %list_move_tail.exit87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %list_move_tail.exit87
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %56 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %.not.i.i.i = icmp sgt i32 %56, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !88

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %list_move_tail.exit87.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %list_move_tail.exit87.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ordered_extent_lock) #10
  %flush_work = getelementptr i8, ptr %24, i32 136
  call void @btrfs_init_work(ptr noundef %flush_work, ptr noundef nonnull @btrfs_run_ordered_extent_work, ptr noundef null, ptr noundef null) #10
  %work_list = getelementptr i8, ptr %24, i32 208
  %57 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %8, align 4
  %call.i.i88 = call zeroext i1 @__list_add_valid(ptr noundef %work_list, ptr noundef %58, ptr noundef nonnull %works) #10
  br i1 %call.i.i88, label %if.end.i.i90, label %refcount_inc.exit.list_add_tail.exit_crit_edge

refcount_inc.exit.list_add_tail.exit_crit_edge:   ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i90:                                     ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %work_list, ptr %8, align 4
  %60 = ptrtoint ptr %work_list to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %works, ptr %work_list, align 4
  %prev3.i.i89 = getelementptr i8, ptr %24, i32 212
  %61 = ptrtoint ptr %prev3.i.i89 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i89, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %work_list, ptr %58, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i90, %refcount_inc.exit.list_add_tail.exit_crit_edge
  %63 = ptrtoint ptr %flush_workers to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %flush_workers, align 8
  call void @btrfs_queue_work(ptr noundef %64, ptr noundef %flush_work) #10
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 660, i32 noundef 0) #10
  %call.i = call i32 @__cond_resched() #10
  call void @_raw_spin_lock(ptr noundef %ordered_extent_lock) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %nr.addr.0.ph116)
  %cmp22.not = icmp eq i64 %nr.addr.0.ph116, -1
  %dec = add i64 %nr.addr.0.ph116, -1
  %spec.select = select i1 %cmp22.not, i64 -1, i64 %dec
  %inc = add i64 %count.0.ph115, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select)
  %tobool7.not = icmp eq i64 %spec.select, 0
  %65 = ptrtoint ptr %splice to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %splice, align 4
  %cmp.i109 = icmp eq ptr %66, %splice
  %or.cond110 = select i1 %cmp.i109, i1 true, i1 %tobool7.not
  br i1 %or.cond110, label %list_add_tail.exit.while.end_crit_edge, label %list_add_tail.exit.while.body.lr.ph_crit_edge

list_add_tail.exit.while.body.lr.ph_crit_edge:    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

list_add_tail.exit.while.end_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_add_tail.exit.while.end_crit_edge, %list_move_tail.exit.while.end_crit_edge, %list_splice_init.exit.while.end_crit_edge
  %count.0.ph.lcssa = phi i64 [ 0, %list_splice_init.exit.while.end_crit_edge ], [ %count.0.ph115, %list_move_tail.exit.while.end_crit_edge ], [ %inc, %list_add_tail.exit.while.end_crit_edge ]
  %67 = ptrtoint ptr %skipped to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %skipped, align 4
  %cmp.i.not.i91 = icmp eq ptr %68, %skipped
  br i1 %cmp.i.not.i91, label %while.end.list_splice_tail.exit_crit_edge, label %if.then.i95

while.end.list_splice_tail.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail.exit

if.then.i95:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i92 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 46, i32 1
  %69 = ptrtoint ptr %prev.i92 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i92, align 4
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %5, align 4
  %prev3.i.i94 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %73 = ptrtoint ptr %prev3.i.i94 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev3.i.i94, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %68, ptr %70, align 4
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %ordered_extents, ptr %72, align 4
  store ptr %72, ptr %prev.i92, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i95, %while.end.list_splice_tail.exit_crit_edge
  %76 = ptrtoint ptr %splice to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %splice, align 4
  %cmp.i.not.i96 = icmp eq ptr %77, %splice
  br i1 %cmp.i.not.i96, label %list_splice_tail.exit.list_splice_tail.exit101_crit_edge, label %if.then.i100

list_splice_tail.exit.list_splice_tail.exit101_crit_edge: ; preds = %list_splice_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail.exit101

if.then.i100:                                     ; preds = %list_splice_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i97 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 46, i32 1
  %78 = ptrtoint ptr %prev.i97 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i97, align 4
  %80 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %2, align 4
  %prev3.i.i99 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %82 = ptrtoint ptr %prev3.i.i99 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev3.i.i99, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %77, ptr %79, align 4
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %ordered_extents, ptr %81, align 4
  store ptr %81, ptr %prev.i97, align 4
  br label %list_splice_tail.exit101

list_splice_tail.exit101:                         ; preds = %if.then.i100, %list_splice_tail.exit.list_splice_tail.exit101_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ordered_extent_lock) #10
  %85 = ptrtoint ptr %works to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %works, align 4
  %cmp38.not119 = icmp eq ptr %86, %works
  br i1 %cmp38.not119, label %list_splice_tail.exit101.for.end_crit_edge, label %list_splice_tail.exit101.for.body_crit_edge

list_splice_tail.exit101.for.body_crit_edge:      ; preds = %list_splice_tail.exit101
  br label %for.body

list_splice_tail.exit101.for.end_crit_edge:       ; preds = %list_splice_tail.exit101
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %list_splice_tail.exit101.for.body_crit_edge
  %.pn.in120 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %86, %list_splice_tail.exit101.for.body_crit_edge ]
  %ordered.0 = getelementptr i8, ptr %.pn.in120, i32 -364
  %87 = ptrtoint ptr %.pn.in120 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn = load ptr, ptr %.pn.in120, align 4
  %call.i.i102 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in120) #10
  br i1 %call.i.i102, label %if.end.i.i105, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i105:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i103 = getelementptr inbounds %struct.list_head, ptr %.pn.in120, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i.i103 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i.i103, align 4
  %90 = ptrtoint ptr %.pn.in120 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %.pn.in120, align 4
  %prev1.i.i.i104 = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %prev1.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev1.i.i.i104, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %91, ptr %89, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i105, %for.body.list_del_init.exit_crit_edge
  %94 = ptrtoint ptr %.pn.in120 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %.pn.in120, ptr %.pn.in120, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in120, i32 0, i32 1
  %95 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %.pn.in120, ptr %prev.i3.i, align 4
  %completion = getelementptr i8, ptr %.pn.in120, i32 -128
  call void @wait_for_completion(ptr noundef %completion) #10
  call void @btrfs_put_ordered_extent(ptr noundef %ordered.0)
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 674, i32 noundef 0) #10
  %call.i107 = call i32 @__cond_resched() #10
  %cmp38.not = icmp eq ptr %.pn, %works
  br i1 %cmp38.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %list_splice_tail.exit101.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %ordered_extent_mutex) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %works) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %skipped) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %splice) #10
  ret i64 %count.0.ph.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btrfs_run_ordered_extent_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -292
  tail call void @btrfs_start_ordered_extent(ptr noundef %add.ptr, i32 noundef 1)
  %completion = getelementptr i8, ptr %work, i32 -56
  tail call void @complete(ptr noundef %completion) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_wait_ordered_roots(ptr noundef %fs_info, i64 noundef %nr, i64 noundef %range_start, i64 noundef %range_len) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  %splice = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %splice) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %splice, i32 0, i32 1
  %1 = ptrtoint ptr %splice to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %splice, ptr %splice, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %splice, ptr %0, align 4
  %ordered_operations_mutex = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 53
  call void @mutex_lock_nested(ptr noundef %ordered_operations_mutex, i32 noundef 0) #10
  %ordered_root_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 71
  call void @_raw_spin_lock(ptr noundef %ordered_root_lock) #10
  %ordered_roots = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 72
  %3 = ptrtoint ptr %ordered_roots to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ordered_roots, align 4
  %cmp.i.not.i = icmp eq ptr %4, %ordered_roots
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %splice to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %splice, align 4
  %prev2.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 72, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %splice, ptr %prev3.i.i, align 4
  store ptr %4, ptr %splice, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %ordered_roots to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %ordered_roots, ptr %ordered_roots, align 4
  store ptr %ordered_roots, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %13 = ptrtoint ptr %splice to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %splice, align 4
  %cmp.i46 = icmp eq ptr %14, %splice
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nr)
  %tobool1.not47 = icmp eq i64 %nr, 0
  %or.cond48 = or i1 %cmp.i46, %tobool1.not47
  br i1 %or.cond48, label %list_splice_init.exit.while.end_crit_edge, label %while.body.lr.ph

list_splice_init.exit.while.end_crit_edge:        ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %list_splice_init.exit
  %prev.i2.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 72, i32 1
  br label %while.body

while.body:                                       ; preds = %list_move_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %15 = phi ptr [ %14, %while.body.lr.ph ], [ %41, %list_move_tail.exit.while.body_crit_edge ]
  %nr.addr.049 = phi i64 [ %nr, %while.body.lr.ph ], [ %spec.select, %list_move_tail.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %15, i32 -1648
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %while.body.do.body7_crit_edge, label %if.end.i

while.body.do.body7_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7

if.end.i:                                         ; preds = %while.body
  %refs.i = getelementptr i8, ptr %15, i32 -312
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refs.i, i32 noundef 4) #10
  %16 = ptrtoint ptr %refs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %refs.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end.i
  %18 = phi i32 [ %17, %if.end.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %19 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %18, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %20 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 %21, i32 %add.i.i.i.i, ptr elementtype(i32) %refs.i) #10, !srcloc !107
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %21
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !88

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %23 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %24, 1
  %25 = or i32 %add5.i.i.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !88

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef 0) #10
  %26 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %27 = phi i32 [ %.pr, %if.then10.i.i.i.i ], [ %24, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.i.i.i.not.i = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  br i1 %tobool12.i.i.i.not.i, label %refcount_inc_not_zero.exit.i.do.body7_crit_edge, label %do.end12, !prof !108

refcount_inc_not_zero.exit.i.do.body7_crit_edge:  ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7

do.body7:                                         ; preds = %refcount_inc_not_zero.exit.i.do.body7_crit_edge, %while.body.do.body7_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ordered-data.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 697, 0\0A.popsection", ""() #10, !srcloc !109
  unreachable

do.end12:                                         ; preds = %refcount_inc_not_zero.exit.i
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end12.__list_del_entry.exit.i_crit_edge

do.end12.__list_del_entry.exit.i_crit_edge:       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %15, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %do.end12.__list_del_entry.exit.i_crit_edge
  %34 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %15, ptr noundef %35, ptr noundef %ordered_roots) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %15, ptr %prev.i2.i, align 4
  %37 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ordered_roots, ptr %15, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %15, ptr %35, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ordered_root_lock) #10
  %call15 = call i64 @btrfs_wait_ordered_extents(ptr noundef nonnull %add.ptr, i64 noundef %nr.addr.049, i64 noundef %range_start, i64 noundef %range_len)
  call void @btrfs_put_root(ptr noundef nonnull %add.ptr) #10
  call void @_raw_spin_lock(ptr noundef %ordered_root_lock) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %nr.addr.049)
  %cmp.not = icmp eq i64 %nr.addr.049, -1
  %sub = sub i64 %nr.addr.049, %call15
  %spec.select = select i1 %cmp.not, i64 -1, i64 %sub
  %40 = ptrtoint ptr %splice to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %splice, align 4
  %cmp.i = icmp eq ptr %41, %splice
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select)
  %tobool1.not = icmp eq i64 %spec.select, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %list_move_tail.exit.while.end_crit_edge, label %list_move_tail.exit.while.body_crit_edge

list_move_tail.exit.while.body_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_move_tail.exit.while.end_crit_edge, %list_splice_init.exit.while.end_crit_edge
  %42 = ptrtoint ptr %splice to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %splice, align 4
  %cmp.i.not.i37 = icmp eq ptr %43, %splice
  br i1 %cmp.i.not.i37, label %while.end.list_splice_tail.exit_crit_edge, label %if.then.i41

while.end.list_splice_tail.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail.exit

if.then.i41:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i38 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 72, i32 1
  %44 = ptrtoint ptr %prev.i38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i38, align 4
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %0, align 4
  %prev3.i.i40 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i40, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %43, ptr %45, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %ordered_roots, ptr %47, align 4
  store ptr %47, ptr %prev.i38, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i41, %while.end.list_splice_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ordered_root_lock) #10
  call void @mutex_unlock(ptr noundef %ordered_operations_mutex) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %splice) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_start_ordered_extent(ptr noundef %entry1, i32 noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %entry1, align 8
  %num_bytes = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 2
  %2 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %num_bytes, align 8
  %inode2 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 11
  %4 = ptrtoint ptr %inode2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inode2, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -864
  tail call fastcc void @trace_btrfs_ordered_extent_start(ptr noundef %add.ptr.i, ptr noundef %entry1)
  %flags = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 7
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i64 %1, -1
  %sub = add i64 %add, %3
  %i_mapping = getelementptr i8, ptr %5, i32 32
  %9 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_mapping, align 8
  %call4 = tail call i32 @filemap_fdatawrite_range(ptr noundef %10, i64 noundef %1, i64 noundef %sub) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool5.not = icmp eq i32 %wait, 0
  br i1 %tobool5.not, label %if.end.if.end26_crit_edge, label %do.body7

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.body7:                                         ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 740) #10
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.end15, label %do.body7.if.end26_crit_edge

do.body7.if.end26_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end15:                                         ; preds = %do.body7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %wait16 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1, i32 0, i32 14
  %call1743 = call i32 @prepare_to_wait_event(ptr noundef %wait16, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not44 = icmp eq i32 %17, 0
  br i1 %tobool20.not44, label %if.end15.cleanup_crit_edge, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  call void @schedule() #10
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %wait16, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 64
  %tobool20.not = icmp eq i32 %20, 0
  br i1 %tobool20.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end15.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait16, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end26

if.end26:                                         ; preds = %for.end, %do.body7.if.end26_crit_edge, %if.end.if.end26_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_ordered_extent_start(ptr noundef %inode, ptr noundef %ordered) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_ordered_extent_start, i32 0, i32 1), ptr blockaddress(@trace_btrfs_ordered_extent_start, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !96

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !88

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %call42 = tail call i32 @__traceiter_btrfs_ordered_extent_start(ptr noundef null, ptr noundef %inode, ptr noundef %ordered) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !111
  %13 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !88

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_ordered_extent_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_ordered_extent_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_ordered_extent_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_btrfs_ordered_extent_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 588, ptr noundef nonnull @.str.23) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %31 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
declare dso_local i32 @filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_wait_ordered_range(ptr noundef %inode, i64 noundef %start, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i64 %len, %start
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %start)
  %cmp = icmp ult i64 %add, %start
  %sub = add i64 %add, -1
  %0 = tail call i64 @llvm.umin.i64(i64 %sub, i64 9223372036854775807)
  %orig_end.0 = select i1 %cmp, i64 9223372036854775807, i64 %0
  %call = tail call i32 @btrfs_fdatawrite_range(ptr noundef %inode, i64 noundef %start, i64 noundef %orig_end.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %entry
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %1 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_mapping, align 8
  %call7 = tail call i32 @filemap_fdatawait_range(ptr noundef %2, i64 noundef %start, i64 noundef %orig_end.0) #10
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -864
  %call968 = tail call ptr @btrfs_lookup_first_ordered_extent(ptr noundef %add.ptr.i, i64 noundef %orig_end.0)
  %tobool10.not69 = icmp eq ptr %call968, null
  br i1 %tobool10.not69, label %if.end6.while.end_crit_edge, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  br label %if.end12

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond:                                       ; preds = %if.end20
  %dec = add i64 %8, -1
  %call9 = tail call ptr @btrfs_lookup_first_ordered_extent(ptr noundef %add.ptr.i, i64 noundef %dec)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %while.cond.while.end_crit_edge, label %while.cond.if.end12_crit_edge

while.cond.if.end12_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end12:                                         ; preds = %while.cond.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %call971 = phi ptr [ %call9, %while.cond.if.end12_crit_edge ], [ %call968, %if.end6.if.end12_crit_edge ]
  %ret.070 = phi i32 [ %spec.select, %while.cond.if.end12_crit_edge ], [ 0, %if.end6.if.end12_crit_edge ]
  %3 = ptrtoint ptr %call971 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %call971, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %orig_end.0)
  %cmp13 = icmp ugt i64 %4, %orig_end.0
  br i1 %cmp13, label %if.end12.while.end.sink.split_crit_edge, label %if.end15

if.end12.while.end.sink.split_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.sink.split

if.end15:                                         ; preds = %if.end12
  %num_bytes = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call971, i32 0, i32 2
  %5 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %num_bytes, align 8
  %add17 = add i64 %6, %4
  call void @__sanitizer_cov_trace_cmp8(i64 %add17, i64 %start)
  %cmp18.not = icmp ugt i64 %add17, %start
  br i1 %cmp18.not, label %if.end20, label %if.end15.while.end.sink.split_crit_edge

if.end15.while.end.sink.split_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.sink.split

if.end20:                                         ; preds = %if.end15
  tail call void @btrfs_start_ordered_extent(ptr noundef nonnull %call971, i32 noundef 1)
  %7 = ptrtoint ptr %call971 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %call971, align 8
  %flags = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %call971, i32 0, i32 7
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool23.not = icmp eq i32 %11, 0
  %spec.select = select i1 %tobool23.not, i32 %ret.070, i32 -5
  tail call void @btrfs_put_ordered_extent(ptr noundef nonnull %call971)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp26 = icmp eq i64 %8, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %start)
  %cmp27 = icmp eq i64 %8, %start
  %or.cond = or i1 %cmp26, %cmp27
  br i1 %or.cond, label %if.end20.while.end_crit_edge, label %while.cond

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end.sink.split:                             ; preds = %if.end15.while.end.sink.split_crit_edge, %if.end12.while.end.sink.split_crit_edge
  tail call void @btrfs_put_ordered_extent(ptr noundef nonnull %call971)
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %if.end20.while.end_crit_edge, %while.cond.while.end_crit_edge, %if.end6.while.end_crit_edge
  %ret.2 = phi i32 [ 0, %if.end6.while.end_crit_edge ], [ %ret.070, %while.end.sink.split ], [ %spec.select, %if.end20.while.end_crit_edge ], [ %spec.select, %while.cond.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool30.not = icmp eq i32 %call7, 0
  %ret.2.call7 = select i1 %tobool30.not, i32 %ret.2, i32 %call7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2.call7, %while.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_lookup_first_ordered_extent(ptr noundef %inode, i64 noundef %file_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ordered_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %ordered_tree) #10
  %tree1.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8, i32 1
  %last.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end9.i_crit_edge, label %if.then.i

entry.if.end9.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then.i:                                        ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -144
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %file_offset)
  %cmp.not.i = icmp ugt i64 %3, %file_offset
  br i1 %cmp.not.i, label %if.then.i.if.end9.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %num_bytes.i = getelementptr i8, ptr %1, i32 -128
  %4 = ptrtoint ptr %num_bytes.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %num_bytes.i, align 8
  %add.i = add i64 %5, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %file_offset)
  %cmp6.i = icmp ugt i64 %add.i, %file_offset
  br i1 %cmp6.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then.i.if.end9.i_crit_edge, %entry.if.end9.i_crit_edge
  %6 = ptrtoint ptr %tree1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %n.083.i.i = load ptr, ptr %tree1.i, align 4
  %tobool.not84.i.i = icmp eq ptr %n.083.i.i, null
  br i1 %tobool.not84.i.i, label %if.end9.i.while.cond10.i.i.preheader_crit_edge, label %if.end9.i.while.body.i.i_crit_edge

if.end9.i.while.body.i.i_crit_edge:               ; preds = %if.end9.i
  br label %while.body.i.i

if.end9.i.while.cond10.i.i.preheader_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond10.i.i.preheader

while.body.i.i:                                   ; preds = %if.end6.i.i.while.body.i.i_crit_edge, %if.end9.i.while.body.i.i_crit_edge
  %n.085.i.i = phi ptr [ %n.0.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %n.083.i.i, %if.end9.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %n.085.i.i, i32 -144
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %file_offset)
  %cmp.i.i = icmp ugt i64 %8, %file_offset
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.085.i.i, i32 0, i32 2
  br label %if.end6.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %num_bytes.i.i.i = getelementptr i8, ptr %n.085.i.i, i32 -128
  %9 = ptrtoint ptr %num_bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %num_bytes.i.i.i, align 8
  %11 = tail call i64 @llvm.uadd.sat.i64(i64 %8, i64 %10) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %file_offset)
  %cmp3.not.i.i = icmp ugt i64 %11, %file_offset
  br i1 %cmp3.not.i.i, label %if.else.i.i.if.then14.i_crit_edge, label %if.then4.i.i

if.else.i.i.if.then14.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.085.i.i, i32 0, i32 1
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.then.i.i
  %n.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then4.i.i ]
  %12 = ptrtoint ptr %n.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %n.0.i.i = load ptr, ptr %n.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %n.0.i.i, null
  br i1 %tobool.not.i.i, label %while.end.i.i.loopexit, label %if.end6.i.i.while.body.i.i_crit_edge

if.end6.i.i.while.body.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.end.i.i.loopexit:                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.le = getelementptr i8, ptr %n.085.i.i, i32 -144
  br label %while.cond10.i.i.preheader

while.cond10.i.i.preheader:                       ; preds = %while.end.i.i.loopexit, %if.end9.i.while.cond10.i.i.preheader_crit_edge
  %prev_entry.1.i.i.ph = phi ptr [ %add.ptr.i.i.le, %while.end.i.i.loopexit ], [ null, %if.end9.i.while.cond10.i.i.preheader_crit_edge ]
  %prev.1.i.i.ph = phi ptr [ %n.085.i.i, %while.end.i.i.loopexit ], [ null, %if.end9.i.while.cond10.i.i.preheader_crit_edge ]
  br label %while.cond10.i.i

while.cond10.i.i:                                 ; preds = %if.end18.i.i.while.cond10.i.i_crit_edge, %while.cond10.i.i.preheader
  %prev_entry.1.i.i = phi ptr [ %add.ptr21.i.i, %if.end18.i.i.while.cond10.i.i_crit_edge ], [ %prev_entry.1.i.i.ph, %while.cond10.i.i.preheader ]
  %prev.1.i.i = phi ptr [ %call15.i.i, %if.end18.i.i.while.cond10.i.i_crit_edge ], [ %prev.1.i.i.ph, %while.cond10.i.i.preheader ]
  %tobool11.not.i.i = icmp eq ptr %prev.1.i.i, null
  br i1 %tobool11.not.i.i, label %while.cond10.i.i.out_crit_edge, label %land.rhs.i.i

while.cond10.i.i.out_crit_edge:                   ; preds = %while.cond10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.rhs.i.i:                                     ; preds = %while.cond10.i.i
  %13 = ptrtoint ptr %prev_entry.1.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %prev_entry.1.i.i, align 8
  %num_bytes.i77.i.i = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %prev_entry.1.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %num_bytes.i77.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %num_bytes.i77.i.i, align 8
  %17 = tail call i64 @llvm.uadd.sat.i64(i64 %14, i64 %16) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %file_offset)
  %cmp13.not.i.i = icmp ugt i64 %17, %file_offset
  br i1 %cmp13.not.i.i, label %land.rhs.i.i.land.rhs35.i.i.preheader_crit_edge, label %while.body14.i.i

land.rhs.i.i.land.rhs35.i.i.preheader_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i.preheader

while.body14.i.i:                                 ; preds = %land.rhs.i.i
  %call15.i.i = tail call ptr @rb_next(ptr noundef nonnull %prev.1.i.i) #10
  %tobool16.not.i.i = icmp eq ptr %call15.i.i, null
  br i1 %tobool16.not.i.i, label %while.body14.i.i.land.rhs35.i.i.preheader_crit_edge, label %if.end18.i.i

while.body14.i.i.land.rhs35.i.i.preheader_crit_edge: ; preds = %while.body14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i.preheader

if.end18.i.i:                                     ; preds = %while.body14.i.i
  %add.ptr21.i.i = getelementptr i8, ptr %call15.i.i, i32 -144
  %18 = ptrtoint ptr %add.ptr21.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr21.i.i, align 8
  %num_bytes.i78.i.i = getelementptr i8, ptr %call15.i.i, i32 -128
  %20 = ptrtoint ptr %num_bytes.i78.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %num_bytes.i78.i.i, align 8
  %22 = tail call i64 @llvm.uadd.sat.i64(i64 %19, i64 %21) #10
  %cmp23.i.i = icmp ugt i64 %22, %file_offset
  br i1 %cmp23.i.i, label %if.end18.i.i.land.rhs35.i.i.preheader_crit_edge, label %if.end18.i.i.while.cond10.i.i_crit_edge

if.end18.i.i.while.cond10.i.i_crit_edge:          ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond10.i.i

if.end18.i.i.land.rhs35.i.i.preheader_crit_edge:  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i.preheader

land.rhs35.i.i.preheader:                         ; preds = %if.end18.i.i.land.rhs35.i.i.preheader_crit_edge, %while.body14.i.i.land.rhs35.i.i.preheader_crit_edge, %land.rhs.i.i.land.rhs35.i.i.preheader_crit_edge
  br label %land.rhs35.i.i

land.rhs35.i.i:                                   ; preds = %while.body39.i.i.land.rhs35.i.i_crit_edge, %land.rhs35.i.i.preheader
  %call40.sink.i.i = phi ptr [ %call40.i.i, %while.body39.i.i.land.rhs35.i.i_crit_edge ], [ %prev.1.i.i, %land.rhs35.i.i.preheader ]
  %add.ptr46.i.i = getelementptr i8, ptr %call40.sink.i.i, i32 -144
  %23 = ptrtoint ptr %add.ptr46.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %add.ptr46.i.i, align 8
  %num_bytes.i79.i.i = getelementptr i8, ptr %call40.sink.i.i, i32 -128
  %25 = ptrtoint ptr %num_bytes.i79.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %num_bytes.i79.i.i, align 8
  %27 = tail call i64 @llvm.uadd.sat.i64(i64 %24, i64 %26) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %file_offset)
  %cmp37.i.i = icmp ugt i64 %27, %file_offset
  br i1 %cmp37.i.i, label %while.body39.i.i, label %land.rhs35.i.i.if.then14.i_crit_edge

land.rhs35.i.i.if.then14.i_crit_edge:             ; preds = %land.rhs35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

while.body39.i.i:                                 ; preds = %land.rhs35.i.i
  %call40.i.i = tail call ptr @rb_prev(ptr noundef nonnull %call40.sink.i.i) #10
  %tobool41.not.i.i = icmp eq ptr %call40.i.i, null
  br i1 %tobool41.not.i.i, label %while.body39.i.i.if.then14.i_crit_edge, label %while.body39.i.i.land.rhs35.i.i_crit_edge

while.body39.i.i.land.rhs35.i.i_crit_edge:        ; preds = %while.body39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i

while.body39.i.i.if.then14.i_crit_edge:           ; preds = %while.body39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

if.then14.i:                                      ; preds = %while.body39.i.i.if.then14.i_crit_edge, %land.rhs35.i.i.if.then14.i_crit_edge, %if.else.i.i.if.then14.i_crit_edge
  %ret.0.ph.i = phi ptr [ %call40.sink.i.i, %land.rhs35.i.i.if.then14.i_crit_edge ], [ %call40.sink.i.i, %while.body39.i.i.if.then14.i_crit_edge ], [ %n.085.i.i, %if.else.i.i.if.then14.i_crit_edge ]
  %28 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ret.0.ph.i, ptr %last.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then14.i, %land.lhs.true.i.if.end_crit_edge
  %retval.0.i.ph = phi ptr [ %ret.0.ph.i, %if.then14.i ], [ %1, %land.lhs.true.i.if.end_crit_edge ]
  %add.ptr = getelementptr i8, ptr %retval.0.i.ph, i32 -144
  %refs = getelementptr i8, ptr %retval.0.i.ph, i32 -76
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #10
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #10, !srcloc !92
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !90

if.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.out_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !88

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.out_crit_edge:                      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #10
  br label %out

out:                                              ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.out_crit_edge, %while.cond10.i.i.out_crit_edge
  %entry1.0 = phi ptr [ %add.ptr, %if.else.i.i.i.out_crit_edge ], [ %add.ptr, %if.end15.sink.split.i.i.i ], [ null, %while.cond10.i.i.out_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %ordered_tree) #10
  ret ptr %entry1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_lookup_ordered_extent(ptr noundef %inode, i64 noundef %file_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ordered_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ordered_tree) #10
  %tree1.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8, i32 1
  %last.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end9.i_crit_edge, label %if.then.i

entry.if.end9.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then.i:                                        ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -144
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %file_offset)
  %cmp.not.i = icmp ugt i64 %3, %file_offset
  br i1 %cmp.not.i, label %if.then.i.if.end9.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %num_bytes.i = getelementptr i8, ptr %1, i32 -128
  %4 = ptrtoint ptr %num_bytes.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %num_bytes.i, align 8
  %add.i = add i64 %5, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %file_offset)
  %cmp6.i = icmp ugt i64 %add.i, %file_offset
  br i1 %cmp6.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then.i.if.end9.i_crit_edge, %entry.if.end9.i_crit_edge
  %6 = ptrtoint ptr %tree1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %n.083.i.i = load ptr, ptr %tree1.i, align 4
  %tobool.not84.i.i = icmp eq ptr %n.083.i.i, null
  br i1 %tobool.not84.i.i, label %if.end9.i.while.cond10.i.i.preheader_crit_edge, label %if.end9.i.while.body.i.i_crit_edge

if.end9.i.while.body.i.i_crit_edge:               ; preds = %if.end9.i
  br label %while.body.i.i

if.end9.i.while.cond10.i.i.preheader_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond10.i.i.preheader

while.body.i.i:                                   ; preds = %if.end6.i.i.while.body.i.i_crit_edge, %if.end9.i.while.body.i.i_crit_edge
  %n.085.i.i = phi ptr [ %n.0.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %n.083.i.i, %if.end9.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %n.085.i.i, i32 -144
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %file_offset)
  %cmp.i.i = icmp ugt i64 %8, %file_offset
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.085.i.i, i32 0, i32 2
  br label %if.end6.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %num_bytes.i.i.i = getelementptr i8, ptr %n.085.i.i, i32 -128
  %9 = ptrtoint ptr %num_bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %num_bytes.i.i.i, align 8
  %11 = tail call i64 @llvm.uadd.sat.i64(i64 %8, i64 %10) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %file_offset)
  %cmp3.not.i.i = icmp ugt i64 %11, %file_offset
  br i1 %cmp3.not.i.i, label %if.else.i.i.if.then14.i_crit_edge, label %if.then4.i.i

if.else.i.i.if.then14.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.085.i.i, i32 0, i32 1
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.then.i.i
  %n.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then4.i.i ]
  %12 = ptrtoint ptr %n.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %n.0.i.i = load ptr, ptr %n.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %n.0.i.i, null
  br i1 %tobool.not.i.i, label %while.end.i.i.loopexit, label %if.end6.i.i.while.body.i.i_crit_edge

if.end6.i.i.while.body.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.end.i.i.loopexit:                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.le = getelementptr i8, ptr %n.085.i.i, i32 -144
  br label %while.cond10.i.i.preheader

while.cond10.i.i.preheader:                       ; preds = %while.end.i.i.loopexit, %if.end9.i.while.cond10.i.i.preheader_crit_edge
  %prev_entry.1.i.i.ph = phi ptr [ %add.ptr.i.i.le, %while.end.i.i.loopexit ], [ null, %if.end9.i.while.cond10.i.i.preheader_crit_edge ]
  %prev.1.i.i.ph = phi ptr [ %n.085.i.i, %while.end.i.i.loopexit ], [ null, %if.end9.i.while.cond10.i.i.preheader_crit_edge ]
  br label %while.cond10.i.i

while.cond10.i.i:                                 ; preds = %if.end18.i.i.while.cond10.i.i_crit_edge, %while.cond10.i.i.preheader
  %prev_entry.1.i.i = phi ptr [ %add.ptr21.i.i, %if.end18.i.i.while.cond10.i.i_crit_edge ], [ %prev_entry.1.i.i.ph, %while.cond10.i.i.preheader ]
  %prev.1.i.i = phi ptr [ %call15.i.i, %if.end18.i.i.while.cond10.i.i_crit_edge ], [ %prev.1.i.i.ph, %while.cond10.i.i.preheader ]
  %tobool11.not.i.i = icmp eq ptr %prev.1.i.i, null
  br i1 %tobool11.not.i.i, label %while.cond10.i.i.out_crit_edge, label %land.rhs.i.i

while.cond10.i.i.out_crit_edge:                   ; preds = %while.cond10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.rhs.i.i:                                     ; preds = %while.cond10.i.i
  %13 = ptrtoint ptr %prev_entry.1.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %prev_entry.1.i.i, align 8
  %num_bytes.i77.i.i = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %prev_entry.1.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %num_bytes.i77.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %num_bytes.i77.i.i, align 8
  %17 = tail call i64 @llvm.uadd.sat.i64(i64 %14, i64 %16) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %file_offset)
  %cmp13.not.i.i = icmp ugt i64 %17, %file_offset
  br i1 %cmp13.not.i.i, label %land.rhs.i.i.land.rhs35.i.i.preheader_crit_edge, label %while.body14.i.i

land.rhs.i.i.land.rhs35.i.i.preheader_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i.preheader

while.body14.i.i:                                 ; preds = %land.rhs.i.i
  %call15.i.i = tail call ptr @rb_next(ptr noundef nonnull %prev.1.i.i) #10
  %tobool16.not.i.i = icmp eq ptr %call15.i.i, null
  br i1 %tobool16.not.i.i, label %while.body14.i.i.land.rhs35.i.i.preheader_crit_edge, label %if.end18.i.i

while.body14.i.i.land.rhs35.i.i.preheader_crit_edge: ; preds = %while.body14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i.preheader

if.end18.i.i:                                     ; preds = %while.body14.i.i
  %add.ptr21.i.i = getelementptr i8, ptr %call15.i.i, i32 -144
  %18 = ptrtoint ptr %add.ptr21.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr21.i.i, align 8
  %num_bytes.i78.i.i = getelementptr i8, ptr %call15.i.i, i32 -128
  %20 = ptrtoint ptr %num_bytes.i78.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %num_bytes.i78.i.i, align 8
  %22 = tail call i64 @llvm.uadd.sat.i64(i64 %19, i64 %21) #10
  %cmp23.i.i = icmp ugt i64 %22, %file_offset
  br i1 %cmp23.i.i, label %if.end18.i.i.land.rhs35.i.i.preheader_crit_edge, label %if.end18.i.i.while.cond10.i.i_crit_edge

if.end18.i.i.while.cond10.i.i_crit_edge:          ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond10.i.i

if.end18.i.i.land.rhs35.i.i.preheader_crit_edge:  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i.preheader

land.rhs35.i.i.preheader:                         ; preds = %if.end18.i.i.land.rhs35.i.i.preheader_crit_edge, %while.body14.i.i.land.rhs35.i.i.preheader_crit_edge, %land.rhs.i.i.land.rhs35.i.i.preheader_crit_edge
  br label %land.rhs35.i.i

land.rhs35.i.i:                                   ; preds = %while.body39.i.i.land.rhs35.i.i_crit_edge, %land.rhs35.i.i.preheader
  %call40.sink.i.i = phi ptr [ %call40.i.i, %while.body39.i.i.land.rhs35.i.i_crit_edge ], [ %prev.1.i.i, %land.rhs35.i.i.preheader ]
  %add.ptr46.i.i = getelementptr i8, ptr %call40.sink.i.i, i32 -144
  %23 = ptrtoint ptr %add.ptr46.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %add.ptr46.i.i, align 8
  %num_bytes.i79.i.i = getelementptr i8, ptr %call40.sink.i.i, i32 -128
  %25 = ptrtoint ptr %num_bytes.i79.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %num_bytes.i79.i.i, align 8
  %27 = tail call i64 @llvm.uadd.sat.i64(i64 %24, i64 %26) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %file_offset)
  %cmp37.i.i = icmp ugt i64 %27, %file_offset
  br i1 %cmp37.i.i, label %while.body39.i.i, label %land.rhs35.i.i.if.then14.i_crit_edge

land.rhs35.i.i.if.then14.i_crit_edge:             ; preds = %land.rhs35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

while.body39.i.i:                                 ; preds = %land.rhs35.i.i
  %call40.i.i = tail call ptr @rb_prev(ptr noundef nonnull %call40.sink.i.i) #10
  %tobool41.not.i.i = icmp eq ptr %call40.i.i, null
  br i1 %tobool41.not.i.i, label %while.body39.i.i.if.then14.i_crit_edge, label %while.body39.i.i.land.rhs35.i.i_crit_edge

while.body39.i.i.land.rhs35.i.i_crit_edge:        ; preds = %while.body39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i

while.body39.i.i.if.then14.i_crit_edge:           ; preds = %while.body39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

if.then14.i:                                      ; preds = %while.body39.i.i.if.then14.i_crit_edge, %land.rhs35.i.i.if.then14.i_crit_edge, %if.else.i.i.if.then14.i_crit_edge
  %ret.0.ph.i = phi ptr [ %call40.sink.i.i, %land.rhs35.i.i.if.then14.i_crit_edge ], [ %call40.sink.i.i, %while.body39.i.i.if.then14.i_crit_edge ], [ %n.085.i.i, %if.else.i.i.if.then14.i_crit_edge ]
  %28 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ret.0.ph.i, ptr %last.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then14.i, %land.lhs.true.i.if.end_crit_edge
  %retval.0.i.ph = phi ptr [ %ret.0.ph.i, %if.then14.i ], [ %1, %land.lhs.true.i.if.end_crit_edge ]
  %add.ptr = getelementptr i8, ptr %retval.0.i.ph, i32 -144
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %file_offset)
  %cmp9.not = icmp ugt i64 %30, %file_offset
  br i1 %cmp9.not, label %if.end.out_crit_edge, label %land.lhs.true

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true:                                    ; preds = %if.end
  %num_bytes = getelementptr i8, ptr %retval.0.i.ph, i32 -128
  %31 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %num_bytes, align 8
  %add = add i64 %32, %30
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %file_offset)
  %cmp12 = icmp ule i64 %add, %file_offset
  %tobool16.not = icmp eq ptr %add.ptr, null
  %or.cond = or i1 %tobool16.not, %cmp12
  br i1 %or.cond, label %land.lhs.true.out_crit_edge, label %if.then17

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then17:                                        ; preds = %land.lhs.true
  %refs = getelementptr i8, ptr %retval.0.i.ph, i32 -76
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #10
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #10, !srcloc !92
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then17.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !90

if.then17.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then17
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %34 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.out_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !88

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.out_crit_edge:                      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then17.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then17.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #10
  br label %out

out:                                              ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end.out_crit_edge, %while.cond10.i.i.out_crit_edge
  %entry1.1 = phi ptr [ %add.ptr, %if.else.i.i.i.out_crit_edge ], [ %add.ptr, %if.end15.sink.split.i.i.i ], [ null, %if.end.out_crit_edge ], [ null, %land.lhs.true.out_crit_edge ], [ null, %while.cond10.i.i.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ordered_tree, i32 noundef %call3) #10
  ret ptr %entry1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_lookup_ordered_range(ptr noundef %inode, i64 noundef %file_offset, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ordered_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %ordered_tree) #10
  %tree1.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8, i32 1
  %last.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end9.i_crit_edge, label %if.then.i

entry.if.end9.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then.i:                                        ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -144
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %file_offset)
  %cmp.not.i = icmp ugt i64 %3, %file_offset
  br i1 %cmp.not.i, label %if.then.i.if.end9.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %num_bytes.i = getelementptr i8, ptr %1, i32 -128
  %4 = ptrtoint ptr %num_bytes.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %num_bytes.i, align 8
  %add.i = add i64 %5, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %file_offset)
  %cmp6.i = icmp ugt i64 %add.i, %file_offset
  br i1 %cmp6.i, label %land.lhs.true.i.if.end5_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.then.i.if.end9.i_crit_edge, %entry.if.end9.i_crit_edge
  %6 = ptrtoint ptr %tree1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %n.083.i.i = load ptr, ptr %tree1.i, align 4
  %tobool.not84.i.i = icmp eq ptr %n.083.i.i, null
  br i1 %tobool.not84.i.i, label %if.end9.i.while.cond10.i.i.preheader_crit_edge, label %if.end9.i.while.body.i.i_crit_edge

if.end9.i.while.body.i.i_crit_edge:               ; preds = %if.end9.i
  br label %while.body.i.i

if.end9.i.while.cond10.i.i.preheader_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond10.i.i.preheader

while.body.i.i:                                   ; preds = %if.end6.i.i.while.body.i.i_crit_edge, %if.end9.i.while.body.i.i_crit_edge
  %n.085.i.i = phi ptr [ %n.0.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %n.083.i.i, %if.end9.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %n.085.i.i, i32 -144
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %file_offset)
  %cmp.i.i = icmp ugt i64 %8, %file_offset
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.085.i.i, i32 0, i32 2
  br label %if.end6.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %num_bytes.i.i.i = getelementptr i8, ptr %n.085.i.i, i32 -128
  %9 = ptrtoint ptr %num_bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %num_bytes.i.i.i, align 8
  %11 = tail call i64 @llvm.uadd.sat.i64(i64 %8, i64 %10) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %file_offset)
  %cmp3.not.i.i = icmp ugt i64 %11, %file_offset
  br i1 %cmp3.not.i.i, label %if.else.i.i.if.end5.sink.split_crit_edge, label %if.then4.i.i

if.else.i.i.if.end5.sink.split_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.sink.split

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.085.i.i, i32 0, i32 1
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.then.i.i
  %n.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then4.i.i ]
  %12 = ptrtoint ptr %n.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %n.0.i.i = load ptr, ptr %n.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %n.0.i.i, null
  br i1 %tobool.not.i.i, label %while.end.i.i.loopexit, label %if.end6.i.i.while.body.i.i_crit_edge

if.end6.i.i.while.body.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.end.i.i.loopexit:                           ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.le = getelementptr i8, ptr %n.085.i.i, i32 -144
  br label %while.cond10.i.i.preheader

while.cond10.i.i.preheader:                       ; preds = %while.end.i.i.loopexit, %if.end9.i.while.cond10.i.i.preheader_crit_edge
  %prev_entry.1.i.i.ph = phi ptr [ %add.ptr.i.i.le, %while.end.i.i.loopexit ], [ null, %if.end9.i.while.cond10.i.i.preheader_crit_edge ]
  %prev.1.i.i.ph = phi ptr [ %n.085.i.i, %while.end.i.i.loopexit ], [ null, %if.end9.i.while.cond10.i.i.preheader_crit_edge ]
  br label %while.cond10.i.i

while.cond10.i.i:                                 ; preds = %if.end18.i.i.while.cond10.i.i_crit_edge, %while.cond10.i.i.preheader
  %prev_entry.1.i.i = phi ptr [ %add.ptr21.i.i, %if.end18.i.i.while.cond10.i.i_crit_edge ], [ %prev_entry.1.i.i.ph, %while.cond10.i.i.preheader ]
  %prev.1.i.i = phi ptr [ %call15.i.i, %if.end18.i.i.while.cond10.i.i_crit_edge ], [ %prev.1.i.i.ph, %while.cond10.i.i.preheader ]
  %tobool11.not.i.i = icmp eq ptr %prev.1.i.i, null
  br i1 %tobool11.not.i.i, label %if.then, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.cond10.i.i
  %13 = ptrtoint ptr %prev_entry.1.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %prev_entry.1.i.i, align 8
  %num_bytes.i77.i.i = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %prev_entry.1.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %num_bytes.i77.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %num_bytes.i77.i.i, align 8
  %17 = tail call i64 @llvm.uadd.sat.i64(i64 %14, i64 %16) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %file_offset)
  %cmp13.not.i.i = icmp ugt i64 %17, %file_offset
  br i1 %cmp13.not.i.i, label %land.rhs.i.i.land.rhs35.i.i.preheader_crit_edge, label %while.body14.i.i

land.rhs.i.i.land.rhs35.i.i.preheader_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i.preheader

while.body14.i.i:                                 ; preds = %land.rhs.i.i
  %call15.i.i = tail call ptr @rb_next(ptr noundef nonnull %prev.1.i.i) #10
  %tobool16.not.i.i = icmp eq ptr %call15.i.i, null
  br i1 %tobool16.not.i.i, label %while.body14.i.i.land.rhs35.i.i.preheader_crit_edge, label %if.end18.i.i

while.body14.i.i.land.rhs35.i.i.preheader_crit_edge: ; preds = %while.body14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i.preheader

if.end18.i.i:                                     ; preds = %while.body14.i.i
  %add.ptr21.i.i = getelementptr i8, ptr %call15.i.i, i32 -144
  %18 = ptrtoint ptr %add.ptr21.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr21.i.i, align 8
  %num_bytes.i78.i.i = getelementptr i8, ptr %call15.i.i, i32 -128
  %20 = ptrtoint ptr %num_bytes.i78.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %num_bytes.i78.i.i, align 8
  %22 = tail call i64 @llvm.uadd.sat.i64(i64 %19, i64 %21) #10
  %cmp23.i.i = icmp ugt i64 %22, %file_offset
  br i1 %cmp23.i.i, label %if.end18.i.i.land.rhs35.i.i.preheader_crit_edge, label %if.end18.i.i.while.cond10.i.i_crit_edge

if.end18.i.i.while.cond10.i.i_crit_edge:          ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond10.i.i

if.end18.i.i.land.rhs35.i.i.preheader_crit_edge:  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i.preheader

land.rhs35.i.i.preheader:                         ; preds = %if.end18.i.i.land.rhs35.i.i.preheader_crit_edge, %while.body14.i.i.land.rhs35.i.i.preheader_crit_edge, %land.rhs.i.i.land.rhs35.i.i.preheader_crit_edge
  br label %land.rhs35.i.i

land.rhs35.i.i:                                   ; preds = %while.body39.i.i.land.rhs35.i.i_crit_edge, %land.rhs35.i.i.preheader
  %call40.sink.i.i = phi ptr [ %call40.i.i, %while.body39.i.i.land.rhs35.i.i_crit_edge ], [ %prev.1.i.i, %land.rhs35.i.i.preheader ]
  %add.ptr46.i.i = getelementptr i8, ptr %call40.sink.i.i, i32 -144
  %23 = ptrtoint ptr %add.ptr46.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %add.ptr46.i.i, align 8
  %num_bytes.i79.i.i = getelementptr i8, ptr %call40.sink.i.i, i32 -128
  %25 = ptrtoint ptr %num_bytes.i79.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %num_bytes.i79.i.i, align 8
  %27 = tail call i64 @llvm.uadd.sat.i64(i64 %24, i64 %26) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %file_offset)
  %cmp37.i.i = icmp ugt i64 %27, %file_offset
  br i1 %cmp37.i.i, label %while.body39.i.i, label %land.rhs35.i.i.if.end5.sink.split_crit_edge

land.rhs35.i.i.if.end5.sink.split_crit_edge:      ; preds = %land.rhs35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.sink.split

while.body39.i.i:                                 ; preds = %land.rhs35.i.i
  %call40.i.i = tail call ptr @rb_prev(ptr noundef nonnull %call40.sink.i.i) #10
  %tobool41.not.i.i = icmp eq ptr %call40.i.i, null
  br i1 %tobool41.not.i.i, label %while.body39.i.i.if.end5.sink.split_crit_edge, label %while.body39.i.i.land.rhs35.i.i_crit_edge

while.body39.i.i.land.rhs35.i.i_crit_edge:        ; preds = %while.body39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i

while.body39.i.i.if.end5.sink.split_crit_edge:    ; preds = %while.body39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.sink.split

if.then:                                          ; preds = %while.cond10.i.i
  %add = add i64 %len, %file_offset
  %28 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %last.i, align 4
  %tobool.not.i40 = icmp eq ptr %29, null
  br i1 %tobool.not.i40, label %if.then.if.end9.i50_crit_edge, label %if.then.i43

if.then.if.end9.i50_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i50

if.then.i43:                                      ; preds = %if.then
  %add.ptr.i41 = getelementptr i8, ptr %29, i32 -144
  %30 = ptrtoint ptr %add.ptr.i41 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr.i41, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %add)
  %cmp.not.i42 = icmp ugt i64 %31, %add
  br i1 %cmp.not.i42, label %if.then.i43.if.end9.i50_crit_edge, label %land.lhs.true.i47

if.then.i43.if.end9.i50_crit_edge:                ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i50

land.lhs.true.i47:                                ; preds = %if.then.i43
  %num_bytes.i44 = getelementptr i8, ptr %29, i32 -128
  %32 = ptrtoint ptr %num_bytes.i44 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %num_bytes.i44, align 8
  %add.i45 = add i64 %33, %31
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i45, i64 %add)
  %cmp6.i46 = icmp ugt i64 %add.i45, %add
  br i1 %cmp6.i46, label %land.lhs.true.i47.if.end5_crit_edge, label %land.lhs.true.i47.if.end9.i50_crit_edge

land.lhs.true.i47.if.end9.i50_crit_edge:          ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i50

land.lhs.true.i47.if.end5_crit_edge:              ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end9.i50:                                      ; preds = %land.lhs.true.i47.if.end9.i50_crit_edge, %if.then.i43.if.end9.i50_crit_edge, %if.then.if.end9.i50_crit_edge
  %34 = ptrtoint ptr %tree1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %n.083.i.i48 = load ptr, ptr %tree1.i, align 4
  %tobool.not84.i.i49 = icmp eq ptr %n.083.i.i48, null
  br i1 %tobool.not84.i.i49, label %if.end9.i50.while.cond10.i.i74.preheader_crit_edge, label %if.end9.i50.while.body.i.i54_crit_edge

if.end9.i50.while.body.i.i54_crit_edge:           ; preds = %if.end9.i50
  br label %while.body.i.i54

if.end9.i50.while.cond10.i.i74.preheader_crit_edge: ; preds = %if.end9.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond10.i.i74.preheader

while.body.i.i54:                                 ; preds = %if.end6.i.i65.while.body.i.i54_crit_edge, %if.end9.i50.while.body.i.i54_crit_edge
  %n.085.i.i51 = phi ptr [ %n.0.i.i63, %if.end6.i.i65.while.body.i.i54_crit_edge ], [ %n.083.i.i48, %if.end9.i50.while.body.i.i54_crit_edge ]
  %add.ptr.i.i52 = getelementptr i8, ptr %n.085.i.i51, i32 -144
  %35 = ptrtoint ptr %add.ptr.i.i52 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %add.ptr.i.i52, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %add)
  %cmp.i.i53 = icmp ugt i64 %36, %add
  br i1 %cmp.i.i53, label %if.then.i.i56, label %if.else.i.i59

if.then.i.i56:                                    ; preds = %while.body.i.i54
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i.i55 = getelementptr inbounds %struct.rb_node, ptr %n.085.i.i51, i32 0, i32 2
  br label %if.end6.i.i65

if.else.i.i59:                                    ; preds = %while.body.i.i54
  %num_bytes.i.i.i57 = getelementptr i8, ptr %n.085.i.i51, i32 -128
  %37 = ptrtoint ptr %num_bytes.i.i.i57 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %num_bytes.i.i.i57, align 8
  %39 = tail call i64 @llvm.uadd.sat.i64(i64 %36, i64 %38) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %add)
  %cmp3.not.i.i58 = icmp ugt i64 %39, %add
  br i1 %cmp3.not.i.i58, label %if.else.i.i59.if.end5.sink.split_crit_edge, label %if.then4.i.i61

if.else.i.i59.if.end5.sink.split_crit_edge:       ; preds = %if.else.i.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.sink.split

if.then4.i.i61:                                   ; preds = %if.else.i.i59
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i.i60 = getelementptr inbounds %struct.rb_node, ptr %n.085.i.i51, i32 0, i32 1
  br label %if.end6.i.i65

if.end6.i.i65:                                    ; preds = %if.then4.i.i61, %if.then.i.i56
  %n.1.in.i.i62 = phi ptr [ %rb_left.i.i55, %if.then.i.i56 ], [ %rb_right.i.i60, %if.then4.i.i61 ]
  %40 = ptrtoint ptr %n.1.in.i.i62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %n.0.i.i63 = load ptr, ptr %n.1.in.i.i62, align 4
  %tobool.not.i.i64 = icmp eq ptr %n.0.i.i63, null
  br i1 %tobool.not.i.i64, label %while.end.i.i70.loopexit, label %if.end6.i.i65.while.body.i.i54_crit_edge

if.end6.i.i65.while.body.i.i54_crit_edge:         ; preds = %if.end6.i.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i54

while.end.i.i70.loopexit:                         ; preds = %if.end6.i.i65
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i52.le = getelementptr i8, ptr %n.085.i.i51, i32 -144
  br label %while.cond10.i.i74.preheader

while.cond10.i.i74.preheader:                     ; preds = %while.end.i.i70.loopexit, %if.end9.i50.while.cond10.i.i74.preheader_crit_edge
  %prev_entry.1.i.i71.ph = phi ptr [ %add.ptr.i.i52.le, %while.end.i.i70.loopexit ], [ null, %if.end9.i50.while.cond10.i.i74.preheader_crit_edge ]
  %prev.1.i.i72.ph = phi ptr [ %n.085.i.i51, %while.end.i.i70.loopexit ], [ null, %if.end9.i50.while.cond10.i.i74.preheader_crit_edge ]
  br label %while.cond10.i.i74

while.cond10.i.i74:                               ; preds = %if.end18.i.i84.while.cond10.i.i74_crit_edge, %while.cond10.i.i74.preheader
  %prev_entry.1.i.i71 = phi ptr [ %add.ptr21.i.i81, %if.end18.i.i84.while.cond10.i.i74_crit_edge ], [ %prev_entry.1.i.i71.ph, %while.cond10.i.i74.preheader ]
  %prev.1.i.i72 = phi ptr [ %call15.i.i78, %if.end18.i.i84.while.cond10.i.i74_crit_edge ], [ %prev.1.i.i72.ph, %while.cond10.i.i74.preheader ]
  %tobool11.not.i.i73 = icmp eq ptr %prev.1.i.i72, null
  br i1 %tobool11.not.i.i73, label %while.cond10.i.i74.if.end20_crit_edge, label %land.rhs.i.i77

while.cond10.i.i74.if.end20_crit_edge:            ; preds = %while.cond10.i.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.rhs.i.i77:                                   ; preds = %while.cond10.i.i74
  %41 = ptrtoint ptr %prev_entry.1.i.i71 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %prev_entry.1.i.i71, align 8
  %num_bytes.i77.i.i75 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %prev_entry.1.i.i71, i32 0, i32 2
  %43 = ptrtoint ptr %num_bytes.i77.i.i75 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %num_bytes.i77.i.i75, align 8
  %45 = tail call i64 @llvm.uadd.sat.i64(i64 %42, i64 %44) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %add)
  %cmp13.not.i.i76 = icmp ugt i64 %45, %add
  br i1 %cmp13.not.i.i76, label %land.rhs.i.i77.land.rhs35.i.i90.preheader_crit_edge, label %while.body14.i.i80

land.rhs.i.i77.land.rhs35.i.i90.preheader_crit_edge: ; preds = %land.rhs.i.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i90.preheader

while.body14.i.i80:                               ; preds = %land.rhs.i.i77
  %call15.i.i78 = tail call ptr @rb_next(ptr noundef nonnull %prev.1.i.i72) #10
  %tobool16.not.i.i79 = icmp eq ptr %call15.i.i78, null
  br i1 %tobool16.not.i.i79, label %while.body14.i.i80.land.rhs35.i.i90.preheader_crit_edge, label %if.end18.i.i84

while.body14.i.i80.land.rhs35.i.i90.preheader_crit_edge: ; preds = %while.body14.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i90.preheader

if.end18.i.i84:                                   ; preds = %while.body14.i.i80
  %add.ptr21.i.i81 = getelementptr i8, ptr %call15.i.i78, i32 -144
  %46 = ptrtoint ptr %add.ptr21.i.i81 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr21.i.i81, align 8
  %num_bytes.i78.i.i82 = getelementptr i8, ptr %call15.i.i78, i32 -128
  %48 = ptrtoint ptr %num_bytes.i78.i.i82 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %num_bytes.i78.i.i82, align 8
  %50 = tail call i64 @llvm.uadd.sat.i64(i64 %47, i64 %49) #10
  %cmp23.i.i83 = icmp ugt i64 %50, %add
  br i1 %cmp23.i.i83, label %if.end18.i.i84.land.rhs35.i.i90.preheader_crit_edge, label %if.end18.i.i84.while.cond10.i.i74_crit_edge

if.end18.i.i84.while.cond10.i.i74_crit_edge:      ; preds = %if.end18.i.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond10.i.i74

if.end18.i.i84.land.rhs35.i.i90.preheader_crit_edge: ; preds = %if.end18.i.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i90.preheader

land.rhs35.i.i90.preheader:                       ; preds = %if.end18.i.i84.land.rhs35.i.i90.preheader_crit_edge, %while.body14.i.i80.land.rhs35.i.i90.preheader_crit_edge, %land.rhs.i.i77.land.rhs35.i.i90.preheader_crit_edge
  br label %land.rhs35.i.i90

land.rhs35.i.i90:                                 ; preds = %while.body39.i.i93.land.rhs35.i.i90_crit_edge, %land.rhs35.i.i90.preheader
  %call40.sink.i.i86 = phi ptr [ %call40.i.i91, %while.body39.i.i93.land.rhs35.i.i90_crit_edge ], [ %prev.1.i.i72, %land.rhs35.i.i90.preheader ]
  %add.ptr46.i.i87 = getelementptr i8, ptr %call40.sink.i.i86, i32 -144
  %51 = ptrtoint ptr %add.ptr46.i.i87 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %add.ptr46.i.i87, align 8
  %num_bytes.i79.i.i88 = getelementptr i8, ptr %call40.sink.i.i86, i32 -128
  %53 = ptrtoint ptr %num_bytes.i79.i.i88 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %num_bytes.i79.i.i88, align 8
  %55 = tail call i64 @llvm.uadd.sat.i64(i64 %52, i64 %54) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %add)
  %cmp37.i.i89 = icmp ugt i64 %55, %add
  br i1 %cmp37.i.i89, label %while.body39.i.i93, label %land.rhs35.i.i90.if.end5.sink.split_crit_edge

land.rhs35.i.i90.if.end5.sink.split_crit_edge:    ; preds = %land.rhs35.i.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.sink.split

while.body39.i.i93:                               ; preds = %land.rhs35.i.i90
  %call40.i.i91 = tail call ptr @rb_prev(ptr noundef nonnull %call40.sink.i.i86) #10
  %tobool41.not.i.i92 = icmp eq ptr %call40.i.i91, null
  br i1 %tobool41.not.i.i92, label %while.body39.i.i93.if.end5.sink.split_crit_edge, label %while.body39.i.i93.land.rhs35.i.i90_crit_edge

while.body39.i.i93.land.rhs35.i.i90_crit_edge:    ; preds = %while.body39.i.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs35.i.i90

while.body39.i.i93.if.end5.sink.split_crit_edge:  ; preds = %while.body39.i.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %while.body39.i.i93.if.end5.sink.split_crit_edge, %land.rhs35.i.i90.if.end5.sink.split_crit_edge, %if.else.i.i59.if.end5.sink.split_crit_edge, %while.body39.i.i.if.end5.sink.split_crit_edge, %land.rhs35.i.i.if.end5.sink.split_crit_edge, %if.else.i.i.if.end5.sink.split_crit_edge
  %ret.0.ph.i94.sink = phi ptr [ %call40.sink.i.i86, %while.body39.i.i93.if.end5.sink.split_crit_edge ], [ %call40.sink.i.i86, %land.rhs35.i.i90.if.end5.sink.split_crit_edge ], [ %n.085.i.i51, %if.else.i.i59.if.end5.sink.split_crit_edge ], [ %call40.sink.i.i, %while.body39.i.i.if.end5.sink.split_crit_edge ], [ %call40.sink.i.i, %land.rhs35.i.i.if.end5.sink.split_crit_edge ], [ %n.085.i.i, %if.else.i.i.if.end5.sink.split_crit_edge ]
  %56 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %ret.0.ph.i94.sink, ptr %last.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %land.lhs.true.i47.if.end5_crit_edge, %land.lhs.true.i.if.end5_crit_edge
  %node.0 = phi ptr [ %1, %land.lhs.true.i.if.end5_crit_edge ], [ %29, %land.lhs.true.i47.if.end5_crit_edge ], [ %ret.0.ph.i94.sink, %if.end5.sink.split ]
  %add.i98 = add i64 %len, %file_offset
  br label %while.cond

while.cond:                                       ; preds = %if.end13.while.cond_crit_edge, %if.end5
  %node.1 = phi ptr [ %node.0, %if.end5 ], [ %call14, %if.end13.while.cond_crit_edge ]
  %add.ptr = getelementptr i8, ptr %node.1, i32 -144
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i98, i64 %58)
  %cmp.not.i99 = icmp ugt i64 %add.i98, %58
  br i1 %cmp.not.i99, label %range_overlaps.exit, label %while.cond.if.end20_crit_edge

while.cond.if.end20_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

range_overlaps.exit:                              ; preds = %while.cond
  %num_bytes.i100 = getelementptr i8, ptr %node.1, i32 -128
  %59 = ptrtoint ptr %num_bytes.i100 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %num_bytes.i100, align 8
  %add4.i = add i64 %60, %58
  call void @__sanitizer_cov_trace_cmp8(i64 %add4.i, i64 %file_offset)
  %cmp5.not.i.not = icmp ugt i64 %add4.i, %file_offset
  br i1 %cmp5.not.i.not, label %out, label %if.end13

if.end13:                                         ; preds = %range_overlaps.exit
  %call14 = tail call ptr @rb_next(ptr noundef nonnull %node.1) #10
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.if.end20_crit_edge, label %if.end13.while.cond_crit_edge

if.end13.while.cond_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

out:                                              ; preds = %range_overlaps.exit
  %add.ptr.le = getelementptr i8, ptr %node.1, i32 -144
  %tobool18.not = icmp eq ptr %add.ptr.le, null
  br i1 %tobool18.not, label %out.if.end20_crit_edge, label %if.then19

out.if.end20_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %out
  %refs = getelementptr i8, ptr %node.1, i32 -76
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #10
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #10, !srcloc !92
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then19.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !90

if.then19.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then19
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %62 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %.not.i.i.i = icmp sgt i32 %62, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end20_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !88

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end20_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then19.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then19.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #10
  br label %if.end20

if.end20:                                         ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end20_crit_edge, %out.if.end20_crit_edge, %if.end13.if.end20_crit_edge, %while.cond.if.end20_crit_edge, %while.cond10.i.i74.if.end20_crit_edge
  %entry1.0110 = phi ptr [ null, %out.if.end20_crit_edge ], [ %add.ptr.le, %if.else.i.i.i.if.end20_crit_edge ], [ %add.ptr.le, %if.end15.sink.split.i.i.i ], [ null, %if.end13.if.end20_crit_edge ], [ null, %while.cond.if.end20_crit_edge ], [ null, %while.cond10.i.i74.if.end20_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %ordered_tree) #10
  ret ptr %entry1.0110
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_get_ordered_extents_for_logging(ptr noundef %inode, ptr noundef %list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ordered_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8
  %i_rwsem.i = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 37, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #10
  %0 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i.not = icmp eq i32 %1, 0
  br i1 %cmp.i.i.not, label %cond.false, label %cond.end, !prof !90

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.11, i32 noundef 887) #13
  unreachable

cond.end:                                         ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef %ordered_tree) #10
  %tree3 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8, i32 1
  %call4 = tail call ptr @rb_first(ptr noundef %tree3) #10
  %tobool5.not30 = icmp eq ptr %call4, null
  br i1 %tobool5.not30, label %cond.end.for.end_crit_edge, label %for.body.lr.ph

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %n.031 = phi ptr [ %call4, %for.body.lr.ph ], [ %call20, %cleanup.for.body_crit_edge ]
  %flags = getelementptr i8, ptr %n.031, i32 -88
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %log_list = getelementptr i8, ptr %n.031, i32 -60
  %5 = ptrtoint ptr %log_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %log_list, align 4
  %cmp.i.not = icmp eq ptr %6, %log_list
  br i1 %cmp.i.not, label %cond.end18, label %cond.false17, !prof !88

cond.false17:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.12, i32 noundef 898) #13
  unreachable

cond.end18:                                       ; preds = %if.end
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %log_list, ptr noundef %8, ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %cond.end18.list_add_tail.exit_crit_edge

cond.end18.list_add_tail.exit_crit_edge:          ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %log_list, ptr %prev.i, align 4
  %10 = ptrtoint ptr %log_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %log_list, align 4
  %prev3.i.i = getelementptr i8, ptr %n.031, i32 -56
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %log_list, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %cond.end18.list_add_tail.exit_crit_edge
  %refs = getelementptr i8, ptr %n.031, i32 -76
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #10, !srcloc !92
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %list_add_tail.exit.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !90

list_add_tail.exit.if.end15.sink.split.i.i.i_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %list_add_tail.exit
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !88

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %list_add_tail.exit.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %list_add_tail.exit.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %call20 = tail call ptr @rb_next(ptr noundef nonnull %n.031) #10
  %tobool5.not = icmp eq ptr %call20, null
  br i1 %tobool5.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %cond.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %ordered_tree) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_lookup_first_ordered_range(ptr noundef %inode, i64 noundef %file_offset, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ordered_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %ordered_tree) #10
  %tree2 = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %tree2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.085 = load ptr, ptr %tree2, align 4
  %tobool.not86 = icmp eq ptr %node.085, null
  br i1 %tobool.not86, label %entry.if.end41_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %entry.while.body_crit_edge
  %node.087 = phi ptr [ %node.0, %if.end7.while.body_crit_edge ], [ %node.085, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %node.087, i32 -144
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %file_offset)
  %cmp = icmp ugt i64 %2, %file_offset
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %node.087, i32 0, i32 2
  br label %if.end7

if.else:                                          ; preds = %while.body
  %num_bytes.i = getelementptr i8, ptr %node.087, i32 -128
  %3 = ptrtoint ptr %num_bytes.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %num_bytes.i, align 8
  %5 = tail call i64 @llvm.uadd.sat.i64(i64 %2, i64 %4) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %file_offset)
  %cmp4.not = icmp ugt i64 %5, %file_offset
  br i1 %cmp4.not, label %out.loopexit, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %node.087, i32 0, i32 1
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then
  %node.1.in = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then5 ]
  %6 = ptrtoint ptr %node.1.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.0 = load ptr, ptr %node.1.in, align 4
  %tobool.not = icmp eq ptr %node.0, null
  br i1 %tobool.not, label %while.end, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end7
  %add.ptr.le = getelementptr i8, ptr %node.087, i32 -144
  %tobool8.not = icmp eq ptr %add.ptr.le, null
  br i1 %tobool8.not, label %while.end.if.end41_crit_edge, label %if.end10

while.end.if.end41_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end10:                                         ; preds = %while.end
  %7 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr.le, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %file_offset)
  %cmp13 = icmp ult i64 %8, %file_offset
  br i1 %cmp13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call ptr @rb_next(ptr noundef %node.087) #10
  br label %if.end18

if.else16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call ptr @rb_prev(ptr noundef %node.087) #10
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.then14
  %next.0 = phi ptr [ %call15, %if.then14 ], [ %node.087, %if.else16 ]
  %prev.0 = phi ptr [ %node.087, %if.then14 ], [ %call17, %if.else16 ]
  %tobool19.not = icmp eq ptr %prev.0, null
  br i1 %tobool19.not, label %if.end18.if.end28_crit_edge, label %if.then20

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then20:                                        ; preds = %if.end18
  %add.ptr23 = getelementptr i8, ptr %prev.0, i32 -144
  %add.i = add i64 %len, %file_offset
  %9 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr23, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %10)
  %cmp.not.i = icmp ugt i64 %add.i, %10
  br i1 %cmp.not.i, label %range_overlaps.exit, label %if.then20.if.end28_crit_edge

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

range_overlaps.exit:                              ; preds = %if.then20
  %num_bytes.i67 = getelementptr i8, ptr %prev.0, i32 -128
  %11 = ptrtoint ptr %num_bytes.i67 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %num_bytes.i67, align 8
  %add4.i = add i64 %12, %10
  call void @__sanitizer_cov_trace_cmp8(i64 %add4.i, i64 %file_offset)
  %cmp5.not.i.not = icmp ugt i64 %add4.i, %file_offset
  br i1 %cmp5.not.i.not, label %range_overlaps.exit.out_crit_edge, label %range_overlaps.exit.if.end28_crit_edge

range_overlaps.exit.if.end28_crit_edge:           ; preds = %range_overlaps.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

range_overlaps.exit.out_crit_edge:                ; preds = %range_overlaps.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end28:                                         ; preds = %range_overlaps.exit.if.end28_crit_edge, %if.then20.if.end28_crit_edge, %if.end18.if.end28_crit_edge
  %tobool29.not = icmp eq ptr %next.0, null
  br i1 %tobool29.not, label %if.end28.if.end41_crit_edge, label %if.then30

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then30:                                        ; preds = %if.end28
  %add.ptr33 = getelementptr i8, ptr %next.0, i32 -144
  %add.i68 = add i64 %len, %file_offset
  %13 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %add.ptr33, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i68, i64 %14)
  %cmp.not.i69 = icmp ugt i64 %add.i68, %14
  br i1 %cmp.not.i69, label %range_overlaps.exit76, label %if.then30.if.end41_crit_edge

if.then30.if.end41_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

range_overlaps.exit76:                            ; preds = %if.then30
  %num_bytes.i70 = getelementptr i8, ptr %next.0, i32 -128
  %15 = ptrtoint ptr %num_bytes.i70 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %num_bytes.i70, align 8
  %add4.i71 = add i64 %16, %14
  call void @__sanitizer_cov_trace_cmp8(i64 %add4.i71, i64 %file_offset)
  %cmp5.not.i72.not = icmp ugt i64 %add4.i71, %file_offset
  br i1 %cmp5.not.i72.not, label %range_overlaps.exit76.out_crit_edge, label %range_overlaps.exit76.if.end41_crit_edge

range_overlaps.exit76.if.end41_crit_edge:         ; preds = %range_overlaps.exit76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

range_overlaps.exit76.out_crit_edge:              ; preds = %range_overlaps.exit76
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out.loopexit:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.le94 = getelementptr i8, ptr %node.087, i32 -144
  br label %out

out:                                              ; preds = %out.loopexit, %range_overlaps.exit76.out_crit_edge, %range_overlaps.exit.out_crit_edge
  %entry1.1 = phi ptr [ %add.ptr23, %range_overlaps.exit.out_crit_edge ], [ %add.ptr33, %range_overlaps.exit76.out_crit_edge ], [ %add.ptr.le94, %out.loopexit ]
  %tobool39.not = icmp eq ptr %entry1.1, null
  br i1 %tobool39.not, label %out.if.end41_crit_edge, label %if.then40

out.if.end41_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then40:                                        ; preds = %out
  %refs = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %entry1.1, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #10, !srcloc !92
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then40.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !90

if.then40.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then40
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end41_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !88

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end41_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then40.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then40.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #10
  br label %if.end41

if.end41:                                         ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end41_crit_edge, %out.if.end41_crit_edge, %range_overlaps.exit76.if.end41_crit_edge, %if.then30.if.end41_crit_edge, %if.end28.if.end41_crit_edge, %while.end.if.end41_crit_edge, %entry.if.end41_crit_edge
  %entry1.183 = phi ptr [ null, %out.if.end41_crit_edge ], [ %entry1.1, %if.else.i.i.i.if.end41_crit_edge ], [ %entry1.1, %if.end15.sink.split.i.i.i ], [ null, %while.end.if.end41_crit_edge ], [ null, %if.then30.if.end41_crit_edge ], [ null, %range_overlaps.exit76.if.end41_crit_edge ], [ null, %if.end28.if.end41_crit_edge ], [ null, %entry.if.end41_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %ordered_tree) #10
  ret ptr %entry1.183
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_lock_and_flush_ordered_range(ptr noundef %inode, i64 noundef %start, i64 noundef %end, ptr noundef %cached_state) local_unnamed_addr #0 align 64 {
entry:
  %cache = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cache) #10
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cache, align 4
  %tobool.not = icmp eq ptr %cached_state, null
  %spec.select = select i1 %tobool.not, ptr %cache, ptr %cached_state
  %io_tree = getelementptr inbounds %struct.btrfs_inode, ptr %inode, i32 0, i32 4
  %sub = sub i64 1, %start
  %add = add i64 %sub, %end
  %call22 = call i32 @lock_extent_bits(ptr noundef %io_tree, i64 noundef %start, i64 noundef %end, ptr noundef nonnull %spec.select) #10
  %call123 = call ptr @btrfs_lookup_ordered_range(ptr noundef %inode, i64 noundef %start, i64 noundef %add)
  %tobool2.not24 = icmp eq ptr %call123, null
  br i1 %tobool2.not24, label %entry.if.then3_crit_edge, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  br label %if.end7

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %if.end7.if.then3_crit_edge, %entry.if.then3_crit_edge
  br i1 %tobool.not, label %if.then5, label %if.then3.while.end_crit_edge

if.then3.while.end_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then5:                                         ; preds = %if.then3
  %1 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cache, align 4
  %refs = getelementptr inbounds %struct.extent_state, ptr %2, i32 0, i32 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !93
  call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #10
  %3 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #10, !srcloc !94
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.then5.while.end_crit_edge, !prof !90

if.then5.while.end_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then3.i.i:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 4) #10
  br label %while.end

if.end7:                                          ; preds = %if.end7.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call125 = phi ptr [ %call1, %if.end7.if.end7_crit_edge ], [ %call123, %entry.if.end7_crit_edge ]
  %call.i = call i32 @__clear_extent_bit(ptr noundef %io_tree, i64 noundef %start, i64 noundef %end, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef %spec.select, i32 noundef 3136, ptr noundef null) #10
  call void @btrfs_start_ordered_extent(ptr noundef nonnull %call125, i32 noundef 1)
  call void @btrfs_put_ordered_extent(ptr noundef nonnull %call125)
  %call = call i32 @lock_extent_bits(ptr noundef %io_tree, i64 noundef %start, i64 noundef %end, ptr noundef nonnull %spec.select) #10
  %call1 = call ptr @btrfs_lookup_ordered_range(ptr noundef %inode, i64 noundef %start, i64 noundef %add)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end7.if.then3_crit_edge, label %if.end7.if.end7_crit_edge

if.end7.if.end7_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7.if.then3_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

while.end:                                        ; preds = %if.then3.i.i, %if.then5.while.end_crit_edge, %if.then3.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cache) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_extent_bits(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_split_ordered_extent(ptr noundef %ordered, i64 noundef %pre, i64 noundef %post) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %inode1 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 11
  %0 = ptrtoint ptr %inode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode1, align 8
  %ordered_tree = getelementptr i8, ptr %1, i32 -428
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @_raw_spin_lock_irq(ptr noundef %ordered_tree) #10
  %rb_node = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 15
  %tree3 = getelementptr i8, ptr %1, i32 -384
  tail call void @rb_erase(ptr noundef %rb_node, ptr noundef %tree3) #10
  %6 = ptrtoint ptr %rb_node to i32
  %7 = ptrtoint ptr %rb_node to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rb_node, align 4
  %last = getelementptr i8, ptr %1, i32 -380
  %8 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %last, align 4
  %cmp = icmp eq ptr %9, %rb_node
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %last, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %ordered to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ordered, align 8
  %add = add i64 %12, %pre
  store i64 %add, ptr %ordered, align 8
  %disk_bytenr = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 1
  %13 = ptrtoint ptr %disk_bytenr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %disk_bytenr, align 8
  %add5 = add i64 %14, %pre
  store i64 %add5, ptr %disk_bytenr, align 8
  %add6 = add i64 %post, %pre
  %num_bytes = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 2
  %15 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %num_bytes, align 8
  %sub = sub i64 %16, %add6
  store i64 %sub, ptr %num_bytes, align 8
  %disk_num_bytes = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 3
  %17 = ptrtoint ptr %disk_num_bytes to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %disk_num_bytes, align 8
  %sub8 = sub i64 %18, %add6
  store i64 %sub8, ptr %disk_num_bytes, align 8
  %bytes_left = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 4
  %19 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %bytes_left, align 8
  %sub10 = sub i64 %20, %add6
  store i64 %sub10, ptr %bytes_left, align 8
  %21 = ptrtoint ptr %tree3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tree3, align 4
  %tobool.not22.i = icmp eq ptr %22, null
  br i1 %tobool.not22.i, label %if.end.if.end23_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %23 = phi ptr [ %30, %if.end6.i.while.body.i_crit_edge ], [ %22, %if.end.while.body.i_crit_edge ]
  %add.ptr.i70 = getelementptr i8, ptr %23, i32 -144
  %24 = ptrtoint ptr %add.ptr.i70 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.i70, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %add)
  %cmp.i = icmp ugt i64 %25, %add
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  %num_bytes.i.i = getelementptr i8, ptr %23, i32 -128
  %26 = ptrtoint ptr %num_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %num_bytes.i.i, align 8
  %28 = tail call i64 @llvm.uadd.sat.i64(i64 %25, i64 %27) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %add)
  %cmp3.not.i = icmp ugt i64 %28, %add
  br i1 %cmp3.not.i, label %do.body, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %29 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast.le.i = ptrtoint ptr %23 to i32
  br label %if.end23

do.body:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %ordered to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ordered, align 8
  tail call void (ptr, ptr, i32, i32, ptr, ...) @__btrfs_panic(ptr noundef %5, ptr noundef nonnull @__func__.btrfs_split_ordered_extent, i32 noundef 1121, i32 noundef -17, ptr noundef nonnull @.str.13, i64 noundef %32) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ordered-data.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1121, 0\0A.popsection", ""() #10, !srcloc !112
  unreachable

if.end23:                                         ; preds = %while.cond.while.end_crit_edge.i, %if.end.if.end23_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end.if.end23_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %tree3, %if.end.if.end23_crit_edge ]
  %33 = ptrtoint ptr %rb_node to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %parent.0.lcssa.i, ptr %rb_node, align 4
  %rb_right.i.i = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 15, i32 1
  %34 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 15, i32 2
  %35 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %rb_left.i.i, align 4
  %36 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %rb_node, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %rb_node, ptr noundef %tree3) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %ordered_tree) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pre)
  %tobool25.not = icmp eq i64 %pre, 0
  br i1 %tobool25.not, label %if.end23.land.lhs.true_crit_edge, label %if.end28

if.end23.land.lhs.true_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end28:                                         ; preds = %if.end23
  %call27 = tail call fastcc i32 @clone_ordered_extent(ptr noundef %ordered, i64 noundef 0, i64 noundef %pre)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp29 = icmp eq i32 %call27, 0
  br i1 %cmp29, label %if.end28.land.lhs.true_crit_edge, label %if.end28.if.end35_crit_edge

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end28.land.lhs.true_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end28.land.lhs.true_crit_edge, %if.end23.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %post)
  %tobool30.not = icmp eq i64 %post, 0
  br i1 %tobool30.not, label %land.lhs.true.if.end35_crit_edge, label %if.then31

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %disk_num_bytes to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %disk_num_bytes, align 8
  %add33 = add i64 %38, %pre
  %call34 = tail call fastcc i32 @clone_ordered_extent(ptr noundef %ordered, i64 noundef %add33, i64 noundef %post)
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %land.lhs.true.if.end35_crit_edge, %if.end28.if.end35_crit_edge
  %ret.1 = phi i32 [ %call34, %if.then31 ], [ 0, %land.lhs.true.if.end35_crit_edge ], [ %call27, %if.end28.if.end35_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_panic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clone_ordered_extent(ptr noundef %ordered, i64 noundef %pos, i64 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %inode1 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 11
  %0 = ptrtoint ptr %inode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode1, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -864
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %fs_info2 = getelementptr inbounds %struct.btrfs_root, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info2, align 8
  %6 = ptrtoint ptr %ordered to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ordered, align 8
  %add = add i64 %7, %pos
  %disk_bytenr4 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 1
  %8 = ptrtoint ptr %disk_bytenr4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %disk_bytenr4, align 8
  %add5 = add i64 %9, %pos
  %flags = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 7
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and = and i32 %11, -17
  %compress_type6 = getelementptr inbounds %struct.btrfs_ordered_extent, ptr %ordered, i32 0, i32 8
  %12 = ptrtoint ptr %compress_type6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %compress_type6, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %and) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp = icmp ugt i32 %call.i.i, 1
  br i1 %cmp, label %land.rhs, label %if.end34

land.rhs:                                         ; preds = %entry
  %.b142 = load i1, ptr @clone_ordered_extent.__already_done, align 1
  br i1 %.b142, label %land.rhs.if.else_crit_edge, label %if.then, !prof !88

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @clone_ordered_extent.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1064, i32 noundef 9, ptr noundef null) #10
  br label %if.else

if.end34:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool42.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool42.not, label %if.end34.if.end45_crit_edge, label %if.end34.if.else_crit_edge

if.end34.if.else_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end34.if.end45_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.else:                                          ; preds = %if.end34.if.else_crit_edge, %if.then, %land.rhs.if.else_crit_edge
  %14 = tail call i32 @llvm.cttz.i32(i32 %and, i1 false) #10, !range !113
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.end34.if.end45_crit_edge
  %type.0 = phi i32 [ %14, %if.else ], [ 0, %if.end34.if.end45_crit_edge ]
  %ordered_bytes = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 96
  %sub = sub i64 0, %len
  %delalloc_batch = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 98
  %15 = ptrtoint ptr %delalloc_batch to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delalloc_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %ordered_bytes, i64 noundef %sub, i32 noundef %16) #10
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool48.not = icmp eq i32 %19, 0
  br i1 %tobool48.not, label %if.else100, label %land.end56

land.end56:                                       ; preds = %if.end45
  %.b140141 = load i1, ptr @clone_ordered_extent.__already_done.26, align 1
  br i1 %.b140141, label %land.end56.if.end90_crit_edge, label %if.then63, !prof !88

land.end56.if.end90_crit_edge:                    ; preds = %land.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then63:                                        ; preds = %land.end56
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @clone_ordered_extent.__already_done.26, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1078, i32 noundef 9, ptr noundef null) #10
  br label %if.end90

if.end90:                                         ; preds = %if.then63, %land.end56.if.end90_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %cond.false.i147, label %btrfs_add_ordered_extent_compress.exit, !prof !90

cond.false.i147:                                  ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 278) #15
  unreachable

btrfs_add_ordered_extent_compress.exit:           ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call fastcc i32 @__btrfs_add_ordered_extent(ptr noundef %add.ptr.i, i64 noundef %add, i64 noundef %add5, i64 noundef %len, i64 noundef %len, i32 noundef 3, i32 noundef 0, i32 noundef %13) #10
  br label %if.end111

if.else100:                                       ; preds = %if.end45
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags, align 4
  %22 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool103.not = icmp eq i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type.0)
  %switch.i151 = icmp ult i32 %type.0, 3
  br i1 %tobool103.not, label %if.else107, label %if.then104

if.then104:                                       ; preds = %if.else100
  br i1 %switch.i151, label %btrfs_add_ordered_extent_dio.exit, label %cond.false.critedge.i

cond.false.critedge.i:                            ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 268) #15
  unreachable

btrfs_add_ordered_extent_dio.exit:                ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  %call.i149 = tail call fastcc i32 @__btrfs_add_ordered_extent(ptr noundef %add.ptr.i, i64 noundef %add, i64 noundef %add5, i64 noundef %len, i64 noundef %len, i32 noundef %type.0, i32 noundef 1, i32 noundef 0) #10
  br label %if.end111

if.else107:                                       ; preds = %if.else100
  br i1 %switch.i151, label %btrfs_add_ordered_extent.exit, label %cond.false.critedge.i152

cond.false.critedge.i152:                         ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 256) #15
  unreachable

btrfs_add_ordered_extent.exit:                    ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #12
  %call.i153 = tail call fastcc i32 @__btrfs_add_ordered_extent(ptr noundef %add.ptr.i, i64 noundef %add, i64 noundef %add5, i64 noundef %len, i64 noundef %len, i32 noundef %type.0, i32 noundef 0, i32 noundef 0) #10
  br label %if.end111

if.end111:                                        ; preds = %btrfs_add_ordered_extent.exit, %btrfs_add_ordered_extent_dio.exit, %btrfs_add_ordered_extent_compress.exit
  %ret.0 = phi i32 [ %call.i, %btrfs_add_ordered_extent_compress.exit ], [ %call.i149, %btrfs_add_ordered_extent_dio.exit ], [ %call.i153, %btrfs_add_ordered_extent.exit ]
  ret i32 %ret.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ordered_data_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.14, i32 noundef 392, i32 noundef 0, i32 noundef 1048576, ptr noundef null) #10
  store ptr %call, ptr @btrfs_ordered_extent_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ordered_data_exit() local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @btrfs_ordered_extent_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_qgroup_free_data(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_qgroup_release_data(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_ordered_extent_add(ptr noundef %inode, ptr noundef %ordered) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_ordered_extent_add, i32 0, i32 1), ptr blockaddress(@trace_btrfs_ordered_extent_add, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !96

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !88

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !114
  %call42 = tail call i32 @__traceiter_btrfs_ordered_extent_add(ptr noundef null, ptr noundef %inode, ptr noundef %ordered) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !115
  %13 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !88

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_ordered_extent_add, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_ordered_extent_add, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_ordered_extent_add.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_btrfs_ordered_extent_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 572, ptr noundef nonnull @.str.23) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %31 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_ordered_extent_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_ordered_extent_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_inode_mod_outstanding_extents(ptr noundef %root, i64 noundef %ino, i32 noundef %mod) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_inode_mod_outstanding_extents, i32 0, i32 1), ptr blockaddress(@trace_btrfs_inode_mod_outstanding_extents, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !96

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !88

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !116
  %call42 = tail call i32 @__traceiter_btrfs_inode_mod_outstanding_extents(ptr noundef null, ptr noundef %root, i64 noundef %ino, i32 noundef %mod) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !117
  %13 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !88

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !75) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_inode_mod_outstanding_extents, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_inode_mod_outstanding_extents, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_inode_mod_outstanding_extents.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_btrfs_inode_mod_outstanding_extents.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 1864, ptr noundef nonnull @.str.23) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %31 = tail call i32 @llvm.read_register.i32(metadata !75) #10
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
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_inode_mod_outstanding_extents(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_ordered_extent_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_ordered_extent_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clear_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold noreturn }
attributes #14 = { cold nounwind }
attributes #15 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !35, !36, !37, !38, !40, !42, !43, !45, !46, !48, !49, !51, !52, !53, !54, !56, !57, !59, !60, !62, !64, !65, !67, !68, !70, !71, !73}
!llvm.named.register.sp = !{!75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/ordered-data.c", i32 254, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/btrfs/ordered-data.c", i32 278, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/btrfs/ordered-data.c", i32 335, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/btrfs/ordered-data.c", i32 387, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/btrfs/ordered-data.c", i32 407, i32 4}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/btrfs/ordered-data.c", i32 483, i32 3}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/btrfs/ordered-data.c", i32 519, i32 3}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/btrfs/ordered-data.c", i32 520, i32 3}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/btrfs/ordered-data.c", i32 521, i32 3}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/btrfs/ordered-data.c", i32 588, i32 3}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/btrfs/ordered-data.c", i32 887, i32 2}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/btrfs/ordered-data.c", i32 898, i32 3}
!25 = !{ptr @__func__.btrfs_split_ordered_extent, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/btrfs/ordered-data.c", i32 1119, i32 3}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/btrfs/ordered-data.c", i32 1136, i32 49}
!30 = !{ptr @btrfs_ordered_extent_cache, !31, !"btrfs_ordered_extent_cache", i1 false, i1 false}
!31 = !{!"../fs/btrfs/ordered-data.c", i32 21, i32 27}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @assertfail._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @assertfail._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/btrfs/ordered-data.c", i32 194, i32 2}
!40 = !{ptr @__btrfs_add_ordered_extent.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../fs/btrfs/ordered-data.c", i32 208, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__func__.__btrfs_add_ordered_extent, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/btrfs/ordered-data.c", i32 221, i32 3}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @init_completion.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../include/linux/completion.h", i32 87, i32 2}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/trace/events/btrfs.h", i32 566, i32 1}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!53 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/trace/events/btrfs.h", i32 590, i32 1}
!59 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/btrfs/btrfs_inode.h", i32 313, i32 2}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/trace/events/btrfs.h", i32 1844, i32 1}
!64 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../include/trace/events/btrfs.h", i32 574, i32 1}
!67 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../include/trace/events/btrfs.h", i32 582, i32 1}
!70 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../fs/btrfs/ordered-data.c", i32 1064, i32 2}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../fs/btrfs/ordered-data.c", i32 1078, i32 3}
!75 = !{!"sp"}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2158336990, i64 2158337472, i64 2158337027, i64 2158337083, i64 2158337117, i64 2158337141, i64 2158337182, i64 2158337203, i64 2158337231, i64 2158337265}
!86 = !{!"branch_weights", i32 8003, i32 1}
!87 = !{i64 2158482451, i64 2158482939, i64 2158482488, i64 2158482544, i64 2158482578, i64 2158482602, i64 2158482643, i64 2158482664, i64 2158482692, i64 2158482726}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{i64 2158484083, i64 2158484571, i64 2158484120, i64 2158484176, i64 2158484210, i64 2158484234, i64 2158484275, i64 2158484296, i64 2158484324, i64 2158484358}
!90 = !{!"branch_weights", i32 1, i32 2000}
!91 = !{i64 2149367942}
!92 = !{i64 2148612407, i64 2148612439, i64 2148612468, i64 2148612502, i64 2148612533, i64 2148612556}
!93 = !{i64 2148700432}
!94 = !{i64 2148614872, i64 2148614904, i64 2148614933, i64 2148614967, i64 2148614998, i64 2148615021}
!95 = !{i64 2149898205}
!96 = !{i64 2148231603, i64 2148231608, i64 2148231621, i64 2148231665, i64 2148231699, i64 2148231720}
!97 = !{i64 2155367534}
!98 = !{i64 2155367773}
!99 = !{i64 2149956307}
!100 = !{i64 2149957343}
!101 = !{i64 2148699353}
!102 = !{i64 2148614062, i64 2148614094, i64 2148614123, i64 2148614157, i64 2148614188, i64 2148614211}
!103 = !{i64 2148699582}
!104 = !{i64 2158498987, i64 2158499475, i64 2158499024, i64 2158499080, i64 2158499114, i64 2158499138, i64 2158499179, i64 2158499200, i64 2158499228, i64 2158499262}
!105 = !{i64 2155331296}
!106 = !{i64 2155331541}
!107 = !{i64 1096390, i64 1096414, i64 1096435, i64 1096452, i64 1096469}
!108 = !{!"branch_weights", i32 2002, i32 2000}
!109 = !{i64 2158515248, i64 2158515736, i64 2158515285, i64 2158515341, i64 2158515375, i64 2158515399, i64 2158515440, i64 2158515461, i64 2158515489, i64 2158515523}
!110 = !{i64 2155349480}
!111 = !{i64 2155349723}
!112 = !{i64 2158531073, i64 2158531562, i64 2158531110, i64 2158531166, i64 2158531200, i64 2158531224, i64 2158531265, i64 2158531286, i64 2158531314, i64 2158531348}
!113 = !{i32 0, i32 33}
!114 = !{i64 2155309175}
!115 = !{i64 2155309414}
!116 = !{i64 2156262909}
!117 = !{i64 2156263170}
