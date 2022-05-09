; ModuleID = '/llk/IR_all_yes/fs/btrfs/block-group.c_pt.bc'
source_filename = "../fs/btrfs/block-group.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.btrfs_raid_attr = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%union.anon.57 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.84, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.84 = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_fs_devices = type { [16 x i8], [16 x i8], i8, %struct.list_head, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32, i8, ptr, %struct.kobject, ptr, ptr, %struct.completion, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.btrfs_balance_args = type { i64, %union.anon.80, i64, i64, i64, i64, i64, i64, i64, %union.anon.82, i32, i32, [6 x i64] }
%union.anon.80 = type { i64 }
%union.anon.82 = type { i64 }
%struct.btrfs_balance_control = type { %struct.btrfs_balance_args, %struct.btrfs_balance_args, %struct.btrfs_balance_args, i64, %struct.btrfs_balance_progress }
%struct.btrfs_balance_progress = type { i64, i64, i64 }
%struct.btrfs_block_group = type { ptr, ptr, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.rw_semaphore, i32, i32, i8, i32, i32, ptr, i64, ptr, ptr, %struct.rb_node, %struct.list_head, %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.list_head, i32, i64, i64, i32, %struct.list_head, %struct.list_head, %struct.btrfs_io_ctl, %struct.atomic_t, %struct.atomic_t, %struct.mutex, i32, i8, i32, %struct.btrfs_full_stripe_locks_tree, i64, i64, i64, i64, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_io_ctl = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.btrfs_full_stripe_locks_tree = type { %struct.rb_root, %struct.mutex }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.btrfs_space_info = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i32, i8, i32, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, %struct.rw_semaphore, [9 x %struct.list_head], %struct.kobject, [9 x ptr] }
%struct.btrfs_caching_control = type { %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.btrfs_work, ptr, i64, %struct.refcount_struct }
%struct.btrfs_free_space_ctl = type { %struct.spinlock, %struct.rb_root, %struct.rb_root_cached, i64, i32, i32, i32, i32, i64, [2 x i32], [2 x i64], ptr, ptr, %struct.mutex, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.btrfs_transaction = type { i64, %struct.atomic_t, %struct.atomic_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.extent_io_tree, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.btrfs_delayed_ref_root, ptr, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.list_head }
%struct.btrfs_delayed_ref_root = type { %struct.rb_root_cached, %struct.rb_root, %struct.spinlock, %struct.atomic_t, i32, i32, i64, i32, i64, i64 }
%struct.extent_map = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, %struct.refcount_struct, i32, %struct.list_head }
%struct.map_lookup = type { i64, i32, i32, i64, i32, i32, i32, [0 x %struct.btrfs_io_stripe] }
%struct.btrfs_io_stripe = type { ptr, i64, i64 }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.btrfs_device = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i64, ptr, ptr, i32, i32, i8, %struct.seqcount, i64, i64, i64, i64, i32, i32, i64, i32, [16 x i8], i64, i64, ptr, %struct.completion, ptr, i32, %struct.atomic_t, [5 x %struct.atomic_t], %struct.extent_io_tree, %struct.completion, %struct.kobject, i64 }
%struct.btrfs_block_group_item = type { i64, i64, i64 }
%struct.btrfs_item_batch = type { ptr, ptr, i32, i32 }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.77 = type { %struct.callback_head }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.79 = type { ptr }
%struct.extent_changeset = type { i32, %struct.ulist }
%struct.ulist = type { i32, %struct.list_head, %struct.rb_root }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/btrfs/block-group.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bg\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bg->ro\00", [25 x i8] zeroinitializer }, align 32
@btrfs_cache_block_group.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&caching_ctl->mutex\00", [44 x i8] zeroinitializer }, align 32
@btrfs_cache_block_group.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&caching_ctl->wait\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"em && em->start == chunk_offset\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016reclaiming chunk %llu with %llu%% used %llu%% unusable\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013error relocating chunk %llu\00", [34 x i8] zeroinitializer }, align 32
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017BTRFS: Transaction aborted (error %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@btrfs_create_pending_block_groups.__UNIQUE_ID_ddebug933 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str, ptr @.str.12, i8 2, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"btrfs_create_pending_block_groups\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Transaction aborted (error %d)\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017Transaction aborted (error %d)\00", [63 x i8] zeroinitializer }, align 32
@btrfs_create_pending_block_groups.__UNIQUE_ID_ddebug934 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str, ptr @.str.12, i8 2, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@btrfs_create_pending_block_groups.__UNIQUE_ID_ddebug935 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str, ptr @.str.12, i8 2, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cache->space_info\00", [46 x i8] zeroinitializer }, align 32
@btrfs_start_dirty_block_groups.__UNIQUE_ID_ddebug938 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.15, ptr @.str, ptr @.str.12, i8 2, i8 -12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"btrfs_start_dirty_block_groups\00", [33 x i8] zeroinitializer }, align 32
@btrfs_write_dirty_block_groups.__UNIQUE_ID_ddebug939 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.16, ptr @.str, ptr @.str.12, i8 3, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"btrfs_write_dirty_block_groups\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"space_info\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"block_group->io_ctl.inode == NULL\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"block_group->cached != BTRFS_CACHE_STARTED\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"list_empty(&block_group->dirty_list)\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"list_empty(&block_group->io_list)\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"list_empty(&block_group->bg_list)\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"refcount_read(&block_group->refs) == 1\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"block_group->swap_extents == 0\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"!bg->ro\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bg->swap_extents >= amount\00", [37 x i8] zeroinitializer }, align 32
@btrfs_raid_array = external dso_local local_unnamed_addr constant [9 x %struct.btrfs_raid_attr], align 8
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.29, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_btrfs_remove_block_group = external dso_local global %struct.tracepoint, align 4
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/btrfs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_btrfs_remove_block_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@clear_incompat_bg_bits.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RAID56\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RAID1C34\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016clearing incompat feature flag for %s (0x%llx)\00", [47 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_skip_unused_block_group = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_skip_unused_block_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016unable to make block group %llu ro\00", [59 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/btrfs/space-info.h\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pinned\00", [25 x i8] zeroinitializer }, align 32
@__tracepoint_update_bytes_pinned = external dso_local global %struct.tracepoint, align 4
@trace_update_bytes_pinned.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_btrfs_add_unused_block_group = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_add_unused_block_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_btrfs_reclaim_block_group = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_reclaim_block_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_btrfs_add_reclaim_block_group = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_add_reclaim_block_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013logical %llu len %llu found bg but no related chunk\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013block group %llu len %llu mismatch with chunk %llu len %llu\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013block group %llu len %llu type flags 0x%llx mismatch with chunk type flags 0x%llx\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"key->type == BTRFS_BLOCK_GROUP_ITEM_KEY\00", [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013bg %llu is a mixed block group but filesystem hasn't enabled mixed block groups\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013zoned: failed to load zone info of bg %llu\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"list_empty(&cache->bg_list)\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013chunk start=%llu len=%llu doesn't have corresponding block group\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\013chunk start=%llu len=%llu flags=0x%llx doesn't match block group start=%llu len=%llu flags=0x%llx\00", [60 x i8] zeroinitializer }, align 32
@btrfs_create_block_group_cache.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cache->lock\00", [19 x i8] zeroinitializer }, align 32
@btrfs_create_block_group_cache.__key.50 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&cache->data_rwsem\00", [45 x i8] zeroinitializer }, align 32
@btrfs_create_block_group_cache.__key.52 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&cache->free_space_lock\00", [40 x i8] zeroinitializer }, align 32
@btrfs_init_full_stripe_locks_tree.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&locks_root->lock\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013zoned: block group %llu must not contain super block\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"block_group->length != 0\00", [39 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_add_block_group = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_add_block_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cache_save_setup.__UNIQUE_ID_ddebug937 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.57, ptr @.str, ptr @.str.12, i8 2, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cache_save_setup\00", [47 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_space_reservation = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_space_reservation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_update_bytes_may_use = external dso_local global %struct.tracepoint, align 4
@trace_update_bytes_may_use.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@do_chunk_alloc.__UNIQUE_ID_ddebug944 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.58, ptr @.str, ptr @.str.12, i8 3, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"do_chunk_alloc\00", [17 x i8] zeroinitializer }, align 32
@do_chunk_alloc.__UNIQUE_ID_ddebug945 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.58, ptr @.str, ptr @.str.12, i8 3, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@do_chunk_alloc.__UNIQUE_ID_ddebug946 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.58, ptr @.str, ptr @.str.12, i8 3, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@do_chunk_alloc.__UNIQUE_ID_ddebug947 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.58, ptr @.str, ptr @.str.12, i8 3, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016left=%llu, need=%llu, flags=%llu\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967270]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 126, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 319, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 351, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 749, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 750, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1128, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1591, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1598, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2416, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2508, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3024, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3176, i32 5 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3333, i32 49 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3897, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3975, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3976, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3977, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3978, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3979, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3980, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 4078, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 4079, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 3491, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [32 x i8] c"../include/trace/events/btrfs.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 1890, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 108, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 826, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 839, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 841, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 3674, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1234, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [25 x i8] c"../fs/btrfs/space-info.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 111, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1650, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1657, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1670, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2000, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2028, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2037, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2099, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1962, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1972, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1918, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1919, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1930, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 3805, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1860, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 172, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2775, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3493, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.266 = private constant [26 x i8] c"../fs/btrfs/block-group.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 3778, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @btrfs_cache_block_group.__key, ptr @.str.3, ptr @btrfs_cache_block_group.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @btrfs_create_block_group_cache.__key, ptr @.str.49, ptr @btrfs_create_block_group_cache.__key.50, ptr @.str.51, ptr @btrfs_create_block_group_cache.__key.52, ptr @.str.53, ptr @btrfs_init_full_stripe_locks_tree.__key, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_cache_block_group.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_cache_block_group.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_create_block_group_cache.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_create_block_group_cache.__key.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_create_block_group_cache.__key.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_init_full_stripe_locks_tree.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @btrfs_get_alloc_profile(ptr noundef %fs_info, i64 noundef %orig_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %profiles_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 109
  %and = and i64 %orig_flags, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not.not = icmp eq i64 %and, 0
  %avail_data_alloc_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 110
  %avail_system_alloc_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 112
  %avail_metadata_alloc_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 111
  %0 = and i64 %orig_flags, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %.not = icmp eq i64 %0, 0
  %1 = and i64 %orig_flags, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %.not29 = icmp eq i64 %1, 0
  %avail_data_alloc_bits.mux = select i1 %tobool.not.not, ptr %avail_system_alloc_bits, ptr %avail_data_alloc_bits
  %avail_data_alloc_bits.mux.mux = select i1 %.not29, ptr %avail_metadata_alloc_bits, ptr %avail_data_alloc_bits.mux
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %profiles_lock) #16
  %2 = ptrtoint ptr %profiles_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %profiles_lock, align 4
  %and18.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %do.body.read_seqbegin.exit_crit_edge, label %do.body.do.end.i_crit_edge

do.body.do.end.i_crit_edge:                       ; preds = %do.body
  br label %do.end.i

do.body.read_seqbegin.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %read_seqbegin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.body.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !167
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !168
  %4 = ptrtoint ptr %profiles_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %profiles_lock, align 4
  %and.i = and i32 %5, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.read_seqbegin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.end.i.read_seqbegin.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %read_seqbegin.exit

read_seqbegin.exit:                               ; preds = %do.end.i.read_seqbegin.exit_crit_edge, %do.body.read_seqbegin.exit_crit_edge
  %.lcssa.i = phi i32 [ %3, %do.body.read_seqbegin.exit_crit_edge ], [ %5, %do.end.i.read_seqbegin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !169
  br i1 %.not, label %read_seqbegin.exit.do.cond_crit_edge, label %do.cond.sink.split

read_seqbegin.exit.do.cond_crit_edge:             ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond

do.cond.sink.split:                               ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %avail_data_alloc_bits.mux.mux to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %avail_data_alloc_bits.mux.mux, align 8
  %or = or i64 %7, %orig_flags
  br label %do.cond

do.cond:                                          ; preds = %do.cond.sink.split, %read_seqbegin.exit.do.cond_crit_edge
  %flags.0 = phi i64 [ %or, %do.cond.sink.split ], [ %orig_flags, %read_seqbegin.exit.do.cond_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !170
  %8 = ptrtoint ptr %profiles_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %profiles_lock, align 4
  %cmp.i.i.i.not = icmp eq i32 %9, %.lcssa.i
  br i1 %cmp.i.i.i.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.end:                                           ; preds = %do.cond
  %fs_devices.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 100
  %10 = ptrtoint ptr %fs_devices.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fs_devices.i, align 8
  %rw_devices.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %rw_devices.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rw_devices.i, align 8
  %balance_lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 113
  tail call void @_raw_spin_lock(ptr noundef %balance_lock.i) #16
  %balance_ctl.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 117
  %14 = ptrtoint ptr %balance_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %balance_ctl.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %do.end.if.end.i_crit_edge, label %if.end.i.i

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end.i.i:                                       ; preds = %do.end
  %and.i.i = and i64 %flags.0, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool1.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.else.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %flags2.i.i = getelementptr inbounds %struct.btrfs_balance_args, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %flags2.i.i, align 8
  %and3.i.i = and i64 %17, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i.i)
  %tobool4.not.i.i = icmp eq i64 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %if.then5.i.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i.i

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %target7.i.i = getelementptr inbounds %struct.btrfs_balance_args, ptr %15, i32 0, i32 7
  br label %get_restripe_target.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end.i.i.if.else.i.i_crit_edge
  %and8.i.i = and i64 %flags.0, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i.i)
  %tobool9.not.i.i = icmp eq i64 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.else.i.i.if.else18.i.i_crit_edge, label %land.lhs.true10.i.i

if.else.i.i.if.else18.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else18.i.i

land.lhs.true10.i.i:                              ; preds = %if.else.i.i
  %flags11.i.i = getelementptr inbounds %struct.btrfs_balance_control, ptr %15, i32 0, i32 2, i32 8
  %18 = ptrtoint ptr %flags11.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %flags11.i.i, align 8
  %and12.i.i = and i64 %19, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12.i.i)
  %tobool13.not.i.i = icmp eq i64 %and12.i.i, 0
  br i1 %tobool13.not.i.i, label %land.lhs.true10.i.i.if.else18.i.i_crit_edge, label %if.then14.i.i

land.lhs.true10.i.i.if.else18.i.i_crit_edge:      ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else18.i.i

if.then14.i.i:                                    ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %target16.i.i = getelementptr inbounds %struct.btrfs_balance_control, ptr %15, i32 0, i32 2, i32 7
  br label %get_restripe_target.exit.i

if.else18.i.i:                                    ; preds = %land.lhs.true10.i.i.if.else18.i.i_crit_edge, %if.else.i.i.if.else18.i.i_crit_edge
  %and19.i.i = and i64 %flags.0, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19.i.i)
  %tobool20.not.i.i = icmp eq i64 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.else18.i.i.if.end.i_crit_edge, label %land.lhs.true21.i.i

if.else18.i.i.if.end.i_crit_edge:                 ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true21.i.i:                              ; preds = %if.else18.i.i
  %flags22.i.i = getelementptr inbounds %struct.btrfs_balance_control, ptr %15, i32 0, i32 1, i32 8
  %20 = ptrtoint ptr %flags22.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %flags22.i.i, align 8
  %and23.i.i = and i64 %21, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23.i.i)
  %tobool24.not.i.i = icmp eq i64 %and23.i.i, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true21.i.i.if.end.i_crit_edge, label %if.then25.i.i

land.lhs.true21.i.i.if.end.i_crit_edge:           ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then25.i.i:                                    ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %target27.i.i = getelementptr inbounds %struct.btrfs_balance_control, ptr %15, i32 0, i32 1, i32 7
  br label %get_restripe_target.exit.i

get_restripe_target.exit.i:                       ; preds = %if.then25.i.i, %if.then14.i.i, %if.then5.i.i
  %target7.sink.i.i = phi ptr [ %target7.i.i, %if.then5.i.i ], [ %target27.i.i, %if.then25.i.i ], [ %target16.i.i, %if.then14.i.i ]
  %.sink41.i.i = phi i64 [ 1, %if.then5.i.i ], [ 4, %if.then25.i.i ], [ 2, %if.then14.i.i ]
  %22 = ptrtoint ptr %target7.sink.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %target7.sink.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %balance_lock.i) #16
  %.masked.i = and i64 %23, -281474976710657
  %and.i57.i = or i64 %.masked.i, %.sink41.i.i
  br label %btrfs_reduce_alloc_profile.exit

if.end.i:                                         ; preds = %land.lhs.true21.i.i.if.end.i_crit_edge, %if.else18.i.i.if.end.i_crit_edge, %do.end.if.end.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %balance_lock.i) #16
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 0, i32 3) to i32))
  %24 = load i8, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 0, i32 3), align 1
  %conv.i = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv.i)
  %cmp4.not.i = icmp ult i64 %13, %conv.i
  br i1 %cmp4.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then6.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 0, i32 10) to i32))
  %25 = load i64, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 0, i32 10), align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.end.i.for.inc.i_crit_edge
  %allowed.1.i = phi i64 [ %25, %if.then6.i ], [ 0, %if.end.i.for.inc.i_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 1, i32 3) to i32))
  %26 = load i8, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 1, i32 3), align 1
  %conv.1.i = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv.1.i)
  %cmp4.not.1.i = icmp ult i64 %13, %conv.1.i
  br i1 %cmp4.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then6.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1.i

if.then6.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 1, i32 10) to i32))
  %27 = load i64, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 1, i32 10), align 8
  %or.1.i = or i64 %27, %allowed.1.i
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then6.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %allowed.1.1.i = phi i64 [ %or.1.i, %if.then6.1.i ], [ %allowed.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 2, i32 3) to i32))
  %28 = load i8, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 2, i32 3), align 1
  %conv.2.i = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv.2.i)
  %cmp4.not.2.i = icmp ult i64 %13, %conv.2.i
  br i1 %cmp4.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then6.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2.i

if.then6.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 2, i32 10) to i32))
  %29 = load i64, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 2, i32 10), align 8
  %or.2.i = or i64 %29, %allowed.1.1.i
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then6.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %allowed.1.2.i = phi i64 [ %or.2.i, %if.then6.2.i ], [ %allowed.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 3, i32 3) to i32))
  %30 = load i8, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 3, i32 3), align 1
  %conv.3.i = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv.3.i)
  %cmp4.not.3.i = icmp ult i64 %13, %conv.3.i
  br i1 %cmp4.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then6.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3.i

if.then6.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 3, i32 10) to i32))
  %31 = load i64, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 3, i32 10), align 8
  %or.3.i = or i64 %31, %allowed.1.2.i
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then6.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %allowed.1.3.i = phi i64 [ %or.3.i, %if.then6.3.i ], [ %allowed.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 4, i32 3) to i32))
  %32 = load i8, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 4, i32 3), align 1
  %conv.4.i = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv.4.i)
  %cmp4.not.4.i = icmp ult i64 %13, %conv.4.i
  br i1 %cmp4.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then6.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4.i

if.then6.4.i:                                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 4, i32 10) to i32))
  %33 = load i64, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 4, i32 10), align 8
  %or.4.i = or i64 %33, %allowed.1.3.i
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then6.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %allowed.1.4.i = phi i64 [ %or.4.i, %if.then6.4.i ], [ %allowed.1.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 5, i32 3) to i32))
  %34 = load i8, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 5, i32 3), align 1
  %conv.5.i = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv.5.i)
  %cmp4.not.5.i = icmp ult i64 %13, %conv.5.i
  br i1 %cmp4.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then6.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.5.i

if.then6.5.i:                                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 5, i32 10) to i32))
  %35 = load i64, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 5, i32 10), align 8
  %or.5.i = or i64 %35, %allowed.1.4.i
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then6.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %allowed.1.5.i = phi i64 [ %or.5.i, %if.then6.5.i ], [ %allowed.1.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 6, i32 3) to i32))
  %36 = load i8, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 6, i32 3), align 1
  %conv.6.i = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv.6.i)
  %cmp4.not.6.i = icmp ult i64 %13, %conv.6.i
  br i1 %cmp4.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then6.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.6.i

if.then6.6.i:                                     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 6, i32 10) to i32))
  %37 = load i64, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 6, i32 10), align 8
  %or.6.i = or i64 %37, %allowed.1.5.i
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then6.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %allowed.1.6.i = phi i64 [ %or.6.i, %if.then6.6.i ], [ %allowed.1.5.i, %for.inc.5.i.for.inc.6.i_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 7, i32 3) to i32))
  %38 = load i8, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 7, i32 3), align 1
  %conv.7.i = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv.7.i)
  %cmp4.not.7.i = icmp ult i64 %13, %conv.7.i
  br i1 %cmp4.not.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %if.then6.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.7.i

if.then6.7.i:                                     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 7, i32 10) to i32))
  %39 = load i64, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 7, i32 10), align 8
  %or.7.i = or i64 %39, %allowed.1.6.i
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.then6.7.i, %for.inc.6.i.for.inc.7.i_crit_edge
  %allowed.1.7.i = phi i64 [ %or.7.i, %if.then6.7.i ], [ %allowed.1.6.i, %for.inc.6.i.for.inc.7.i_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 8, i32 3) to i32))
  %40 = load i8, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 8, i32 3), align 1
  %conv.8.i = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv.8.i)
  %cmp4.not.8.i = icmp ult i64 %13, %conv.8.i
  br i1 %cmp4.not.8.i, label %for.inc.7.i.for.inc.8.i_crit_edge, label %if.then6.8.i

for.inc.7.i.for.inc.8.i_crit_edge:                ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.8.i

if.then6.8.i:                                     ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 8, i32 10) to i32))
  %41 = load i64, ptr getelementptr inbounds ([9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 8, i32 10), align 8
  %or.8.i = or i64 %41, %allowed.1.7.i
  br label %for.inc.8.i

for.inc.8.i:                                      ; preds = %if.then6.8.i, %for.inc.7.i.for.inc.8.i_crit_edge
  %allowed.1.8.i = phi i64 [ %or.8.i, %if.then6.8.i ], [ %allowed.1.7.i, %for.inc.7.i.for.inc.8.i_crit_edge ]
  %and.i27 = and i64 %allowed.1.8.i, %flags.0
  %and10.i = and i64 %and.i27, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i)
  %tobool11.not.i = icmp eq i64 %and10.i, 0
  br i1 %tobool11.not.i, label %if.else.i, label %for.inc.8.i.if.end32.i_crit_edge

for.inc.8.i.if.end32.i_crit_edge:                 ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

if.else.i:                                        ; preds = %for.inc.8.i
  %and13.i = and i64 %and.i27, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13.i)
  %tobool14.not.i = icmp eq i64 %and13.i, 0
  br i1 %tobool14.not.i, label %if.else16.i, label %if.else.i.if.end32.i_crit_edge

if.else.i.if.end32.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

if.else16.i:                                      ; preds = %if.else.i
  %and17.i = and i64 %and.i27, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17.i)
  %tobool18.not.i = icmp eq i64 %and17.i, 0
  br i1 %tobool18.not.i, label %if.else20.i, label %if.else16.i.if.end32.i_crit_edge

if.else16.i.if.end32.i_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

if.else20.i:                                      ; preds = %if.else16.i
  %and21.i = and i64 %and.i27, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21.i)
  %tobool22.not.i = icmp eq i64 %and21.i, 0
  br i1 %tobool22.not.i, label %if.else24.i, label %if.else20.i.if.end32.i_crit_edge

if.else20.i.if.end32.i_crit_edge:                 ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32.i

if.else24.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #18
  %and25.i = and i64 %and.i27, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25.i)
  %tobool26.not.i = icmp eq i64 %and25.i, 0
  %and.op.i = and i64 %and.i27, -281474976710657
  %phi.bo.i = select i1 %tobool26.not.i, i64 %and.op.i, i64 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else24.i, %if.else20.i.if.end32.i_crit_edge, %if.else16.i.if.end32.i_crit_edge, %if.else.i.if.end32.i_crit_edge, %for.inc.8.i.if.end32.i_crit_edge
  %allowed.2.i = phi i64 [ %phi.bo.i, %if.else24.i ], [ 256, %for.inc.8.i.if.end32.i_crit_edge ], [ 128, %if.else.i.if.end32.i_crit_edge ], [ 64, %if.else16.i.if.end32.i_crit_edge ], [ 16, %if.else20.i.if.end32.i_crit_edge ]
  %and33.i = and i64 %flags.0, -281474976712697
  %and.i58.i = or i64 %allowed.2.i, %and33.i
  br label %btrfs_reduce_alloc_profile.exit

btrfs_reduce_alloc_profile.exit:                  ; preds = %if.end32.i, %get_restripe_target.exit.i
  %retval.0.i = phi i64 [ %and.i57.i, %get_restripe_target.exit.i ], [ %and.i58.i, %if.end32.i ]
  ret i64 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_get_block_group(ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %refs = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 26
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #16, !srcloc !171
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !172

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !173

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #16
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_put_block_group(ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %refs = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 26
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #16, !srcloc !175
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end137_crit_edge, label %if.then10.i.i.i, !prof !173

if.end5.i.i.i.if.end137_crit_edge:                ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end137

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #16
  br label %if.end137

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !176
  %pinned = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 5
  %1 = ptrtoint ptr %pinned to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %pinned, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp.not = icmp eq i64 %2, 0
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %do.end, !prof !173

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 126, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %flags = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 10
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %flags, align 8
  %and = and i64 %4, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool20.not = icmp eq i64 %and, 0
  br i1 %tobool20.not, label %if.end.if.then29_crit_edge, label %lor.lhs.false

if.end.if.then29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.end
  %5 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cache, align 8
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %6, i32 0, i32 149
  %7 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %fs_state, align 4
  %9 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool22.not = icmp eq i32 %9, 0
  br i1 %tobool22.not, label %lor.lhs.false.if.then29_crit_edge, label %lor.lhs.false.if.end61_crit_edge, !prof !173

lor.lhs.false.if.end61_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false.if.then29_crit_edge, %if.end.if.then29_crit_edge
  %reserved = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 6
  %10 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %reserved, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp31.not = icmp eq i64 %11, 0
  br i1 %cmp31.not, label %if.then29.if.end61_crit_edge, label %do.end47, !prof !173

if.then29.if.end61_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

do.end47:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef null) #16
  br label %if.end61

if.end61:                                         ; preds = %do.end47, %if.then29.if.end61_crit_edge, %lor.lhs.false.if.end61_crit_edge
  %discard_list = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 31
  %12 = ptrtoint ptr %discard_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %discard_list, align 4
  %cmp.i.not = icmp eq ptr %13, %discard_list
  br i1 %cmp.i.not, label %if.end61.if.end99_crit_edge, label %do.end82, !prof !173

if.end61.if.end99_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

do.end82:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 9, ptr noundef null) #16
  %14 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cache, align 8
  %discard_ctl = getelementptr inbounds %struct.btrfs_fs_info, ptr %15, i32 0, i32 134
  tail call void @btrfs_discard_cancel_work(ptr noundef %discard_ctl, ptr noundef %cache) #16
  br label %if.end99

if.end99:                                         ; preds = %do.end82, %if.end61.if.end99_crit_edge
  %full_stripe_locks_root = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 45
  %16 = ptrtoint ptr %full_stripe_locks_root to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %full_stripe_locks_root, align 8
  %cmp105.not = icmp eq ptr %17, null
  br i1 %cmp105.not, label %if.end99.if.end129_crit_edge, label %do.end123, !prof !173

if.end99.if.end129_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end129

do.end123:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 9, ptr noundef null) #16
  br label %if.end129

if.end129:                                        ; preds = %do.end123, %if.end99.if.end129_crit_edge
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 23
  %18 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %free_space_ctl, align 4
  tail call void @kfree(ptr noundef %19) #16
  %physical_map = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 50
  %20 = ptrtoint ptr %physical_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %physical_map, align 8
  tail call void @kfree(ptr noundef %21) #16
  tail call void @kfree(ptr noundef %cache) #16
  br label %if.end137

if.end137:                                        ; preds = %if.end129, %if.then10.i.i.i, %if.end5.i.i.i.if.end137_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_discard_cancel_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_lookup_first_block_group(ptr noundef %info, i64 noundef %bytenr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @block_group_cache_tree_search(ptr noundef %info, i64 noundef %bytenr, i32 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @block_group_cache_tree_search(ptr noundef %info, i64 noundef %bytenr, i32 noundef %contains) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %block_group_cache_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %block_group_cache_lock) #16
  %block_group_cache_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 16
  %0 = ptrtoint ptr %block_group_cache_tree to i32
  call void @__asan_load4_noabort(i32 %0)
  %n.055 = load ptr, ptr %block_group_cache_tree, align 4
  %tobool.not56 = icmp eq ptr %n.055, null
  br i1 %tobool.not56, label %entry.if.end28_crit_edge, label %while.body.lr.ph

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

while.body.lr.ph:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %contains)
  %tobool10.not = icmp eq i32 %contains, 0
  br label %while.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.lr.ph
  %n.058 = phi ptr [ %n.055, %while.body.lr.ph ], [ %n.0, %if.end17.while.body_crit_edge ]
  %ret.057 = phi ptr [ null, %while.body.lr.ph ], [ %ret.2, %if.end17.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %n.058, i32 -272
  %start1 = getelementptr i8, ptr %n.058, i32 -216
  %1 = ptrtoint ptr %start1 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %start1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %bytenr)
  %cmp = icmp ugt i64 %2, %bytenr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br i1 %tobool10.not, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %tobool4.not = icmp eq ptr %ret.057, null
  br i1 %tobool4.not, label %land.lhs.true.if.then7_crit_edge, label %lor.lhs.false

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

lor.lhs.false:                                    ; preds = %land.lhs.true
  %start5 = getelementptr inbounds %struct.btrfs_block_group, ptr %ret.057, i32 0, i32 3
  %3 = ptrtoint ptr %start5 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %4)
  %cmp6 = icmp ult i64 %2, %4
  br i1 %cmp6, label %lor.lhs.false.if.then7_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %land.lhs.true.if.then7_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then7, %lor.lhs.false.if.end_crit_edge, %if.then.if.end_crit_edge
  %ret.1 = phi ptr [ %ret.057, %if.then.if.end_crit_edge ], [ %add.ptr, %if.then7 ], [ %ret.057, %lor.lhs.false.if.end_crit_edge ]
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %n.058, i32 0, i32 2
  br label %if.end17

if.else:                                          ; preds = %while.body
  %add = add i64 %2, -1
  %length = getelementptr i8, ptr %n.058, i32 -208
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %length, align 8
  %sub = add i64 %add, %6
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %bytenr)
  %cmp8 = icmp ult i64 %2, %bytenr
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %bytenr)
  %cmp12.not = icmp ult i64 %sub, %bytenr
  %or.cond = select i1 %tobool10.not, i1 true, i1 %cmp12.not
  %or.cond61 = select i1 %cmp8, i1 %or.cond, i1 false
  br i1 %or.cond61, label %if.end14, label %if.else.while.end_crit_edge

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %n.058, i32 0, i32 1
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.end
  %n.1.in = phi ptr [ %rb_left, %if.end ], [ %rb_right, %if.end14 ]
  %ret.2 = phi ptr [ %ret.1, %if.end ], [ %ret.057, %if.end14 ]
  %7 = ptrtoint ptr %n.1.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %n.0 = load ptr, ptr %n.1.in, align 4
  %tobool.not = icmp eq ptr %n.0, null
  br i1 %tobool.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %if.else.while.end_crit_edge
  %ret.3 = phi ptr [ %ret.2, %if.end17.while.end_crit_edge ], [ %add.ptr, %if.else.while.end_crit_edge ]
  %tobool18.not = icmp eq ptr %ret.3, null
  br i1 %tobool18.not, label %while.end.if.end28_crit_edge, label %if.then19

while.end.if.end28_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then19:                                        ; preds = %while.end
  %refs.i = getelementptr inbounds %struct.btrfs_block_group, ptr %ret.3, i32 0, i32 26
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #16
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #16, !srcloc !171
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then19.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !172

if.then19.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then19
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.btrfs_get_block_group.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !173

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.btrfs_get_block_group.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %btrfs_get_block_group.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then19.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then19.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #16
  br label %btrfs_get_block_group.exit

btrfs_get_block_group.exit:                       ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.btrfs_get_block_group.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bytenr)
  %cmp20 = icmp eq i64 %bytenr, 0
  br i1 %cmp20, label %land.lhs.true21, label %btrfs_get_block_group.exit.if.end28_crit_edge

btrfs_get_block_group.exit.if.end28_crit_edge:    ; preds = %btrfs_get_block_group.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

land.lhs.true21:                                  ; preds = %btrfs_get_block_group.exit
  %first_logical_byte = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 15
  %10 = ptrtoint ptr %first_logical_byte to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %first_logical_byte, align 8
  %start22 = getelementptr inbounds %struct.btrfs_block_group, ptr %ret.3, i32 0, i32 3
  %12 = ptrtoint ptr %start22 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %start22, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp23 = icmp ugt i64 %11, %13
  br i1 %cmp23, label %if.then24, label %land.lhs.true21.if.end28_crit_edge

land.lhs.true21.if.end28_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then24:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %first_logical_byte to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %first_logical_byte, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %land.lhs.true21.if.end28_crit_edge, %btrfs_get_block_group.exit.if.end28_crit_edge, %while.end.if.end28_crit_edge, %entry.if.end28_crit_edge
  %ret.364 = phi ptr [ %ret.3, %btrfs_get_block_group.exit.if.end28_crit_edge ], [ %ret.3, %land.lhs.true21.if.end28_crit_edge ], [ %ret.3, %if.then24 ], [ null, %while.end.if.end28_crit_edge ], [ null, %entry.if.end28_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %block_group_cache_lock) #16
  ret ptr %ret.364
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_lookup_block_group(ptr noundef %info, i64 noundef %bytenr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @block_group_cache_tree_search(ptr noundef %info, i64 noundef %bytenr, i32 noundef 1)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_next_block_group(ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 8
  %block_group_cache_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %block_group_cache_lock) #16
  %cache_node = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 24
  %2 = ptrtoint ptr %cache_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_node, align 8
  %4 = ptrtoint ptr %cache_node to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %5 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %length, align 8
  %add = add i64 %8, %6
  tail call void @_raw_spin_unlock(ptr noundef %block_group_cache_lock) #16
  tail call void @btrfs_put_block_group(ptr noundef %cache)
  %call.i = tail call fastcc ptr @block_group_cache_tree_search(ptr noundef %1, i64 noundef %add, i32 noundef 0) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @rb_next(ptr noundef %cache_node) #16
  tail call void @btrfs_put_block_group(ptr noundef %cache)
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call5, i32 -272
  %refs.i = getelementptr i8, ptr %call5, i32 20
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #16
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #16, !srcloc !171
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then6.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !172

if.then6.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then6
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end7_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !173

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end7_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then6.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then6.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #16
  br label %if.end7

if.end7:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %cache.addr.0 = phi ptr [ null, %if.end.if.end7_crit_edge ], [ %add.ptr, %if.else.i.i.i.i.if.end7_crit_edge ], [ %add.ptr, %if.end15.sink.split.i.i.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %block_group_cache_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi ptr [ %call.i, %if.then ], [ %cache.addr.0, %if.end7 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_inc_nocow_writers(ptr noundef %fs_info, i64 noundef %bytenr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @block_group_cache_tree_search(ptr noundef %fs_info, i64 noundef %bytenr, i32 noundef 1) #16
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %ro = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 16
  %0 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.else, label %if.then6.critedge

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %nocow_writers = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nocow_writers, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %nocow_writers, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nocow_writers, ptr %nocow_writers, i32 1, ptr elementtype(i32) %nocow_writers) #16, !srcloc !177
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %cleanup

if.then6.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then6.critedge, %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.else ], [ false, %if.then6.critedge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_dec_nocow_writers(ptr noundef %fs_info, i64 noundef %bytenr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @block_group_cache_tree_search(ptr noundef %fs_info, i64 noundef %bytenr, i32 noundef 1) #16
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !172

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.1, i32 noundef 319) #19
  unreachable

cond.end:                                         ; preds = %entry
  %nocow_writers = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nocow_writers, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !178
  tail call void @llvm.prefetch.p0(ptr %nocow_writers, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nocow_writers, ptr %nocow_writers, i32 1, ptr elementtype(i32) %nocow_writers) #16, !srcloc !179
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @wake_up_var(ptr noundef %nocow_writers) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call.i)
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call.i)
  ret void
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #3 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %expr, ptr noundef nonnull @.str, i32 noundef %line) #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #16, !srcloc !181
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_wait_nocow_writers(ptr noundef %bg) local_unnamed_addr #0 align 64 {
entry:
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 332) #16
  %nocow_writers = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nocow_writers, i32 noundef 4) #16
  %0 = ptrtoint ptr %nocow_writers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %nocow_writers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %if.end

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end14

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @__var_waitqueue(ptr noundef %nocow_writers) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #16
  %2 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %3 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %nocow_writers, i32 noundef 0) #16
  %call722 = call i32 @prepare_to_wait_event(ptr noundef %call5, ptr noundef %2, i32 noundef 2) #16
  %call.i.i1923 = call zeroext i1 @__kasan_check_read(ptr noundef %nocow_writers, i32 noundef 4) #16
  %4 = ptrtoint ptr %nocow_writers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %nocow_writers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not24 = icmp eq i32 %5, 0
  br i1 %tobool10.not24, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #16
  %call7 = call i32 @prepare_to_wait_event(ptr noundef %call5, ptr noundef %2, i32 noundef 2) #16
  %call.i.i19 = call zeroext i1 @__kasan_check_read(ptr noundef %nocow_writers, i32 noundef 4) #16
  %6 = ptrtoint ptr %nocow_writers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %nocow_writers, align 4
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %call5, ptr noundef %2) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #16
  br label %do.end14

do.end14:                                         ; preds = %for.end, %entry.do.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_dec_block_group_reservations(ptr noundef %fs_info, i64 noundef %start) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @block_group_cache_tree_search(ptr noundef %fs_info, i64 noundef %start, i32 noundef 1) #16
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !172

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.1, i32 noundef 341) #19
  unreachable

cond.end:                                         ; preds = %entry
  %reservations = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 39
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reservations, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !178
  tail call void @llvm.prefetch.p0(ptr %reservations, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %reservations, ptr %reservations, i32 1, ptr elementtype(i32) %reservations) #16, !srcloc !179
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @wake_up_var(ptr noundef %reservations) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_wait_block_group_reservations(ptr noundef %bg) local_unnamed_addr #0 align 64 {
entry:
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %space_info1 = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 22
  %0 = ptrtoint ptr %space_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %space_info1, align 8
  %ro = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 16
  %2 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !172

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 351) #19
  unreachable

cond.end:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 10
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %flags, align 8
  %and = and i64 %5, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %cond.end.cleanup25_crit_edge, label %if.end

cond.end.cleanup25_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup25

if.end:                                           ; preds = %cond.end
  %groups_sem = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 21
  tail call void @down_write(ptr noundef %groups_sem) #16
  tail call void @up_write(ptr noundef %groups_sem) #16
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 369) #16
  %reservations = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 39
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %reservations, i32 noundef 4) #16
  %6 = ptrtoint ptr %reservations to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %reservations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.end.cleanup25_crit_edge, label %if.end12

if.end.cleanup25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup25

if.end12:                                         ; preds = %if.end
  %call14 = tail call ptr @__var_waitqueue(ptr noundef %reservations) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #16
  %8 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %9 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %reservations, i32 noundef 0) #16
  %call1639 = call i32 @prepare_to_wait_event(ptr noundef %call14, ptr noundef %8, i32 noundef 2) #16
  %call.i.i3640 = call zeroext i1 @__kasan_check_read(ptr noundef %reservations, i32 noundef 4) #16
  %10 = ptrtoint ptr %reservations to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %reservations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool19.not41 = icmp eq i32 %11, 0
  br i1 %tobool19.not41, label %if.end12.for.end_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  br label %cleanup

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  call void @schedule() #16
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %call14, ptr noundef %8, i32 noundef 2) #16
  %call.i.i36 = call zeroext i1 @__kasan_check_read(ptr noundef %reservations, i32 noundef 4) #16
  %12 = ptrtoint ptr %reservations to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %reservations, align 4
  %tobool19.not = icmp eq i32 %13, 0
  br i1 %tobool19.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end12.for.end_crit_edge
  call void @finish_wait(ptr noundef %call14, ptr noundef %8) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #16
  br label %cleanup25

cleanup25:                                        ; preds = %for.end, %if.end.cleanup25_crit_edge, %cond.end.cleanup25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_get_caching_control(ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %caching_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 20
  %0 = ptrtoint ptr %caching_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caching_ctl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.btrfs_caching_control, ptr %1, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #16, !srcloc !171
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !172

if.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !173

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef %.sink.i.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_put_caching_control(ptr noundef %ctl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.btrfs_caching_control, ptr %ctl, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #16, !srcloc !175
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !173

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef 3) #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !176
  tail call void @kfree(ptr noundef %ctl) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_wait_block_group_cache_progress(ptr noundef %cache, i64 noundef %num_bytes) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #16
  %caching_ctl.i = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 20
  %0 = ptrtoint ptr %caching_ctl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caching_ctl.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %btrfs_get_caching_control.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %count.i = getelementptr inbounds %struct.btrfs_caching_control, ptr %1, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #16, !srcloc !171
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !172

if.end.i.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.do.body1_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !173

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.do.body1_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #16
  br label %do.body1

btrfs_get_caching_control.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  br label %cleanup21

do.body1:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.do.body1_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 418) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !182
  %cached.i = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 19
  %4 = ptrtoint ptr %cached.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cached.i, align 8
  %6 = add i32 %5, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %6)
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %lor.lhs.false, label %do.body1.do.end20_crit_edge

do.body1.do.end20_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end20

lor.lhs.false:                                    ; preds = %do.body1
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 23
  %8 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free_space_ctl, align 4
  %free_space = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %free_space to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %free_space, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %num_bytes)
  %cmp.not = icmp ult i64 %11, %num_bytes
  br i1 %cmp.not, label %if.end8, label %lor.lhs.false.do.end20_crit_edge

lor.lhs.false.do.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end20

if.end8:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %wait = getelementptr inbounds %struct.btrfs_caching_control, ptr %1, i32 0, i32 2
  %call939 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !182
  %13 = ptrtoint ptr %cached.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cached.i, align 8
  %15 = add i32 %14, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %15)
  %16 = icmp ult i32 %15, -2
  br i1 %16, label %if.end8.lor.lhs.false12_crit_edge, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end8.lor.lhs.false12_crit_edge:                ; preds = %if.end8
  br label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %cleanup.lor.lhs.false12_crit_edge, %if.end8.lor.lhs.false12_crit_edge
  %17 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %free_space_ctl, align 4
  %free_space14 = getelementptr inbounds %struct.btrfs_free_space_ctl, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %free_space14 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %free_space14, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %num_bytes)
  %cmp15.not = icmp ult i64 %20, %num_bytes
  br i1 %cmp15.not, label %cleanup, label %lor.lhs.false12.for.end_crit_edge

lor.lhs.false12.for.end_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cleanup:                                          ; preds = %lor.lhs.false12
  call void @schedule() #16
  %call9 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !182
  %21 = ptrtoint ptr %cached.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cached.i, align 8
  %23 = add i32 %22, -5
  %24 = icmp ult i32 %23, -2
  br i1 %24, label %cleanup.lor.lhs.false12_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cleanup.lor.lhs.false12_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false12

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false12.for.end_crit_edge, %if.end8.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %do.end20

do.end20:                                         ; preds = %for.end, %lor.lhs.false.do.end20_crit_edge, %do.body1.do.end20_crit_edge
  %call.i.i.i.i.i.i34 = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !174
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #16
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #16, !srcloc !175
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i35 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i35, label %if.end5.i.i.i.i.cleanup21_crit_edge, label %if.then10.i.i.i.i, !prof !173

if.end5.i.i.i.i.cleanup21_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup21

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #16
  br label %cleanup21

if.then.i:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !176
  call void @kfree(ptr noundef nonnull %1) #16
  br label %cleanup21

cleanup21:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup21_crit_edge, %btrfs_get_caching_control.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_wait_block_group_cache_done(ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #16
  %caching_ctl.i = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 20
  %0 = ptrtoint ptr %caching_ctl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caching_ctl.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %entry
  %count.i = getelementptr inbounds %struct.btrfs_caching_control, ptr %1, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #16, !srcloc !171
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !172

if.end.i.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.do.body1_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !173

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.do.body1_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #16
  br label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  %cached = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 19
  %4 = ptrtoint ptr %cached to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cached, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp eq i32 %5, 4
  %cond = select i1 %cmp, i32 -5, i32 0
  br label %cleanup21

do.body1:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.do.body1_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 432) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !182
  %cached.i = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 19
  %6 = ptrtoint ptr %cached.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cached.i, align 8
  %8 = add i32 %7, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %8)
  %9 = icmp ult i32 %8, -2
  br i1 %9, label %if.end8, label %do.body1.do.end16_crit_edge

do.body1.do.end16_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end16

if.end8:                                          ; preds = %do.body1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %wait = getelementptr inbounds %struct.btrfs_caching_control, ptr %1, i32 0, i32 2
  %call937 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !182
  %11 = ptrtoint ptr %cached.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cached.i, align 8
  %13 = add i32 %12, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %13)
  %14 = icmp ult i32 %13, -2
  br i1 %14, label %if.end8.cleanup_crit_edge, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  call void @schedule() #16
  %call9 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !182
  %15 = ptrtoint ptr %cached.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cached.i, align 8
  %17 = add i32 %16, -5
  %18 = icmp ult i32 %17, -2
  br i1 %18, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end8.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %do.end16

do.end16:                                         ; preds = %for.end, %do.body1.do.end16_crit_edge
  %19 = ptrtoint ptr %cached.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cached.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp18 = icmp eq i32 %20, 4
  %spec.select = select i1 %cmp18, i32 -5, i32 0
  %call.i.i.i.i.i.i32 = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !174
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #16
  %21 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #16, !srcloc !175
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i33 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i33, label %if.end5.i.i.i.i.cleanup21_crit_edge, label %if.then10.i.i.i.i, !prof !173

if.end5.i.i.i.i.cleanup21_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup21

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #16
  br label %cleanup21

if.then.i:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !176
  call void @kfree(ptr noundef nonnull %1) #16
  br label %cleanup21

cleanup21:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup21_crit_edge, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %spec.select, %if.end5.i.i.i.i.cleanup21_crit_edge ], [ %spec.select, %if.then10.i.i.i.i ], [ %spec.select, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_wait_space_cache_v1_finished(ptr noundef %cache, ptr noundef %caching_ctl) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 453) #16
  %lock.i = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #16
  %cached.i = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 19
  %0 = ptrtoint ptr %cached.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cached.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 2
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  br i1 %cmp.i.not, label %if.end, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %wait = getelementptr inbounds %struct.btrfs_caching_control, ptr %caching_ctl, i32 0, i32 2
  %call417 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  call void @_raw_spin_lock(ptr noundef %lock.i) #16
  %3 = ptrtoint ptr %cached.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cached.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i14.not18 = icmp eq i32 %4, 2
  call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  br i1 %cmp.i14.not18, label %if.end.cleanup_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #16
  %call4 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  call void @_raw_spin_lock(ptr noundef %lock.i) #16
  %5 = ptrtoint ptr %cached.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cached.i, align 8
  %cmp.i14.not = icmp eq i32 %6, 2
  call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  br i1 %cmp.i14.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %do.end9

do.end9:                                          ; preds = %for.end, %entry.do.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @add_new_free_space(ptr noundef %block_group, i64 noundef %start, i64 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  %extent_start = alloca i64, align 8
  %extent_end = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %extent_start) #16
  %2 = ptrtoint ptr %extent_start to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %extent_start, align 8, !annotation !183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %extent_end) #16
  %3 = ptrtoint ptr %extent_end to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %extent_end, align 8, !annotation !183
  call void @__sanitizer_cov_trace_cmp8(i64 %start, i64 %end)
  %cmp72 = icmp ult i64 %start, %end
  br i1 %cmp72, label %while.body.lr.ph, label %entry.if.end46_crit_edge

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

while.body.lr.ph:                                 ; preds = %entry
  %excluded_extents = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 18
  br label %while.body

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %while.body.lr.ph
  %total_added.074 = phi i64 [ 0, %while.body.lr.ph ], [ %total_added.1, %if.end22.while.body_crit_edge ]
  %start.addr.073 = phi i64 [ %start, %while.body.lr.ph ], [ %start.addr.1, %if.end22.while.body_crit_edge ]
  %call = call i32 @find_first_extent_bit(ptr noundef %excluded_extents, i64 noundef %start.addr.073, ptr noundef nonnull %extent_start, ptr noundef nonnull %extent_end, i32 noundef 3, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %while.body.if.then24_crit_edge

while.body.if.then24_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

if.end:                                           ; preds = %while.body
  %4 = ptrtoint ptr %extent_start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %extent_start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %start.addr.073)
  %cmp1.not = icmp ugt i64 %5, %start.addr.073
  br i1 %cmp1.not, label %land.lhs.true, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %end)
  %cmp4 = icmp ult i64 %5, %end
  br i1 %cmp4, label %if.then5, label %land.lhs.true.if.then24_crit_edge

land.lhs.true.if.then24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

if.then5:                                         ; preds = %land.lhs.true
  %sub = sub i64 %5, %start.addr.073
  %call7 = call i32 @btrfs_add_free_space_async_trimmed(ptr noundef %block_group, i64 noundef %start.addr.073, i64 noundef %sub) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end18, label %do.body12, !prof !173

do.body12:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/block-group.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 504, 0\0A.popsection", ""() #16, !srcloc !184
  unreachable

do.end18:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  %add6 = add i64 %sub, %total_added.074
  br label %if.end22

if.end22:                                         ; preds = %do.end18, %if.end.if.end22_crit_edge
  %total_added.1 = phi i64 [ %add6, %do.end18 ], [ %total_added.074, %if.end.if.end22_crit_edge ]
  %6 = ptrtoint ptr %extent_end to i32
  call void @__asan_load8_noabort(i32 %6)
  %start.addr.1.in = load i64, ptr %extent_end, align 8
  %start.addr.1 = add i64 %start.addr.1.in, 1
  %cmp = icmp ult i64 %start.addr.1, %end
  br i1 %cmp, label %if.end22.while.body_crit_edge, label %if.end22.if.end46_crit_edge

if.end22.if.end46_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.then24:                                        ; preds = %land.lhs.true.if.then24_crit_edge, %while.body.if.then24_crit_edge
  %sub25 = sub i64 %end, %start.addr.073
  %add26 = add i64 %total_added.074, %sub25
  %call27 = call i32 @btrfs_add_free_space_async_trimmed(ptr noundef %block_group, i64 noundef %start.addr.073, i64 noundef %sub25) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool29.not = icmp eq i32 %call27, 0
  br i1 %tobool29.not, label %if.then24.if.end46_crit_edge, label %do.body37, !prof !173

if.then24.if.end46_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

do.body37:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/block-group.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #16, !srcloc !185
  unreachable

if.end46:                                         ; preds = %if.then24.if.end46_crit_edge, %if.end22.if.end46_crit_edge, %entry.if.end46_crit_edge
  %total_added.2 = phi i64 [ %add26, %if.then24.if.end46_crit_edge ], [ 0, %entry.if.end46_crit_edge ], [ %total_added.1, %if.end22.if.end46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %extent_end) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %extent_start) #16
  ret i64 %total_added.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_first_extent_bit(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_add_free_space_async_trimmed(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_cache_block_group(ptr noundef %cache, i32 noundef %load_cache_only) local_unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #16
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %13 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cache, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_info, ptr %14, i32 0, i32 176
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %15, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp.i.not = icmp eq i64 %17, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3392, i32 noundef 248) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %mutex = getelementptr inbounds %struct.btrfs_caching_control, ptr %call7.i.i, i32 0, i32 1
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @btrfs_cache_block_group.__key) #16
  %wait10 = getelementptr inbounds %struct.btrfs_caching_control, ptr %call7.i.i, i32 0, i32 2
  call void @__init_waitqueue_head(ptr noundef %wait10, ptr noundef nonnull @.str.5, ptr noundef nonnull @btrfs_cache_block_group.__key.4) #16
  %block_group = getelementptr inbounds %struct.btrfs_caching_control, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %block_group to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cache, ptr %block_group, align 8
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %22 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %start, align 8
  %progress = getelementptr inbounds %struct.btrfs_caching_control, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %progress to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %progress, align 8
  %count = getelementptr inbounds %struct.btrfs_caching_control, ptr %call7.i.i, i32 0, i32 6
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #16
  %25 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 2, ptr %count, align 8
  %work = getelementptr inbounds %struct.btrfs_caching_control, ptr %call7.i.i, i32 0, i32 3
  call void @btrfs_init_work(ptr noundef %work, ptr noundef nonnull @caching_thread, ptr noundef null, ptr noundef null) #16
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock) #16
  %cached = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 19
  %26 = ptrtoint ptr %cached to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cached, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not = icmp eq i32 %27, 0
  br i1 %cmp.not, label %if.end20, label %if.then13

if.then13:                                        ; preds = %if.end8
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  %caching_ctl14 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 20
  %28 = ptrtoint ptr %caching_ctl14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %caching_ctl14, align 4
  %tobool15.not = icmp eq ptr %29, null
  br i1 %tobool15.not, label %if.then13.if.end18_crit_edge, label %if.then16

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then16:                                        ; preds = %if.then13
  %count17 = getelementptr inbounds %struct.btrfs_caching_control, ptr %29, i32 0, i32 6
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count17, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %count17, i32 1, i32 3, i32 1) #16
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count17, ptr %count17, i32 1, ptr elementtype(i32) %count17) #16, !srcloc !171
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then16.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !172

if.then16.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then16
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %31 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end18_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !173

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end18_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then16.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then16.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %count17, i32 noundef %.sink.i.i.i) #16
  br label %if.end18

if.end18:                                         ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end18_crit_edge, %if.then13.if.end18_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %out

if.end20:                                         ; preds = %if.end8
  %caching_ctl21 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 20
  %32 = ptrtoint ptr %caching_ctl21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %caching_ctl21, align 4
  %tobool22.not = icmp eq ptr %33, null
  br i1 %tobool22.not, label %if.end20.if.end40_crit_edge, label %do.end34, !prof !173

if.end20.if.end40_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

do.end34:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 766, i32 noundef 9, ptr noundef null) #16
  br label %if.end40

if.end40:                                         ; preds = %do.end34, %if.end20.if.end40_crit_edge
  %34 = ptrtoint ptr %caching_ctl21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %caching_ctl21, align 4
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %14, i32 0, i32 31
  %35 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mount_opt, align 8
  %and = and i32 %36, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  %. = select i1 %tobool48.not, i32 1, i32 2
  %37 = ptrtoint ptr %cached to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %., ptr %cached, align 8
  %has_caching_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 17
  %38 = ptrtoint ptr %has_caching_ctl to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %has_caching_ctl, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %has_caching_ctl, align 8
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  %block_group_cache_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %14, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %block_group_cache_lock) #16
  %call.i.i.i.i.i106 = call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #16
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #16, !srcloc !171
  %asmresult.i.i.i.i.i107 = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i107)
  %tobool1.not.i.i.i108 = icmp eq i32 %asmresult.i.i.i.i.i107, 0
  br i1 %tobool1.not.i.i.i108, label %if.end40.if.end15.sink.split.i.i.i113_crit_edge, label %if.else.i.i.i111, !prof !172

if.end40.if.end15.sink.split.i.i.i113_crit_edge:  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i113

if.else.i.i.i111:                                 ; preds = %if.end40
  %add.i.i.i109 = add i32 %asmresult.i.i.i.i.i107, 1
  %40 = or i32 %add.i.i.i109, %asmresult.i.i.i.i.i107
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %.not.i.i.i110 = icmp sgt i32 %40, -1
  br i1 %.not.i.i.i110, label %if.else.i.i.i111.refcount_inc.exit114_crit_edge, label %if.else.i.i.i111.if.end15.sink.split.i.i.i113_crit_edge, !prof !173

if.else.i.i.i111.if.end15.sink.split.i.i.i113_crit_edge: ; preds = %if.else.i.i.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i113

if.else.i.i.i111.refcount_inc.exit114_crit_edge:  ; preds = %if.else.i.i.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %refcount_inc.exit114

if.end15.sink.split.i.i.i113:                     ; preds = %if.else.i.i.i111.if.end15.sink.split.i.i.i113_crit_edge, %if.end40.if.end15.sink.split.i.i.i113_crit_edge
  %.sink.i.i.i112 = phi i32 [ 2, %if.end40.if.end15.sink.split.i.i.i113_crit_edge ], [ 1, %if.else.i.i.i111.if.end15.sink.split.i.i.i113_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %count, i32 noundef %.sink.i.i.i112) #16
  br label %refcount_inc.exit114

refcount_inc.exit114:                             ; preds = %if.end15.sink.split.i.i.i113, %if.else.i.i.i111.refcount_inc.exit114_crit_edge
  %caching_block_groups = getelementptr inbounds %struct.btrfs_fs_info, ptr %14, i32 0, i32 61
  %prev.i115 = getelementptr inbounds %struct.btrfs_fs_info, ptr %14, i32 0, i32 61, i32 1
  %41 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i115, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %42, ptr noundef %caching_block_groups) #16
  br i1 %call.i.i, label %if.end.i.i, label %refcount_inc.exit114.list_add_tail.exit_crit_edge

refcount_inc.exit114.list_add_tail.exit_crit_edge: ; preds = %refcount_inc.exit114
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %refcount_inc.exit114
  call void @__sanitizer_cov_trace_pc() #18
  %43 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i, ptr %prev.i115, align 4
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %caching_block_groups, ptr %call7.i.i, align 8
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %call7.i.i, ptr %42, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %refcount_inc.exit114.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %block_group_cache_lock) #16
  %refs.i = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 26
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #16
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #16, !srcloc !171
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !172

list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %list_add_tail.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %48 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %.not.i.i.i.i = icmp sgt i32 %48, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.btrfs_get_block_group.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !173

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.btrfs_get_block_group.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %btrfs_get_block_group.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #16
  br label %btrfs_get_block_group.exit

btrfs_get_block_group.exit:                       ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.btrfs_get_block_group.exit_crit_edge
  %caching_workers = getelementptr inbounds %struct.btrfs_fs_info, ptr %14, i32 0, i32 86
  %49 = ptrtoint ptr %caching_workers to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %caching_workers, align 8
  call void @btrfs_queue_work(ptr noundef %50, ptr noundef %work) #16
  br label %out

out:                                              ; preds = %btrfs_get_block_group.exit, %if.end18
  %caching_ctl.0 = phi ptr [ %29, %if.end18 ], [ %call7.i.i, %btrfs_get_block_group.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %load_cache_only)
  %tobool58.not = icmp eq i32 %load_cache_only, 0
  %tobool59.not = icmp eq ptr %caching_ctl.0, null
  %or.cond = select i1 %tobool58.not, i1 true, i1 %tobool59.not
  br i1 %or.cond, label %out.if.end61_crit_edge, label %if.then60

out.if.end61_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.then60:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  call void @btrfs_wait_space_cache_v1_finished(ptr noundef %cache, ptr noundef nonnull %caching_ctl.0)
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %out.if.end61_crit_edge
  br i1 %tobool59.not, label %if.end61.cleanup_crit_edge, label %if.then63

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then63:                                        ; preds = %if.end61
  %count.i = getelementptr inbounds %struct.btrfs_caching_control, ptr %caching_ctl.0, i32 0, i32 6
  %call.i.i.i.i.i.i116 = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !174
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #16
  %51 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #16, !srcloc !175
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i117 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i117, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !173

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #16
  br label %cleanup

if.then.i:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !176
  call void @kfree(ptr noundef nonnull %caching_ctl.0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end61.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_init_work(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @caching_thread(ptr noundef %work) #4 align 64 {
entry:
  %disk_key.i.i = alloca %struct.btrfs_disk_key, align 8
  %key.i = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -152
  %block_group1 = getelementptr i8, ptr %work, i32 72
  %0 = ptrtoint ptr %block_group1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %mutex = getelementptr i8, ptr %work, i32 -144
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #16
  %commit_root_sem = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 54
  tail call void @down_read(ptr noundef %commit_root_sem) #16
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mount_opt, align 8
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 @load_free_space_cache(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then.done_crit_edge, label %if.end

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %cached = getelementptr inbounds %struct.btrfs_block_group, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %cached to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %cached, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  %wait = getelementptr i8, ptr %work, i32 -52
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 43
  %7 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %super_copy.i, align 8
  %compat_ro_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %compat_ro_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %compat_ro_flags.i.i, align 1
  %11 = and i64 %10, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool7.not = icmp eq i64 %11, 0
  br i1 %tobool7.not, label %if.end5.if.else_crit_edge, label %land.lhs.true

if.end5.if.else_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %if.end5
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %call11 = tail call i32 @load_free_space_tree(ptr noundef %add.ptr) #16
  br label %done

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end5.if.else_crit_edge
  %15 = ptrtoint ptr %block_group1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %block_group1, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #16
  %19 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 2
  %call.i = tail call ptr @btrfs_alloc_path() #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else.load_extent_tree_free.exit_crit_edge, label %if.end.i

if.else.load_extent_tree_free.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %load_extent_tree_free.exit

if.end.i:                                         ; preds = %if.else
  %start.i = getelementptr inbounds %struct.btrfs_block_group, ptr %16, i32 0, i32 3
  %21 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %start.i, align 8
  %23 = tail call i64 @llvm.umax.i64(i64 %22, i64 65536) #16
  %call3.i = tail call ptr @btrfs_extent_root(ptr noundef %18, i64 noundef %23) #16
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %16, align 8
  %mount_opt.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %25, i32 0, i32 31
  %26 = ptrtoint ptr %mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mount_opt.i.i, align 8
  %and.i.i = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.lor.rhs.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.lor.rhs.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %flags.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %16, i32 0, i32 10
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %flags.i.i, align 8
  %and2.i.i = and i64 %29, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool3.not.i.i = icmp eq i64 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.lor.rhs.i.i_crit_edge, label %land.lhs.true.i.i.btrfs_should_fragment_free_space.exit.i_crit_edge

land.lhs.true.i.i.btrfs_should_fragment_free_space.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %btrfs_should_fragment_free_space.exit.i

land.lhs.true.i.i.lor.rhs.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %land.lhs.true.i.i.lor.rhs.i.i_crit_edge, %if.end.i.lor.rhs.i.i_crit_edge
  %and5.i.i = and i32 %27, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %lor.rhs.i.i.btrfs_should_fragment_free_space.exit.i_crit_edge, label %land.rhs.i.i

lor.rhs.i.i.btrfs_should_fragment_free_space.exit.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %btrfs_should_fragment_free_space.exit.i

land.rhs.i.i:                                     ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %flags7.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %16, i32 0, i32 10
  %30 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %flags7.i.i, align 8
  %32 = and i64 %31, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %phi.cmp.i = icmp eq i64 %32, 0
  br label %btrfs_should_fragment_free_space.exit.i

btrfs_should_fragment_free_space.exit.i:          ; preds = %land.rhs.i.i, %lor.rhs.i.i.btrfs_should_fragment_free_space.exit.i_crit_edge, %land.lhs.true.i.i.btrfs_should_fragment_free_space.exit.i_crit_edge
  %33 = phi i1 [ false, %land.lhs.true.i.i.btrfs_should_fragment_free_space.exit.i_crit_edge ], [ true, %lor.rhs.i.i.btrfs_should_fragment_free_space.exit.i_crit_edge ], [ %phi.cmp.i, %land.rhs.i.i ]
  %skip_locking.i = getelementptr inbounds %struct.btrfs_path, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %skip_locking.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i = load i8, ptr %skip_locking.i, align 2
  %bf.set10.i = or i8 %bf.load.i, 48
  store i8 %bf.set10.i, ptr %skip_locking.i, align 2
  %reada.i = getelementptr inbounds %struct.btrfs_path, ptr %call.i, i32 0, i32 3
  %35 = ptrtoint ptr %reada.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %reada.i, align 4
  %36 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %23, ptr %key.i, align 8
  %37 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 0, ptr %20, align 1
  %38 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -88, ptr %19, align 8
  %call11232.i = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %call3.i, ptr noundef nonnull %key.i, ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11232.i)
  %cmp12233.i = icmp slt i32 %call11232.i, 0
  br i1 %cmp12233.i, label %btrfs_should_fragment_free_space.exit.i.out.i_crit_edge, label %if.end14.lr.ph.i

btrfs_should_fragment_free_space.exit.i.out.i_crit_edge: ; preds = %btrfs_should_fragment_free_space.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

if.end14.lr.ph.i:                                 ; preds = %btrfs_should_fragment_free_space.exit.i
  %flags.i188.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %18, i32 0, i32 1
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %call.i, i32 0, i32 1
  %39 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 1
  %40 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 2
  %length.i = getelementptr inbounds %struct.btrfs_block_group, ptr %16, i32 0, i32 4
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %18, i32 0, i32 166
  %tobool5.not.not.i = xor i1 %33, true
  %wait.i = getelementptr i8, ptr %work, i32 -52
  %wait_list.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %18, i32 0, i32 54, i32 4
  %progress.i = getelementptr i8, ptr %work, i32 80
  %commit_root_sem36.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %18, i32 0, i32 54
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %while.cond.outer.i.backedge, %if.end14.lr.ph.i
  %total_found.1.ph.i = phi i64 [ 0, %if.end14.lr.ph.i ], [ %total_found.1.ph202.i, %while.cond.outer.i.backedge ]
  %last.1.ph.i = phi i64 [ %23, %if.end14.lr.ph.i ], [ %last.1.ph203.i, %while.cond.outer.i.backedge ]
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  %pages.i193.i = getelementptr inbounds %struct.extent_buffer, ptr %42, i32 0, i32 12
  %43 = ptrtoint ptr %pages.i193.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pages.i193.i, align 4
  %call.i194.i = call ptr @page_address(ptr noundef %44) #16
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %42, align 8
  %conv.i195.i = trunc i64 %46 to i32
  %and.i196.i = and i32 %conv.i195.i, 4095
  %add.ptr.i197.i = getelementptr i8, ptr %call.i194.i, i32 %and.i196.i
  %nritems.i198.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i197.i, i32 0, i32 7
  %47 = ptrtoint ptr %nritems.i198.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %nritems.i198.i, align 1
  %49 = call i32 @llvm.bswap.i32(i32 %48) #16
  br label %while.cond.outer201.i

while.cond.outer201.i:                            ; preds = %if.end108.i, %while.cond.outer.i
  %total_found.1.ph202.i = phi i64 [ %total_found.1.ph.i, %while.cond.outer.i ], [ %total_found.2.i, %if.end108.i ]
  %last.1.ph203.i = phi i64 [ %last.1.ph.i, %while.cond.outer.i ], [ %last.3.i, %if.end108.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.then67.i, %while.cond.outer201.i
  %50 = ptrtoint ptr %flags.i188.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %flags.i188.i, align 4
  %and1.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i189.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i189.i, label %while.cond.i.if.end19.i_crit_edge, label %if.then.i.i

while.cond.i.if.end19.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

if.then.i.i:                                      ; preds = %while.cond.i
  %52 = ptrtoint ptr %flags.i188.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags.i188.i, align 4
  %54 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool3.not.i190.i = icmp eq i32 %54, 0
  br i1 %tobool3.not.i190.i, label %if.then.i.i.if.end19.i_crit_edge, label %if.then.i.i.while.end.i_crit_edge

if.then.i.i.while.end.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.then.i.i.if.end19.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then.i.i.if.end19.i_crit_edge, %while.cond.i.if.end19.i_crit_edge
  %55 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %49)
  %cmp21.i = icmp ult i32 %56, %49
  br i1 %cmp21.i, label %if.then22.i, label %if.else.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i) #16
  %mul.i.i.i.i.i = mul i32 %56, 25
  %add.i.i.i.i.i = add i32 %mul.i.i.i.i.i, 101
  %57 = call ptr @memset(ptr %disk_key.i.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %42, ptr noundef nonnull %disk_key.i.i, i32 noundef %add.i.i.i.i.i, i32 noundef 17) #16
  %58 = ptrtoint ptr %40 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %59 = load i64, ptr %40, align 1
  %60 = call i64 @llvm.bswap.i64(i64 %59) #16
  %61 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 8)
  store i64 %60, ptr %20, align 1
  %62 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %39, align 8
  %64 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %19, align 8
  %65 = ptrtoint ptr %disk_key.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %disk_key.i.i, align 8
  %67 = call i64 @llvm.bswap.i64(i64 %66) #16
  %68 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %key.i, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i) #16
  call void @__sanitizer_cov_trace_cmp8(i64 %67, i64 %last.1.ph203.i)
  %cmp54.i = icmp ult i64 %67, %last.1.ph203.i
  br i1 %cmp54.i, label %if.then55.i, label %if.end63.i

if.else.i:                                        ; preds = %if.end19.i
  %call25.i = call i32 @btrfs_find_next_key(ptr noundef %call3.i, ptr noundef nonnull %call.i, ptr noundef nonnull %key.i, i32 noundef 0, i64 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.else.i.while.end.i_crit_edge

if.else.i.while.end.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end28.i:                                       ; preds = %if.else.i
  %69 = call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 16384
  %73 = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.i.not.i = icmp eq i32 %73, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %if.end28.i.if.then32.i_crit_edge

if.end28.i.if.then32.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then32.i

lor.lhs.false.i:                                  ; preds = %if.end28.i
  %74 = ptrtoint ptr %wait_list.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %wait_list.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %75, %wait_list.i.i
  br i1 %cmp.i.i.not.i, label %if.end41.i, label %lor.lhs.false.i.if.then32.i_crit_edge

lor.lhs.false.i.if.then32.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then32.i

if.then32.i:                                      ; preds = %lor.lhs.false.i.if.then32.i_crit_edge, %if.end28.i.if.then32.i_crit_edge
  br i1 %33, label %if.then34.i, label %if.then32.i.if.end35.i_crit_edge

if.then32.i.if.end35.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35.i

if.then34.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #18
  %76 = ptrtoint ptr %progress.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %last.1.ph203.i, ptr %progress.i, align 8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then34.i, %if.then32.i.if.end35.i_crit_edge
  call void @btrfs_release_path(ptr noundef nonnull %call.i) #16
  call void @up_read(ptr noundef %commit_root_sem36.i) #16
  call void @mutex_unlock(ptr noundef %mutex) #16
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 594, i32 noundef 0) #16
  %call.i191.i = call i32 @__cond_resched() #16
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #16
  call void @down_read(ptr noundef %commit_root_sem36.i) #16
  br label %next.backedge.i

next.backedge.i:                                  ; preds = %if.end62.i, %if.end35.i
  %call11.i = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %call3.i, ptr noundef nonnull %key.i, ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %next.backedge.i.out.i_crit_edge, label %next.backedge.i.while.cond.outer.i.backedge_crit_edge

next.backedge.i.while.cond.outer.i.backedge_crit_edge: ; preds = %next.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.outer.i.backedge

next.backedge.i.out.i_crit_edge:                  ; preds = %next.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

if.end41.i:                                       ; preds = %lor.lhs.false.i
  %call.i192.i = call i32 @btrfs_next_old_leaf(ptr noundef %call3.i, ptr noundef nonnull %call.i, i64 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192.i)
  %cmp43.i = icmp slt i32 %call.i192.i, 0
  br i1 %cmp43.i, label %if.end41.i.out.i_crit_edge, label %if.end45.i

if.end41.i.out.i_crit_edge:                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

if.end45.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192.i)
  %tobool46.not.i = icmp eq i32 %call.i192.i, 0
  br i1 %tobool46.not.i, label %if.end45.i.while.cond.outer.i.backedge_crit_edge, label %if.end45.i.while.end.i_crit_edge

if.end45.i.while.end.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end45.i.while.cond.outer.i.backedge_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.outer.i.backedge

while.cond.outer.i.backedge:                      ; preds = %if.end45.i.while.cond.outer.i.backedge_crit_edge, %next.backedge.i.while.cond.outer.i.backedge_crit_edge
  br label %while.cond.outer.i

if.then55.i:                                      ; preds = %if.then22.i
  %77 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %last.1.ph203.i, ptr %key.i, align 8
  %78 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 0, ptr %20, align 1
  %79 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -88, ptr %19, align 8
  br i1 %33, label %if.then60.i, label %if.then55.i.if.end62.i_crit_edge

if.then55.i.if.end62.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62.i

if.then60.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #18
  %80 = ptrtoint ptr %progress.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %last.1.ph203.i, ptr %progress.i, align 8
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then60.i, %if.then55.i.if.end62.i_crit_edge
  call void @btrfs_release_path(ptr noundef nonnull %call.i) #16
  br label %next.backedge.i

if.end63.i:                                       ; preds = %if.then22.i
  %81 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %start.i, align 8
  %cmp66.i = icmp ult i64 %67, %82
  br i1 %cmp66.i, label %if.then67.i, label %if.end70.i

if.then67.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #18
  %83 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %slots.i, align 4
  %inc.i = add i32 %84, 1
  store i32 %inc.i, ptr %slots.i, align 4
  br label %while.cond.i

if.end70.i:                                       ; preds = %if.end63.i
  %85 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %length.i, align 8
  %add.i = add i64 %86, %82
  call void @__sanitizer_cov_trace_cmp8(i64 %67, i64 %add.i)
  %cmp73.not.i = icmp ult i64 %67, %add.i
  br i1 %cmp73.not.i, label %if.end75.i, label %if.end70.i.while.end.i_crit_edge

if.end70.i.while.end.i_crit_edge:                 ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.end75.i:                                       ; preds = %if.end70.i
  %87 = and i8 %63, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -88, i8 %87)
  %switch.i = icmp eq i8 %87, -88
  br i1 %switch.i, label %if.then84.i, label %if.end75.i.if.end108.i_crit_edge

if.end75.i.if.end108.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end108.i

if.then84.i:                                      ; preds = %if.end75.i
  %call86.i = call i64 @add_new_free_space(ptr noundef %16, i64 noundef %last.1.ph203.i, i64 noundef %67) #16
  %add87.i = add i64 %call86.i, %total_found.1.ph202.i
  %88 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %19, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -87, i8 %89)
  %cmp90.i = icmp eq i8 %89, -87
  %90 = ptrtoint ptr %key.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %key.i, align 8
  br i1 %cmp90.i, label %if.then92.i, label %if.else96.i

if.then92.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #18
  %92 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nodesize.i, align 8
  %conv94.i = zext i32 %93 to i64
  br label %if.end100.i

if.else96.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #18
  %94 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 8)
  %95 = load i64, ptr %20, align 1
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.else96.i, %if.then92.i
  %conv94.i.pn = phi i64 [ %conv94.i, %if.then92.i ], [ %95, %if.else96.i ]
  %last.2.i = add i64 %conv94.i.pn, %91
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097153, i64 %add87.i)
  %cmp101.i = icmp ult i64 %add87.i, 2097153
  %brmerge.i = select i1 %cmp101.i, i1 true, i1 %tobool5.not.not.i
  %add87.mux.i = select i1 %cmp101.i, i64 %add87.i, i64 0
  br i1 %brmerge.i, label %if.end100.i.if.end108.i_crit_edge, label %if.then105.i

if.end100.i.if.end108.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end108.i

if.then105.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then105.i, %if.end100.i.if.end108.i_crit_edge, %if.end75.i.if.end108.i_crit_edge
  %total_found.2.i = phi i64 [ 0, %if.then105.i ], [ %add87.mux.i, %if.end100.i.if.end108.i_crit_edge ], [ %total_found.1.ph202.i, %if.end75.i.if.end108.i_crit_edge ]
  %last.3.i = phi i64 [ %last.2.i, %if.then105.i ], [ %last.2.i, %if.end100.i.if.end108.i_crit_edge ], [ %last.1.ph203.i, %if.end75.i.if.end108.i_crit_edge ]
  %96 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %slots.i, align 4
  %inc111.i = add i32 %97, 1
  store i32 %inc111.i, ptr %slots.i, align 4
  br label %while.cond.outer201.i

while.end.i:                                      ; preds = %if.end70.i.while.end.i_crit_edge, %if.end45.i.while.end.i_crit_edge, %if.else.i.while.end.i_crit_edge, %if.then.i.i.while.end.i_crit_edge
  %last.4.i = phi i64 [ -1, %if.then.i.i.while.end.i_crit_edge ], [ %last.1.ph203.i, %if.end70.i.while.end.i_crit_edge ], [ %last.1.ph203.i, %if.else.i.while.end.i_crit_edge ], [ %last.1.ph203.i, %if.end45.i.while.end.i_crit_edge ]
  %98 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %start.i, align 8
  %100 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %length.i, align 8
  %add114.i = add i64 %101, %99
  %call115.i = call i64 @add_new_free_space(ptr noundef %16, i64 noundef %last.4.i, i64 noundef %add114.i) #16
  %102 = ptrtoint ptr %progress.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 -1, ptr %progress.i, align 8
  br label %out.i

out.i:                                            ; preds = %while.end.i, %if.end41.i.out.i_crit_edge, %next.backedge.i.out.i_crit_edge, %btrfs_should_fragment_free_space.exit.i.out.i_crit_edge
  %ret.0.i = phi i32 [ 0, %while.end.i ], [ %call11232.i, %btrfs_should_fragment_free_space.exit.i.out.i_crit_edge ], [ %call11.i, %next.backedge.i.out.i_crit_edge ], [ %call.i192.i, %if.end41.i.out.i_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call.i) #16
  br label %load_extent_tree_free.exit

load_extent_tree_free.exit:                       ; preds = %out.i, %if.else.load_extent_tree_free.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %out.i ], [ -12, %if.else.load_extent_tree_free.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #16
  br label %done

done:                                             ; preds = %load_extent_tree_free.exit, %if.then10, %if.then.done_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %load_extent_tree_free.exit ], [ %call11, %if.then10 ], [ 0, %if.then.done_crit_edge ]
  %lock14 = getelementptr inbounds %struct.btrfs_block_group, ptr %1, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock14) #16
  %caching_ctl15 = getelementptr inbounds %struct.btrfs_block_group, ptr %1, i32 0, i32 20
  %103 = ptrtoint ptr %caching_ctl15 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %caching_ctl15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool16.not = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %tobool16.not, i32 3, i32 4
  %cached17 = getelementptr inbounds %struct.btrfs_block_group, ptr %1, i32 0, i32 19
  %104 = ptrtoint ptr %cached17 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %spec.select, ptr %cached17, align 8
  call void @_raw_spin_unlock(ptr noundef %lock14) #16
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 8
  %mount_opt.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %106, i32 0, i32 31
  %107 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mount_opt.i, align 8
  %and.i = and i32 %108, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i65 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i65, label %done.lor.rhs.i_crit_edge, label %land.lhs.true.i

done.lor.rhs.i_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %done
  %flags.i = getelementptr inbounds %struct.btrfs_block_group, ptr %1, i32 0, i32 10
  %109 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %flags.i, align 8
  %and2.i = and i64 %110, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.lor.rhs.i_crit_edge, label %land.lhs.true.i.if.then21_crit_edge

land.lhs.true.i.if.then21_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %done.lor.rhs.i_crit_edge
  %and5.i = and i32 %108, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %lor.rhs.i.if.end29_crit_edge, label %btrfs_should_fragment_free_space.exit

lor.rhs.i.if.end29_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

btrfs_should_fragment_free_space.exit:            ; preds = %lor.rhs.i
  %flags7.i = getelementptr inbounds %struct.btrfs_block_group, ptr %1, i32 0, i32 10
  %111 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %flags7.i, align 8
  %113 = and i64 %112, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %113)
  %tobool20.not = icmp eq i64 %113, 0
  br i1 %tobool20.not, label %btrfs_should_fragment_free_space.exit.if.end29_crit_edge, label %btrfs_should_fragment_free_space.exit.if.then21_crit_edge

btrfs_should_fragment_free_space.exit.if.then21_crit_edge: ; preds = %btrfs_should_fragment_free_space.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

btrfs_should_fragment_free_space.exit.if.end29_crit_edge: ; preds = %btrfs_should_fragment_free_space.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then21:                                        ; preds = %btrfs_should_fragment_free_space.exit.if.then21_crit_edge, %land.lhs.true.i.if.then21_crit_edge
  %space_info = getelementptr inbounds %struct.btrfs_block_group, ptr %1, i32 0, i32 22
  %114 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %space_info, align 8
  call void @_raw_spin_lock(ptr noundef %115) #16
  call void @_raw_spin_lock(ptr noundef %lock14) #16
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %1, i32 0, i32 4
  %116 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %length, align 8
  %used = getelementptr inbounds %struct.btrfs_block_group, ptr %1, i32 0, i32 7
  %118 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %used, align 8
  %sub = sub i64 %117, %119
  %shr = lshr i64 %sub, 1
  %120 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %space_info, align 8
  %bytes_used25 = getelementptr inbounds %struct.btrfs_space_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %bytes_used25 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %bytes_used25, align 8
  %add = add i64 %123, %shr
  store i64 %add, ptr %bytes_used25, align 8
  call void @_raw_spin_unlock(ptr noundef %lock14) #16
  %124 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %space_info, align 8
  call void @_raw_spin_unlock(ptr noundef %125) #16
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 8
  %128 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %length, align 8
  %flags.i67 = getelementptr inbounds %struct.btrfs_block_group, ptr %1, i32 0, i32 10
  %130 = ptrtoint ptr %flags.i67 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %flags.i67, align 8
  %and.i68 = and i64 %131, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i68)
  %tobool.not.i69 = icmp eq i64 %and.i68, 0
  %nodesize.i70 = getelementptr inbounds %struct.btrfs_fs_info, ptr %127, i32 0, i32 166
  %sectorsize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %127, i32 0, i32 167
  %cond.in.i = select i1 %tobool.not.i69, ptr %sectorsize.i, ptr %nodesize.i70
  %132 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %conv.i = zext i32 %cond.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %129, i64 %conv.i)
  %cmp18.i = icmp ugt i64 %129, %conv.i
  br i1 %cmp18.i, label %while.body.preheader.i, label %if.then21.if.end29_crit_edge

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

while.body.preheader.i:                           ; preds = %if.then21
  %start2.i = getelementptr inbounds %struct.btrfs_block_group, ptr %1, i32 0, i32 3
  %133 = ptrtoint ptr %start2.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %start2.i, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %len.020.i = phi i64 [ %135, %while.body.i.while.body.i_crit_edge ], [ %129, %while.body.preheader.i ]
  %start.019.i = phi i64 [ %add.i72, %while.body.i.while.body.i_crit_edge ], [ %134, %while.body.preheader.i ]
  %call.i71 = call i32 @btrfs_remove_free_space(ptr noundef %1, i64 noundef %start.019.i, i64 noundef %conv.i) #16
  %add.i72 = add i64 %start.019.i, %shl.i
  %135 = call i64 @llvm.usub.sat.i64(i64 %len.020.i, i64 %shl.i) #16
  %cmp.i = icmp ugt i64 %135, %conv.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.if.end29_crit_edge

while.body.i.if.end29_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end29:                                         ; preds = %while.body.i.if.end29_crit_edge, %if.then21.if.end29_crit_edge, %btrfs_should_fragment_free_space.exit.if.end29_crit_edge, %lor.rhs.i.if.end29_crit_edge
  %progress = getelementptr i8, ptr %work, i32 80
  %136 = ptrtoint ptr %progress to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 -1, ptr %progress, align 8
  call void @up_read(ptr noundef %commit_root_sem) #16
  call void @btrfs_free_excluded_extents(ptr noundef %1) #16
  call void @mutex_unlock(ptr noundef %mutex) #16
  %wait32 = getelementptr i8, ptr %work, i32 -52
  call void @__wake_up(ptr noundef %wait32, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  %count.i = getelementptr i8, ptr %work, i32 88
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !174
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #16
  %137 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #16, !srcloc !175
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %137, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.btrfs_put_caching_control.exit_crit_edge, label %if.then10.i.i.i.i, !prof !173

if.end5.i.i.i.i.btrfs_put_caching_control.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %btrfs_put_caching_control.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #16
  br label %btrfs_put_caching_control.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !176
  call void @kfree(ptr noundef %add.ptr) #16
  br label %btrfs_put_caching_control.exit

btrfs_put_caching_control.exit:                   ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.btrfs_put_caching_control.exit_crit_edge
  call void @btrfs_put_block_group(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_remove_block_group(ptr noundef %trans, i64 noundef %group_start, ptr noundef %em) local_unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %call.i = tail call fastcc ptr @block_group_cache_tree_search(ptr noundef %1, i64 noundef %group_start, i32 noundef 1) #16
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.body5, label %do.body11, !prof !172

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/block-group.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 886, 0\0A.popsection", ""() #16, !srcloc !186
  unreachable

do.body11:                                        ; preds = %entry
  %ro = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 16
  %2 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool12.not = icmp eq i32 %3, 0
  br i1 %tobool12.not, label %do.body22, label %do.end30, !prof !172

do.body22:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/block-group.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 887, 0\0A.popsection", ""() #16, !srcloc !187
  unreachable

do.end30:                                         ; preds = %do.body11
  tail call fastcc void @trace_btrfs_remove_block_group(ptr noundef nonnull %call.i)
  tail call void @btrfs_free_excluded_extents(ptr noundef nonnull %call.i) #16
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %length, align 8
  tail call void @btrfs_free_ref_tree_range(ptr noundef %1, i64 noundef %5, i64 noundef %7) #16
  %flags = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 10
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %flags, align 8
  %call31 = tail call i32 @btrfs_bg_flags_to_raid_index(i64 noundef %9) #22
  %call33 = tail call i32 @btrfs_bg_type_to_factor(i64 noundef %9) #16
  %data_alloc_cluster = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 104
  %refill_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 104, i32 1
  tail call void @_raw_spin_lock(ptr noundef %refill_lock) #16
  tail call void @btrfs_return_cluster_to_free_space(ptr noundef nonnull %call.i, ptr noundef %data_alloc_cluster) #16
  tail call void @_raw_spin_unlock(ptr noundef %refill_lock) #16
  %meta_alloc_cluster = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 105
  %refill_lock35 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 105, i32 1
  tail call void @_raw_spin_lock(ptr noundef %refill_lock35) #16
  tail call void @btrfs_return_cluster_to_free_space(ptr noundef nonnull %call.i, ptr noundef %meta_alloc_cluster) #16
  tail call void @_raw_spin_unlock(ptr noundef %refill_lock35) #16
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 8
  %12 = getelementptr inbounds %struct.btrfs_fs_info, ptr %11, i32 0, i32 176
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %12, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp.i.not.i = icmp eq i64 %14, 0
  br i1 %cmp.i.not.i, label %do.end30.btrfs_clear_treelog_bg.exit_crit_edge, label %if.end.i

do.end30.btrfs_clear_treelog_bg.exit_crit_edge:   ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %btrfs_clear_treelog_bg.exit

if.end.i:                                         ; preds = %do.end30
  %treelog_bg_lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %11, i32 0, i32 178
  tail call void @_raw_spin_lock(ptr noundef %treelog_bg_lock.i) #16
  %treelog_bg.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %11, i32 0, i32 179
  %15 = ptrtoint ptr %treelog_bg.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %treelog_bg.i, align 8
  %17 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp.i = icmp eq i64 %16, %18
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %treelog_bg.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %treelog_bg.i, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %treelog_bg_lock.i) #16
  br label %btrfs_clear_treelog_bg.exit

btrfs_clear_treelog_bg.exit:                      ; preds = %if.end4.i, %do.end30.btrfs_clear_treelog_bg.exit_crit_edge
  tail call void @btrfs_clear_data_reloc_bg(ptr noundef nonnull %call.i) #16
  %call37 = tail call ptr @btrfs_alloc_path() #16
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %out.thread, label %if.end40

out.thread:                                       ; preds = %btrfs_clear_treelog_bg.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call.i)
  br label %if.end420

if.end40:                                         ; preds = %btrfs_clear_treelog_bg.exit
  %call41 = tail call ptr @lookup_free_space_inode(ptr noundef nonnull %call.i, ptr noundef nonnull %call37) #16
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %20 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transaction, align 4
  %cache_write_mutex = getelementptr inbounds %struct.btrfs_transaction, ptr %21, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %cache_write_mutex, i32 noundef 0) #16
  %22 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transaction, align 4
  %dirty_bgs_lock = getelementptr inbounds %struct.btrfs_transaction, ptr %23, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %dirty_bgs_lock) #16
  %io_list = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 37
  %24 = ptrtoint ptr %io_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %io_list, align 4
  %cmp.i563.not = icmp eq ptr %25, %io_list
  br i1 %cmp.i563.not, label %if.end40.if.end82_crit_edge, label %if.then45

if.end40.if.end82_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

if.then45:                                        ; preds = %if.end40
  %call.i.i564 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %io_list) #16
  br i1 %call.i.i564, label %if.end.i.i, label %if.then45.list_del_init.exit_crit_edge

if.then45.list_del_init.exit_crit_edge:           ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 37, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %io_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then45.list_del_init.exit_crit_edge
  %32 = ptrtoint ptr %io_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %io_list, ptr %io_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 37, i32 1
  %33 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %io_list, ptr %prev.i3.i, align 4
  %cmp.i565 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i565, label %list_del_init.exit.if.end70_crit_edge, label %land.rhs

list_del_init.exit.if.end70_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70

land.rhs:                                         ; preds = %list_del_init.exit
  %inode48 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 38, i32 5
  %34 = ptrtoint ptr %inode48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %inode48, align 4
  %cmp.not = icmp eq ptr %call41, %35
  br i1 %cmp.not, label %land.rhs.if.end70_crit_edge, label %do.end64, !prof !173

land.rhs.if.end70_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70

do.end64:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 940, i32 noundef 9, ptr noundef null) #16
  br label %if.end70

if.end70:                                         ; preds = %do.end64, %land.rhs.if.end70_crit_edge, %list_del_init.exit.if.end70_crit_edge
  %36 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %transaction, align 4
  %dirty_bgs_lock78 = getelementptr inbounds %struct.btrfs_transaction, ptr %37, i32 0, i32 20
  tail call void @_raw_spin_unlock(ptr noundef %dirty_bgs_lock78) #16
  %call79 = tail call i32 @btrfs_wait_cache_io(ptr noundef %trans, ptr noundef nonnull %call.i, ptr noundef nonnull %call37) #16
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call.i)
  %38 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %transaction, align 4
  %dirty_bgs_lock81 = getelementptr inbounds %struct.btrfs_transaction, ptr %39, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %dirty_bgs_lock81) #16
  br label %if.end82

if.end82:                                         ; preds = %if.end70, %if.end40.if.end82_crit_edge
  %dirty_list = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 36
  %40 = ptrtoint ptr %dirty_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %dirty_list, align 4
  %cmp.i566.not = icmp eq ptr %41, %dirty_list
  br i1 %cmp.i566.not, label %if.end82.if.end87_crit_edge, label %if.then85

if.end82.if.end87_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87

if.then85:                                        ; preds = %if.end82
  %call.i.i568 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dirty_list) #16
  br i1 %call.i.i568, label %if.end.i.i571, label %if.then85.list_del_init.exit573_crit_edge

if.then85.list_del_init.exit573_crit_edge:        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit573

if.end.i.i571:                                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i569 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 36, i32 1
  %42 = ptrtoint ptr %prev.i.i569 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i569, align 4
  %44 = ptrtoint ptr %dirty_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dirty_list, align 4
  %prev1.i.i.i570 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i570 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i570, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del_init.exit573

list_del_init.exit573:                            ; preds = %if.end.i.i571, %if.then85.list_del_init.exit573_crit_edge
  %48 = ptrtoint ptr %dirty_list to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %dirty_list, ptr %dirty_list, align 4
  %prev.i3.i572 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 36, i32 1
  %49 = ptrtoint ptr %prev.i3.i572 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dirty_list, ptr %prev.i3.i572, align 4
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call.i)
  br label %if.end87

if.end87:                                         ; preds = %list_del_init.exit573, %if.end82.if.end87_crit_edge
  %50 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %transaction, align 4
  %dirty_bgs_lock89 = getelementptr inbounds %struct.btrfs_transaction, ptr %51, i32 0, i32 20
  tail call void @_raw_spin_unlock(ptr noundef %dirty_bgs_lock89) #16
  %52 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %transaction, align 4
  %cache_write_mutex91 = getelementptr inbounds %struct.btrfs_transaction, ptr %53, i32 0, i32 19
  tail call void @mutex_unlock(ptr noundef %cache_write_mutex91) #16
  %call92 = tail call i32 @btrfs_remove_free_space_inode(ptr noundef %trans, ptr noundef %call41, ptr noundef nonnull %call.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end87.out_crit_edge

if.end87.out_crit_edge:                           ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end95:                                         ; preds = %if.end87
  %block_group_cache_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %block_group_cache_lock) #16
  %cache_node = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 24
  %block_group_cache_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 16
  tail call void @rb_erase(ptr noundef %cache_node, ptr noundef %block_group_cache_tree) #16
  %54 = ptrtoint ptr %cache_node to i32
  %55 = ptrtoint ptr %cache_node to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %cache_node, align 8
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call.i)
  %first_logical_byte = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 15
  %56 = ptrtoint ptr %first_logical_byte to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %first_logical_byte, align 8
  %58 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %59)
  %cmp99 = icmp eq i64 %57, %59
  br i1 %cmp99, label %if.then100, label %if.end95.if.end102_crit_edge

if.end95.if.end102_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  %60 = ptrtoint ptr %first_logical_byte to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 -1, ptr %first_logical_byte, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %if.end95.if.end102_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %block_group_cache_lock) #16
  %space_info = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 22
  %61 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %space_info, align 8
  %groups_sem = getelementptr inbounds %struct.btrfs_space_info, ptr %62, i32 0, i32 21
  tail call void @down_write(ptr noundef %groups_sem) #16
  %list = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 25
  %call.i.i574 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #16
  br i1 %call.i.i574, label %if.end.i.i577, label %if.end102.list_del_init.exit579_crit_edge

if.end102.list_del_init.exit579_crit_edge:        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit579

if.end.i.i577:                                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i575 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 25, i32 1
  %63 = ptrtoint ptr %prev.i.i575 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i575, align 4
  %65 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %list, align 4
  %prev1.i.i.i576 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i576 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i576, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %list_del_init.exit579

list_del_init.exit579:                            ; preds = %if.end.i.i577, %if.end102.list_del_init.exit579_crit_edge
  %69 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i578 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 25, i32 1
  %70 = ptrtoint ptr %prev.i3.i578 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %list, ptr %prev.i3.i578, align 4
  %71 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %space_info, align 8
  %arrayidx = getelementptr %struct.btrfs_space_info, ptr %72, i32 0, i32 22, i32 %call31
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i580.not = icmp eq ptr %74, %arrayidx
  br i1 %cmp.i580.not, label %if.then107, label %list_del_init.exit579.if.end114_crit_edge

list_del_init.exit579.if.end114_crit_edge:        ; preds = %list_del_init.exit579
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114

if.then107:                                       ; preds = %list_del_init.exit579
  %arrayidx109 = getelementptr %struct.btrfs_space_info, ptr %72, i32 0, i32 24, i32 %call31
  %75 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx109, align 4
  store ptr null, ptr %arrayidx109, align 4
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %flags, align 8
  %and.i.i = and i64 %78, 2040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %cmp.i.i = icmp eq i64 %and.i.i, 0
  %or.i.i = or i64 %78, 281474976710656
  %spec.select.i.i = select i1 %cmp.i.i, i64 %or.i.i, i64 %78
  %and.i = and i64 %spec.select.i.i, 281474976712696
  %profiles_lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 109
  %lock.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 109, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #16
  %79 = ptrtoint ptr %profiles_lock.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %profiles_lock.i, align 4
  %inc.i.i.i.i.i = add i32 %80, 1
  store i32 %inc.i.i.i.i.i, ptr %profiles_lock.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !188
  %dep_map.i.i.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 109, i32 0, i32 0, i32 1
  %81 = tail call ptr @llvm.returnaddress(i32 0) #16
  %82 = ptrtoint ptr %81 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %82) #16
  %and1.i = and i64 %78, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool.not.i = icmp eq i64 %and1.i, 0
  br i1 %tobool.not.i, label %if.then107.if.end.i582_crit_edge, label %if.then.i

if.then107.if.end.i582_crit_edge:                 ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i582

if.then.i:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #18
  %neg.i = xor i64 %and.i, -1
  %avail_data_alloc_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 110
  %83 = ptrtoint ptr %avail_data_alloc_bits.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %avail_data_alloc_bits.i, align 8
  %and2.i = and i64 %84, %neg.i
  store i64 %and2.i, ptr %avail_data_alloc_bits.i, align 8
  br label %if.end.i582

if.end.i582:                                      ; preds = %if.then.i, %if.then107.if.end.i582_crit_edge
  %and3.i = and i64 %78, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i)
  %tobool4.not.i = icmp eq i64 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i582.if.end8.i_crit_edge, label %if.then5.i

if.end.i582.if.end8.i_crit_edge:                  ; preds = %if.end.i582
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i582
  call void @__sanitizer_cov_trace_pc() #18
  %neg6.i = xor i64 %and.i, -1
  %avail_metadata_alloc_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 111
  %85 = ptrtoint ptr %avail_metadata_alloc_bits.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %avail_metadata_alloc_bits.i, align 8
  %and7.i = and i64 %86, %neg6.i
  store i64 %and7.i, ptr %avail_metadata_alloc_bits.i, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i582.if.end8.i_crit_edge
  %and9.i = and i64 %78, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9.i)
  %tobool10.not.i = icmp eq i64 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.clear_avail_alloc_bits.exit_crit_edge, label %if.then11.i

if.end8.i.clear_avail_alloc_bits.exit_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %clear_avail_alloc_bits.exit

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  %neg12.i = xor i64 %and.i, -1
  %avail_system_alloc_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 112
  %87 = ptrtoint ptr %avail_system_alloc_bits.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %avail_system_alloc_bits.i, align 8
  %and13.i = and i64 %88, %neg12.i
  store i64 %and13.i, ptr %avail_system_alloc_bits.i, align 8
  br label %clear_avail_alloc_bits.exit

clear_avail_alloc_bits.exit:                      ; preds = %if.then11.i, %if.end8.i.clear_avail_alloc_bits.exit_crit_edge
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %82) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !189
  %89 = ptrtoint ptr %profiles_lock.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %profiles_lock.i, align 4
  %inc.i.i.i.i = add i32 %90, 1
  store i32 %inc.i.i.i.i, ptr %profiles_lock.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #16
  br label %if.end114

if.end114:                                        ; preds = %clear_avail_alloc_bits.exit, %list_del_init.exit579.if.end114_crit_edge
  %kobj.0 = phi ptr [ %76, %clear_avail_alloc_bits.exit ], [ null, %list_del_init.exit579.if.end114_crit_edge ]
  %91 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %space_info, align 8
  %groups_sem116 = getelementptr inbounds %struct.btrfs_space_info, ptr %92, i32 0, i32 21
  tail call void @up_write(ptr noundef %groups_sem116) #16
  %93 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %flags, align 8
  %95 = and i64 %94, 1920
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %95)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %if.end114.clear_incompat_bg_bits.exit_crit_edge, label %if.then.i584

if.end114.clear_incompat_bg_bits.exit_crit_edge:  ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #18
  br label %clear_incompat_bg_bits.exit

if.then.i584:                                     ; preds = %if.end114
  %space_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 101
  %call.i583 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i583)
  %tobool6.not.i = icmp eq i32 %call.i583, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %if.then.i584.do.end.i_crit_edge

if.then.i584.do.end.i_crit_edge:                  ; preds = %if.then.i584
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.then.i584
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b71.i = load i1, ptr @clear_incompat_bg_bits.__warned, align 1
  br i1 %.b71.i, label %land.lhs.true9.i.do.end.i_crit_edge, label %if.then11.i585

land.lhs.true9.i.do.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.then11.i585:                                   ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @clear_incompat_bg_bits.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 826, ptr noundef nonnull @.str.33) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then11.i585, %land.lhs.true9.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.then.i584.do.end.i_crit_edge
  %97 = ptrtoint ptr %space_info.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pn94.i = load volatile ptr, ptr %space_info.i, align 4
  %cmp.not95.i = icmp eq ptr %.pn94.i, %space_info.i
  br i1 %cmp.not95.i, label %do.end.i.if.then49.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.then49.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then49.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn98.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn94.i, %do.end.i.for.body.i_crit_edge ]
  %found_raid56.0.off097.i = phi i1 [ %spec.select74.i, %for.body.i.for.body.i_crit_edge ], [ false, %do.end.i.for.body.i_crit_edge ]
  %found_raid1c34.0.off096.i = phi i1 [ %spec.select75.i, %for.body.i.for.body.i_crit_edge ], [ false, %do.end.i.for.body.i_crit_edge ]
  %groups_sem.i = getelementptr i8, ptr %.pn98.i, i32 48
  tail call void @down_read(ptr noundef %groups_sem.i) #16
  %arrayidx.i = getelementptr i8, ptr %.pn98.i, i32 184
  %98 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.i586 = icmp ne ptr %99, %arrayidx.i
  %arrayidx21.i = getelementptr i8, ptr %.pn98.i, i32 192
  %100 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile ptr, ptr %arrayidx21.i, align 4
  %cmp.i76.i = icmp ne ptr %101, %arrayidx21.i
  %102 = select i1 %cmp.i76.i, i1 true, i1 %cmp.i.i586
  %spec.select74.i = select i1 %102, i1 true, i1 %found_raid56.0.off097.i
  %arrayidx27.i = getelementptr i8, ptr %.pn98.i, i32 200
  %103 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile ptr, ptr %arrayidx27.i, align 4
  %cmp.i78.i = icmp ne ptr %104, %arrayidx27.i
  %arrayidx33.i = getelementptr i8, ptr %.pn98.i, i32 208
  %105 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile ptr, ptr %arrayidx33.i, align 4
  %cmp.i80.i = icmp ne ptr %106, %arrayidx33.i
  %107 = select i1 %cmp.i80.i, i1 true, i1 %cmp.i78.i
  %spec.select75.i = select i1 %107, i1 true, i1 %found_raid1c34.0.off096.i
  tail call void @up_read(ptr noundef %groups_sem.i) #16
  %108 = ptrtoint ptr %.pn98.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pn.i = load volatile ptr, ptr %.pn98.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %space_info.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  br i1 %spec.select74.i, label %for.end.i.if.end50.i_crit_edge, label %for.end.i.if.then49.i_crit_edge

for.end.i.if.then49.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then49.i

for.end.i.if.end50.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i

if.then49.i:                                      ; preds = %for.end.i.if.then49.i_crit_edge, %do.end.i.if.then49.i_crit_edge
  %found_raid1c34.0.off0.lcssa102.i = phi i1 [ %spec.select75.i, %for.end.i.if.then49.i_crit_edge ], [ false, %do.end.i.if.then49.i_crit_edge ]
  %super_copy.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 43
  %109 = ptrtoint ptr %super_copy.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %super_copy.i.i, align 8
  %incompat_flags.i.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %110, i32 0, i32 22
  %111 = ptrtoint ptr %incompat_flags.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 8)
  %112 = load i64, ptr %incompat_flags.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %112)
  %tobool.not.i.i = icmp sgt i64 %112, -1
  br i1 %tobool.not.i.i, label %if.then49.i.if.end50.i_crit_edge, label %if.then.i.i

if.then49.i.if.end50.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i

if.then.i.i:                                      ; preds = %if.then49.i
  %super_lock.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 42
  tail call void @_raw_spin_lock(ptr noundef %super_lock.i.i) #16
  %113 = ptrtoint ptr %incompat_flags.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 8)
  %114 = load i64, ptr %incompat_flags.i.i.i, align 1
  %115 = tail call i64 @llvm.bswap.i64(i64 %114) #16
  %and2.i.i = and i64 %115, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool3.not.i.i = icmp eq i64 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.then.i.i.if.end.i.i587_crit_edge, label %if.then4.i.i

if.then.i.i.if.end.i.i587_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i587

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %and5.i.i = and i64 %115, -129
  %116 = tail call i64 @llvm.bswap.i64(i64 %and5.i.i) #16
  %117 = ptrtoint ptr %incompat_flags.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %117, i32 8)
  store i64 %116, ptr %incompat_flags.i.i.i, align 1
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i64 noundef 128) #20
  br label %if.end.i.i587

if.end.i.i587:                                    ; preds = %if.then4.i.i, %if.then.i.i.if.end.i.i587_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %super_lock.i.i) #16
  br i1 %found_raid1c34.0.off0.lcssa102.i, label %if.end.i.i587.clear_incompat_bg_bits.exit_crit_edge, label %if.end.i.i587.if.then52.i_crit_edge

if.end.i.i587.if.then52.i_crit_edge:              ; preds = %if.end.i.i587
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then52.i

if.end.i.i587.clear_incompat_bg_bits.exit_crit_edge: ; preds = %if.end.i.i587
  call void @__sanitizer_cov_trace_pc() #18
  br label %clear_incompat_bg_bits.exit

if.end50.i:                                       ; preds = %if.then49.i.if.end50.i_crit_edge, %for.end.i.if.end50.i_crit_edge
  %found_raid1c34.0.off0.lcssa103.i = phi i1 [ %found_raid1c34.0.off0.lcssa102.i, %if.then49.i.if.end50.i_crit_edge ], [ %spec.select75.i, %for.end.i.if.end50.i_crit_edge ]
  br i1 %found_raid1c34.0.off0.lcssa103.i, label %if.end50.i.clear_incompat_bg_bits.exit_crit_edge, label %if.end50.i.if.then52.i_crit_edge

if.end50.i.if.then52.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then52.i

if.end50.i.clear_incompat_bg_bits.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %clear_incompat_bg_bits.exit

if.then52.i:                                      ; preds = %if.end50.i.if.then52.i_crit_edge, %if.end.i.i587.if.then52.i_crit_edge
  %super_copy.i82.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 43
  %118 = ptrtoint ptr %super_copy.i82.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %super_copy.i82.i, align 8
  %incompat_flags.i.i83.i = getelementptr inbounds %struct.btrfs_super_block, ptr %119, i32 0, i32 22
  %120 = ptrtoint ptr %incompat_flags.i.i83.i to i32
  call void @__asan_loadN_noabort(i32 %120, i32 8)
  %121 = load i64, ptr %incompat_flags.i.i83.i, align 1
  %122 = and i64 %121, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %122)
  %tobool.not.i85.i = icmp eq i64 %122, 0
  br i1 %tobool.not.i85.i, label %if.then52.i.clear_incompat_bg_bits.exit_crit_edge, label %if.then.i89.i

if.then52.i.clear_incompat_bg_bits.exit_crit_edge: ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %clear_incompat_bg_bits.exit

if.then.i89.i:                                    ; preds = %if.then52.i
  %super_lock.i86.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 42
  tail call void @_raw_spin_lock(ptr noundef %super_lock.i86.i) #16
  %123 = ptrtoint ptr %incompat_flags.i.i83.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 8)
  %124 = load i64, ptr %incompat_flags.i.i83.i, align 1
  %125 = tail call i64 @llvm.bswap.i64(i64 %124) #16
  %and2.i87.i = and i64 %125, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i87.i)
  %tobool3.not.i88.i = icmp eq i64 %and2.i87.i, 0
  br i1 %tobool3.not.i88.i, label %if.then.i89.i.if.end.i92.i_crit_edge, label %if.then4.i91.i

if.then.i89.i.if.end.i92.i_crit_edge:             ; preds = %if.then.i89.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i92.i

if.then4.i91.i:                                   ; preds = %if.then.i89.i
  call void @__sanitizer_cov_trace_pc() #18
  %and5.i90.i = and i64 %125, -2049
  %126 = tail call i64 @llvm.bswap.i64(i64 %and5.i90.i) #16
  %127 = ptrtoint ptr %incompat_flags.i.i83.i to i32
  call void @__asan_storeN_noabort(i32 %127, i32 8)
  store i64 %126, ptr %incompat_flags.i.i83.i, align 1
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i64 noundef 2048) #20
  br label %if.end.i92.i

if.end.i92.i:                                     ; preds = %if.then4.i91.i, %if.then.i89.i.if.end.i92.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %super_lock.i86.i) #16
  br label %clear_incompat_bg_bits.exit

clear_incompat_bg_bits.exit:                      ; preds = %if.end.i92.i, %if.then52.i.clear_incompat_bg_bits.exit_crit_edge, %if.end50.i.clear_incompat_bg_bits.exit_crit_edge, %if.end.i.i587.clear_incompat_bg_bits.exit_crit_edge, %if.end114.clear_incompat_bg_bits.exit_crit_edge
  %tobool118.not = icmp eq ptr %kobj.0, null
  br i1 %tobool118.not, label %clear_incompat_bg_bits.exit.if.end120_crit_edge, label %if.then119

clear_incompat_bg_bits.exit.if.end120_crit_edge:  ; preds = %clear_incompat_bg_bits.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end120

if.then119:                                       ; preds = %clear_incompat_bg_bits.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kobject_del(ptr noundef nonnull %kobj.0) #16
  tail call void @kobject_put(ptr noundef nonnull %kobj.0) #16
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %clear_incompat_bg_bits.exit.if.end120_crit_edge
  %has_caching_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 17
  %128 = ptrtoint ptr %has_caching_ctl to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load = load i8, ptr %has_caching_ctl, align 8
  %129 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool121.not = icmp eq i8 %129, 0
  br i1 %tobool121.not, label %if.end120.if.end124_crit_edge, label %if.then122

if.end120.if.end124_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end124

if.then122:                                       ; preds = %if.end120
  %lock.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #16
  %caching_ctl.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 20
  %130 = ptrtoint ptr %caching_ctl.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %caching_ctl.i, align 4
  %tobool.not.i588 = icmp eq ptr %131, null
  br i1 %tobool.not.i588, label %if.then122.btrfs_get_caching_control.exit_crit_edge, label %if.end.i589

if.then122.btrfs_get_caching_control.exit_crit_edge: ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #18
  br label %btrfs_get_caching_control.exit

if.end.i589:                                      ; preds = %if.then122
  %count.i = getelementptr inbounds %struct.btrfs_caching_control, ptr %131, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #16
  %132 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #16, !srcloc !171
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %132, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.i589.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !172

if.end.i589.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.end.i589
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i589
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %133 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %133)
  %.not.i.i.i.i = icmp sgt i32 %133, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.btrfs_get_caching_control.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !173

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.btrfs_get_caching_control.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %btrfs_get_caching_control.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.i589.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.i589.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #16
  br label %btrfs_get_caching_control.exit

btrfs_get_caching_control.exit:                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.btrfs_get_caching_control.exit_crit_edge, %if.then122.btrfs_get_caching_control.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  br label %if.end124

if.end124:                                        ; preds = %btrfs_get_caching_control.exit, %if.end120.if.end124_crit_edge
  %caching_ctl.0 = phi ptr [ %131, %btrfs_get_caching_control.exit ], [ null, %if.end120.if.end124_crit_edge ]
  %cached = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 19
  %134 = ptrtoint ptr %cached to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cached, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp125 = icmp eq i32 %135, 1
  br i1 %cmp125, label %if.then126, label %if.end124.if.end128_crit_edge

if.end124.if.end128_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end128

if.then126:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #18
  %call127 = tail call i32 @btrfs_wait_block_group_cache_done(ptr noundef nonnull %call.i)
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.end124.if.end128_crit_edge
  %136 = ptrtoint ptr %has_caching_ctl to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load130 = load i8, ptr %has_caching_ctl, align 8
  %137 = and i8 %bf.load130, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool134.not = icmp eq i8 %137, 0
  br i1 %tobool134.not, label %if.end128.if.end163_crit_edge, label %if.then135

if.end128.if.end163_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end163

if.then135:                                       ; preds = %if.end128
  tail call void @_raw_spin_lock(ptr noundef %block_group_cache_lock) #16
  %tobool137.not = icmp eq ptr %caching_ctl.0, null
  br i1 %tobool137.not, label %if.then138, label %if.then135.if.then156_crit_edge

if.then135.if.then156_crit_edge:                  ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then156

if.then138:                                       ; preds = %if.then135
  %caching_block_groups = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 61
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then138
  %ctl.0.in = phi ptr [ %caching_block_groups, %if.then138 ], [ %ctl.0, %for.body.for.cond_crit_edge ]
  %138 = ptrtoint ptr %ctl.0.in to i32
  call void @__asan_load4_noabort(i32 %138)
  %ctl.0 = load ptr, ptr %ctl.0.in, align 4
  %cmp142.not = icmp eq ptr %ctl.0, %caching_block_groups
  br i1 %cmp142.not, label %for.cond.if.end163.critedge_crit_edge, label %for.body

for.cond.if.end163.critedge_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end163.critedge

for.body:                                         ; preds = %for.cond
  %block_group145 = getelementptr inbounds %struct.btrfs_caching_control, ptr %ctl.0, i32 0, i32 4
  %139 = ptrtoint ptr %block_group145 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %block_group145, align 8
  %cmp146 = icmp eq ptr %140, %call.i
  br i1 %cmp146, label %if.then147, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.then147:                                       ; preds = %for.body
  %count = getelementptr inbounds %struct.btrfs_caching_control, ptr %ctl.0, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #16
  %141 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #16, !srcloc !171
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %141, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then147.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !172

if.then147.if.end15.sink.split.i.i.i_crit_edge:   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then147
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %142 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %142)
  %.not.i.i.i = icmp sgt i32 %142, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end154_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !173

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end154_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end154

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then147.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then147.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef %.sink.i.i.i) #16
  br label %if.end154

if.end154:                                        ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end154_crit_edge
  %tobool155.not = icmp eq ptr %ctl.0, null
  br i1 %tobool155.not, label %if.end154.if.end163.critedge_crit_edge, label %if.end154.if.then156_crit_edge

if.end154.if.then156_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then156

if.end154.if.end163.critedge_crit_edge:           ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end163.critedge

if.then156:                                       ; preds = %if.end154.if.then156_crit_edge, %if.then135.if.then156_crit_edge
  %caching_ctl.2630 = phi ptr [ %ctl.0, %if.end154.if.then156_crit_edge ], [ %caching_ctl.0, %if.then135.if.then156_crit_edge ]
  %call.i.i590 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %caching_ctl.2630) #16
  br i1 %call.i.i590, label %if.end.i.i593, label %if.then156.list_del_init.exit595_crit_edge

if.then156.list_del_init.exit595_crit_edge:       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit595

if.end.i.i593:                                    ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i591 = getelementptr inbounds %struct.list_head, ptr %caching_ctl.2630, i32 0, i32 1
  %143 = ptrtoint ptr %prev.i.i591 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %prev.i.i591, align 4
  %145 = ptrtoint ptr %caching_ctl.2630 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %caching_ctl.2630, align 4
  %prev1.i.i.i592 = getelementptr inbounds %struct.list_head, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %prev1.i.i.i592 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %144, ptr %prev1.i.i.i592, align 4
  %148 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %146, ptr %144, align 4
  br label %list_del_init.exit595

list_del_init.exit595:                            ; preds = %if.end.i.i593, %if.then156.list_del_init.exit595_crit_edge
  %149 = ptrtoint ptr %caching_ctl.2630 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %caching_ctl.2630, ptr %caching_ctl.2630, align 4
  %prev.i3.i594 = getelementptr inbounds %struct.list_head, ptr %caching_ctl.2630, i32 0, i32 1
  %150 = ptrtoint ptr %prev.i3.i594 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %caching_ctl.2630, ptr %prev.i3.i594, align 4
  tail call void @_raw_spin_unlock(ptr noundef %block_group_cache_lock) #16
  %count.i596 = getelementptr inbounds %struct.btrfs_caching_control, ptr %caching_ctl.2630, i32 0, i32 6
  %call.i.i.i.i.i.i597 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i596, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %count.i596, i32 1, i32 3, i32 1) #16
  %151 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i596, ptr %count.i596, i32 1, ptr elementtype(i32) %count.i596) #16, !srcloc !175
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %151, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i599, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit595
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i598 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i598, label %if.end5.i.i.i.i.btrfs_put_caching_control.exit_crit_edge, label %if.then10.i.i.i.i, !prof !173

if.end5.i.i.i.i.btrfs_put_caching_control.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %btrfs_put_caching_control.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %count.i596, i32 noundef 3) #16
  br label %btrfs_put_caching_control.exit

if.then.i599:                                     ; preds = %list_del_init.exit595
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !176
  tail call void @kfree(ptr noundef nonnull %caching_ctl.2630) #16
  br label %btrfs_put_caching_control.exit

btrfs_put_caching_control.exit:                   ; preds = %if.then.i599, %if.then10.i.i.i.i, %if.end5.i.i.i.i.btrfs_put_caching_control.exit_crit_edge
  %call.i.i.i.i.i.i602 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i596, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %count.i596, i32 1, i32 3, i32 1) #16
  %152 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i596, ptr %count.i596, i32 1, ptr elementtype(i32) %count.i596) #16, !srcloc !175
  %asmresult.i.i.i.i.i.i.i603 = extractvalue { i32, i32, i32 } %152, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i603)
  %cmp.i.i.i.i604 = icmp eq i32 %asmresult.i.i.i.i.i.i.i603, 1
  br i1 %cmp.i.i.i.i604, label %if.then.i608, label %if.end5.i.i.i.i606

if.end5.i.i.i.i606:                               ; preds = %btrfs_put_caching_control.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i603)
  %.not.i.i.i.i605 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i603, 0
  br i1 %.not.i.i.i.i605, label %if.end5.i.i.i.i606.if.end163_crit_edge, label %if.then10.i.i.i.i607, !prof !173

if.end5.i.i.i.i606.if.end163_crit_edge:           ; preds = %if.end5.i.i.i.i606
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end163

if.then10.i.i.i.i607:                             ; preds = %if.end5.i.i.i.i606
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %count.i596, i32 noundef 3) #16
  br label %if.end163

if.then.i608:                                     ; preds = %btrfs_put_caching_control.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !176
  tail call void @kfree(ptr noundef nonnull %caching_ctl.2630) #16
  br label %if.end163

if.end163.critedge:                               ; preds = %if.end154.if.end163.critedge_crit_edge, %for.cond.if.end163.critedge_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %block_group_cache_lock) #16
  br label %if.end163

if.end163:                                        ; preds = %if.end163.critedge, %if.then.i608, %if.then10.i.i.i.i607, %if.end5.i.i.i.i606.if.end163_crit_edge, %if.end128.if.end163_crit_edge
  %153 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %transaction, align 4
  %dirty_bgs_lock165 = getelementptr inbounds %struct.btrfs_transaction, ptr %154, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %dirty_bgs_lock165) #16
  %155 = ptrtoint ptr %dirty_list to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile ptr, ptr %dirty_list, align 4
  %cmp.i611.not = icmp eq ptr %156, %dirty_list
  br i1 %cmp.i611.not, label %if.end163.if.end193_crit_edge, label %do.end187, !prof !173

if.end163.if.end193_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end193

do.end187:                                        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1018, i32 noundef 9, ptr noundef null) #16
  br label %if.end193

if.end193:                                        ; preds = %do.end187, %if.end163.if.end193_crit_edge
  %157 = ptrtoint ptr %io_list to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile ptr, ptr %io_list, align 4
  %cmp.i613.not = icmp eq ptr %158, %io_list
  br i1 %cmp.i613.not, label %if.end193.if.end228_crit_edge, label %do.end222, !prof !173

if.end193.if.end228_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end228

do.end222:                                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1019, i32 noundef 9, ptr noundef null) #16
  br label %if.end228

if.end228:                                        ; preds = %do.end222, %if.end193.if.end228_crit_edge
  %159 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %transaction, align 4
  %dirty_bgs_lock237 = getelementptr inbounds %struct.btrfs_transaction, ptr %160, i32 0, i32 20
  tail call void @_raw_spin_unlock(ptr noundef %dirty_bgs_lock237) #16
  tail call void @btrfs_remove_free_space_cache(ptr noundef nonnull %call.i) #16
  %161 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %space_info, align 8
  tail call void @_raw_spin_lock(ptr noundef %162) #16
  %ro_list = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 29
  %call.i.i615 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ro_list) #16
  br i1 %call.i.i615, label %if.end.i.i618, label %if.end228.list_del_init.exit620_crit_edge

if.end228.list_del_init.exit620_crit_edge:        ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit620

if.end.i.i618:                                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i616 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 29, i32 1
  %163 = ptrtoint ptr %prev.i.i616 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %prev.i.i616, align 4
  %165 = ptrtoint ptr %ro_list to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ro_list, align 4
  %prev1.i.i.i617 = getelementptr inbounds %struct.list_head, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %prev1.i.i.i617 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %164, ptr %prev1.i.i.i617, align 4
  %168 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile ptr %166, ptr %164, align 4
  br label %list_del_init.exit620

list_del_init.exit620:                            ; preds = %if.end.i.i618, %if.end228.list_del_init.exit620_crit_edge
  %169 = ptrtoint ptr %ro_list to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile ptr %ro_list, ptr %ro_list, align 4
  %prev.i3.i619 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 29, i32 1
  %170 = ptrtoint ptr %prev.i3.i619 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %ro_list, ptr %prev.i3.i619, align 4
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 31
  %171 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %mount_opt, align 8
  %and = and i32 %172, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool239.not = icmp eq i32 %and, 0
  br i1 %tobool239.not, label %list_del_init.exit620.if.end374_crit_edge, label %if.then240

list_del_init.exit620.if.end374_crit_edge:        ; preds = %list_del_init.exit620
  call void @__sanitizer_cov_trace_pc() #18
  %.pre = sext i32 %call33 to i64
  br label %if.end374

if.then240:                                       ; preds = %list_del_init.exit620
  %173 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %space_info, align 8
  %total_bytes = getelementptr inbounds %struct.btrfs_space_info, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %total_bytes, align 8
  %177 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %176, i64 %178)
  %cmp244 = icmp ult i64 %176, %178
  br i1 %cmp244, label %do.end260, label %if.then240.if.end266_crit_edge, !prof !172

if.then240.if.end266_crit_edge:                   ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end266

do.end260:                                        ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1029, i32 noundef 9, ptr noundef null) #16
  br label %if.end266

if.end266:                                        ; preds = %do.end260, %if.then240.if.end266_crit_edge
  %179 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %space_info, align 8
  %bytes_readonly = getelementptr inbounds %struct.btrfs_space_info, ptr %180, i32 0, i32 6
  %181 = ptrtoint ptr %bytes_readonly to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %bytes_readonly, align 8
  %183 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %length, align 8
  %zone_unusable = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 47
  %185 = ptrtoint ptr %zone_unusable to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %zone_unusable, align 8
  %sub = sub i64 %184, %186
  call void @__sanitizer_cov_trace_cmp8(i64 %182, i64 %sub)
  %cmp277 = icmp ult i64 %182, %sub
  br i1 %cmp277, label %do.end293, label %if.end266.if.end299_crit_edge, !prof !172

if.end266.if.end299_crit_edge:                    ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end299

do.end293:                                        ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1031, i32 noundef 9, ptr noundef null) #16
  br label %if.end299

if.end299:                                        ; preds = %do.end293, %if.end266.if.end299_crit_edge
  %187 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %space_info, align 8
  %bytes_zone_unusable = getelementptr inbounds %struct.btrfs_space_info, ptr %188, i32 0, i32 7
  %189 = ptrtoint ptr %bytes_zone_unusable to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %bytes_zone_unusable, align 8
  %191 = ptrtoint ptr %zone_unusable to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %zone_unusable, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %190, i64 %192)
  %cmp310 = icmp ult i64 %190, %192
  br i1 %cmp310, label %do.end326, label %if.end299.if.end332_crit_edge, !prof !172

if.end299.if.end332_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end332

do.end326:                                        ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1033, i32 noundef 9, ptr noundef null) #16
  br label %if.end332

if.end332:                                        ; preds = %do.end326, %if.end299.if.end332_crit_edge
  %193 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %space_info, align 8
  %disk_total = getelementptr inbounds %struct.btrfs_space_info, ptr %194, i32 0, i32 13
  %195 = ptrtoint ptr %disk_total to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %disk_total, align 8
  %197 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %length, align 8
  %conv = sext i32 %call33 to i64
  %mul = mul i64 %198, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %196, i64 %mul)
  %cmp343 = icmp ult i64 %196, %mul
  br i1 %cmp343, label %do.end360, label %if.end332.if.end374_crit_edge, !prof !172

if.end332.if.end374_crit_edge:                    ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end374

do.end360:                                        ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1035, i32 noundef 9, ptr noundef null) #16
  br label %if.end374

if.end374:                                        ; preds = %do.end360, %if.end332.if.end374_crit_edge, %list_del_init.exit620.if.end374_crit_edge
  %conv390.pre-phi = phi i64 [ %.pre, %list_del_init.exit620.if.end374_crit_edge ], [ %conv, %if.end332.if.end374_crit_edge ], [ %conv, %do.end360 ]
  %199 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %length, align 8
  %201 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %space_info, align 8
  %total_bytes377 = getelementptr inbounds %struct.btrfs_space_info, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %total_bytes377 to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %total_bytes377, align 8
  %sub378 = sub i64 %204, %200
  store i64 %sub378, ptr %total_bytes377, align 8
  %205 = load i64, ptr %length, align 8
  %zone_unusable380 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 47
  %206 = ptrtoint ptr %zone_unusable380 to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %zone_unusable380, align 8
  %sub381.neg = sub i64 %207, %205
  %208 = load ptr, ptr %space_info, align 8
  %bytes_readonly383 = getelementptr inbounds %struct.btrfs_space_info, ptr %208, i32 0, i32 6
  %209 = ptrtoint ptr %bytes_readonly383 to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %bytes_readonly383, align 8
  %sub384 = add i64 %sub381.neg, %210
  store i64 %sub384, ptr %bytes_readonly383, align 8
  %211 = load i64, ptr %zone_unusable380, align 8
  %212 = load ptr, ptr %space_info, align 8
  %bytes_zone_unusable387 = getelementptr inbounds %struct.btrfs_space_info, ptr %212, i32 0, i32 7
  %213 = ptrtoint ptr %bytes_zone_unusable387 to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %bytes_zone_unusable387, align 8
  %sub388 = sub i64 %214, %211
  store i64 %sub388, ptr %bytes_zone_unusable387, align 8
  %215 = load i64, ptr %length, align 8
  %mul391 = mul i64 %215, %conv390.pre-phi
  %216 = load ptr, ptr %space_info, align 8
  %disk_total393 = getelementptr inbounds %struct.btrfs_space_info, ptr %216, i32 0, i32 13
  %217 = ptrtoint ptr %disk_total393 to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %disk_total393, align 8
  %sub394 = sub i64 %218, %mul391
  store i64 %sub394, ptr %disk_total393, align 8
  %219 = load ptr, ptr %space_info, align 8
  tail call void @_raw_spin_unlock(ptr noundef %219) #16
  %call397 = tail call i32 @remove_block_group_free_space(ptr noundef %trans, ptr noundef nonnull %call.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call397)
  %tobool398.not = icmp eq i32 %call397, 0
  br i1 %tobool398.not, label %if.end400, label %if.end374.out_crit_edge

if.end374.out_crit_edge:                          ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end400:                                        ; preds = %if.end374
  %220 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %fs_info1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #16
  %222 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 1
  %223 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 2
  %call.i.i621 = tail call ptr @btrfs_extent_root(ptr noundef %221, i64 noundef 0) #16
  %224 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %start, align 8
  %226 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %226)
  store i64 %225, ptr %key.i, align 8
  %227 = ptrtoint ptr %222 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 -64, ptr %222, align 8
  %228 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %length, align 8
  %230 = ptrtoint ptr %223 to i32
  call void @__asan_storeN_noabort(i32 %230, i32 8)
  store i64 %229, ptr %223, align 1
  %call2.i = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %call.i.i621, ptr noundef nonnull %key.i, ptr noundef nonnull %call37, i32 noundef -1, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i623 = icmp sgt i32 %call2.i, 0
  %spec.store.select.i = select i1 %cmp.i623, i32 -2, i32 %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp3.i = icmp slt i32 %spec.store.select.i, 0
  br i1 %cmp3.i, label %remove_block_group_item.exit.thread, label %remove_block_group_item.exit

remove_block_group_item.exit.thread:              ; preds = %if.end400
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #16
  call void @btrfs_put_block_group(ptr noundef nonnull %call.i)
  br i1 %cmp.i566.not, label %remove_block_group_item.exit.thread.if.end420_crit_edge, label %remove_block_group_item.exit.thread.if.then419_crit_edge

remove_block_group_item.exit.thread.if.then419_crit_edge: ; preds = %remove_block_group_item.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then419

remove_block_group_item.exit.thread.if.end420_crit_edge: ; preds = %remove_block_group_item.exit.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end420

remove_block_group_item.exit:                     ; preds = %if.end400
  %slots.i.i = getelementptr inbounds %struct.btrfs_path, ptr %call37, i32 0, i32 1
  %231 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %slots.i.i, align 4
  %call.i18.i = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %call.i.i621, ptr noundef nonnull %call37, i32 noundef %232, i32 noundef 1) #16
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %cmp402 = icmp slt i32 %call.i18.i, 0
  br i1 %cmp402, label %remove_block_group_item.exit.out_crit_edge, label %if.end405

remove_block_group_item.exit.out_crit_edge:       ; preds = %remove_block_group_item.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end405:                                        ; preds = %remove_block_group_item.exit
  %lock406 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock406) #16
  %233 = ptrtoint ptr %has_caching_ctl to i32
  call void @__asan_load1_noabort(i32 %233)
  %bf.load407 = load i8, ptr %has_caching_ctl, align 8
  %bf.set = or i8 %bf.load407, 32
  store i8 %bf.set, ptr %has_caching_ctl, align 8
  %frozen = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 30
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %frozen, i32 noundef 4) #16
  %234 = ptrtoint ptr %frozen to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile i32, ptr %frozen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %cmp410 = icmp eq i32 %235, 0
  call void @_raw_spin_unlock(ptr noundef %lock406) #16
  br i1 %cmp410, label %if.then414, label %if.end405.out_crit_edge

if.end405.out_crit_edge:                          ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then414:                                       ; preds = %if.end405
  %mapping_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 19
  %lock415 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 19, i32 2
  call void @_raw_write_lock(ptr noundef %lock415) #16
  call void @remove_extent_mapping(ptr noundef %mapping_tree, ptr noundef %em) #16
  call void @_raw_write_unlock(ptr noundef %lock415) #16
  call void @free_extent_map(ptr noundef %em) #16
  call void @btrfs_put_block_group(ptr noundef nonnull %call.i)
  br i1 %cmp.i566.not, label %if.then414.if.end420_crit_edge, label %if.then414.if.then419_crit_edge

if.then414.if.then419_crit_edge:                  ; preds = %if.then414
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then419

if.then414.if.end420_crit_edge:                   ; preds = %if.then414
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end420

out:                                              ; preds = %if.end405.out_crit_edge, %remove_block_group_item.exit.out_crit_edge, %if.end374.out_crit_edge, %if.end87.out_crit_edge
  %ret.0 = phi i32 [ %call92, %if.end87.out_crit_edge ], [ %call397, %if.end374.out_crit_edge ], [ %call.i18.i, %remove_block_group_item.exit.out_crit_edge ], [ %call.i18.i, %if.end405.out_crit_edge ]
  call void @btrfs_put_block_group(ptr noundef nonnull %call.i)
  br i1 %cmp.i566.not, label %out.if.end420_crit_edge, label %out.if.then419_crit_edge

out.if.then419_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then419

out.if.end420_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end420

if.then419:                                       ; preds = %out.if.then419_crit_edge, %if.then414.if.then419_crit_edge, %remove_block_group_item.exit.thread.if.then419_crit_edge
  %ret.0636 = phi i32 [ %call.i18.i, %if.then414.if.then419_crit_edge ], [ %ret.0, %out.if.then419_crit_edge ], [ %spec.store.select.i, %remove_block_group_item.exit.thread.if.then419_crit_edge ]
  call void @btrfs_delayed_refs_rsv_release(ptr noundef %1, i32 noundef 1) #16
  br label %if.end420

if.end420:                                        ; preds = %if.then419, %out.if.end420_crit_edge, %if.then414.if.end420_crit_edge, %remove_block_group_item.exit.thread.if.end420_crit_edge, %out.thread
  %ret.0635 = phi i32 [ -12, %out.thread ], [ %ret.0636, %if.then419 ], [ %ret.0, %out.if.end420_crit_edge ], [ %call.i18.i, %if.then414.if.end420_crit_edge ], [ %spec.store.select.i, %remove_block_group_item.exit.thread.if.end420_crit_edge ]
  call void @btrfs_free_path(ptr noundef %call37) #16
  ret i32 %ret.0635
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_remove_block_group(ptr noundef %bg_cache) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_remove_block_group, i32 0, i32 1), ptr blockaddress(@trace_btrfs_remove_block_group, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !190

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !173

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !191
  %call42 = tail call i32 @__traceiter_btrfs_remove_block_group(ptr noundef null, ptr noundef %bg_cache) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !192
  %13 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !173

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_remove_block_group, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_remove_block_group, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_remove_block_group.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_btrfs_remove_block_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 1894, ptr noundef nonnull @.str.31) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !194
  %31 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
declare dso_local void @btrfs_free_excluded_extents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_ref_tree_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @btrfs_bg_flags_to_raid_index(i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_bg_type_to_factor(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_return_cluster_to_free_space(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_clear_data_reloc_bg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_free_space_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_wait_cache_io(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_remove_free_space_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_remove_free_space_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_block_group_free_space(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_extent_mapping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_delayed_refs_rsv_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_start_trans_remove_block_group(ptr noundef %fs_info, i64 noundef %chunk_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @btrfs_extent_root(ptr noundef %fs_info, i64 noundef 0) #16
  %mapping_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 19
  %lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 19, i32 2
  tail call void @_raw_read_lock(ptr noundef %lock) #16
  %call1 = tail call ptr @lookup_extent_mapping(ptr noundef %mapping_tree, i64 noundef %chunk_offset, i64 noundef 1) #16
  tail call void @_raw_read_unlock(ptr noundef %lock) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.rhs, !prof !172

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false

land.rhs:                                         ; preds = %entry
  %start = getelementptr inbounds %struct.extent_map, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %chunk_offset)
  %cmp = icmp eq i64 %1, %chunk_offset
  br i1 %cmp, label %cond.end, label %land.rhs.cond.false_crit_edge, !prof !173

land.rhs.cond.false_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false

cond.false:                                       ; preds = %land.rhs.cond.false_crit_edge, %entry.cond.false_crit_edge
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.6, i32 noundef 1128) #19
  unreachable

cond.end:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  %map_lookup = getelementptr inbounds %struct.extent_map, ptr %call1, i32 0, i32 12
  %2 = ptrtoint ptr %map_lookup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_lookup, align 4
  %num_stripes = getelementptr inbounds %struct.map_lookup, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_stripes, align 8
  %add = add i32 %5, 3
  tail call void @free_extent_map(ptr noundef nonnull %call1) #16
  %call5 = tail call ptr @btrfs_start_transaction_fallback_global_rsv(ptr noundef %call.i, i32 noundef %add) #16
  ret ptr %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_extent_mapping(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_start_transaction_fallback_global_rsv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_delete_unused_bgs(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 31
  %0 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mount_opt, align 8
  %and = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %entry.cleanup103_crit_edge, label %if.end

entry.cleanup103_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup103

if.end:                                           ; preds = %entry
  %reclaim_bgs_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 165
  %call2 = tail call i32 @mutex_trylock(ptr noundef %reclaim_bgs_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup103_crit_edge, label %if.end5

if.end.cleanup103_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup103

if.end5:                                          ; preds = %if.end
  %unused_bgs_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 162
  tail call void @_raw_spin_lock(ptr noundef %unused_bgs_lock) #16
  %unused_bgs = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 163
  %5 = ptrtoint ptr %unused_bgs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %unused_bgs, align 4
  %cmp.i.not198 = icmp eq ptr %6, %unused_bgs
  br i1 %cmp.i.not198, label %if.end5.while.end_crit_edge, label %while.body.lr.ph

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end5
  %discard_ctl = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134
  %lock51 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 134, i32 2
  %7 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 176
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %8 = phi ptr [ %6, %while.body.lr.ph ], [ %62, %cleanup.while.body_crit_edge ]
  %ret.0202 = phi i32 [ 0, %while.body.lr.ph ], [ %ret.3, %cleanup.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %8, i32 -304
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #16
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %8, ptr %8, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %8, ptr %prev.i3.i, align 4
  %space_info9 = getelementptr i8, ptr %8, i32 -40
  %17 = ptrtoint ptr %space_info9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %space_info9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0202)
  %tobool10.not = icmp eq i32 %ret.0202, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %list_del_init.exit.if.then12_crit_edge

list_del_init.exit.if.then12_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12

lor.lhs.false:                                    ; preds = %list_del_init.exit
  %flags.i = getelementptr inbounds %struct.btrfs_space_info, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %flags.i, align 8
  %21 = and i64 %20, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %21)
  %22 = icmp eq i64 %21, 5
  br i1 %22, label %lor.lhs.false.if.then12_crit_edge, label %if.end13

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %list_del_init.exit.if.then12_crit_edge
  tail call void @btrfs_put_block_group(ptr noundef %add.ptr)
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  tail call void @_raw_spin_unlock(ptr noundef %unused_bgs_lock) #16
  tail call void @btrfs_discard_cancel_work(ptr noundef %discard_ctl, ptr noundef %add.ptr) #16
  %groups_sem = getelementptr inbounds %struct.btrfs_space_info, ptr %18, i32 0, i32 21
  tail call void @down_write(ptr noundef %groups_sem) #16
  %23 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mount_opt, align 8
  %and16 = and i32 %24, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end13.if.end22_crit_edge, label %land.lhs.true

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end13
  %call18 = tail call zeroext i1 @btrfs_is_free_space_trimmed(ptr noundef %add.ptr) #16
  br i1 %call18, label %land.lhs.true.if.end22_crit_edge, label %if.then19

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @trace_btrfs_skip_unused_block_group(ptr noundef %add.ptr)
  tail call void @up_write(ptr noundef %groups_sem) #16
  tail call void @btrfs_discard_queue_work(ptr noundef %discard_ctl, ptr noundef %add.ptr) #16
  br label %next97

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end13.if.end22_crit_edge
  %lock = getelementptr i8, ptr %8, i32 -296
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %reserved = getelementptr i8, ptr %8, i32 -224
  %25 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %reserved, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool23.not = icmp eq i64 %26, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %if.end22.if.then33_crit_edge

if.end22.if.then33_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then33

lor.lhs.false24:                                  ; preds = %if.end22
  %pinned = getelementptr i8, ptr %8, i32 -232
  %27 = ptrtoint ptr %pinned to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %pinned, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool25.not = icmp eq i64 %28, 0
  br i1 %tobool25.not, label %lor.lhs.false26, label %lor.lhs.false24.if.then33_crit_edge

lor.lhs.false24.if.then33_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then33

lor.lhs.false26:                                  ; preds = %lor.lhs.false24
  %used = getelementptr i8, ptr %8, i32 -216
  %29 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %used, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool27.not = icmp eq i64 %30, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %lor.lhs.false26.if.then33_crit_edge

lor.lhs.false26.if.then33_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then33

lor.lhs.false28:                                  ; preds = %lor.lhs.false26
  %ro = getelementptr i8, ptr %8, i32 -68
  %31 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool29.not = icmp eq i32 %32, 0
  br i1 %tobool29.not, label %lor.lhs.false30, label %lor.lhs.false28.if.then33_crit_edge

lor.lhs.false28.if.then33_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then33

lor.lhs.false30:                                  ; preds = %lor.lhs.false28
  %list = getelementptr i8, ptr %8, i32 -20
  %33 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i = icmp eq ptr %34, %list
  br i1 %cmp.i.not.i, label %lor.lhs.false30.if.end36_crit_edge, label %list_is_singular.exit

lor.lhs.false30.if.end36_crit_edge:               ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

list_is_singular.exit:                            ; preds = %lor.lhs.false30
  %prev.i = getelementptr i8, ptr %8, i32 -16
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i, align 4
  %cmp.i188.not = icmp eq ptr %34, %36
  br i1 %cmp.i188.not, label %list_is_singular.exit.if.then33_crit_edge, label %list_is_singular.exit.if.end36_crit_edge

list_is_singular.exit.if.end36_crit_edge:         ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

list_is_singular.exit.if.then33_crit_edge:        ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then33

if.then33:                                        ; preds = %list_is_singular.exit.if.then33_crit_edge, %lor.lhs.false28.if.then33_crit_edge, %lor.lhs.false26.if.then33_crit_edge, %lor.lhs.false24.if.then33_crit_edge, %if.end22.if.then33_crit_edge
  tail call fastcc void @trace_btrfs_skip_unused_block_group(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  tail call void @up_write(ptr noundef %groups_sem) #16
  br label %next97

if.end36:                                         ; preds = %list_is_singular.exit.if.end36_crit_edge, %lor.lhs.false30.if.end36_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  %call38 = tail call fastcc i32 @inc_block_group_ro(ptr noundef %add.ptr, i32 noundef 0)
  tail call void @up_write(ptr noundef %groups_sem) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp = icmp slt i32 %call38, 0
  br i1 %cmp, label %if.end36.next97_crit_edge, label %if.end41

if.end36.next97_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %next97

if.end41:                                         ; preds = %if.end36
  %start = getelementptr i8, ptr %8, i32 -248
  %37 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %start, align 8
  %call42 = tail call ptr @btrfs_start_trans_remove_block_group(ptr noundef %fs_info, i64 noundef %38)
  %cmp.i189 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i189, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @btrfs_dec_block_group_ro(ptr noundef %add.ptr)
  %39 = ptrtoint ptr %call42 to i32
  br label %next97

if.end46:                                         ; preds = %if.end41
  %call47 = tail call fastcc zeroext i1 @clean_pinned_extents(ptr noundef %call42, ptr noundef %add.ptr)
  br i1 %call47, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @btrfs_dec_block_group_ro(ptr noundef %add.ptr)
  br label %end_trans

if.end49:                                         ; preds = %if.end46
  tail call void @_raw_spin_lock(ptr noundef %lock51) #16
  %discard_list = getelementptr i8, ptr %8, i32 20
  %40 = ptrtoint ptr %discard_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %discard_list, align 4
  %cmp.i190.not = icmp eq ptr %41, %discard_list
  tail call void @_raw_spin_unlock(ptr noundef %lock51) #16
  br i1 %cmp.i190.not, label %if.end58, label %if.then54

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @btrfs_dec_block_group_ro(ptr noundef %add.ptr)
  tail call void @btrfs_discard_queue_work(ptr noundef %discard_ctl, ptr noundef %add.ptr) #16
  br label %end_trans

if.end58:                                         ; preds = %if.end49
  tail call void @_raw_spin_lock(ptr noundef %18) #16
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %42 = ptrtoint ptr %pinned to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %pinned, align 8
  %sub = sub i64 0, %43
  tail call fastcc void @btrfs_space_info_update_bytes_pinned(ptr noundef %fs_info, ptr noundef %18, i64 noundef %sub)
  %44 = ptrtoint ptr %pinned to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %pinned, align 8
  %bytes_readonly = getelementptr inbounds %struct.btrfs_space_info, ptr %18, i32 0, i32 6
  %46 = ptrtoint ptr %bytes_readonly to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %bytes_readonly, align 8
  %add = add i64 %47, %45
  store i64 %add, ptr %bytes_readonly, align 8
  store i64 0, ptr %pinned, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  tail call void @_raw_spin_unlock(ptr noundef %18) #16
  br i1 %tobool.not, label %land.lhs.true69, label %if.end58.if.end74_crit_edge

if.end58.if.end74_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

land.lhs.true69:                                  ; preds = %if.end58
  %48 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mount_opt, align 8
  %and71 = and i32 %49, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %land.lhs.true69.if.end74_crit_edge, label %flip_async

land.lhs.true69.if.end74_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

if.end74:                                         ; preds = %land.lhs.true69.if.end74_crit_edge, %if.end58.if.end74_crit_edge
  %50 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mount_opt, align 8
  %and76 = and i32 %51, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %lor.end, label %if.end74.if.end81_crit_edge

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end81

lor.end:                                          ; preds = %if.end74
  %52 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %cmp.i192.not = icmp eq i64 %53, 0
  br i1 %cmp.i192.not, label %if.end81.thread, label %lor.end.if.end81_crit_edge

lor.end.if.end81_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end81

if.end81:                                         ; preds = %lor.end.if.end81_crit_edge, %if.end74.if.end81_crit_edge
  %frozen.i = getelementptr i8, ptr %8, i32 16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frozen.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %frozen.i, i32 1, i32 3, i32 1) #16
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %frozen.i, ptr %frozen.i, i32 1, ptr elementtype(i32) %frozen.i) #16, !srcloc !177
  %55 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %start, align 8
  %call83 = tail call i32 @btrfs_remove_chunk(ptr noundef %call42, i64 noundef %56) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then91, label %if.then87

if.end81.thread:                                  ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %start, align 8
  %call83204 = tail call i32 @btrfs_remove_chunk(ptr noundef %call42, i64 noundef %58) #16
  br label %end_trans

if.then87:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @btrfs_unfreeze_block_group(ptr noundef %add.ptr)
  br label %end_trans

if.then91:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_lock(ptr noundef %unused_bgs_lock) #16
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call42, i32 0, i32 4
  %59 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %transaction, align 4
  %deleted_bgs = getelementptr inbounds %struct.btrfs_transaction, ptr %60, i32 0, i32 21
  tail call fastcc void @list_move(ptr noundef %8, ptr noundef %deleted_bgs)
  tail call void @_raw_spin_unlock(ptr noundef %unused_bgs_lock) #16
  tail call void @btrfs_get_block_group(ptr noundef %add.ptr)
  br label %end_trans

end_trans:                                        ; preds = %if.then91, %if.then87, %if.end81.thread, %if.then54, %if.then48
  %ret.1 = phi i32 [ %call83, %if.then87 ], [ 0, %if.then91 ], [ 0, %if.then54 ], [ 0, %if.then48 ], [ %call83204, %if.end81.thread ]
  %call96 = tail call i32 @btrfs_end_transaction(ptr noundef %call42) #16
  br label %next97

next97:                                           ; preds = %end_trans, %if.then44, %if.end36.next97_crit_edge, %if.then33, %if.then19
  %ret.2 = phi i32 [ 0, %if.then33 ], [ %39, %if.then44 ], [ %ret.1, %end_trans ], [ 0, %if.then19 ], [ 0, %if.end36.next97_crit_edge ]
  tail call void @btrfs_put_block_group(ptr noundef %add.ptr)
  tail call void @_raw_spin_lock(ptr noundef %unused_bgs_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %next97, %if.then12
  %ret.3 = phi i32 [ %ret.0202, %if.then12 ], [ %ret.2, %next97 ]
  %61 = ptrtoint ptr %unused_bgs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %unused_bgs, align 4
  %cmp.i.not = icmp eq ptr %62, %unused_bgs
  br i1 %cmp.i.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end5.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %unused_bgs_lock) #16
  tail call void @mutex_unlock(ptr noundef %reclaim_bgs_lock) #16
  br label %cleanup103

flip_async:                                       ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #18
  %call101 = tail call i32 @btrfs_end_transaction(ptr noundef %call42) #16
  tail call void @mutex_unlock(ptr noundef %reclaim_bgs_lock) #16
  tail call void @btrfs_put_block_group(ptr noundef %add.ptr)
  tail call void @btrfs_discard_punt_unused_bgs_list(ptr noundef %fs_info) #16
  br label %cleanup103

cleanup103:                                       ; preds = %flip_async, %while.end, %if.end.cleanup103_crit_edge, %entry.cleanup103_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btrfs_is_free_space_trimmed(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_skip_unused_block_group(ptr noundef %bg_cache) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_skip_unused_block_group, i32 0, i32 1), ptr blockaddress(@trace_btrfs_skip_unused_block_group, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !190

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !173

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !195
  %call42 = tail call i32 @__traceiter_btrfs_skip_unused_block_group(ptr noundef null, ptr noundef %bg_cache) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !196
  %13 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !173

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_skip_unused_block_group, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_skip_unused_block_group, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_skip_unused_block_group.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_btrfs_skip_unused_block_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 1918, ptr noundef nonnull @.str.31) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !194
  %31 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
declare dso_local void @btrfs_discard_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inc_block_group_ro(ptr noundef %cache, i32 noundef %force) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %space_info = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 22
  %0 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %space_info, align 8
  tail call void @_raw_spin_lock(ptr noundef %1) #16
  %lock1 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock1) #16
  %swap_extents = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 44
  %2 = ptrtoint ptr %swap_extents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %swap_extents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  %ro = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 16
  %4 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %inc = add i32 %5, 1
  %6 = ptrtoint ptr %ro to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc, ptr %ro, align 4
  br label %out

if.end5:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %length, align 8
  %reserved = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 6
  %9 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %reserved, align 8
  %pinned = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 5
  %11 = ptrtoint ptr %pinned to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %pinned, align 8
  %bytes_super = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 9
  %13 = ptrtoint ptr %bytes_super to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bytes_super, align 8
  %zone_unusable = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 47
  %15 = ptrtoint ptr %zone_unusable to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %zone_unusable, align 8
  %used = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 7
  %17 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %used, align 8
  %19 = add i64 %10, %12
  %20 = add i64 %19, %14
  %21 = add i64 %20, %16
  %22 = add i64 %21, %18
  %sub9 = sub i64 %8, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool10.not = icmp eq i32 %force, 0
  br i1 %tobool10.not, label %if.else, label %if.end5.if.then24_crit_edge

if.end5.if.then24_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

if.else:                                          ; preds = %if.end5
  %flags = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 14
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %flags, align 8
  %and = and i64 %24, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool12.not = icmp eq i64 %and, 0
  br i1 %tobool12.not, label %if.else16, label %if.then13

if.then13:                                        ; preds = %if.else
  %call = tail call i64 @btrfs_space_info_used(ptr noundef %1, i1 noundef zeroext true) #23
  %add = add i64 %call, %sub9
  %total_bytes = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %total_bytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %26)
  %cmp.not = icmp ugt i64 %add, %26
  br i1 %cmp.not, label %if.then13.out_crit_edge, label %if.then13.if.then24_crit_edge

if.then13.if.then24_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.else16:                                        ; preds = %if.else
  %27 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cache, align 8
  %call17 = tail call i32 @btrfs_can_overcommit(ptr noundef %28, ptr noundef %1, i64 noundef %sub9, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.else16.out_crit_edge, label %if.else16.if.then24_crit_edge

if.else16.if.then24_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

if.else16.out_crit_edge:                          ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then24:                                        ; preds = %if.else16.if.then24_crit_edge, %if.then13.if.then24_crit_edge, %if.end5.if.then24_crit_edge
  %bytes_readonly = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %bytes_readonly to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bytes_readonly, align 8
  %add25 = add i64 %30, %sub9
  store i64 %add25, ptr %bytes_readonly, align 8
  %31 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cache, align 8
  %33 = getelementptr inbounds %struct.btrfs_fs_info, ptr %32, i32 0, i32 176
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %33, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %cmp.i.not = icmp eq i64 %35, 0
  br i1 %cmp.i.not, label %if.then24.if.end35_crit_edge, label %if.then28

if.then24.if.end35_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %zone_unusable to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %zone_unusable, align 8
  %add31 = add i64 %37, %add25
  %38 = ptrtoint ptr %bytes_readonly to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %add31, ptr %bytes_readonly, align 8
  %39 = load i64, ptr %zone_unusable, align 8
  %bytes_zone_unusable = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 7
  %40 = ptrtoint ptr %bytes_zone_unusable to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %bytes_zone_unusable, align 8
  %sub33 = sub i64 %41, %39
  store i64 %sub33, ptr %bytes_zone_unusable, align 8
  store i64 0, ptr %zone_unusable, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %if.then24.if.end35_crit_edge
  %42 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ro, align 4
  %inc37 = add i32 %43, 1
  store i32 %inc37, ptr %ro, align 4
  %ro_list = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 29
  %ro_bgs = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 16
  %prev.i = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 16, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ro_list, ptr noundef %45, ptr noundef %ro_bgs) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end35.out_crit_edge

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end.i.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ro_list, ptr %prev.i, align 4
  %47 = ptrtoint ptr %ro_list to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %ro_bgs, ptr %ro_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 29, i32 1
  %48 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %ro_list, ptr %45, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %if.end35.out_crit_edge, %if.else16.out_crit_edge, %if.then13.out_crit_edge, %if.then3, %entry.out_crit_edge
  %cmp41 = phi i1 [ true, %if.else16.out_crit_edge ], [ true, %if.then13.out_crit_edge ], [ false, %if.end.i.i ], [ false, %if.end35.out_crit_edge ], [ false, %entry.out_crit_edge ], [ false, %if.then3 ]
  %ret.2 = phi i32 [ -28, %if.else16.out_crit_edge ], [ -28, %if.then13.out_crit_edge ], [ 0, %if.end.i.i ], [ 0, %if.end35.out_crit_edge ], [ -26, %entry.out_crit_edge ], [ 0, %if.then3 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock1) #16
  tail call void @_raw_spin_unlock(ptr noundef %1) #16
  br i1 %cmp41, label %land.lhs.true, label %out.if.end49_crit_edge

out.if.end49_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

land.lhs.true:                                    ; preds = %out
  %50 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cache, align 8
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %51, i32 0, i32 31
  %52 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mount_opt, align 8
  %and43 = and i32 %53, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %land.lhs.true.if.end49_crit_edge, label %if.then45

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %54 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %start, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %51, ptr noundef nonnull @.str.37, i64 noundef %55) #20
  %56 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cache, align 8
  %58 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %space_info, align 8
  tail call void @btrfs_dump_space_info(ptr noundef %57, ptr noundef %59, i64 noundef 0, i32 noundef 0) #16
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %land.lhs.true.if.end49_crit_edge, %out.if.end49_crit_edge
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_dec_block_group_ro(ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %space_info = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 22
  %0 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %space_info, align 8
  %ro = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 16
  %2 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !172

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/block-group.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2646, 0\0A.popsection", ""() #16, !srcloc !197
  unreachable

do.end9:                                          ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %1) #16
  %lock10 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock10) #16
  %4 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ro, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool12.not = icmp eq i32 %dec, 0
  br i1 %tobool12.not, label %if.then13, label %do.end9.if.end31_crit_edge

do.end9.if.end31_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.then13:                                        ; preds = %do.end9
  %6 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cache, align 8
  %8 = getelementptr inbounds %struct.btrfs_fs_info, ptr %7, i32 0, i32 176
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp.i.not = icmp eq i64 %10, 0
  br i1 %cmp.i.not, label %if.then13.if.end20_crit_edge, label %if.then14

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then14:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  %alloc_offset = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 46
  %11 = ptrtoint ptr %alloc_offset to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %alloc_offset, align 8
  %used = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 7
  %13 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %used, align 8
  %sub = sub i64 %12, %14
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %length, align 8
  %zone_capacity = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 48
  %17 = ptrtoint ptr %zone_capacity to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %zone_capacity, align 8
  %sub15 = sub i64 %16, %18
  %add = add i64 %sub15, %sub
  %zone_unusable = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 47
  %19 = ptrtoint ptr %zone_unusable to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %add, ptr %zone_unusable, align 8
  %bytes_zone_unusable = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %bytes_zone_unusable to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bytes_zone_unusable, align 8
  %add17 = add i64 %21, %add
  store i64 %add17, ptr %bytes_zone_unusable, align 8
  %22 = load i64, ptr %zone_unusable, align 8
  %bytes_readonly = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %bytes_readonly to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %bytes_readonly, align 8
  %sub19 = sub i64 %24, %22
  store i64 %sub19, ptr %bytes_readonly, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.then13.if.end20_crit_edge
  %length21 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %25 = ptrtoint ptr %length21 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %length21, align 8
  %reserved = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 6
  %27 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %reserved, align 8
  %pinned = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 5
  %29 = ptrtoint ptr %pinned to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %pinned, align 8
  %bytes_super = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 9
  %31 = ptrtoint ptr %bytes_super to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %bytes_super, align 8
  %zone_unusable25 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 47
  %33 = ptrtoint ptr %zone_unusable25 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %zone_unusable25, align 8
  %used27 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 7
  %35 = ptrtoint ptr %used27 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %used27, align 8
  %bytes_readonly29 = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %bytes_readonly29 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %bytes_readonly29, align 8
  %39 = sub i64 %28, %26
  %40 = add i64 %39, %30
  %41 = add i64 %40, %32
  %42 = add i64 %41, %34
  %sub28.neg = add i64 %42, %36
  %sub30 = add i64 %sub28.neg, %38
  store i64 %sub30, ptr %bytes_readonly29, align 8
  %ro_list = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ro_list) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.list_del_init.exit_crit_edge

if.end20.list_del_init.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 29, i32 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %ro_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ro_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end20.list_del_init.exit_crit_edge
  %49 = ptrtoint ptr %ro_list to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %ro_list, ptr %ro_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 29, i32 1
  %50 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %ro_list, ptr %prev.i3.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %list_del_init.exit, %do.end9.if.end31_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock10) #16
  tail call void @_raw_spin_unlock(ptr noundef %1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @clean_pinned_extents(ptr nocapture noundef readonly %trans, ptr nocapture noundef readonly %bg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bg, align 8
  %start2 = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 3
  %2 = ptrtoint ptr %start2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start2, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 4
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %length, align 8
  %add = add i64 %3, -1
  %sub = add i64 %add, %5
  %trans_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 57
  tail call void @_raw_spin_lock(ptr noundef %trans_lock) #16
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %6 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transaction, align 4
  %prev = getelementptr inbounds %struct.btrfs_transaction, ptr %7, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev, align 4
  %trans_list = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 59
  %cmp.not = icmp eq ptr %9, %trans_list
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %9, i32 -32
  %use_count = getelementptr i8, ptr %9, i32 -16
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_count, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %use_count, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_count, ptr %use_count, i32 1, ptr elementtype(i32) %use_count) #16, !srcloc !171
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !172

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !173

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use_count, i32 noundef %.sink.i.i.i) #16
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %prev_trans.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %add.ptr, %if.else.i.i.i.if.end_crit_edge ], [ %add.ptr, %if.end15.sink.split.i.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #16
  %unused_bg_unpin_mutex = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 164
  tail call void @mutex_lock_nested(ptr noundef %unused_bg_unpin_mutex, i32 noundef 0) #16
  %tobool.not = icmp eq ptr %prev_trans.0, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.then7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then7:                                         ; preds = %if.end
  %pinned_extents = getelementptr inbounds %struct.btrfs_transaction, ptr %prev_trans.0, i32 0, i32 18
  %call.i = tail call i32 @clear_extent_bit(ptr noundef %pinned_extents, i64 noundef %3, i64 noundef %sub, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.then7.out_crit_edge, label %out.thread

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

out.thread:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_unlock(ptr noundef %unused_bg_unpin_mutex) #16
  br label %if.then17

out:                                              ; preds = %if.then7.out_crit_edge, %if.end.out_crit_edge
  %12 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transaction, align 4
  %pinned_extents13 = getelementptr inbounds %struct.btrfs_transaction, ptr %13, i32 0, i32 18
  %call.i36 = tail call i32 @clear_extent_bit(ptr noundef %pinned_extents13, i64 noundef %3, i64 noundef %sub, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  tail call void @mutex_unlock(ptr noundef %unused_bg_unpin_mutex) #16
  br i1 %tobool.not, label %out.if.end18_crit_edge, label %out.if.then17_crit_edge

out.if.then17_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

out.if.end18_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then17:                                        ; preds = %out.if.then17_crit_edge, %out.thread
  %ret.038 = phi i32 [ %call.i, %out.thread ], [ %call.i36, %out.if.then17_crit_edge ]
  tail call void @btrfs_put_transaction(ptr noundef nonnull %prev_trans.0) #16
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %out.if.end18_crit_edge
  %ret.039 = phi i32 [ %ret.038, %if.then17 ], [ %call.i36, %out.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.039)
  %cmp19 = icmp eq i32 %ret.039, 0
  ret i1 %cmp19
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_space_info_update_bytes_pinned(ptr noundef %fs_info, ptr noundef %sinfo, i64 noundef %bytes) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bytes)
  %cmp = icmp slt i64 %bytes, 0
  %sub = sub i64 0, %bytes
  %cond = select i1 %cmp, i64 %sub, i64 %bytes
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.anon, ptr %sinfo, i32 0, i32 1
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not = icmp eq i32 %call.i, 0
  br i1 %cmp1.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !172

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 111, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %bytes_pinned = getelementptr inbounds %struct.btrfs_space_info, ptr %sinfo, i32 0, i32 3
  %1 = ptrtoint ptr %bytes_pinned to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %bytes_pinned, align 8
  tail call fastcc void @trace_update_bytes_pinned(ptr noundef %fs_info, ptr noundef %sinfo, i64 noundef %2, i64 noundef %bytes)
  %flags = getelementptr inbounds %struct.btrfs_space_info, ptr %sinfo, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bytes)
  %cmp25 = icmp sgt i64 %bytes, 0
  %conv = zext i1 %cmp25 to i32
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, ptr noundef nonnull @.str.39, i64 noundef %4, i64 noundef %cond, i32 noundef %conv)
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end60_crit_edge

if.end.if.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %bytes_pinned to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bytes_pinned, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %sub)
  %cmp30 = icmp ult i64 %6, %sub
  br i1 %cmp30, label %do.end45, label %land.lhs.true.if.end60_crit_edge

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60

do.end45:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 111, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end60:                                         ; preds = %land.lhs.true.if.end60_crit_edge, %if.end.if.end60_crit_edge
  %7 = ptrtoint ptr %bytes_pinned to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %bytes_pinned, align 8
  %add = add i64 %8, %bytes
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end45
  %storemerge = phi i64 [ %add, %if.end60 ], [ 0, %do.end45 ]
  %9 = ptrtoint ptr %bytes_pinned to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %storemerge, ptr %bytes_pinned, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_freeze_block_group(ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %frozen = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 30
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frozen, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %frozen, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %frozen, ptr %frozen, i32 1, ptr elementtype(i32) %frozen) #16, !srcloc !177
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_remove_chunk(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_unfreeze_block_group(ptr noundef %block_group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %frozen = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 30
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frozen, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !178
  tail call void @llvm.prefetch.p0(ptr %frozen, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %frozen, ptr %frozen, i32 1, ptr elementtype(i32) %frozen) #16, !srcloc !179
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.rhs, label %if.end18.critedge

land.rhs:                                         ; preds = %entry
  %removed = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 17
  %3 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %removed, align 8
  %4 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  br i1 %tobool.not, label %land.rhs.if.end18_crit_edge, label %if.then

land.rhs.if.end18_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then:                                          ; preds = %land.rhs
  %mapping_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 19
  %lock4 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 19, i32 2
  tail call void @_raw_write_lock(ptr noundef %lock4) #16
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %5 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start, align 8
  %call5 = tail call ptr @lookup_extent_mapping(ptr noundef %mapping_tree, i64 noundef %6, i64 noundef 1) #16
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.body11, label %do.end16, !prof !172

do.body11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/block-group.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4044, 0\0A.popsection", ""() #16, !srcloc !198
  unreachable

do.end16:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @remove_extent_mapping(ptr noundef %mapping_tree, ptr noundef nonnull %call5) #16
  tail call void @_raw_write_unlock(ptr noundef %lock4) #16
  tail call void @free_extent_map(ptr noundef nonnull %call5) #16
  tail call void @free_extent_map(ptr noundef nonnull %call5) #16
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 23
  %7 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %free_space_ctl, align 4
  tail call void @__btrfs_remove_free_space_cache(ptr noundef %8) #16
  br label %if.end18

if.end18.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %if.end18

if.end18:                                         ; preds = %if.end18.critedge, %do.end16, %land.rhs.if.end18_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move(ptr noundef %list, ptr noundef %head) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #16
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %head, ptr noundef %7) #16
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add.exit_crit_edge

__list_del_entry.exit.list_add.exit_crit_edge:    ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i2 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev1.i.i2, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %head, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %__list_del_entry.exit.list_add.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_end_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_discard_punt_unused_bgs_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_mark_bg_unused(ptr noundef %bg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bg, align 8
  %unused_bgs_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 162
  tail call void @_raw_spin_lock(ptr noundef %unused_bgs_lock) #16
  %bg_list = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 28
  %2 = ptrtoint ptr %bg_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %bg_list, align 4
  %cmp.i.not = icmp eq ptr %3, %bg_list
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %refs.i = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 26
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #16, !srcloc !171
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !172

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.btrfs_get_block_group.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !173

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.btrfs_get_block_group.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %btrfs_get_block_group.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #16
  br label %btrfs_get_block_group.exit

btrfs_get_block_group.exit:                       ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.btrfs_get_block_group.exit_crit_edge
  tail call fastcc void @trace_btrfs_add_unused_block_group(ptr noundef %bg)
  %unused_bgs = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 163
  %prev.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 163, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bg_list, ptr noundef %7, ptr noundef %unused_bgs) #16
  br i1 %call.i.i, label %if.end.i.i, label %btrfs_get_block_group.exit.if.end_crit_edge

btrfs_get_block_group.exit.if.end_crit_edge:      ; preds = %btrfs_get_block_group.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i.i:                                       ; preds = %btrfs_get_block_group.exit
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bg_list, ptr %prev.i, align 4
  %9 = ptrtoint ptr %bg_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %unused_bgs, ptr %bg_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 28, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %bg_list, ptr %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %btrfs_get_block_group.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %unused_bgs_lock) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_add_unused_block_group(ptr noundef %bg_cache) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_add_unused_block_group, i32 0, i32 1), ptr blockaddress(@trace_btrfs_add_unused_block_group, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !190

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !173

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !199
  %call42 = tail call i32 @__traceiter_btrfs_add_unused_block_group(ptr noundef null, ptr noundef %bg_cache) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !200
  %13 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !173

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_add_unused_block_group, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_add_unused_block_group, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_add_unused_block_group.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_btrfs_add_unused_block_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 1900, ptr noundef nonnull @.str.31) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !194
  %31 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
define dso_local void @btrfs_reclaim_bgs_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -5308
  %flags = getelementptr i8, ptr %work, i32 -5292
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @btrfs_exclop_start(ptr noundef %add.ptr, i32 noundef 2) #16
  br i1 %call1, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %reclaim_bgs_lock = getelementptr i8, ptr %work, i32 200
  %call4 = tail call i32 @mutex_trylock(ptr noundef %reclaim_bgs_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.cleanup.sink.split_crit_edge, label %if.end7

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end3
  %unused_bgs_lock = getelementptr i8, ptr %work, i32 56
  tail call void @_raw_spin_lock(ptr noundef %unused_bgs_lock) #16
  %reclaim_bgs = getelementptr i8, ptr %work, i32 44
  tail call void @list_sort(ptr noundef null, ptr noundef %reclaim_bgs, ptr noundef nonnull @reclaim_bgs_cmp) #16
  %3 = ptrtoint ptr %reclaim_bgs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %reclaim_bgs, align 4
  %cmp.i.not91 = icmp eq ptr %4, %reclaim_bgs
  br i1 %cmp.i.not91, label %if.end7.while.end_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  br label %while.body

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %next46.while.body_crit_edge, %if.end7.while.body_crit_edge
  %5 = phi ptr [ %40, %next46.while.body_crit_edge ], [ %4, %if.end7.while.body_crit_edge ]
  %add.ptr14 = getelementptr i8, ptr %5, i32 -304
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #16
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %prev.i3.i, align 4
  %space_info15 = getelementptr i8, ptr %5, i32 -40
  %14 = ptrtoint ptr %space_info15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %space_info15, align 8
  tail call void @_raw_spin_unlock(ptr noundef %unused_bgs_lock) #16
  %groups_sem = getelementptr inbounds %struct.btrfs_space_info, ptr %15, i32 0, i32 21
  tail call void @down_write(ptr noundef %groups_sem) #16
  %lock = getelementptr i8, ptr %5, i32 -296
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %reserved = getelementptr i8, ptr %5, i32 -224
  %16 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %reserved, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool17.not = icmp eq i64 %17, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %list_del_init.exit.if.then21_crit_edge

list_del_init.exit.if.then21_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

lor.lhs.false:                                    ; preds = %list_del_init.exit
  %pinned = getelementptr i8, ptr %5, i32 -232
  %18 = ptrtoint ptr %pinned to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pinned, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool18.not = icmp eq i64 %19, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %ro = getelementptr i8, ptr %5, i32 -68
  %20 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not = icmp eq i32 %21, 0
  br i1 %tobool20.not, label %if.end24, label %lor.lhs.false19.if.then21_crit_edge

lor.lhs.false19.if.then21_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false19.if.then21_crit_edge, %lor.lhs.false.if.then21_crit_edge, %list_del_init.exit.if.then21_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  tail call void @up_write(ptr noundef %groups_sem) #16
  br label %next46

if.end24:                                         ; preds = %lor.lhs.false19
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %and1.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end30, label %btrfs_fs_closing.exit

btrfs_fs_closing.exit:                            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags, align 4
  tail call void @up_write(ptr noundef %groups_sem) #16
  br label %next46

if.end30:                                         ; preds = %if.end24
  %zone_unusable31 = getelementptr i8, ptr %5, i32 328
  %26 = ptrtoint ptr %zone_unusable31 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %zone_unusable31, align 8
  %call32 = tail call fastcc i32 @inc_block_group_ro(ptr noundef %add.ptr14, i32 noundef 0)
  tail call void @up_write(ptr noundef %groups_sem) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %if.end30.next46_crit_edge, label %if.end35

if.end30.next46_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %next46

if.end35:                                         ; preds = %if.end30
  %start = getelementptr i8, ptr %5, i32 -248
  %28 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %start, align 8
  %used = getelementptr i8, ptr %5, i32 -216
  %30 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %used, align 8
  %mul = mul i64 %31, 100
  %length = getelementptr i8, ptr %5, i32 -240
  %32 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %length, align 8
  %conv = trunc i64 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !173

if.then168.i.i:                                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %conv
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %34 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %mul) #24, !srcloc !201
  %asmresult1.i.i.i = extractvalue { i64, i64 } %34, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %mul37 = mul i64 %27, 100
  %call39 = tail call i64 @div64_u64(i64 noundef %mul37, i64 noundef %33) #16
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %add.ptr, ptr noundef nonnull @.str.7, i64 noundef %29, i64 noundef %dividend.addr.0.i.i, i64 noundef %call39) #20
  tail call fastcc void @trace_btrfs_reclaim_block_group(ptr noundef %add.ptr14)
  %35 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %start, align 8
  %call41 = tail call i32 @btrfs_relocate_chunk(ptr noundef %add.ptr, i64 noundef %36) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %div_u64.exit.next46_crit_edge, label %if.then43

div_u64.exit.next46_crit_edge:                    ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %next46

if.then43:                                        ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %start, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %add.ptr, ptr noundef nonnull @.str.8, i64 noundef %38) #20
  br label %next46

next46:                                           ; preds = %if.then43, %div_u64.exit.next46_crit_edge, %if.end30.next46_crit_edge, %btrfs_fs_closing.exit, %if.then21
  tail call void @btrfs_put_block_group(ptr noundef %add.ptr14)
  tail call void @_raw_spin_lock(ptr noundef %unused_bgs_lock) #16
  %39 = ptrtoint ptr %reclaim_bgs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %reclaim_bgs, align 4
  %cmp.i.not = icmp eq ptr %40, %reclaim_bgs
  br i1 %cmp.i.not, label %next46.while.end_crit_edge, label %next46.while.body_crit_edge

next46.while.body_crit_edge:                      ; preds = %next46
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

next46.while.end_crit_edge:                       ; preds = %next46
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %next46.while.end_crit_edge, %if.end7.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %unused_bgs_lock) #16
  tail call void @mutex_unlock(ptr noundef %reclaim_bgs_lock) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.end, %if.end3.cleanup.sink.split_crit_edge
  tail call void @btrfs_exclop_finish(ptr noundef %add.ptr) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btrfs_exclop_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_exclop_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @reclaim_bgs_cmp(ptr nocapture noundef readnone %unused, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %used = getelementptr i8, ptr %a, i32 -216
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %used, align 8
  %used4 = getelementptr i8, ptr %b, i32 -216
  %2 = ptrtoint ptr %used4 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %used4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp ugt i64 %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_reclaim_block_group(ptr noundef %bg_cache) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_reclaim_block_group, i32 0, i32 1), ptr blockaddress(@trace_btrfs_reclaim_block_group, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !190

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !173

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !202
  %call42 = tail call i32 @__traceiter_btrfs_reclaim_block_group(ptr noundef null, ptr noundef %bg_cache) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !203
  %13 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !173

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_reclaim_block_group, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_reclaim_block_group, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_reclaim_block_group.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_btrfs_reclaim_block_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 1912, ptr noundef nonnull @.str.31) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !194
  %31 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
declare dso_local i32 @btrfs_relocate_chunk(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_reclaim_bgs(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %unused_bgs_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 162
  tail call void @_raw_spin_lock(ptr noundef %unused_bgs_lock) #16
  %reclaim_bgs = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 160
  %0 = ptrtoint ptr %reclaim_bgs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %reclaim_bgs, align 4
  %cmp.i.not = icmp eq ptr %1, %reclaim_bgs
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %2 = load ptr, ptr @system_unbound_wq, align 4
  %reclaim_bgs_work = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 159
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %reclaim_bgs_work) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %unused_bgs_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_mark_bg_to_reclaim(ptr noundef %bg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bg, align 8
  %unused_bgs_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 162
  tail call void @_raw_spin_lock(ptr noundef %unused_bgs_lock) #16
  %bg_list = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 28
  %2 = ptrtoint ptr %bg_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %bg_list, align 4
  %cmp.i.not = icmp eq ptr %3, %bg_list
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %refs.i = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 26
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #16, !srcloc !171
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !172

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.btrfs_get_block_group.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !173

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.btrfs_get_block_group.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %btrfs_get_block_group.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #16
  br label %btrfs_get_block_group.exit

btrfs_get_block_group.exit:                       ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.btrfs_get_block_group.exit_crit_edge
  tail call fastcc void @trace_btrfs_add_reclaim_block_group(ptr noundef %bg)
  %reclaim_bgs = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 160
  %prev.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 160, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bg_list, ptr noundef %7, ptr noundef %reclaim_bgs) #16
  br i1 %call.i.i, label %if.end.i.i, label %btrfs_get_block_group.exit.if.end_crit_edge

btrfs_get_block_group.exit.if.end_crit_edge:      ; preds = %btrfs_get_block_group.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i.i:                                       ; preds = %btrfs_get_block_group.exit
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bg_list, ptr %prev.i, align 4
  %9 = ptrtoint ptr %bg_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %reclaim_bgs, ptr %bg_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 28, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %bg_list, ptr %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %btrfs_get_block_group.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %unused_bgs_lock) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_add_reclaim_block_group(ptr noundef %bg_cache) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_add_reclaim_block_group, i32 0, i32 1), ptr blockaddress(@trace_btrfs_add_reclaim_block_group, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !190

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !173

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !204
  %call42 = tail call i32 @__traceiter_btrfs_add_reclaim_block_group(ptr noundef null, ptr noundef %bg_cache) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !205
  %13 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !173

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_add_reclaim_block_group, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_add_reclaim_block_group, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_add_reclaim_block_group.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_btrfs_add_reclaim_block_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 1906, ptr noundef nonnull @.str.31) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !194
  %31 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
define dso_local i32 @btrfs_rmap_block(ptr noundef %fs_info, i64 noundef %chunk_start, ptr noundef readnone %bdev, i64 noundef %physical, ptr nocapture noundef writeonly %logical, ptr nocapture noundef writeonly %naddrs, ptr nocapture noundef writeonly %stripe_len) local_unnamed_addr #0 align 64 {
entry:
  %offset = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @btrfs_get_chunk_map(ptr noundef %fs_info, i64 noundef %chunk_start, i64 noundef 1) #16
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup82_crit_edge, label %if.end

entry.cleanup82_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup82

if.end:                                           ; preds = %entry
  %map_lookup = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %map_lookup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map_lookup, align 4
  %orig_block_len = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %orig_block_len to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %orig_block_len, align 8
  %stripe_len2 = getelementptr inbounds %struct.map_lookup, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %stripe_len2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %stripe_len2, align 8
  %start = getelementptr inbounds %struct.extent_map, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %1, align 8
  %and = and i64 %9, 384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %num_stripes.i = getelementptr inbounds %struct.map_lookup, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %num_stripes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_stripes.i, align 8
  %and.i.i = and i64 %9, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  %12 = trunc i64 %9 to i32
  %13 = lshr i32 %12, 7
  %14 = and i32 %13, 2
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %14, i32 1
  %sub.i = sub i32 %11, %retval.0.i.i
  %conv = sext i32 %sub.i to i64
  %mul = mul i64 %5, %conv
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %io_stripe_size.0 = phi i64 [ %mul, %if.then3 ], [ %5, %if.end.if.end6_crit_edge ]
  %num_stripes = getelementptr inbounds %struct.map_lookup, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_stripes, align 8
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 8) #16
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %if.end6.out_crit_edge, label %if.end7.i.i, !prof !172

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end7.i.i:                                      ; preds = %if.end6
  %19 = extractvalue { i32, i1 } %17, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3392) #25
  %tobool8.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool8.not, label %if.end7.i.i.out_crit_edge, label %for.cond.preheader

if.end7.i.i.out_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.cond.preheader:                               ; preds = %if.end7.i.i
  %20 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_stripes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp140 = icmp sgt i32 %21, 0
  br i1 %cmp140, label %for.body.lr.ph, label %for.cond.preheader.for.end80_crit_edge

for.cond.preheader.for.end80_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end80

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool23.not = icmp eq ptr %bdev, null
  %sub_stripes = getelementptr inbounds %struct.map_lookup, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %nr.0144 = phi i32 [ 0, %for.body.lr.ph ], [ %nr.2, %cleanup.for.body_crit_edge ]
  %i.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %inc79, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #16
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %offset, align 8, !annotation !183
  %arrayidx = getelementptr %struct.map_lookup, ptr %1, i32 0, i32 7, i32 %i.0141
  %physical13 = getelementptr %struct.map_lookup, ptr %1, i32 0, i32 7, i32 %i.0141, i32 1
  %23 = ptrtoint ptr %physical13 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %physical13, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %physical)
  %cmp14.not = icmp ule i64 %24, %physical
  %add = add i64 %24, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %physical)
  %cmp19 = icmp ugt i64 %add, %physical
  %or.cond = select i1 %cmp14.not, i1 %cmp19, i1 false
  br i1 %or.cond, label %if.end22, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end22:                                         ; preds = %for.body
  br i1 %tobool23.not, label %if.end22.if.end31_crit_edge, label %land.lhs.true24

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

land.lhs.true24:                                  ; preds = %if.end22
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 8
  %bdev27 = getelementptr inbounds %struct.btrfs_device, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %bdev27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bdev27, align 8
  %cmp28.not = icmp eq ptr %28, %bdev
  br i1 %cmp28.not, label %land.lhs.true24.if.end31_crit_edge, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true24.if.end31_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true24.if.end31_crit_edge, %if.end22.if.end31_crit_edge
  %sub = sub i64 %physical, %24
  %29 = ptrtoint ptr %stripe_len2 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %stripe_len2, align 8
  %call36 = call i64 @div64_u64_rem(i64 noundef %sub, i64 noundef %30, ptr noundef nonnull %offset) #16
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %1, align 8
  %and38 = and i64 %32, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and38)
  %tobool39.not = icmp eq i64 %and38, 0
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end31
  %33 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_stripes, align 8
  %conv42 = sext i32 %34 to i64
  %mul43 = mul i64 %call36, %conv42
  %conv44 = zext i32 %i.0141 to i64
  %add45 = add i64 %mul43, %conv44
  %35 = ptrtoint ptr %sub_stripes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sub_stripes, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add45)
  %cmp164.i.i = icmp ult i64 %add45, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !173

if.then168.i.i:                                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #18
  %conv169.i.i = trunc i64 %add45 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %36
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %if.end57

if.else174.i.i:                                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #18
  %37 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %36, i64 %add45) #24, !srcloc !201
  %asmresult1.i.i.i = extractvalue { i64, i64 } %37, 1
  br label %if.end57

if.else:                                          ; preds = %if.end31
  %and48 = and i64 %32, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and48)
  %tobool49.not = icmp eq i64 %and48, 0
  br i1 %tobool49.not, label %if.else.if.end57_crit_edge, label %if.then50

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_stripes, align 8
  %conv52 = sext i32 %39 to i64
  %mul53 = mul i64 %call36, %conv52
  %conv54 = zext i32 %i.0141 to i64
  %add55 = add i64 %mul53, %conv54
  br label %if.end57

if.end57:                                         ; preds = %if.then50, %if.else.if.end57_crit_edge, %if.else174.i.i, %if.then168.i.i
  %stripe_nr.0 = phi i64 [ %add55, %if.then50 ], [ %call36, %if.else.if.end57_crit_edge ], [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %mul58 = mul i64 %stripe_nr.0, %io_stripe_size.0
  %add59 = add i64 %mul58, %7
  %40 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %offset, align 8
  %add60 = add i64 %add59, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.0144)
  %cmp62138 = icmp sgt i32 %nr.0144, 0
  br i1 %cmp62138, label %if.end57.for.body64_crit_edge, label %if.end57.if.then71.critedge_crit_edge

if.end57.if.then71.critedge_crit_edge:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then71.critedge

if.end57.for.body64_crit_edge:                    ; preds = %if.end57
  br label %for.body64

for.cond61:                                       ; preds = %for.body64
  %inc = add nuw nsw i32 %j.0139, 1
  %exitcond.not = icmp eq i32 %inc, %nr.0144
  br i1 %exitcond.not, label %for.cond61.if.then71.critedge_crit_edge, label %for.cond61.for.body64_crit_edge

for.cond61.for.body64_crit_edge:                  ; preds = %for.cond61
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body64

for.cond61.if.then71.critedge_crit_edge:          ; preds = %for.cond61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then71.critedge

for.body64:                                       ; preds = %for.cond61.for.body64_crit_edge, %if.end57.for.body64_crit_edge
  %j.0139 = phi i32 [ %inc, %for.cond61.for.body64_crit_edge ], [ 0, %if.end57.for.body64_crit_edge ]
  %arrayidx65 = getelementptr i64, ptr %call8.i.i, i32 %j.0139
  %42 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx65, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %add60)
  %cmp66 = icmp eq i64 %43, %add60
  br i1 %cmp66, label %for.body64.cleanup_crit_edge, label %for.cond61

for.body64.cleanup_crit_edge:                     ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then71.critedge:                               ; preds = %for.cond61.if.then71.critedge_crit_edge, %if.end57.if.then71.critedge_crit_edge
  %inc72 = add i32 %nr.0144, 1
  %arrayidx73 = getelementptr i64, ptr %call8.i.i, i32 %nr.0144
  %44 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %add60, ptr %arrayidx73, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then71.critedge, %for.body64.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %nr.2 = phi i32 [ %nr.0144, %for.body.cleanup_crit_edge ], [ %nr.0144, %land.lhs.true24.cleanup_crit_edge ], [ %inc72, %if.then71.critedge ], [ %nr.0144, %for.body64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #16
  %inc79 = add nuw nsw i32 %i.0141, 1
  %45 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_stripes, align 8
  %cmp = icmp slt i32 %inc79, %46
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end80_crit_edge

cleanup.for.end80_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end80

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end80:                                        ; preds = %cleanup.for.end80_crit_edge, %for.cond.preheader.for.end80_crit_edge
  %nr.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end80_crit_edge ], [ %nr.2, %cleanup.for.end80_crit_edge ]
  %47 = ptrtoint ptr %logical to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call8.i.i, ptr %logical, align 4
  %48 = ptrtoint ptr %naddrs to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %nr.0.lcssa, ptr %naddrs, align 4
  %conv81 = trunc i64 %io_stripe_size.0 to i32
  %49 = ptrtoint ptr %stripe_len to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv81, ptr %stripe_len, align 4
  br label %out

out:                                              ; preds = %for.end80, %if.end7.i.i.out_crit_edge, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ 0, %for.end80 ], [ -12, %if.end7.i.i.out_crit_edge ], [ -12, %if.end6.out_crit_edge ]
  call void @free_extent_map(ptr noundef %call) #16
  br label %cleanup82

cleanup82:                                        ; preds = %out, %entry.cleanup82_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -5, %entry.cleanup82_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_get_chunk_map(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_read_block_groups(ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %space_info.i = alloca ptr, align 4
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %bg.i.i = alloca %struct.btrfs_block_group_item, align 8
  %disk_key.i.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  %bgi = alloca %struct.btrfs_block_group_item, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @btrfs_extent_root(ptr noundef %info, i64 noundef 0) #16
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #16
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call fastcc i32 @fill_dummy_bgs(ptr noundef %info)
  br label %cleanup119

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %key, align 8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %1, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -64, ptr %0, align 8
  %call2 = tail call ptr @btrfs_alloc_path() #16
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup119_crit_edge, label %if.end5

if.end.cleanup119_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup119

if.end5:                                          ; preds = %if.end
  %super_copy = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 43
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 31
  %5 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mount_opt, align 8
  %and = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end5.if.end11_crit_edge, label %land.lhs.true

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %super_copy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %super_copy, align 8
  %cache_generation.i = getelementptr inbounds %struct.btrfs_super_block, ptr %8, i32 0, i32 29
  %9 = ptrtoint ptr %cache_generation.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %cache_generation.i, align 1
  %generation.i = getelementptr inbounds %struct.btrfs_super_block, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %generation.i, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %10)
  %cmp.not = icmp ne i64 %12, %10
  %spec.select = zext i1 %cmp.not to i32
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.end5.if.end11_crit_edge
  %need_clear.0 = phi i32 [ 0, %if.end5.if.end11_crit_edge ], [ %spec.select, %land.lhs.true ]
  %13 = getelementptr inbounds %struct.btrfs_block_group_item, ptr %bgi, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bgi) #16
  %14 = call ptr @memset(ptr %bgi, i32 255, i32 24)
  %call.i.i267 = call ptr @btrfs_extent_root(ptr noundef %info, i64 noundef 0) #16
  %call1.i268 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %call.i.i267, ptr noundef nonnull %key, ptr noundef nonnull %call2, i32 noundef 0, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i268)
  %cmp.i269 = icmp slt i32 %call1.i268, 0
  br i1 %cmp.i269, label %if.end11.cleanup.thread_crit_edge, label %while.cond.preheader.i.lr.ph

if.end11.cleanup.thread_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

while.cond.preheader.i.lr.ph:                     ; preds = %if.end11
  %and13 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %call2, i32 0, i32 1
  %15 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 2
  %17 = getelementptr inbounds %struct.btrfs_block_group_item, ptr %bg.i.i, i32 0, i32 2
  %mapping_tree.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 19
  %lock.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 19, i32 2
  %18 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %need_clear.0)
  %tobool7.not.i221 = icmp eq i32 %need_clear.0, 0
  %tobool7.not.i = select i1 %tobool14.not, i1 %tobool7.not.i221, i1 false
  %20 = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 176
  %discard_ctl.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 134
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %cleanup.while.cond.preheader.i_crit_edge, %while.cond.preheader.i.lr.ph
  %call.i.i270 = phi ptr [ %call.i.i267, %while.cond.preheader.i.lr.ph ], [ %call.i.i, %cleanup.while.cond.preheader.i_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %while.cond.preheader.i
  %21 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %slots.i, align 4
  %23 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call2, align 4
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pages.i.i, align 4
  %call.i40.i = call ptr @page_address(ptr noundef %26) #16
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %24, align 8
  %conv.i.i = trunc i64 %28 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i40.i, i32 %and.i.i
  %nritems.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %nritems.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %nritems.i.i, align 1
  %31 = call i32 @llvm.bswap.i32(i32 %30) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %31)
  %cmp4.not.i = icmp ult i32 %22, %31
  br i1 %cmp4.not.i, label %if.end13.i, label %if.then5.i

if.then5.i:                                       ; preds = %while.cond.i
  %call.i41.i = call i32 @btrfs_next_old_leaf(ptr noundef %call.i.i270, ptr noundef nonnull %call2, i64 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %cmp7.i = icmp eq i32 %call.i41.i, 0
  br i1 %cmp7.i, label %if.then5.i.while.cond.i.backedge_crit_edge, label %find_first_block_group.exit

if.then5.i.while.cond.i.backedge_crit_edge:       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i.backedge

if.end13.i:                                       ; preds = %while.cond.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i) #16
  %mul.i.i.i.i.i = mul i32 %22, 25
  %add.i.i.i.i.i = add i32 %mul.i.i.i.i.i, 101
  %32 = call ptr @memset(ptr %disk_key.i.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %24, ptr noundef nonnull %disk_key.i.i, i32 noundef %add.i.i.i.i.i, i32 noundef 17) #16
  %33 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %16, align 1
  %35 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %15, align 8
  %37 = ptrtoint ptr %disk_key.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %disk_key.i.i, align 8
  %39 = call i64 @llvm.bswap.i64(i64 %38) #16
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i) #16
  %40 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %41)
  %cmp15.not.i = icmp uge i64 %39, %41
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %36)
  %cmp16.i = icmp eq i8 %36, -64
  %or.cond.i = select i1 %cmp15.not.i, i1 %cmp16.i, i1 false
  br i1 %or.cond.i, label %if.then18.i, label %if.end20.i

if.then18.i:                                      ; preds = %if.end13.i
  %42 = call i64 @llvm.bswap.i64(i64 %34) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bg.i.i) #16
  %43 = call ptr @memset(ptr %bg.i.i, i32 255, i32 24)
  %44 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %slots.i, align 4
  %46 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call2, align 4
  call void @_raw_read_lock(ptr noundef %lock.i.i) #16
  %call.i42.i = call ptr @lookup_extent_mapping(ptr noundef %mapping_tree.i.i, i64 noundef %39, i64 noundef %42) #16
  call void @_raw_read_unlock(ptr noundef %lock.i.i) #16
  %tobool.not.i.i = icmp eq ptr %call.i42.i, null
  br i1 %tobool.not.i.i, label %if.end20.thread198, label %if.end.i.i

if.end20.thread198:                               ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %info, ptr noundef nonnull @.str.40, i64 noundef %39, i64 noundef %42) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bg.i.i) #16
  br label %cleanup.thread

if.end.i.i:                                       ; preds = %if.then18.i
  %start.i.i = getelementptr inbounds %struct.extent_map, ptr %call.i42.i, i32 0, i32 1
  %48 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %start.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %39)
  %cmp.not.i.i = icmp eq i64 %49, %39
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.if.then8.i.i_crit_edge

if.end.i.i.if.then8.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %len.i.i = getelementptr inbounds %struct.extent_map, ptr %call.i42.i, i32 0, i32 2
  %50 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %51, i64 %42)
  %cmp7.not.i.i = icmp eq i64 %51, %42
  br i1 %cmp7.not.i.i, label %if.end13.i.i, label %lor.lhs.false.i.i.if.then8.i.i_crit_edge

lor.lhs.false.i.i.if.then8.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8.i.i

if.then8.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then8.i.i_crit_edge, %if.end.i.i.if.then8.i.i_crit_edge
  %.lcssa314 = phi i64 [ %39, %lor.lhs.false.i.i.if.then8.i.i_crit_edge ], [ %49, %if.end.i.i.if.then8.i.i_crit_edge ]
  %len12.i.i = getelementptr inbounds %struct.extent_map, ptr %call.i42.i, i32 0, i32 2
  %52 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %len12.i.i, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %info, ptr noundef nonnull @.str.41, i64 noundef %39, i64 noundef %42, i64 noundef %.lcssa314, i64 noundef %53) #20
  br label %if.end20.thread201

if.end13.i.i:                                     ; preds = %lor.lhs.false.i.i
  %mul.i.i.i.i43.i = mul i32 %45, 25
  %add.i.i.i.i44.i = add i32 %mul.i.i.i.i43.i, 101
  %54 = inttoptr i32 %add.i.i.i.i44.i to ptr
  %call.i.i.i.i = call i32 @btrfs_get_32(ptr noundef %47, ptr noundef %54, i32 noundef 17) #16
  %add.i.i = add i32 %call.i.i.i.i, 101
  call void @read_extent_buffer(ptr noundef %47, ptr noundef nonnull %bg.i.i, i32 noundef %add.i.i, i32 noundef 24) #16
  %55 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %17, align 8
  %57 = lshr i64 %56, 56
  %and.i45.i = and i64 %57, 7
  %map_lookup.i.i = getelementptr inbounds %struct.extent_map, ptr %call.i42.i, i32 0, i32 12
  %58 = ptrtoint ptr %map_lookup.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %map_lookup.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %59, align 8
  %and16.i.i = and i64 %61, 7
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i45.i, i64 %and16.i.i)
  %cmp17.not.i.i = icmp eq i64 %and.i45.i, %and16.i.i
  br i1 %cmp17.not.i.i, label %if.end23, label %if.then18.i.i

if.then18.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %info, ptr noundef nonnull @.str.42, i64 noundef %39, i64 noundef %42, i64 noundef %and.i45.i, i64 noundef %and16.i.i) #20
  br label %if.end20.thread201

if.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  %62 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %slots.i, align 4
  %inc.i = add i32 %63, 1
  store i32 %inc.i, ptr %slots.i, align 4
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %if.end20.i, %if.then5.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

find_first_block_group.exit:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %cmp18 = icmp sgt i32 %call.i41.i, 0
  br i1 %cmp18, label %while.end, label %find_first_block_group.exit.cleanup.thread_crit_edge

find_first_block_group.exit.cleanup.thread_crit_edge: ; preds = %find_first_block_group.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end20.thread201:                               ; preds = %if.then18.i.i, %if.then8.i.i
  call void @free_extent_map(ptr noundef nonnull %call.i42.i) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bg.i.i) #16
  br label %cleanup.thread

if.end23:                                         ; preds = %if.end13.i.i
  call void @free_extent_map(ptr noundef nonnull %call.i42.i) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bg.i.i) #16
  %64 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call2, align 4
  %66 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %slots.i, align 4
  %mul.i.i.i = mul i32 %67, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %68 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i174 = call i32 @btrfs_get_32(ptr noundef %65, ptr noundef %68, i32 noundef 17) #16
  %add = add i32 %call.i.i174, 101
  call void @read_extent_buffer(ptr noundef %65, ptr noundef nonnull %bgi, i32 noundef %add, i32 noundef 24) #16
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #16
  %69 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %65, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i, i32 noundef 17) #16
  %70 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %71 = load i64, ptr %19, align 1
  %72 = call i64 @llvm.bswap.i64(i64 %71) #16
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 8)
  store i64 %72, ptr %1, align 1
  %74 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %18, align 8
  %76 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %0, align 8
  %77 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %disk_key.i, align 8
  %79 = call i64 @llvm.bswap.i64(i64 %78) #16
  %80 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #16
  call void @btrfs_release_path(ptr noundef nonnull %call2) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %space_info.i) #16
  %81 = ptrtoint ptr %space_info.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 -1 to ptr), ptr %space_info.i, align 4, !annotation !183
  %82 = ptrtoint ptr %super_copy to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %super_copy, align 8
  %incompat_flags.i.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %83, i32 0, i32 22
  %84 = ptrtoint ptr %incompat_flags.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 8)
  %85 = load i64, ptr %incompat_flags.i.i.i, align 1
  %86 = and i64 %85, 288230376151711744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %86)
  %tobool.i.not.i = icmp eq i64 %86, 0
  %87 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %88)
  %cmp.i175 = icmp eq i8 %88, -64
  br i1 %cmp.i175, label %cond.end.i, label %cond.false.i, !prof !173

cond.false.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.43, i32 noundef 2000) #26
  unreachable

cond.end.i:                                       ; preds = %if.end23
  %89 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %key, align 8
  %call3.i = call fastcc ptr @btrfs_create_block_group_cache(ptr noundef %info, i64 noundef %90) #16
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %read_one_block_group.exit.thread207, label %if.end.i

read_one_block_group.exit.thread207:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %space_info.i) #16
  br label %cleanup.thread

if.end.i:                                         ; preds = %cond.end.i
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 8)
  %92 = load i64, ptr %1, align 1
  %length.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 4
  %93 = ptrtoint ptr %length.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %length.i, align 8
  %94 = ptrtoint ptr %bgi to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %bgi, align 8
  %96 = call i64 @llvm.bswap.i64(i64 %95) #16
  %used.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 7
  %97 = ptrtoint ptr %used.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %used.i, align 8
  %98 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %13, align 8
  %100 = call i64 @llvm.bswap.i64(i64 %99) #16
  %flags.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 10
  %101 = ptrtoint ptr %flags.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %flags.i, align 8
  call void @set_free_space_tree_thresholds(ptr noundef nonnull %call3.i) #16
  br i1 %tobool7.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then8.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end.i
  %102 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mount_opt, align 8
  %and.i = and i32 %103, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.then8.i.if.end12.i_crit_edge, label %if.then10.i

if.then8.i.if.end12.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #18
  %disk_cache_state.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 18
  %104 = ptrtoint ptr %disk_cache_state.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2, ptr %disk_cache_state.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.then8.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  br i1 %tobool.i.not.i, label %land.lhs.true.i, label %if.end12.i.if.end22.i_crit_edge

if.end12.i.if.end22.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %105 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %flags.i, align 8
  %107 = and i64 %106, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %107)
  %.not.i = icmp eq i64 %107, 5
  br i1 %.not.i, label %read_one_block_group.exit.thread210, label %land.lhs.true.i.if.end22.i_crit_edge

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.i

read_one_block_group.exit.thread210:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %start.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 3
  %108 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %start.i, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %info, ptr noundef nonnull @.str.44, i64 noundef %109) #20
  call void @btrfs_put_block_group(ptr noundef nonnull %call3.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %space_info.i) #16
  br label %cleanup.thread

if.end22.i:                                       ; preds = %land.lhs.true.i.if.end22.i_crit_edge, %if.end12.i.if.end22.i_crit_edge
  %call23.i = call i32 @btrfs_load_block_group_zone_info(ptr noundef nonnull %call3.i, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end27.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  %start26.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 3
  %110 = ptrtoint ptr %start26.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %start26.i, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %info, ptr noundef nonnull @.str.45, i64 noundef %111) #20
  br label %read_one_block_group.exit

if.end27.i:                                       ; preds = %if.end22.i
  %call28.i = call fastcc i32 @exclude_super_stripes(ptr noundef nonnull %call3.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @btrfs_free_excluded_extents(ptr noundef nonnull %call3.i) #16
  br label %read_one_block_group.exit

if.end31.i:                                       ; preds = %if.end27.i
  %112 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %113)
  %cmp.i.not.i = icmp eq i64 %113, 0
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @btrfs_calc_zone_unusable(ptr noundef nonnull %call3.i) #16
  br label %if.end52.sink.split.i

if.else.i:                                        ; preds = %if.end31.i
  %114 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %length.i, align 8
  %116 = ptrtoint ptr %used.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %used.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %115, i64 %117)
  %cmp36.i = icmp eq i64 %115, %117
  br i1 %cmp36.i, label %if.then38.i, label %if.else39.i

if.then38.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %last_byte_to_unpin.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 21
  %118 = ptrtoint ptr %last_byte_to_unpin.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 -1, ptr %last_byte_to_unpin.i, align 8
  %cached.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 19
  %119 = ptrtoint ptr %cached.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 3, ptr %cached.i, align 8
  br label %if.end52.sink.split.i

if.else39.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %117)
  %cmp41.i = icmp eq i64 %117, 0
  br i1 %cmp41.i, label %if.then43.i, label %if.else39.i.if.end52.i_crit_edge

if.else39.i.if.end52.i_crit_edge:                 ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52.i

if.then43.i:                                      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #18
  %last_byte_to_unpin44.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 21
  %120 = ptrtoint ptr %last_byte_to_unpin44.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 -1, ptr %last_byte_to_unpin44.i, align 8
  %cached45.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 19
  %121 = ptrtoint ptr %cached45.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 3, ptr %cached45.i, align 8
  %start46.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 3
  %122 = ptrtoint ptr %start46.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %start46.i, align 8
  %add.i = add i64 %123, %115
  %call49.i = call i64 @add_new_free_space(ptr noundef nonnull %call3.i, i64 noundef %123, i64 noundef %add.i) #16
  br label %if.end52.sink.split.i

if.end52.sink.split.i:                            ; preds = %if.then43.i, %if.then38.i, %if.then33.i
  call void @btrfs_free_excluded_extents(ptr noundef nonnull %call3.i) #16
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end52.sink.split.i, %if.else39.i.if.end52.i_crit_edge
  %call53.i = call fastcc i32 @btrfs_add_block_group_cache(ptr noundef %info, ptr noundef nonnull %call3.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end56.i, label %if.then55.i

if.then55.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @btrfs_remove_free_space_cache(ptr noundef nonnull %call3.i) #16
  br label %read_one_block_group.exit

if.end56.i:                                       ; preds = %if.end52.i
  call fastcc void @trace_btrfs_add_block_group(ptr noundef %info, ptr noundef nonnull %call3.i, i32 noundef 0) #16
  %124 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %flags.i, align 8
  %126 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %length.i, align 8
  %128 = ptrtoint ptr %used.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %used.i, align 8
  %bytes_super.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 9
  %130 = ptrtoint ptr %bytes_super.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %bytes_super.i, align 8
  %zone_unusable.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 47
  %132 = ptrtoint ptr %zone_unusable.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %zone_unusable.i, align 8
  call void @btrfs_update_space_info(ptr noundef %info, i64 noundef %125, i64 noundef %127, i64 noundef %129, i64 noundef %131, i64 noundef %133, ptr noundef nonnull %space_info.i) #16
  %134 = ptrtoint ptr %space_info.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %space_info.i, align 4
  %space_info60.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 22
  %136 = ptrtoint ptr %space_info60.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %135, ptr %space_info60.i, align 8
  %137 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %flags.i, align 8
  %call.i.i176 = call i32 @btrfs_bg_flags_to_raid_index(i64 noundef %138) #22
  %groups_sem.i.i = getelementptr inbounds %struct.btrfs_space_info, ptr %135, i32 0, i32 21
  call void @down_write(ptr noundef %groups_sem.i.i) #16
  %list.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 25
  %arrayidx.i.i = getelementptr %struct.btrfs_space_info, ptr %135, i32 0, i32 22, i32 %call.i.i176
  %prev.i.i.i = getelementptr %struct.btrfs_space_info, ptr %135, i32 0, i32 22, i32 %call.i.i176, i32 1
  %139 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i177 = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %140, ptr noundef %arrayidx.i.i) #16
  br i1 %call.i.i.i.i177, label %if.end.i.i.i.i, label %if.end56.i.link_block_group.exit.i_crit_edge

if.end56.i.link_block_group.exit.i_crit_edge:     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %link_block_group.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #18
  %141 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %142 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %arrayidx.i.i, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 25, i32 1
  %143 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %140, ptr %prev3.i.i.i.i, align 4
  %144 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %list.i.i, ptr %140, align 4
  br label %link_block_group.exit.i

link_block_group.exit.i:                          ; preds = %if.end.i.i.i.i, %if.end56.i.link_block_group.exit.i_crit_edge
  call void @up_write(ptr noundef %groups_sem.i.i) #16
  %145 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %flags.i, align 8
  call fastcc void @set_avail_alloc_bits(ptr noundef %info, i64 noundef %146) #16
  %start62.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 3
  %147 = ptrtoint ptr %start62.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %start62.i, align 8
  %call63.i = call zeroext i1 @btrfs_chunk_writeable(ptr noundef %info, i64 noundef %148) #16
  br i1 %call63.i, label %if.then64.i, label %if.else87.i

if.then64.i:                                      ; preds = %link_block_group.exit.i
  %149 = ptrtoint ptr %used.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %used.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %150)
  %cmp66.i = icmp eq i64 %150, 0
  br i1 %cmp66.i, label %if.then68.i, label %if.then64.i.read_one_block_group.exit.thread_crit_edge

if.then64.i.read_one_block_group.exit.thread_crit_edge: ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %read_one_block_group.exit.thread

if.then68.i:                                      ; preds = %if.then64.i
  %bg_list.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call3.i, i32 0, i32 28
  %151 = ptrtoint ptr %bg_list.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile ptr, ptr %bg_list.i, align 4
  %cmp.i157.not.i = icmp eq ptr %152, %bg_list.i
  br i1 %cmp.i157.not.i, label %cond.end79.i, label %cond.false78.i, !prof !173

cond.false78.i:                                   ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.46, i32 noundef 2099) #26
  unreachable

cond.end79.i:                                     ; preds = %if.then68.i
  %153 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %mount_opt, align 8
  %and81.i = and i32 %154, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %if.else84.i, label %if.then83.i

if.then83.i:                                      ; preds = %cond.end79.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @btrfs_discard_queue_work(ptr noundef %discard_ctl.i, ptr noundef nonnull %call3.i) #16
  br label %read_one_block_group.exit.thread

if.else84.i:                                      ; preds = %cond.end79.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @btrfs_mark_bg_unused(ptr noundef nonnull %call3.i) #16
  br label %read_one_block_group.exit.thread

if.else87.i:                                      ; preds = %link_block_group.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %call88.i = call fastcc i32 @inc_block_group_ro(ptr noundef nonnull %call3.i, i32 noundef 1) #16
  br label %read_one_block_group.exit.thread

read_one_block_group.exit.thread:                 ; preds = %if.else87.i, %if.else84.i, %if.then83.i, %if.then64.i.read_one_block_group.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %space_info.i) #16
  br label %cleanup

read_one_block_group.exit:                        ; preds = %if.then55.i, %if.then30.i, %if.then25.i
  %ret.0.i = phi i32 [ %call23.i, %if.then25.i ], [ %call28.i, %if.then30.i ], [ %call53.i, %if.then55.i ]
  call void @btrfs_put_block_group(ptr noundef nonnull %call3.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %space_info.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp27 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp27, label %read_one_block_group.exit.cleanup.thread_crit_edge, label %read_one_block_group.exit.cleanup_crit_edge

read_one_block_group.exit.cleanup_crit_edge:      ; preds = %read_one_block_group.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

read_one_block_group.exit.cleanup.thread_crit_edge: ; preds = %read_one_block_group.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.cleanup.thread_crit_edge, %read_one_block_group.exit.cleanup.thread_crit_edge, %read_one_block_group.exit.thread210, %read_one_block_group.exit.thread207, %if.end20.thread201, %find_first_block_group.exit.cleanup.thread_crit_edge, %if.end20.thread198, %if.end11.cleanup.thread_crit_edge
  %ret.0.ph = phi i32 [ -22, %read_one_block_group.exit.thread210 ], [ -12, %read_one_block_group.exit.thread207 ], [ -117, %if.end20.thread201 ], [ -2, %if.end20.thread198 ], [ %call.i41.i, %find_first_block_group.exit.cleanup.thread_crit_edge ], [ %call1.i268, %if.end11.cleanup.thread_crit_edge ], [ %call1.i, %cleanup.cleanup.thread_crit_edge ], [ %ret.0.i, %read_one_block_group.exit.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bgi) #16
  br label %land.lhs.true112

cleanup:                                          ; preds = %read_one_block_group.exit.cleanup_crit_edge, %read_one_block_group.exit.thread
  %155 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %155, i32 8)
  %156 = load i64, ptr %1, align 1
  %157 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %key, align 8
  %add32 = add i64 %158, %156
  store i64 %add32, ptr %key, align 8
  store i64 0, ptr %1, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bgi) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bgi) #16
  %159 = call ptr @memset(ptr %bgi, i32 255, i32 24)
  %call.i.i = call ptr @btrfs_extent_root(ptr noundef %info, i64 noundef 0) #16
  %call1.i = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %call.i.i, ptr noundef nonnull %key, ptr noundef nonnull %call2, i32 noundef 0, i32 noundef 0) #16
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %cleanup.cleanup.thread_crit_edge, label %cleanup.while.cond.preheader.i_crit_edge

cleanup.while.cond.preheader.i_crit_edge:         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader.i

cleanup.cleanup.thread_crit_edge:                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

while.end:                                        ; preds = %find_first_block_group.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bgi) #16
  call void @btrfs_release_path(ptr noundef nonnull %call2) #16
  %space_info36 = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 101
  %160 = ptrtoint ptr %space_info36 to i32
  call void @__asan_load4_noabort(i32 %160)
  %.pn279 = load ptr, ptr %space_info36, align 4
  %cmp38.not280 = icmp eq ptr %.pn279, %space_info36
  br i1 %cmp38.not280, label %while.end.for.end109_crit_edge, label %while.end.for.cond39.preheader_crit_edge

while.end.for.cond39.preheader_crit_edge:         ; preds = %while.end
  br label %for.cond39.preheader

while.end.for.end109_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end109

for.cond39.preheader:                             ; preds = %cleanup100.for.cond39.preheader_crit_edge, %while.end.for.cond39.preheader_crit_edge
  %.pn281 = phi ptr [ %.pn, %cleanup100.for.cond39.preheader_crit_edge ], [ %.pn279, %while.end.for.cond39.preheader_crit_edge ]
  %block_groups = getelementptr i8, ptr %.pn281, i32 144
  %161 = ptrtoint ptr %block_groups to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile ptr, ptr %block_groups, align 4
  %cmp.i179.not = icmp eq ptr %162, %block_groups
  br i1 %cmp.i179.not, label %for.cond39.preheader.for.inc_crit_edge, label %if.end46

for.cond39.preheader.for.inc_crit_edge:           ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end46:                                         ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr52 = getelementptr i8, ptr %162, i32 -284
  call void @btrfs_sysfs_add_block_group_type(ptr noundef %add.ptr52) #16
  br label %for.inc

for.inc:                                          ; preds = %if.end46, %for.cond39.preheader.for.inc_crit_edge
  %arrayidx42.1 = getelementptr i8, ptr %.pn281, i32 152
  %163 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile ptr, ptr %arrayidx42.1, align 4
  %cmp.i179.not.1 = icmp eq ptr %164, %arrayidx42.1
  br i1 %cmp.i179.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end46.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.end46.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr52.1 = getelementptr i8, ptr %164, i32 -284
  call void @btrfs_sysfs_add_block_group_type(ptr noundef %add.ptr52.1) #16
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end46.1, %for.inc.for.inc.1_crit_edge
  %arrayidx42.2 = getelementptr i8, ptr %.pn281, i32 160
  %165 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile ptr, ptr %arrayidx42.2, align 4
  %cmp.i179.not.2 = icmp eq ptr %166, %arrayidx42.2
  br i1 %cmp.i179.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end46.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.end46.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr52.2 = getelementptr i8, ptr %166, i32 -284
  call void @btrfs_sysfs_add_block_group_type(ptr noundef %add.ptr52.2) #16
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end46.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx42.3 = getelementptr i8, ptr %.pn281, i32 168
  %167 = ptrtoint ptr %arrayidx42.3 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile ptr, ptr %arrayidx42.3, align 4
  %cmp.i179.not.3 = icmp eq ptr %168, %arrayidx42.3
  br i1 %cmp.i179.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end46.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

if.end46.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr52.3 = getelementptr i8, ptr %168, i32 -284
  call void @btrfs_sysfs_add_block_group_type(ptr noundef %add.ptr52.3) #16
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end46.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx42.4 = getelementptr i8, ptr %.pn281, i32 176
  %169 = ptrtoint ptr %arrayidx42.4 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile ptr, ptr %arrayidx42.4, align 4
  %cmp.i179.not.4 = icmp eq ptr %170, %arrayidx42.4
  br i1 %cmp.i179.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end46.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4

if.end46.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr52.4 = getelementptr i8, ptr %170, i32 -284
  call void @btrfs_sysfs_add_block_group_type(ptr noundef %add.ptr52.4) #16
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end46.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx42.5 = getelementptr i8, ptr %.pn281, i32 184
  %171 = ptrtoint ptr %arrayidx42.5 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile ptr, ptr %arrayidx42.5, align 4
  %cmp.i179.not.5 = icmp eq ptr %172, %arrayidx42.5
  br i1 %cmp.i179.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end46.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.5

if.end46.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr52.5 = getelementptr i8, ptr %172, i32 -284
  call void @btrfs_sysfs_add_block_group_type(ptr noundef %add.ptr52.5) #16
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end46.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx42.6 = getelementptr i8, ptr %.pn281, i32 192
  %173 = ptrtoint ptr %arrayidx42.6 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile ptr, ptr %arrayidx42.6, align 4
  %cmp.i179.not.6 = icmp eq ptr %174, %arrayidx42.6
  br i1 %cmp.i179.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end46.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.6

if.end46.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr52.6 = getelementptr i8, ptr %174, i32 -284
  call void @btrfs_sysfs_add_block_group_type(ptr noundef %add.ptr52.6) #16
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end46.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx42.7 = getelementptr i8, ptr %.pn281, i32 200
  %175 = ptrtoint ptr %arrayidx42.7 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile ptr, ptr %arrayidx42.7, align 4
  %cmp.i179.not.7 = icmp eq ptr %176, %arrayidx42.7
  br i1 %cmp.i179.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end46.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.7

if.end46.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr52.7 = getelementptr i8, ptr %176, i32 -284
  call void @btrfs_sysfs_add_block_group_type(ptr noundef %add.ptr52.7) #16
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end46.7, %for.inc.6.for.inc.7_crit_edge
  %arrayidx42.8 = getelementptr i8, ptr %.pn281, i32 208
  %177 = ptrtoint ptr %arrayidx42.8 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile ptr, ptr %arrayidx42.8, align 4
  %cmp.i179.not.8 = icmp eq ptr %178, %arrayidx42.8
  br i1 %cmp.i179.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.end46.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.8

if.end46.8:                                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr52.8 = getelementptr i8, ptr %178, i32 -284
  call void @btrfs_sysfs_add_block_group_type(ptr noundef %add.ptr52.8) #16
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.end46.8, %for.inc.7.for.inc.8_crit_edge
  %flags = getelementptr i8, ptr %.pn281, i32 -8
  %179 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %flags, align 8
  %call53 = call i64 @btrfs_get_alloc_profile(ptr noundef %info, i64 noundef %180)
  %and54 = and i64 %call53, 2032
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and54)
  %tobool55.not = icmp eq i64 %and54, 0
  br i1 %tobool55.not, label %for.inc.8.cleanup100_crit_edge, label %if.end57

for.inc.8.cleanup100_crit_edge:                   ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup100

if.end57:                                         ; preds = %for.inc.8
  %arrayidx60 = getelementptr i8, ptr %.pn281, i32 168
  %181 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %181)
  %.pn171273 = load ptr, ptr %arrayidx60, align 4
  %cmp68.not274 = icmp eq ptr %.pn171273, %arrayidx60
  br i1 %cmp68.not274, label %if.end57.for.end78_crit_edge, label %if.end57.for.body70_crit_edge

if.end57.for.body70_crit_edge:                    ; preds = %if.end57
  br label %for.body70

if.end57.for.end78_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end78

for.body70:                                       ; preds = %for.body70.for.body70_crit_edge, %if.end57.for.body70_crit_edge
  %.pn171275 = phi ptr [ %.pn171, %for.body70.for.body70_crit_edge ], [ %.pn171273, %if.end57.for.body70_crit_edge ]
  %cache.0 = getelementptr i8, ptr %.pn171275, i32 -284
  %call71 = call fastcc i32 @inc_block_group_ro(ptr noundef %cache.0, i32 noundef 1)
  %182 = ptrtoint ptr %.pn171275 to i32
  call void @__asan_load4_noabort(i32 %182)
  %.pn171 = load ptr, ptr %.pn171275, align 4
  %cmp68.not = icmp eq ptr %.pn171, %arrayidx60
  br i1 %cmp68.not, label %for.body70.for.end78_crit_edge, label %for.body70.for.body70_crit_edge

for.body70.for.body70_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body70

for.body70.for.end78_crit_edge:                   ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end78

for.end78:                                        ; preds = %for.body70.for.end78_crit_edge, %if.end57.for.end78_crit_edge
  %arrayidx81 = getelementptr i8, ptr %.pn281, i32 176
  %183 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %183)
  %.pn172276 = load ptr, ptr %arrayidx81, align 4
  %cmp89.not277 = icmp eq ptr %.pn172276, %arrayidx81
  br i1 %cmp89.not277, label %for.end78.cleanup100_crit_edge, label %for.end78.for.body91_crit_edge

for.end78.for.body91_crit_edge:                   ; preds = %for.end78
  br label %for.body91

for.end78.cleanup100_crit_edge:                   ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup100

for.body91:                                       ; preds = %for.body91.for.body91_crit_edge, %for.end78.for.body91_crit_edge
  %.pn172278 = phi ptr [ %.pn172, %for.body91.for.body91_crit_edge ], [ %.pn172276, %for.end78.for.body91_crit_edge ]
  %cache.1 = getelementptr i8, ptr %.pn172278, i32 -284
  %call92 = call fastcc i32 @inc_block_group_ro(ptr noundef %cache.1, i32 noundef 1)
  %184 = ptrtoint ptr %.pn172278 to i32
  call void @__asan_load4_noabort(i32 %184)
  %.pn172 = load ptr, ptr %.pn172278, align 4
  %cmp89.not = icmp eq ptr %.pn172, %arrayidx81
  br i1 %cmp89.not, label %for.body91.cleanup100_crit_edge, label %for.body91.for.body91_crit_edge

for.body91.for.body91_crit_edge:                  ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body91

for.body91.cleanup100_crit_edge:                  ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup100

cleanup100:                                       ; preds = %for.body91.cleanup100_crit_edge, %for.end78.cleanup100_crit_edge, %for.inc.8.cleanup100_crit_edge
  %185 = ptrtoint ptr %.pn281 to i32
  call void @__asan_load4_noabort(i32 %185)
  %.pn = load ptr, ptr %.pn281, align 4
  %cmp38.not = icmp eq ptr %.pn, %space_info36
  br i1 %cmp38.not, label %cleanup100.for.end109_crit_edge, label %cleanup100.for.cond39.preheader_crit_edge

cleanup100.for.cond39.preheader_crit_edge:        ; preds = %cleanup100
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond39.preheader

cleanup100.for.end109_crit_edge:                  ; preds = %cleanup100
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end109

for.end109:                                       ; preds = %cleanup100.for.end109_crit_edge, %while.end.for.end109_crit_edge
  call void @btrfs_init_global_block_rsv(ptr noundef %info) #16
  call void @_raw_read_lock(ptr noundef %lock.i.i) #16
  %call61.i = call ptr @lookup_extent_mapping(ptr noundef %mapping_tree.i.i, i64 noundef 0, i64 noundef 1) #16
  call void @_raw_read_unlock(ptr noundef %lock.i.i) #16
  %tobool.not62.i = icmp eq ptr %call61.i, null
  br i1 %tobool.not62.i, label %for.end109.error_crit_edge, label %for.end109.if.end.i183_crit_edge

for.end109.if.end.i183_crit_edge:                 ; preds = %for.end109
  br label %if.end.i183

for.end109.error_crit_edge:                       ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

if.end.i183:                                      ; preds = %if.end25.i.if.end.i183_crit_edge, %for.end109.if.end.i183_crit_edge
  %call63.i180 = phi ptr [ %call.i188, %if.end25.i.if.end.i183_crit_edge ], [ %call61.i, %for.end109.if.end.i183_crit_edge ]
  %start2.i = getelementptr inbounds %struct.extent_map, ptr %call63.i180, i32 0, i32 1
  %186 = ptrtoint ptr %start2.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %start2.i, align 8
  %call.i.i181 = call fastcc ptr @block_group_cache_tree_search(ptr noundef %info, i64 noundef %187, i32 noundef 1) #16
  %tobool4.not.i182 = icmp eq ptr %call.i.i181, null
  br i1 %tobool4.not.i182, label %if.then5.i184, label %if.end7.i

if.then5.i184:                                    ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #18
  %188 = ptrtoint ptr %start2.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %start2.i, align 8
  %len.i = getelementptr inbounds %struct.extent_map, ptr %call63.i180, i32 0, i32 2
  %190 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %len.i, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %info, ptr noundef nonnull @.str.47, i64 noundef %189, i64 noundef %191) #20
  call void @free_extent_map(ptr noundef nonnull %call63.i180) #16
  br label %land.lhs.true112

if.end7.i:                                        ; preds = %if.end.i183
  %start8.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i.i181, i32 0, i32 3
  %192 = ptrtoint ptr %start8.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %start8.i, align 8
  %194 = ptrtoint ptr %start2.i to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %start2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %193, i64 %195)
  %cmp.not.i = icmp eq i64 %193, %195
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end7.i.if.then15.i_crit_edge

if.end7.i.if.then15.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i

lor.lhs.false.i:                                  ; preds = %if.end7.i
  %length.i185 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i.i181, i32 0, i32 4
  %196 = ptrtoint ptr %length.i185 to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %length.i185, align 8
  %len10.i = getelementptr inbounds %struct.extent_map, ptr %call63.i180, i32 0, i32 2
  %198 = ptrtoint ptr %len10.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %len10.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %197, i64 %199)
  %cmp11.not.i = icmp eq i64 %197, %199
  br i1 %cmp11.not.i, label %lor.lhs.false12.i, label %lor.lhs.false.i.if.then15.i_crit_edge

lor.lhs.false.i.if.then15.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %flags.i186 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i.i181, i32 0, i32 10
  %200 = ptrtoint ptr %flags.i186 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %flags.i186, align 8
  %map_lookup.i = getelementptr inbounds %struct.extent_map, ptr %call63.i180, i32 0, i32 12
  %202 = ptrtoint ptr %map_lookup.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %map_lookup.i, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %203, align 8
  %206 = xor i64 %205, %201
  %207 = and i64 %206, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %207)
  %cmp14.not.i = icmp eq i64 %207, 0
  br i1 %cmp14.not.i, label %if.end25.i, label %lor.lhs.false12.i.if.then15.i_crit_edge

lor.lhs.false12.i.if.then15.i_crit_edge:          ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i

if.then15.i:                                      ; preds = %lor.lhs.false12.i.if.then15.i_crit_edge, %lor.lhs.false.i.if.then15.i_crit_edge, %if.end7.i.if.then15.i_crit_edge
  %.lcssa.i = phi i64 [ %193, %lor.lhs.false12.i.if.then15.i_crit_edge ], [ %193, %lor.lhs.false.i.if.then15.i_crit_edge ], [ %195, %if.end7.i.if.then15.i_crit_edge ]
  %len17.i = getelementptr inbounds %struct.extent_map, ptr %call63.i180, i32 0, i32 2
  %208 = ptrtoint ptr %len17.i to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %len17.i, align 8
  %map_lookup18.i = getelementptr inbounds %struct.extent_map, ptr %call63.i180, i32 0, i32 12
  %210 = ptrtoint ptr %map_lookup18.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %map_lookup18.i, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %211, align 8
  %and20.i = and i64 %213, 7
  %length22.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i.i181, i32 0, i32 4
  %214 = ptrtoint ptr %length22.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %length22.i, align 8
  %flags23.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i.i181, i32 0, i32 10
  %216 = ptrtoint ptr %flags23.i to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %flags23.i, align 8
  %and24.i = and i64 %217, 7
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %info, ptr noundef nonnull @.str.48, i64 noundef %.lcssa.i, i64 noundef %209, i64 noundef %and20.i, i64 noundef %193, i64 noundef %215, i64 noundef %and24.i) #20
  call void @free_extent_map(ptr noundef nonnull %call63.i180) #16
  call void @btrfs_put_block_group(ptr noundef nonnull %call.i.i181) #16
  br label %land.lhs.true112

if.end25.i:                                       ; preds = %lor.lhs.false12.i
  %add.i187 = add i64 %197, %193
  call void @free_extent_map(ptr noundef nonnull %call63.i180) #16
  call void @btrfs_put_block_group(ptr noundef nonnull %call.i.i181) #16
  call void @_raw_read_lock(ptr noundef %lock.i.i) #16
  %call.i188 = call ptr @lookup_extent_mapping(ptr noundef %mapping_tree.i.i, i64 noundef %add.i187, i64 noundef 1) #16
  call void @_raw_read_unlock(ptr noundef %lock.i.i) #16
  %tobool.not.i = icmp eq ptr %call.i188, null
  br i1 %tobool.not.i, label %if.end25.i.error_crit_edge, label %if.end25.i.if.end.i183_crit_edge

if.end25.i.if.end.i183_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i183

if.end25.i.error_crit_edge:                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %error

error:                                            ; preds = %if.end25.i.error_crit_edge, %for.end109.error_crit_edge
  call void @btrfs_free_path(ptr noundef nonnull %call2) #16
  br label %cleanup119

land.lhs.true112:                                 ; preds = %if.then15.i, %if.then5.i184, %cleanup.thread
  %ret.1.ph = phi i32 [ -117, %if.then5.i184 ], [ -117, %if.then15.i ], [ %ret.0.ph, %cleanup.thread ]
  call void @btrfs_free_path(ptr noundef nonnull %call2) #16
  %218 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %mount_opt, align 8
  %and114 = and i32 %219, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %land.lhs.true112.cleanup119_crit_edge, label %if.then116

land.lhs.true112.cleanup119_crit_edge:            ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup119

if.then116:                                       ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #18
  %call117 = call fastcc i32 @fill_dummy_bgs(ptr noundef %info)
  br label %cleanup119

cleanup119:                                       ; preds = %if.then116, %land.lhs.true112.cleanup119_crit_edge, %error, %if.end.cleanup119_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ -12, %if.end.cleanup119_crit_edge ], [ %call117, %if.then116 ], [ %ret.1.ph, %land.lhs.true112.cleanup119_crit_edge ], [ 0, %error ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_dummy_bgs(ptr noundef %fs_info) unnamed_addr #0 align 64 {
entry:
  %space_info = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %space_info) #16
  %0 = ptrtoint ptr %space_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %space_info, align 4, !annotation !183
  %rb_leftmost = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 19, i32 0, i32 1
  %1 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rb_leftmost, align 4
  %tobool.not66 = icmp eq ptr %2, null
  br i1 %tobool.not66, label %entry.if.then21_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.then21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %node.067 = phi ptr [ %call19, %for.inc.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %map_lookup = getelementptr inbounds %struct.extent_map, ptr %node.067, i32 0, i32 12
  %3 = ptrtoint ptr %map_lookup to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map_lookup, align 4
  %start = getelementptr inbounds %struct.extent_map, ptr %node.067, i32 0, i32 1
  %5 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start, align 8
  %call = call fastcc ptr @btrfs_create_block_group_cache(ptr noundef %fs_info, i64 noundef %6)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %for.body.if.end22_crit_edge, label %if.end

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.end:                                           ; preds = %for.body
  %len = getelementptr inbounds %struct.extent_map, ptr %node.067, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %len, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %length, align 8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %4, align 8
  %flags = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 10
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %flags, align 8
  %last_byte_to_unpin = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 21
  %13 = ptrtoint ptr %last_byte_to_unpin to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %last_byte_to_unpin, align 8
  %cached = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 19
  %14 = ptrtoint ptr %cached to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %cached, align 8
  %15 = load i64, ptr %len, align 8
  %used = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 7
  %16 = ptrtoint ptr %used to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %used, align 8
  %17 = load i64, ptr %4, align 8
  store i64 %17, ptr %flags, align 8
  %call6 = call fastcc i32 @btrfs_add_block_group_cache(ptr noundef %fs_info, ptr noundef nonnull %call)
  %18 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %if.then10 [
    i32 -17, label %if.then7
    i32 0, label %if.end11
  ]

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @btrfs_put_block_group(ptr noundef nonnull %call)
  br label %for.inc

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @btrfs_remove_free_space_cache(ptr noundef nonnull %call) #16
  call void @btrfs_put_block_group(ptr noundef nonnull %call)
  br label %if.end22

if.end11:                                         ; preds = %if.end
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %flags, align 8
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %len, align 8
  call void @btrfs_update_space_info(ptr noundef %fs_info, i64 noundef %20, i64 noundef %22, i64 noundef %22, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %space_info) #16
  %23 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %space_info, align 4
  %space_info15 = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 22
  %25 = ptrtoint ptr %space_info15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %space_info15, align 8
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %flags, align 8
  %call.i = call i32 @btrfs_bg_flags_to_raid_index(i64 noundef %27) #22
  %groups_sem.i = getelementptr inbounds %struct.btrfs_space_info, ptr %24, i32 0, i32 21
  call void @down_write(ptr noundef %groups_sem.i) #16
  %list.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 25
  %arrayidx.i = getelementptr %struct.btrfs_space_info, ptr %24, i32 0, i32 22, i32 %call.i
  %prev.i.i = getelementptr %struct.btrfs_space_info, ptr %24, i32 0, i32 22, i32 %call.i, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %29, ptr noundef %arrayidx.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end11.link_block_group.exit_crit_edge

if.end11.link_block_group.exit_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %link_block_group.exit

if.end.i.i.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list.i, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 25, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list.i, ptr %29, align 4
  br label %link_block_group.exit

link_block_group.exit:                            ; preds = %if.end.i.i.i, %if.end11.link_block_group.exit_crit_edge
  call void @up_write(ptr noundef %groups_sem.i) #16
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %flags, align 8
  call fastcc void @set_avail_alloc_bits(ptr noundef %fs_info, i64 noundef %35)
  br label %for.inc

for.inc:                                          ; preds = %link_block_group.exit, %if.then7
  %call19 = call ptr @rb_next(ptr noundef nonnull %node.067) #16
  %tobool.not = icmp eq ptr %call19, null
  br i1 %tobool.not, label %for.inc.if.then21_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.if.then21_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

if.then21:                                        ; preds = %for.inc.if.then21_crit_edge, %entry.if.then21_crit_edge
  call void @btrfs_init_global_block_rsv(ptr noundef %fs_info) #16
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then10, %for.body.if.end22_crit_edge
  %ret.263 = phi i32 [ 0, %if.then21 ], [ %call6, %if.then10 ], [ -12, %for.body.if.end22_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %space_info) #16
  ret i32 %ret.263
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_sysfs_add_block_group_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_init_global_block_rsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_create_pending_block_groups(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i.i.i = alloca i32, align 4
  %batch.i.i.i = alloca %struct.btrfs_item_batch, align 4
  %key.i.i = alloca %struct.btrfs_key, align 8
  %bgi.i = alloca %struct.btrfs_block_group_item, align 8
  %key.i = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %new_bgs = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 17
  %2 = ptrtoint ptr %new_bgs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %new_bgs, align 4
  %cmp.i.not252 = icmp eq ptr %3, %new_bgs
  br i1 %cmp.i.not252, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %4 = getelementptr inbounds %struct.btrfs_block_group_item, ptr %bgi.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.btrfs_block_group_item, ptr %bgi.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 2
  %chunk_mutex = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 50
  %8 = getelementptr inbounds %struct.btrfs_key, ptr %key.i.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.btrfs_key, ptr %key.i.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i.i, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %while.body.lr.ph
  %13 = phi ptr [ %3, %while.body.lr.ph ], [ %113, %list_del_init.exit.while.body_crit_edge ]
  %ret.0253 = phi i32 [ 0, %while.body.lr.ph ], [ %ret.1, %list_del_init.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %13, i32 -304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0253)
  %tobool3.not = icmp eq i32 %ret.0253, 0
  br i1 %tobool3.not, label %if.end, label %while.body.next186_crit_edge

while.body.next186_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %next186

if.end:                                           ; preds = %while.body
  %flags = getelementptr i8, ptr %13, i32 -192
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %flags, align 8
  %call4 = call i32 @btrfs_bg_flags_to_raid_index(i64 noundef %15) #22
  %16 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fs_info1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bgi.i) #16
  %call.i.i = call ptr @btrfs_extent_root(ptr noundef %17, i64 noundef 0) #16
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #16
  %lock.i = getelementptr i8, ptr %13, i32 -296
  call void @_raw_spin_lock(ptr noundef %lock.i) #16
  %used.i = getelementptr i8, ptr %13, i32 -216
  %18 = ptrtoint ptr %used.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %used.i, align 8
  %20 = call i64 @llvm.bswap.i64(i64 %19) #16
  %21 = ptrtoint ptr %bgi.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %bgi.i, align 8
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 281474976710656, ptr %4, align 8
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %flags, align 8
  %25 = call i64 @llvm.bswap.i64(i64 %24) #16
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %5, align 8
  %start.i = getelementptr i8, ptr %13, i32 -248
  %27 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %start.i, align 8
  %29 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %key.i, align 8
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -64, ptr %6, align 8
  %length.i = getelementptr i8, ptr %13, i32 -240
  %31 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %length.i, align 8
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %7, align 1
  call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  %call3.i = call i32 @btrfs_insert_item(ptr noundef %trans, ptr noundef %call.i.i, ptr noundef nonnull %key.i, ptr noundef nonnull %bgi.i, i32 noundef 24) #16
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bgi.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool6.not = icmp eq i32 %call3.i, 0
  br i1 %tobool6.not, label %if.end.if.end53_crit_edge, label %do.body

if.end.if.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

do.body:                                          ; preds = %if.end
  %34 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fs_info1, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %35, i32 0, i32 149
  %call9 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %do.body.if.end50_crit_edge

do.body.if.end50_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

if.then11:                                        ; preds = %do.body
  %36 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %call3.i, label %do.end [
    i32 -5, label %if.then11.do.body34_crit_edge
    i32 -30, label %if.then11.do.body34_crit_edge269
  ]

if.then11.do.body34_crit_edge269:                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body34

if.then11.do.body34_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body34

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2416, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %call3.i) #16
  br label %if.end50

do.body34:                                        ; preds = %if.then11.do.body34_crit_edge, %if.then11.do.body34_crit_edge269
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_create_pending_block_groups.__UNIQUE_ID_ddebug933, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_create_pending_block_groups, %if.then44)) #16
          to label %if.end50 [label %if.then44], !srcloc !190

if.then44:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %38, ptr noundef nonnull @.str.13, i32 noundef %call3.i) #20
  br label %if.end50

if.end50:                                         ; preds = %if.then44, %do.body34, %do.end, %do.body.if.end50_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.11, i32 noundef 2416, i32 noundef %call3.i) #20
  br label %if.end53

if.end53:                                         ; preds = %if.end50, %if.end.if.end53_crit_edge
  %chunk_item_inserted = getelementptr i8, ptr %13, i32 -64
  %39 = ptrtoint ptr %chunk_item_inserted to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %chunk_item_inserted, align 8
  %40 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool54.not = icmp eq i8 %40, 0
  br i1 %tobool54.not, label %if.then55, label %if.end53.if.end119_crit_edge

if.end53.if.end119_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end119

if.then55:                                        ; preds = %if.end53
  call void @mutex_lock_nested(ptr noundef %chunk_mutex, i32 noundef 0) #16
  %call56 = call i32 @btrfs_chunk_alloc_add_chunk_item(ptr noundef %trans, ptr noundef %add.ptr) #16
  call void @mutex_unlock(ptr noundef %chunk_mutex) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool58.not = icmp eq i32 %call56, 0
  br i1 %tobool58.not, label %if.then55.if.end119_crit_edge, label %do.body60

if.then55.if.end119_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end119

do.body60:                                        ; preds = %if.then55
  %41 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fs_info1, align 4
  %fs_state62 = getelementptr inbounds %struct.btrfs_fs_info, ptr %42, i32 0, i32 149
  %call63 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state62) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then65, label %do.body60.if.end115_crit_edge

do.body60.if.end115_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115

if.then65:                                        ; preds = %do.body60
  %43 = zext i32 %call56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call56, label %do.end82 [
    i32 -5, label %if.then65.do.body97_crit_edge
    i32 -30, label %if.then65.do.body97_crit_edge270
  ]

if.then65.do.body97_crit_edge270:                 ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body97

if.then65.do.body97_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body97

do.end82:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2422, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %call56) #16
  br label %if.end115

do.body97:                                        ; preds = %if.then65.do.body97_crit_edge, %if.then65.do.body97_crit_edge270
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_create_pending_block_groups.__UNIQUE_ID_ddebug934, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_create_pending_block_groups, %if.then109)) #16
          to label %if.end115 [label %if.then109], !srcloc !190

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #18
  %44 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %45, ptr noundef nonnull @.str.13, i32 noundef %call56) #20
  br label %if.end115

if.end115:                                        ; preds = %if.then109, %do.body97, %do.end82, %do.body60.if.end115_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.11, i32 noundef 2422, i32 noundef %call56) #20
  br label %if.end119

if.end119:                                        ; preds = %if.end115, %if.then55.if.end119_crit_edge, %if.end53.if.end119_crit_edge
  %46 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %start.i, align 8
  %48 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %length.i, align 8
  %50 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fs_info1, align 4
  %call.i = call ptr @btrfs_get_chunk_map(ptr noundef %51, i64 noundef %47, i64 noundef %49) #16
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #18
  %52 = ptrtoint ptr %call.i to i32
  br label %insert_dev_extents.exit

if.end.i:                                         ; preds = %if.end119
  %map_lookup.i = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 12
  %53 = ptrtoint ptr %map_lookup.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %map_lookup.i, align 4
  %orig_block_len.i = getelementptr inbounds %struct.extent_map, ptr %call.i, i32 0, i32 6
  %55 = ptrtoint ptr %orig_block_len.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %orig_block_len.i, align 8
  %fs_devices.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %51, i32 0, i32 100
  %57 = ptrtoint ptr %fs_devices.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fs_devices.i, align 8
  %device_list_mutex.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %58, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %device_list_mutex.i, i32 noundef 0) #16
  %num_stripes.i = getelementptr inbounds %struct.map_lookup, ptr %54, i32 0, i32 4
  %59 = ptrtoint ptr %num_stripes.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_stripes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp37.i = icmp sgt i32 %60, 0
  br i1 %cmp37.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.038.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.map_lookup, ptr %54, i32 0, i32 7, i32 %i.038.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i, align 8
  %physical.i = getelementptr %struct.map_lookup, ptr %54, i32 0, i32 7, i32 %i.038.i, i32 1
  %63 = ptrtoint ptr %physical.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %physical.i, align 8
  %fs_info1.i.i = getelementptr inbounds %struct.btrfs_device, ptr %62, i32 0, i32 4
  %65 = ptrtoint ptr %fs_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fs_info1.i.i, align 4
  %dev_root.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %dev_root.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_root.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i.i) #16
  %dev_state.i.i = getelementptr inbounds %struct.btrfs_device, ptr %62, i32 0, i32 10
  %69 = ptrtoint ptr %dev_state.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %dev_state.i.i, align 4
  %71 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %for.body.i.if.end.i.i_crit_edge, !prof !172

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2313, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %for.body.i.if.end.i.i_crit_edge
  %72 = ptrtoint ptr %dev_state.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %dev_state.i.i, align 4
  %74 = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool25.not.i.i = icmp eq i32 %74, 0
  br i1 %tobool25.not.i.i, label %if.end.i.i.if.end47.i.i_crit_edge, label %do.end41.i.i, !prof !173

if.end.i.i.if.end47.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47.i.i

do.end41.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2314, i32 noundef 9, ptr noundef null) #16
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %do.end41.i.i, %if.end.i.i.if.end47.i.i_crit_edge
  %call55.i.i = call ptr @btrfs_alloc_path() #16
  %tobool56.not.i.i = icmp eq ptr %call55.i.i, null
  br i1 %tobool56.not.i.i, label %insert_dev_extent.exit.thread.i, label %if.end58.i.i

insert_dev_extent.exit.thread.i:                  ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i.i) #16
  br label %for.end.i

if.end58.i.i:                                     ; preds = %if.end47.i.i
  %devid.i.i = getelementptr inbounds %struct.btrfs_device, ptr %62, i32 0, i32 13
  %75 = ptrtoint ptr %devid.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %devid.i.i, align 8
  %77 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %key.i.i, align 8
  %78 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -52, ptr %8, align 8
  %79 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 8)
  store i64 %64, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i.i.i) #16
  %80 = ptrtoint ptr %data_size.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 48, ptr %data_size.addr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i.i.i) #16
  %81 = ptrtoint ptr %batch.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %key.i.i, ptr %batch.i.i.i, align 4
  %82 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %data_size.addr.i.i.i, ptr %10, align 4
  %83 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 48, ptr %11, align 4
  %84 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %12, align 4
  %call.i.i.i = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %68, ptr noundef nonnull %call55.i.i, ptr noundef nonnull %batch.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool60.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool60.not.i.i, label %for.inc.i, label %insert_dev_extent.exit.i

insert_dev_extent.exit.i:                         ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @btrfs_free_path(ptr noundef nonnull %call55.i.i) #16
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i.i) #16
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end58.i.i
  %85 = ptrtoint ptr %call55.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call55.i.i, align 4
  %slots.i.i = getelementptr inbounds %struct.btrfs_path, ptr %call55.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %slots.i.i, align 4
  %mul.i.i.i.i.i = mul i32 %88, 25
  %add.i.i.i.i.i = add i32 %mul.i.i.i.i.i, 101
  %89 = inttoptr i32 %add.i.i.i.i.i to ptr
  %call.i.i.i.i = call i32 @btrfs_get_32(ptr noundef %86, ptr noundef %89, i32 noundef 17) #16
  %add.i.i = add i32 %call.i.i.i.i, 101
  %90 = inttoptr i32 %add.i.i to ptr
  call void @btrfs_set_64(ptr noundef %86, ptr noundef %90, i32 noundef 0, i64 noundef 3) #16
  call void @btrfs_set_64(ptr noundef %86, ptr noundef %90, i32 noundef 8, i64 noundef 256) #16
  call void @btrfs_set_64(ptr noundef %86, ptr noundef %90, i32 noundef 16, i64 noundef %47) #16
  call void @btrfs_set_64(ptr noundef %86, ptr noundef %90, i32 noundef 24, i64 noundef %56) #16
  call void @btrfs_mark_buffer_dirty(ptr noundef %86) #16
  call void @btrfs_free_path(ptr noundef nonnull %call55.i.i) #16
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i.i) #16
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %91 = ptrtoint ptr %num_stripes.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_stripes.i, align 8
  %cmp.i242 = icmp slt i32 %inc.i, %92
  br i1 %cmp.i242, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %insert_dev_extent.exit.i, %insert_dev_extent.exit.thread.i, %if.end.i.for.end.i_crit_edge
  %ret.1.i = phi i32 [ %call.i.i.i, %insert_dev_extent.exit.i ], [ -12, %insert_dev_extent.exit.thread.i ], [ 0, %if.end.i.for.end.i_crit_edge ], [ 0, %for.inc.i.for.end.i_crit_edge ]
  %93 = ptrtoint ptr %fs_devices.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fs_devices.i, align 8
  %device_list_mutex10.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %94, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %device_list_mutex10.i) #16
  call void @free_extent_map(ptr noundef %call.i) #16
  br label %insert_dev_extents.exit

insert_dev_extents.exit:                          ; preds = %for.end.i, %if.then.i
  %retval.0.i243 = phi i32 [ %52, %if.then.i ], [ %ret.1.i, %for.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i243)
  %tobool121.not = icmp eq i32 %retval.0.i243, 0
  br i1 %tobool121.not, label %insert_dev_extents.exit.if.end181_crit_edge, label %do.body123

insert_dev_extents.exit.if.end181_crit_edge:      ; preds = %insert_dev_extents.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end181

do.body123:                                       ; preds = %insert_dev_extents.exit
  %95 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fs_info1, align 4
  %fs_state125 = getelementptr inbounds %struct.btrfs_fs_info, ptr %96, i32 0, i32 149
  %call126 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state125) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.then128, label %do.body123.if.end178_crit_edge

do.body123.if.end178_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end178

if.then128:                                       ; preds = %do.body123
  %97 = zext i32 %retval.0.i243 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %retval.0.i243, label %do.end145 [
    i32 -5, label %if.then128.do.body160_crit_edge
    i32 -30, label %if.then128.do.body160_crit_edge271
  ]

if.then128.do.body160_crit_edge271:               ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body160

if.then128.do.body160_crit_edge:                  ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body160

do.end145:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2427, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i243) #16
  br label %if.end178

do.body160:                                       ; preds = %if.then128.do.body160_crit_edge, %if.then128.do.body160_crit_edge271
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_create_pending_block_groups.__UNIQUE_ID_ddebug935, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_create_pending_block_groups, %if.then172)) #16
          to label %if.end178 [label %if.then172], !srcloc !190

if.then172:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #18
  %98 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %99, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i243) #20
  br label %if.end178

if.end178:                                        ; preds = %if.then172, %do.body160, %do.end145, %do.body123.if.end178_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.11, i32 noundef 2427, i32 noundef %retval.0.i243) #20
  br label %if.end181

if.end181:                                        ; preds = %if.end178, %insert_dev_extents.exit.if.end181_crit_edge
  %call182 = call i32 @add_block_group_free_space(ptr noundef %trans, ptr noundef %add.ptr) #16
  %space_info = getelementptr i8, ptr %13, i32 -40
  %100 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %space_info, align 8
  %arrayidx = getelementptr %struct.btrfs_space_info, ptr %101, i32 0, i32 24, i32 %call4
  %102 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx, align 4
  %cmp183 = icmp eq ptr %103, null
  br i1 %cmp183, label %if.then184, label %if.end181.next186_crit_edge

if.end181.next186_crit_edge:                      ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #18
  br label %next186

if.then184:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #18
  call void @btrfs_sysfs_add_block_group_type(ptr noundef %add.ptr) #16
  br label %next186

next186:                                          ; preds = %if.then184, %if.end181.next186_crit_edge, %while.body.next186_crit_edge
  %ret.1 = phi i32 [ %ret.0253, %while.body.next186_crit_edge ], [ %retval.0.i243, %if.then184 ], [ %retval.0.i243, %if.end181.next186_crit_edge ]
  call void @btrfs_delayed_refs_rsv_release(ptr noundef %1, i32 noundef 1) #16
  %call.i.i244 = call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #16
  br i1 %call.i.i244, label %if.end.i.i245, label %next186.list_del_init.exit_crit_edge

next186.list_del_init.exit_crit_edge:             ; preds = %next186
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i245:                                    ; preds = %next186
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %104 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i.i, align 4
  %106 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %13, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev1.i.i.i, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %107, ptr %105, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i245, %next186.list_del_init.exit_crit_edge
  %110 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %13, ptr %13, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %111 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %13, ptr %prev.i3.i, align 4
  %112 = ptrtoint ptr %new_bgs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile ptr, ptr %new_bgs, align 4
  %cmp.i.not = icmp eq ptr %113, %new_bgs
  br i1 %cmp.i.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @btrfs_trans_release_chunk_metadata(ptr noundef %trans) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_abort_transaction(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_chunk_alloc_add_chunk_item(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_block_group_free_space(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_trans_release_chunk_metadata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_make_block_group(ptr noundef %trans, i64 noundef %bytes_used, i64 noundef %type, i64 noundef %chunk_offset, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %trans, align 8
  %last_trans_log_full_commit.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %last_trans_log_full_commit.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %3, ptr %last_trans_log_full_commit.i, align 8
  %call = tail call fastcc ptr @btrfs_create_block_group_cache(ptr noundef %1, i64 noundef %chunk_offset)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %size, ptr %length, align 8
  tail call void @set_free_space_tree_thresholds(ptr noundef nonnull %call) #16
  %used = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %used to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %bytes_used, ptr %used, align 8
  %flags = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 10
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %type, ptr %flags, align 8
  %last_byte_to_unpin = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 21
  %8 = ptrtoint ptr %last_byte_to_unpin to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %last_byte_to_unpin, align 8
  %cached = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 19
  %9 = ptrtoint ptr %cached to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %cached, align 8
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 43
  %10 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %super_copy.i, align 8
  %compat_ro_flags.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %compat_ro_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %compat_ro_flags.i.i, align 1
  %14 = and i64 %13, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool4.not = icmp eq i64 %14, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %needs_free_space = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 42
  %15 = ptrtoint ptr %needs_free_space to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %needs_free_space, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %call7 = tail call i32 @btrfs_load_block_group_zone_info(ptr noundef nonnull %call, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call)
  %16 = inttoptr i32 %call7 to ptr
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = tail call zeroext i1 @btrfs_zone_activate(ptr noundef nonnull %call) #16
  %call13 = tail call fastcc i32 @exclude_super_stripes(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @btrfs_free_excluded_extents(ptr noundef nonnull %call) #16
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call)
  %17 = inttoptr i32 %call13 to ptr
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %add = add i64 %size, %chunk_offset
  %call18 = tail call i64 @add_new_free_space(ptr noundef nonnull %call, i64 noundef %chunk_offset, i64 noundef %add)
  tail call void @btrfs_free_excluded_extents(ptr noundef nonnull %call) #16
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 8
  %mount_opt.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %19, i32 0, i32 31
  %20 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mount_opt.i, align 8
  %and.i = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end17.lor.rhs.i_crit_edge, label %land.lhs.true.i

if.end17.lor.rhs.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %if.end17
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %flags, align 8
  %and2.i = and i64 %23, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool3.not.i = icmp eq i64 %and2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.lor.rhs.i_crit_edge, label %land.lhs.true.i.if.then21_crit_edge

land.lhs.true.i.if.then21_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %if.end17.lor.rhs.i_crit_edge
  %and5.i = and i32 %21, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %lor.rhs.i.if.end23_crit_edge, label %btrfs_should_fragment_free_space.exit

lor.rhs.i.if.end23_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

btrfs_should_fragment_free_space.exit:            ; preds = %lor.rhs.i
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %flags, align 8
  %26 = and i64 %25, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool20.not = icmp eq i64 %26, 0
  br i1 %tobool20.not, label %btrfs_should_fragment_free_space.exit.if.end23_crit_edge, label %btrfs_should_fragment_free_space.exit.if.then21_crit_edge

btrfs_should_fragment_free_space.exit.if.then21_crit_edge: ; preds = %btrfs_should_fragment_free_space.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

btrfs_should_fragment_free_space.exit.if.end23_crit_edge: ; preds = %btrfs_should_fragment_free_space.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then21:                                        ; preds = %btrfs_should_fragment_free_space.exit.if.then21_crit_edge, %land.lhs.true.i.if.then21_crit_edge
  %sub = sub i64 %size, %bytes_used
  %shr = lshr i64 %sub, 1
  %add22 = add i64 %shr, %bytes_used
  %27 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %length, align 8
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %flags, align 8
  %and.i96 = and i64 %30, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i96)
  %tobool.not.i97 = icmp eq i64 %and.i96, 0
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %19, i32 0, i32 166
  %sectorsize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %19, i32 0, i32 167
  %cond.in.i = select i1 %tobool.not.i97, ptr %sectorsize.i, ptr %nodesize.i
  %31 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %conv.i = zext i32 %cond.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %conv.i)
  %cmp18.i = icmp ugt i64 %28, %conv.i
  br i1 %cmp18.i, label %while.body.preheader.i, label %if.then21.if.end23_crit_edge

if.then21.if.end23_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

while.body.preheader.i:                           ; preds = %if.then21
  %start2.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 3
  %32 = ptrtoint ptr %start2.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %start2.i, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %len.020.i = phi i64 [ %34, %while.body.i.while.body.i_crit_edge ], [ %28, %while.body.preheader.i ]
  %start.019.i = phi i64 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ %33, %while.body.preheader.i ]
  %call.i = tail call i32 @btrfs_remove_free_space(ptr noundef %call, i64 noundef %start.019.i, i64 noundef %conv.i) #16
  %add.i = add i64 %start.019.i, %shl.i
  %34 = tail call i64 @llvm.usub.sat.i64(i64 %len.020.i, i64 %shl.i) #16
  %cmp.i = icmp ugt i64 %34, %conv.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.if.end23_crit_edge

while.body.i.if.end23_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end23:                                         ; preds = %while.body.i.if.end23_crit_edge, %if.then21.if.end23_crit_edge, %btrfs_should_fragment_free_space.exit.if.end23_crit_edge, %lor.rhs.i.if.end23_crit_edge
  %bytes_used.addr.0 = phi i64 [ %bytes_used, %btrfs_should_fragment_free_space.exit.if.end23_crit_edge ], [ %add22, %if.then21.if.end23_crit_edge ], [ %bytes_used, %lor.rhs.i.if.end23_crit_edge ], [ %add22, %while.body.i.if.end23_crit_edge ]
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %flags, align 8
  %call25 = tail call ptr @btrfs_find_space_info(ptr noundef %1, i64 noundef %36) #16
  %space_info = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 22
  %37 = ptrtoint ptr %space_info to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call25, ptr %space_info, align 8
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %cond.false, label %cond.end, !prof !172

cond.false:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.14, i32 noundef 2508) #19
  unreachable

cond.end:                                         ; preds = %if.end23
  %call30 = tail call fastcc i32 @btrfs_add_block_group_cache(ptr noundef %1, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @btrfs_remove_free_space_cache(ptr noundef %call) #16
  tail call void @btrfs_put_block_group(ptr noundef %call)
  %38 = inttoptr i32 %call30 to ptr
  br label %cleanup

if.end34:                                         ; preds = %cond.end
  tail call fastcc void @trace_btrfs_add_block_group(ptr noundef %1, ptr noundef %call, i32 noundef 1)
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %flags, align 8
  %bytes_super = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 9
  %41 = ptrtoint ptr %bytes_super to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %bytes_super, align 8
  %zone_unusable = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 47
  %43 = ptrtoint ptr %zone_unusable to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %zone_unusable, align 8
  tail call void @btrfs_update_space_info(ptr noundef %1, i64 noundef %40, i64 noundef %size, i64 noundef %bytes_used.addr.0, i64 noundef %42, i64 noundef %44, ptr noundef %space_info) #16
  tail call void @btrfs_update_global_block_rsv(ptr noundef %1) #16
  %45 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %space_info, align 8
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %flags, align 8
  %call.i99 = tail call i32 @btrfs_bg_flags_to_raid_index(i64 noundef %48) #22
  %groups_sem.i = getelementptr inbounds %struct.btrfs_space_info, ptr %46, i32 0, i32 21
  tail call void @down_write(ptr noundef %groups_sem.i) #16
  %list.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 25
  %arrayidx.i = getelementptr %struct.btrfs_space_info, ptr %46, i32 0, i32 22, i32 %call.i99
  %prev.i.i = getelementptr %struct.btrfs_space_info, ptr %46, i32 0, i32 22, i32 %call.i99, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %50, ptr noundef %arrayidx.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end34.link_block_group.exit_crit_edge

if.end34.link_block_group.exit_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %link_block_group.exit

if.end.i.i.i:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %list.i, ptr %prev.i.i, align 4
  %52 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 25, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %list.i, ptr %50, align 4
  br label %link_block_group.exit

link_block_group.exit:                            ; preds = %if.end.i.i.i, %if.end34.link_block_group.exit_crit_edge
  tail call void @up_write(ptr noundef %groups_sem.i) #16
  %bg_list = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 28
  %new_bgs = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 17
  %prev.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 17, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bg_list, ptr noundef %56, ptr noundef %new_bgs) #16
  br i1 %call.i.i, label %if.end.i.i, label %link_block_group.exit.list_add_tail.exit_crit_edge

link_block_group.exit.list_add_tail.exit_crit_edge: ; preds = %link_block_group.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %link_block_group.exit
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %bg_list, ptr %prev.i, align 4
  %58 = ptrtoint ptr %bg_list to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %new_bgs, ptr %bg_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call, i32 0, i32 28, i32 1
  %59 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %bg_list, ptr %56, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %link_block_group.exit.list_add_tail.exit_crit_edge
  %delayed_ref_updates = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 3
  %61 = ptrtoint ptr %delayed_ref_updates to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %delayed_ref_updates, align 8
  %inc = add i32 %62, 1
  store i32 %inc, ptr %delayed_ref_updates, align 8
  tail call void @btrfs_update_delayed_refs_rsv(ptr noundef %trans) #16
  tail call fastcc void @set_avail_alloc_bits(ptr noundef %1, i64 noundef %type)
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then32, %if.then15, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %16, %if.then9 ], [ %17, %if.then15 ], [ %38, %if.then32 ], [ %call, %list_add_tail.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @btrfs_create_block_group_cache(ptr noundef %fs_info, i64 noundef %start) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 672) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i43 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3392, i32 noundef 224) #21
  %free_space_ctl = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 23
  %2 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i43, ptr %free_space_ctl, align 4
  %tobool3.not = icmp eq ptr %call7.i.i43, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %start6 = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %start6 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %start, ptr %start6, align 8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fs_info, ptr %call7.i.i, align 8
  %call8 = tail call i32 @btrfs_full_stripe_len(ptr noundef %fs_info, i64 noundef %start) #16
  %full_stripe_len = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 15
  %5 = ptrtoint ptr %full_stripe_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call8, ptr %full_stripe_len, align 8
  %discard_index = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 32
  %6 = ptrtoint ptr %discard_index to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %discard_index, align 4
  %refs = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 26
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #16
  %7 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %refs, align 4
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.49, ptr noundef nonnull @btrfs_create_block_group_cache.__key, i16 noundef signext 3) #16
  %data_rwsem = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 14
  tail call void @__init_rwsem(ptr noundef %data_rwsem, ptr noundef nonnull @.str.51, ptr noundef nonnull @btrfs_create_block_group_cache.__key.50) #16
  %list = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 25
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 25, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i, align 8
  %cluster_list = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 27
  %10 = ptrtoint ptr %cluster_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %cluster_list, ptr %cluster_list, align 8
  %prev.i44 = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 27, i32 1
  %11 = ptrtoint ptr %prev.i44 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cluster_list, ptr %prev.i44, align 4
  %bg_list = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 28
  %12 = ptrtoint ptr %bg_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %bg_list, ptr %bg_list, align 8
  %prev.i45 = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 28, i32 1
  %13 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bg_list, ptr %prev.i45, align 4
  %ro_list = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 29
  %14 = ptrtoint ptr %ro_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %ro_list, ptr %ro_list, align 8
  %prev.i46 = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 29, i32 1
  %15 = ptrtoint ptr %prev.i46 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ro_list, ptr %prev.i46, align 4
  %discard_list = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 31
  %16 = ptrtoint ptr %discard_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %discard_list, ptr %discard_list, align 4
  %prev.i47 = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 31, i32 1
  %17 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %discard_list, ptr %prev.i47, align 8
  %dirty_list = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 36
  %18 = ptrtoint ptr %dirty_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %dirty_list, ptr %dirty_list, align 4
  %prev.i48 = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 36, i32 1
  %19 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dirty_list, ptr %prev.i48, align 8
  %io_list = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 37
  %20 = ptrtoint ptr %io_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %io_list, ptr %io_list, align 4
  %prev.i49 = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 37, i32 1
  %21 = ptrtoint ptr %prev.i49 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %io_list, ptr %prev.i49, align 8
  %active_bg_list = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 51
  %22 = ptrtoint ptr %active_bg_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %active_bg_list, ptr %active_bg_list, align 4
  %prev.i50 = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 51, i32 1
  %23 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %active_bg_list, ptr %prev.i50, align 8
  %24 = ptrtoint ptr %free_space_ctl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %free_space_ctl, align 4
  tail call void @btrfs_init_free_space_ctl(ptr noundef nonnull %call7.i.i, ptr noundef %25) #16
  %frozen = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 30
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frozen, i32 noundef 4) #16
  %26 = ptrtoint ptr %frozen to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %frozen, align 8
  %free_space_lock = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 41
  tail call void @__mutex_init(ptr noundef %free_space_lock, ptr noundef nonnull @.str.53, ptr noundef nonnull @btrfs_create_block_group_cache.__key.52) #16
  %full_stripe_locks_root = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 45
  %27 = ptrtoint ptr %full_stripe_locks_root to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %full_stripe_locks_root, align 8
  %lock.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call7.i.i, i32 0, i32 45, i32 1
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @btrfs_init_full_stripe_locks_tree.__key) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end5 ], [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_free_space_tree_thresholds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_load_block_group_zone_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btrfs_zone_activate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exclude_super_stripes(ptr nocapture noundef %cache) unnamed_addr #0 align 64 {
entry:
  %logical = alloca ptr, align 4
  %stripe_len = alloca i32, align 4
  %nr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 8
  %2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 176
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.i.not = icmp eq i64 %4, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %logical) #16
  %5 = ptrtoint ptr %logical to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %logical, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stripe_len) #16
  %6 = ptrtoint ptr %stripe_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %stripe_len, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr) #16
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %nr, align 4, !annotation !183
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %8 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %9)
  %cmp = icmp ult i64 %9, 65536
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then:                                          ; preds = %entry
  %10 = trunc i64 %9 to i32
  %conv = sub nuw nsw i32 65536, %10
  %11 = ptrtoint ptr %stripe_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %stripe_len, align 4
  %12 = zext i32 %conv to i64
  %bytes_super = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 9
  %13 = ptrtoint ptr %bytes_super to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bytes_super, align 8
  %add = add i64 %14, %12
  store i64 %add, ptr %bytes_super, align 8
  %call6 = tail call i32 @btrfs_add_excluded_extent(ptr noundef %1, i64 noundef %9, i64 noundef %12) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then.if.end8_crit_edge, label %if.then.cleanup37_crit_edge

if.then.cleanup37_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup37

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %bytes_super30 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %if.end8
  %i.073 = phi i32 [ 0, %if.end8 ], [ %inc, %while.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.073)
  %tobool.not.i = icmp eq i32 %i.073, 0
  %mul.i = mul nuw nsw i32 %i.073, 12
  %sh_prom.i = zext i32 %mul.i to i64
  %shl.i = shl i64 16384, %sh_prom.i
  %retval.0.i = select i1 %tobool.not.i, i64 65536, i64 %shl.i
  %15 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %start, align 8
  %call13 = call i32 @btrfs_rmap_block(ptr noundef %1, i64 noundef %16, ptr noundef null, i64 noundef %retval.0.i, ptr noundef nonnull %logical, ptr noundef nonnull %nr, ptr noundef nonnull %stripe_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %for.body.cleanup37_crit_edge

for.body.cleanup37_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup37

if.end16:                                         ; preds = %for.body
  br i1 %cmp.i.not, label %if.end16.if.end22_crit_edge, label %land.lhs.true

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end16
  %17 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end22_crit_edge, label %if.then20

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %start, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.55, i64 noundef %20) #20
  br label %cleanup37

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end16.if.end22_crit_edge
  %21 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %21)
  %nr.promoted = load i32, ptr %nr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end22
  %dec71 = phi i32 [ %dec, %while.body.while.cond_crit_edge ], [ %nr.promoted, %if.end22 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec71)
  %tobool23.not = icmp eq i32 %dec71, 0
  br i1 %tobool23.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %dec = add i32 %dec71, -1
  %22 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stripe_len, align 4
  %conv24 = sext i32 %23 to i64
  %24 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %start, align 8
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %length, align 8
  %add26 = add i64 %27, %25
  %28 = ptrtoint ptr %logical to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %logical, align 4
  %arrayidx = getelementptr i64, ptr %29, i32 %dec
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx, align 8
  %sub27 = sub i64 %add26, %31
  %32 = tail call i64 @llvm.umin.i64(i64 %sub27, i64 %conv24)
  %33 = ptrtoint ptr %bytes_super30 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %bytes_super30, align 8
  %add31 = add i64 %32, %34
  store i64 %add31, ptr %bytes_super30, align 8
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx, align 8
  %call33 = tail call i32 @btrfs_add_excluded_extent(ptr noundef %1, i64 noundef %36, i64 noundef %32) #16
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %while.body.while.cond_crit_edge, label %cleanup.thread

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef %29) #16
  br label %cleanup37

while.end:                                        ; preds = %while.cond
  %37 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %nr, align 4
  %38 = ptrtoint ptr %logical to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %logical, align 4
  tail call void @kfree(ptr noundef %39) #16
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %while.end.cleanup37_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

while.end.cleanup37_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup37

cleanup37:                                        ; preds = %while.end.cleanup37_crit_edge, %cleanup.thread, %if.then20, %for.body.cleanup37_crit_edge, %if.then.cleanup37_crit_edge
  %retval.3 = phi i32 [ -117, %if.then20 ], [ %call6, %if.then.cleanup37_crit_edge ], [ %call33, %cleanup.thread ], [ 0, %while.end.cleanup37_crit_edge ], [ %call13, %for.body.cleanup37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stripe_len) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %logical) #16
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_find_space_info(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btrfs_add_block_group_cache(ptr noundef %info, ptr noundef %block_group) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %cond.false, label %cond.end, !prof !172

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.56, i32 noundef 172) #19
  unreachable

cond.end:                                         ; preds = %entry
  %block_group_cache_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %block_group_cache_lock) #16
  %block_group_cache_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 16
  %2 = ptrtoint ptr %block_group_cache_tree to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block_group_cache_tree, align 4
  %tobool2.not46 = icmp eq ptr %3, null
  br i1 %tobool2.not46, label %cond.end.while.end_crit_edge, label %while.body.lr.ph

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %cond.end
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  br label %while.body

while.body:                                       ; preds = %if.end11.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %3, %while.body.lr.ph ], [ %10, %if.end11.while.body_crit_edge ]
  %start3 = getelementptr i8, ptr %6, i32 -216
  %7 = ptrtoint ptr %start3 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %8)
  %cmp4 = icmp ult i64 %5, %8
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2
  br label %if.end11

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %8)
  %cmp7 = icmp ugt i64 %5, %8
  br i1 %cmp7, label %if.then8, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then
  %p.1 = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then8 ]
  %9 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p.1, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %while.cond.while.end_crit_edge, label %if.end11.while.body_crit_edge

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %phi.cast.le = ptrtoint ptr %6 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %cond.end.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %cond.end.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %block_group_cache_tree, %cond.end.while.end_crit_edge ]
  %cache_node = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 24
  %11 = ptrtoint ptr %cache_node to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %parent.0.lcssa, ptr %cache_node, align 4
  %rb_right.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 24, i32 1
  %12 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 24, i32 2
  %13 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rb_left.i, align 4
  %14 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cache_node, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %cache_node, ptr noundef %block_group_cache_tree) #16
  %first_logical_byte = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 15
  %15 = ptrtoint ptr %first_logical_byte to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %first_logical_byte, align 8
  %start14 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 3
  %17 = ptrtoint ptr %start14 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start14, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp15 = icmp ugt i64 %16, %18
  br i1 %cmp15, label %if.then16, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then16:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %first_logical_byte to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %first_logical_byte, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %while.end.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then16 ], [ 0, %while.end.cleanup_crit_edge ], [ -17, %if.else.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %block_group_cache_lock) #16
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_add_block_group(ptr noundef %fs_info, ptr noundef %block_group, i32 noundef %create) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_add_block_group, i32 0, i32 1), ptr blockaddress(@trace_btrfs_add_block_group, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !190

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !173

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !206
  %call42 = tail call i32 @__traceiter_btrfs_add_block_group(ptr noundef null, ptr noundef %fs_info, ptr noundef %block_group, i32 noundef %create) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !207
  %13 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !173

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_add_block_group, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_add_block_group, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_add_block_group.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_btrfs_add_block_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 768, ptr noundef nonnull @.str.31) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !194
  %31 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
declare dso_local void @btrfs_update_space_info(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_update_global_block_rsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_update_delayed_refs_rsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_avail_alloc_bits(ptr noundef %fs_info, i64 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i64 %flags, 2040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp.i = icmp eq i64 %and.i, 0
  %or.i = or i64 %flags, 281474976710656
  %spec.select.i = select i1 %cmp.i, i64 %or.i, i64 %flags
  %and = and i64 %spec.select.i, 281474976712696
  %profiles_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 109
  %lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 109, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #16
  %0 = ptrtoint ptr %profiles_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %profiles_lock, align 4
  %inc.i.i.i.i = add i32 %1, 1
  store i32 %inc.i.i.i.i, ptr %profiles_lock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !188
  %dep_map.i.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 109, i32 0, i32 0, i32 1
  %2 = tail call ptr @llvm.returnaddress(i32 0) #16
  %3 = ptrtoint ptr %2 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %3) #16
  %and1 = and i64 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool.not = icmp eq i64 %and1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %avail_data_alloc_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 110
  %4 = ptrtoint ptr %avail_data_alloc_bits to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %avail_data_alloc_bits, align 8
  %or = or i64 %5, %and
  store i64 %or, ptr %avail_data_alloc_bits, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i64 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %avail_metadata_alloc_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 111
  %6 = ptrtoint ptr %avail_metadata_alloc_bits to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %avail_metadata_alloc_bits, align 8
  %or5 = or i64 %7, %and
  store i64 %or5, ptr %avail_metadata_alloc_bits, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %and7 = and i64 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %avail_system_alloc_bits = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 112
  %8 = ptrtoint ptr %avail_system_alloc_bits to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %avail_system_alloc_bits, align 8
  %or10 = or i64 %9, %and
  store i64 %or10, ptr %avail_system_alloc_bits, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %3) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !189
  %10 = ptrtoint ptr %profiles_lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %profiles_lock, align 4
  %inc.i.i.i = add i32 %11, 1
  store i32 %inc.i.i.i, ptr %profiles_lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_inc_block_group_ro(ptr noundef %cache, i1 noundef zeroext %do_chunk_alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 8
  %call.i = tail call ptr @btrfs_extent_root(ptr noundef %1, i64 noundef 0) #16
  %sb = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sb, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %ro_block_group_mutex10 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 51
  br i1 %tobool.i.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_lock_nested(ptr noundef %ro_block_group_mutex10, i32 noundef 0) #16
  %call3 = tail call fastcc i32 @inc_block_group_ro(ptr noundef %cache, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %ro_block_group_mutex10) #16
  br label %cleanup64

do.body:                                          ; preds = %if.then12.do.body_crit_edge, %entry.do.body_crit_edge
  %call5 = tail call ptr @btrfs_join_transaction(ptr noundef %call.i) #16
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %call5 to i32
  br label %cleanup64

if.end9:                                          ; preds = %do.body
  tail call void @mutex_lock_nested(ptr noundef %ro_block_group_mutex10, i32 noundef 0) #16
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call5, i32 0, i32 4
  %7 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transaction, align 4
  %flags = getelementptr inbounds %struct.btrfs_transaction, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %do.end, label %if.then12

if.then12:                                        ; preds = %if.end9
  %12 = ptrtoint ptr %call5 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %call5, align 8
  tail call void @mutex_unlock(ptr noundef %ro_block_group_mutex10) #16
  %call15 = tail call i32 @btrfs_end_transaction(ptr noundef %call5) #16
  %call16 = tail call i32 @btrfs_wait_for_commit(ptr noundef %1, i64 noundef %13) #16
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then12.do.body_crit_edge, label %if.then12.cleanup64_crit_edge

if.then12.cleanup64_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup64

if.then12.do.body_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.end:                                           ; preds = %if.end9
  br i1 %do_chunk_alloc, label %if.then23, label %if.end36

if.then23:                                        ; preds = %do.end
  %flags24 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 10
  %14 = ptrtoint ptr %flags24 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %flags24, align 8
  %call25 = tail call i64 @btrfs_get_alloc_profile(ptr noundef %1, i64 noundef %15)
  %16 = ptrtoint ptr %flags24 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %flags24, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call25, i64 %17)
  %cmp.not = icmp eq i64 %call25, %17
  br i1 %cmp.not, label %if.then23.lor.lhs.false_crit_edge, label %if.then27

if.then23.lor.lhs.false_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

if.then27:                                        ; preds = %if.then23
  %call28 = tail call i32 @btrfs_chunk_alloc(ptr noundef %call5, i64 noundef %call25, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call28)
  %cmp29 = icmp ne i32 %call28, -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp32115 = icmp slt i32 %call28, 0
  %cmp32 = and i1 %cmp29, %cmp32115
  br i1 %cmp32, label %if.then27.out_crit_edge, label %if.then27.lor.lhs.false_crit_edge

if.then27.lor.lhs.false_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

if.then27.out_crit_edge:                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end36:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call37 = tail call fastcc i32 @inc_block_group_ro(ptr noundef %cache, i32 noundef 0)
  br label %unlock_out

lor.lhs.false:                                    ; preds = %if.then27.lor.lhs.false_crit_edge, %if.then23.lor.lhs.false_crit_edge
  %call37113 = tail call fastcc i32 @inc_block_group_ro(ptr noundef %cache, i32 noundef 0)
  %18 = zext i32 %call37113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %call37113, label %if.end44 [
    i32 -26, label %lor.lhs.false.unlock_out_crit_edge
    i32 0, label %lor.lhs.false.out_crit_edge
  ]

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

lor.lhs.false.unlock_out_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock_out

if.end44:                                         ; preds = %lor.lhs.false
  %space_info = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 22
  %19 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %space_info, align 8
  %flags45 = getelementptr inbounds %struct.btrfs_space_info, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %flags45 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %flags45, align 8
  %call46 = tail call i64 @btrfs_get_alloc_profile(ptr noundef %1, i64 noundef %22), !range !208
  %call47 = tail call i32 @btrfs_chunk_alloc(ptr noundef %call5, i64 noundef %call46, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end44.out_crit_edge, label %if.end50

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end50:                                         ; preds = %if.end44
  %call51 = tail call fastcc i32 @inc_block_group_ro(ptr noundef %cache, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -26, i32 %call51)
  %cmp52 = icmp eq i32 %call51, -26
  br i1 %cmp52, label %if.end50.unlock_out_crit_edge, label %if.end50.out_crit_edge

if.end50.out_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end50.unlock_out_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock_out

out:                                              ; preds = %if.end50.out_crit_edge, %if.end44.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.then27.out_crit_edge
  %ret.0 = phi i32 [ %call28, %if.then27.out_crit_edge ], [ %call47, %if.end44.out_crit_edge ], [ %call51, %if.end50.out_crit_edge ], [ %call37113, %lor.lhs.false.out_crit_edge ]
  %23 = ptrtoint ptr %flags24 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %flags24, align 8
  %and = and i64 %24, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool56.not = icmp eq i64 %and, 0
  br i1 %tobool56.not, label %out.unlock_out_crit_edge, label %if.then57

out.unlock_out_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock_out

if.then57:                                        ; preds = %out
  %call59 = tail call i64 @btrfs_get_alloc_profile(ptr noundef %1, i64 noundef %24)
  %chunk_mutex = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 50
  tail call void @mutex_lock_nested(ptr noundef %chunk_mutex, i32 noundef 0) #16
  %fs_info1.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %call5, i32 0, i32 16
  %25 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fs_info1.i, align 4
  %call.i.i = tail call i32 @btrfs_bg_flags_to_raid_index(i64 noundef %call59) #22
  %devs_max.i.i = getelementptr [9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 %call.i.i, i32 2
  %27 = ptrtoint ptr %devs_max.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %devs_max.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i = icmp eq i8 %28, 0
  %extract.t.i = zext i8 %28 to i32
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then57.check_system_chunk.exit_crit_edge

if.then57.check_system_chunk.exit_crit_edge:      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_system_chunk.exit

if.then.i.i:                                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #18
  %fs_devices.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %26, i32 0, i32 100
  %29 = ptrtoint ptr %fs_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fs_devices.i.i, align 8
  %rw_devices.i.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %rw_devices.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %rw_devices.i.i, align 8
  %extract.t11.i = trunc i64 %32 to i32
  br label %check_system_chunk.exit

check_system_chunk.exit:                          ; preds = %if.then.i.i, %if.then57.check_system_chunk.exit_crit_edge
  %num_dev.0.i.off0.i = phi i32 [ %extract.t.i, %if.then57.check_system_chunk.exit_crit_edge ], [ %extract.t11.i, %if.then.i.i ]
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %26, i32 0, i32 166
  %33 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nodesize.i.i, align 8
  %conv.i8.i = zext i32 %34 to i64
  %conv1.i.i = zext i32 %num_dev.0.i.off0.i to i64
  %mul.i.i = shl nuw nsw i64 %conv1.i.i, 3
  %mul2.i12.i = add nuw nsw i64 %mul.i.i, 16
  %add.i = mul i64 %mul2.i12.i, %conv.i8.i
  tail call fastcc void @reserve_chunk_space(ptr noundef %call5, i64 noundef %add.i, i64 noundef %call59) #16
  tail call void @mutex_unlock(ptr noundef %chunk_mutex) #16
  br label %unlock_out

unlock_out:                                       ; preds = %check_system_chunk.exit, %out.unlock_out_crit_edge, %if.end50.unlock_out_crit_edge, %lor.lhs.false.unlock_out_crit_edge, %if.end36
  %ret.1 = phi i32 [ %ret.0, %check_system_chunk.exit ], [ %ret.0, %out.unlock_out_crit_edge ], [ %call37113, %lor.lhs.false.unlock_out_crit_edge ], [ -26, %if.end50.unlock_out_crit_edge ], [ %call37, %if.end36 ]
  tail call void @mutex_unlock(ptr noundef %ro_block_group_mutex10) #16
  %call63 = tail call i32 @btrfs_end_transaction(ptr noundef %call5) #16
  br label %cleanup64

cleanup64:                                        ; preds = %unlock_out, %if.then12.cleanup64_crit_edge, %if.then7, %if.then
  %retval.3 = phi i32 [ %call3, %if.then ], [ %6, %if.then7 ], [ %ret.1, %unlock_out ], [ %call16, %if.then12.cleanup64_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_join_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_wait_for_commit(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_chunk_alloc(ptr noundef %trans, i64 noundef %flags, i32 noundef %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %allocating_chunk = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 12
  %2 = ptrtoint ptr %allocating_chunk to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %allocating_chunk, align 1, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %and = and i64 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool2.not = icmp eq i64 %and, 0
  %or.cond = and i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %entry
  %call = tail call ptr @btrfs_find_space_info(ptr noundef %1, i64 noundef %flags) #16
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %cond.false, label %do.body.preheader, !prof !172

do.body.preheader:                                ; preds = %if.end4
  %force_alloc = getelementptr inbounds %struct.btrfs_space_info, ptr %call, i32 0, i32 11
  %super_copy.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 43
  %total_bytes.i = getelementptr inbounds %struct.btrfs_space_info, ptr %call, i32 0, i32 1
  %full = getelementptr inbounds %struct.btrfs_space_info, ptr %call, i32 0, i32 10
  %chunk_mutex = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 50
  br label %do.body

cond.false:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.17, i32 noundef 3662) #19
  unreachable

do.body:                                          ; preds = %if.then28, %do.body.preheader
  %force.addr.0 = phi i32 [ %6, %if.then28 ], [ %force, %do.body.preheader ]
  tail call void @_raw_spin_lock(ptr noundef nonnull %call) #16
  %4 = ptrtoint ptr %force_alloc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %force_alloc, align 8
  %6 = tail call i32 @llvm.umax.i32(i32 %force.addr.0, i32 %5)
  %call.i = tail call i64 @btrfs_space_info_used(ptr noundef nonnull %call, i1 noundef zeroext false) #23
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %6, label %do.body.if.end9.i_crit_edge [
    i32 2, label %do.body.should_alloc_chunk.exit_crit_edge
    i32 1, label %if.then2.i
  ]

do.body.should_alloc_chunk.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %should_alloc_chunk.exit

do.body.if.end9.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then2.i:                                       ; preds = %do.body
  %8 = ptrtoint ptr %super_copy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %super_copy.i, align 8
  %total_bytes.i.i = getelementptr inbounds %struct.btrfs_super_block, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %total_bytes.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %total_bytes.i.i, align 1
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #16
  %13 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %12, i32 0) #24, !srcloc !210
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %13, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %13, 1
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %12, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #24, !srcloc !211
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %14, 0
  %div158.i.i1.i.i = lshr i64 %asmresult10.i.i.i.i.i, 6
  %15 = tail call i64 @llvm.umax.i64(i64 %div158.i.i1.i.i, i64 67108864) #16
  %16 = ptrtoint ptr %total_bytes.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %total_bytes.i, align 8
  %sub.i = sub i64 %17, %call.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %15)
  %cmp6.i = icmp ult i64 %sub.i, %15
  br i1 %cmp6.i, label %if.then2.i.should_alloc_chunk.exit_crit_edge, label %if.then2.i.if.end9.i_crit_edge

if.then2.i.if.end9.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then2.i.should_alloc_chunk.exit_crit_edge:     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %should_alloc_chunk.exit

if.end9.i:                                        ; preds = %if.then2.i.if.end9.i_crit_edge, %do.body.if.end9.i_crit_edge
  %add.i = add i64 %call.i, 2097152
  %18 = ptrtoint ptr %total_bytes.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %total_bytes.i, align 8
  %20 = shl i64 %19, 2
  %div79.i.i1.i.i = and i64 %20, 9223372036854775804
  %21 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79.i.i1.i.i, i64 3689348814741910323) #24, !srcloc !212
  %22 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79.i.i1.i.i, i64 %21) #24, !srcloc !213
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %22)
  %cmp12.i = icmp uge i64 %add.i, %22
  %..i = zext i1 %cmp12.i to i32
  br label %should_alloc_chunk.exit

should_alloc_chunk.exit:                          ; preds = %if.end9.i, %if.then2.i.should_alloc_chunk.exit_crit_edge, %do.body.should_alloc_chunk.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %do.body.should_alloc_chunk.exit_crit_edge ], [ 1, %if.then2.i.should_alloc_chunk.exit_crit_edge ], [ %..i, %if.end9.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool12.not = icmp eq i32 %retval.0.i, 0
  %23 = ptrtoint ptr %full to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %full, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool13.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool13.not, label %if.else19, label %if.then14

if.then14:                                        ; preds = %should_alloc_chunk.exit
  call void @__sanitizer_cov_trace_pc() #18
  %. = select i1 %tobool12.not, i32 0, i32 -28
  tail call void @_raw_spin_unlock(ptr noundef nonnull %call) #16
  br label %cleanup

if.else19:                                        ; preds = %should_alloc_chunk.exit
  br i1 %tobool12.not, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef nonnull %call) #16
  br label %cleanup

if.else23:                                        ; preds = %if.else19
  %24 = and i8 %bf.load, 64
  %tobool27.not = icmp eq i8 %24, 0
  br i1 %tobool27.not, label %if.else31, label %if.then28

if.then28:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef nonnull %call) #16
  tail call void @mutex_lock_nested(ptr noundef %chunk_mutex, i32 noundef 0) #16
  tail call void @mutex_unlock(ptr noundef %chunk_mutex) #16
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 3698, i32 noundef 0) #16
  %call.i123 = tail call i32 @__cond_resched() #16
  br label %do.body

if.else31:                                        ; preds = %if.else23
  %bf.set = or i8 %bf.load, 64
  %25 = ptrtoint ptr %full to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %bf.set, ptr %full, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull %call) #16
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 3698, i32 noundef 0) #16
  %call.i124 = tail call i32 @__cond_resched() #16
  tail call void @mutex_lock_nested(ptr noundef %chunk_mutex, i32 noundef 0) #16
  %26 = ptrtoint ptr %allocating_chunk to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %allocating_chunk, align 1
  %flags.i = getelementptr inbounds %struct.btrfs_space_info, ptr %call, i32 0, i32 14
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %flags.i, align 8
  %29 = and i64 %28, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %29)
  %30 = icmp eq i64 %29, 5
  %or = or i64 %flags, 5
  %flags.addr.0 = select i1 %30, i64 %or, i64 %flags
  %and46 = and i64 %flags.addr.0, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and46)
  %tobool47.not = icmp eq i64 %and46, 0
  br i1 %tobool47.not, label %if.else31.if.end55_crit_edge, label %land.lhs.true

if.else31.if.end55_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

land.lhs.true:                                    ; preds = %if.else31
  %metadata_ratio = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 121
  %31 = ptrtoint ptr %metadata_ratio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %metadata_ratio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool48.not = icmp eq i32 %32, 0
  br i1 %tobool48.not, label %land.lhs.true.if.end55_crit_edge, label %if.then49

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

if.then49:                                        ; preds = %land.lhs.true
  %data_chunk_allocations = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 120
  %33 = ptrtoint ptr %data_chunk_allocations to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_chunk_allocations, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %data_chunk_allocations, align 4
  %rem = urem i32 %inc, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool52.not = icmp eq i32 %rem, 0
  br i1 %tobool52.not, label %if.then53, label %if.then49.if.end55_crit_edge

if.then49.if.end55_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

if.then53:                                        ; preds = %if.then49
  %space_info.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 101
  %35 = ptrtoint ptr %space_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn10.i = load ptr, ptr %space_info.i, align 4
  %cmp.not11.i = icmp eq ptr %.pn10.i, %space_info.i
  br i1 %cmp.not11.i, label %if.then53.if.end55_crit_edge, label %if.then53.for.body.i_crit_edge

if.then53.for.body.i_crit_edge:                   ; preds = %if.then53
  br label %for.body.i

if.then53.if.end55_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then53.for.body.i_crit_edge
  %.pn12.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn10.i, %if.then53.for.body.i_crit_edge ]
  %flags.i125 = getelementptr i8, ptr %.pn12.i, i32 -8
  %36 = ptrtoint ptr %flags.i125 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %flags.i125, align 8
  %and.i = and i64 %37, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %force_alloc.i = getelementptr i8, ptr %.pn12.i, i32 -32
  %38 = ptrtoint ptr %force_alloc.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %force_alloc.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %39 = ptrtoint ptr %.pn12.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i = load ptr, ptr %.pn12.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %space_info.i
  br i1 %cmp.not.i, label %for.inc.i.if.end55_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.if.end55_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

if.end55:                                         ; preds = %for.inc.i.if.end55_crit_edge, %if.then53.if.end55_crit_edge, %if.then49.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge, %if.else31.if.end55_crit_edge
  %call56 = tail call fastcc i32 @do_chunk_alloc(ptr noundef %trans, i64 noundef %flags.addr.0)
  %40 = ptrtoint ptr %allocating_chunk to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %allocating_chunk, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp59 = icmp slt i32 %call56, 0
  br i1 %cmp59, label %if.then60, label %if.else69

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call56)
  %cmp61 = icmp eq i32 %call56, -28
  br i1 %cmp61, label %if.then62, label %if.then60.out_crit_edge

if.then60.out_crit_edge:                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then62:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %full to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load64 = load i8, ptr %full, align 4
  %bf.set66 = or i8 %bf.load64, -128
  store i8 %bf.set66, ptr %full, align 4
  br label %if.end70

if.else69:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  %max_extent_size = getelementptr inbounds %struct.btrfs_space_info, ptr %call, i32 0, i32 8
  %42 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %max_extent_size, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.else69, %if.then62
  %ret.1 = phi i32 [ -28, %if.then62 ], [ 1, %if.else69 ]
  %43 = ptrtoint ptr %force_alloc to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %force_alloc, align 8
  br label %out

out:                                              ; preds = %if.end70, %if.then60.out_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.end70 ], [ %call56, %if.then60.out_crit_edge ]
  %44 = ptrtoint ptr %full to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load73 = load i8, ptr %full, align 4
  %bf.clear74 = and i8 %bf.load73, -65
  store i8 %bf.clear74, ptr %full, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull %call) #16
  tail call void @mutex_unlock(ptr noundef %chunk_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then21, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.then14 ], [ %ret.2, %out ], [ 0, %if.then21 ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @check_system_chunk(ptr noundef %trans, i64 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %call.i = tail call i32 @btrfs_bg_flags_to_raid_index(i64 noundef %type) #22
  %devs_max.i = getelementptr [9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 %call.i, i32 2
  %2 = ptrtoint ptr %devs_max.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %devs_max.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %extract.t = zext i8 %3 to i32
  br i1 %tobool.not.i, label %if.then.i, label %entry.get_profile_num_devs.exit_crit_edge

entry.get_profile_num_devs.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_profile_num_devs.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %fs_devices.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 100
  %4 = ptrtoint ptr %fs_devices.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_devices.i, align 8
  %rw_devices.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %rw_devices.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rw_devices.i, align 8
  %extract.t11 = trunc i64 %7 to i32
  br label %get_profile_num_devs.exit

get_profile_num_devs.exit:                        ; preds = %if.then.i, %entry.get_profile_num_devs.exit_crit_edge
  %num_dev.0.i.off0 = phi i32 [ %extract.t, %entry.get_profile_num_devs.exit_crit_edge ], [ %extract.t11, %if.then.i ]
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %8 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nodesize.i, align 8
  %conv.i8 = zext i32 %9 to i64
  %conv1.i = zext i32 %num_dev.0.i.off0 to i64
  %mul.i = shl nuw nsw i64 %conv1.i, 3
  %mul2.i12 = add nuw nsw i64 %mul.i, 16
  %add = mul i64 %mul2.i12, %conv.i8
  tail call fastcc void @reserve_chunk_space(ptr noundef %trans, i64 noundef %add, i64 noundef %type)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_setup_space_cache(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %2 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transaction, align 4
  %dirty_bgs = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dirty_bgs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %dirty_bgs, align 4
  %cmp.i.not = icmp eq ptr %5, %dirty_bgs
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mount_opt, align 8
  %and = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call ptr @btrfs_alloc_path() #16
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %dirty_bgs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dirty_bgs, align 8
  %cmp.not41 = icmp eq ptr %9, %dirty_bgs
  br i1 %cmp.not41, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %.pn.in42 = phi ptr [ %.pn44, %for.inc.for.body_crit_edge ], [ %9, %if.end6.for.body_crit_edge ]
  %10 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn44 = load ptr, ptr %.pn.in42, align 4
  %disk_cache_state = getelementptr i8, ptr %.pn.in42, i32 -112
  %11 = ptrtoint ptr %disk_cache_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %disk_cache_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp15 = icmp eq i32 %12, 2
  br i1 %cmp15, label %if.then16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %cache.043 = getelementptr i8, ptr %.pn.in42, i32 -356
  tail call fastcc void @cache_save_setup(ptr noundef %cache.043, ptr noundef %trans, ptr noundef nonnull %call3)
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn44, %dirty_bgs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end6.for.end_crit_edge
  tail call void @btrfs_free_path(ptr noundef nonnull %call3) #16
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cache_save_setup(ptr noundef %block_group, ptr noundef %trans, ptr noundef %path) unnamed_addr #0 align 64 {
entry:
  %data_reserved = alloca ptr, align 4
  %alloc_hint = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %block_group, align 8
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tree_root, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_reserved) #16
  %4 = ptrtoint ptr %data_reserved to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %data_reserved, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %alloc_hint) #16
  %5 = ptrtoint ptr %alloc_hint to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %alloc_hint, align 8
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mount_opt, align 8
  %and = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 4
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 104857600, i64 %9)
  %cmp = icmp ult i64 %9, 104857600
  br i1 %cmp, label %if.then2, label %do.end

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %disk_cache_state = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 18
  %10 = ptrtoint ptr %disk_cache_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %disk_cache_state, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %cleanup

do.end:                                           ; preds = %if.end
  %aborted = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 10
  %11 = ptrtoint ptr %aborted to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load volatile i16, ptr %aborted, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool5.not = icmp eq i16 %12, 0
  br i1 %tobool5.not, label %again.preheader, label %do.end.cleanup_crit_edge, !prof !173

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

again.preheader:                                  ; preds = %do.end
  %ro = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 16
  %call = tail call ptr @lookup_free_space_inode(ptr noundef %block_group, ptr noundef %path) #16
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true, label %again.preheader.if.end43_crit_edge

again.preheader.if.end43_crit_edge:               ; preds = %again.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

land.lhs.true:                                    ; preds = %again.preheader
  %cmp12.not = icmp eq ptr %call, inttoptr (i32 -2 to ptr)
  br i1 %cmp12.not, label %do.body18, label %land.lhs.true.if.then13_crit_edge

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then13

if.then13:                                        ; preds = %land.lhs.true.1.if.then13_crit_edge, %land.lhs.true.if.then13_crit_edge
  tail call void @btrfs_release_path(ptr noundef %path) #16
  br label %out

do.body18:                                        ; preds = %land.lhs.true
  %13 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool36.not = icmp eq i32 %14, 0
  br i1 %tobool36.not, label %if.end38, label %do.body18.out_free_crit_edge

do.body18.out_free_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

do.body27:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/block-group.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2745, 0\0A.popsection", ""() #16, !srcloc !214
  unreachable

if.end38:                                         ; preds = %do.body18
  %call39 = tail call i32 @create_free_space_inode(ptr noundef %trans, ptr noundef %block_group, ptr noundef %path) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %again.1, label %if.end38.out_free_crit_edge

if.end38.out_free_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

again.1:                                          ; preds = %if.end38
  %call.1 = tail call ptr @lookup_free_space_inode(ptr noundef %block_group, ptr noundef %path) #16
  %cmp.i.1 = icmp ugt ptr %call.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %land.lhs.true.1, label %again.1.if.end43_crit_edge

again.1.if.end43_crit_edge:                       ; preds = %again.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

land.lhs.true.1:                                  ; preds = %again.1
  %cmp12.not.1 = icmp eq ptr %call.1, inttoptr (i32 -2 to ptr)
  br i1 %cmp12.not.1, label %do.body27, label %land.lhs.true.1.if.then13_crit_edge

land.lhs.true.1.if.then13_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then13

if.end43:                                         ; preds = %again.1.if.end43_crit_edge, %again.preheader.if.end43_crit_edge
  %call.lcssa = phi ptr [ %call, %again.preheader.if.end43_crit_edge ], [ %call.1, %again.1.if.end43_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call.lcssa, i32 -864
  %generation = getelementptr i8, ptr %call.lcssa, i32 -344
  %15 = ptrtoint ptr %generation to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %generation, align 8
  %call46 = tail call i32 @btrfs_update_inode(ptr noundef %trans, ptr noundef %3, ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end126, label %do.body49

do.body49:                                        ; preds = %if.end43
  %fs_info50 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %16 = ptrtoint ptr %fs_info50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fs_info50, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %17, i32 0, i32 149
  %call51 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %do.body49.if.end99_crit_edge

do.body49.if.end99_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

if.then53:                                        ; preds = %do.body49
  %18 = zext i32 %call46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %call46, label %do.end69 [
    i32 -5, label %if.then53.do.body83_crit_edge
    i32 -30, label %if.then53.do.body83_crit_edge44
  ]

if.then53.do.body83_crit_edge44:                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body83

if.then53.do.body83_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body83

do.end69:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2775, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %call46) #16
  br label %if.end99

do.body83:                                        ; preds = %if.then53.do.body83_crit_edge, %if.then53.do.body83_crit_edge44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cache_save_setup.__UNIQUE_ID_ddebug937, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cache_save_setup, %if.then93)) #16
          to label %if.end99 [label %if.then93], !srcloc !190

if.then93:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %fs_info50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fs_info50, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %20, ptr noundef nonnull @.str.13, i32 noundef %call46) #20
  br label %if.end99

if.end99:                                         ; preds = %if.then93, %do.body83, %do.end69, %do.body49.if.end99_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.57, i32 noundef 2775, i32 noundef %call46) #20
  br label %out_put

if.end126:                                        ; preds = %if.end43
  %cache_generation = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 11
  %21 = ptrtoint ptr %cache_generation to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %cache_generation, align 8
  %23 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %24)
  %cmp134 = icmp eq i64 %22, %24
  br i1 %cmp134, label %land.lhs.true135, label %if.end126.if.end139_crit_edge

if.end126.if.end139_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end139

land.lhs.true135:                                 ; preds = %if.end126
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %call.lcssa, i32 0, i32 23
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %call.lcssa, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %land.lhs.true135
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %i_size_seqcount.i) #16
  %25 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %do.body.i.while.end.i_crit_edge, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  br label %do.end.i

do.body.i.while.end.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !215
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !216
  %27 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %28, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %do.body.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %26, %do.body.i.while.end.i_crit_edge ], [ %28, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !217
  %29 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !170
  %31 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %32, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool137.not = icmp eq i64 %30, 0
  br i1 %tobool137.not, label %i_size_read.exit.if.end139_crit_edge, label %i_size_read.exit.out_put_crit_edge

i_size_read.exit.out_put_crit_edge:               ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put

i_size_read.exit.if.end139_crit_edge:             ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end139

if.end139:                                        ; preds = %i_size_read.exit.if.end139_crit_edge, %if.end126.if.end139_crit_edge
  %i_size_seqcount.i3 = getelementptr inbounds %struct.inode, ptr %call.lcssa, i32 0, i32 23
  %i_size18.i4 = getelementptr inbounds %struct.inode, ptr %call.lcssa, i32 0, i32 14
  br label %do.body.i7

do.body.i7:                                       ; preds = %while.end.i13.do.body.i7_crit_edge, %if.end139
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %i_size_seqcount.i3) #16
  %33 = ptrtoint ptr %i_size_seqcount.i3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %i_size_seqcount.i3, align 4
  %and29.i5 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i5)
  %tobool.not30.i6 = icmp eq i32 %and29.i5, 0
  br i1 %tobool.not30.i6, label %do.body.i7.while.end.i13_crit_edge, label %do.body.i7.do.end.i10_crit_edge

do.body.i7.do.end.i10_crit_edge:                  ; preds = %do.body.i7
  br label %do.end.i10

do.body.i7.while.end.i13_crit_edge:               ; preds = %do.body.i7
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i13

do.end.i10:                                       ; preds = %do.end.i10.do.end.i10_crit_edge, %do.body.i7.do.end.i10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !215
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !216
  %35 = ptrtoint ptr %i_size_seqcount.i3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %i_size_seqcount.i3, align 4
  %and.i8 = and i32 %36, 1
  %tobool.not.i9 = icmp eq i32 %and.i8, 0
  br i1 %tobool.not.i9, label %do.end.i10.while.end.i13_crit_edge, label %do.end.i10.do.end.i10_crit_edge

do.end.i10.do.end.i10_crit_edge:                  ; preds = %do.end.i10
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i10

do.end.i10.while.end.i13_crit_edge:               ; preds = %do.end.i10
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i13

while.end.i13:                                    ; preds = %do.end.i10.while.end.i13_crit_edge, %do.body.i7.while.end.i13_crit_edge
  %.lcssa.i11 = phi i32 [ %34, %do.body.i7.while.end.i13_crit_edge ], [ %36, %do.end.i10.while.end.i13_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !217
  %37 = ptrtoint ptr %i_size18.i4 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_size18.i4, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !170
  %39 = ptrtoint ptr %i_size_seqcount.i3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %i_size_seqcount.i3, align 4
  %cmp.i.i.not.i12 = icmp eq i32 %40, %.lcssa.i11
  br i1 %cmp.i.i.not.i12, label %i_size_read.exit14, label %while.end.i13.do.body.i7_crit_edge

while.end.i13.do.body.i7_crit_edge:               ; preds = %while.end.i13
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i7

i_size_read.exit14:                               ; preds = %while.end.i13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %cmp141 = icmp sgt i64 %38, 0
  br i1 %cmp141, label %if.then142, label %i_size_read.exit14.if.end151_crit_edge

i_size_read.exit14.if.end151_crit_edge:           ; preds = %i_size_read.exit14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end151

if.then142:                                       ; preds = %i_size_read.exit14
  %global_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 20
  %call143 = tail call i32 @btrfs_check_trunc_cache_free_space(ptr noundef %1, ptr noundef %global_block_rsv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end146, label %if.then142.out_put_crit_edge

if.then142.out_put_crit_edge:                     ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put

if.end146:                                        ; preds = %if.then142
  %call147 = tail call i32 @btrfs_truncate_free_space_cache(ptr noundef %trans, ptr noundef null, ptr noundef %call.lcssa) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end146.if.end151_crit_edge, label %if.end146.out_put_crit_edge

if.end146.out_put_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put

if.end146.if.end151_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end151

if.end151:                                        ; preds = %if.end146.if.end151_crit_edge, %i_size_read.exit14.if.end151_crit_edge
  %lock152 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock152) #16
  %cached = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 19
  %41 = ptrtoint ptr %cached to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cached, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp153.not = icmp eq i32 %42, 3
  br i1 %cmp153.not, label %lor.lhs.false, label %if.end151.if.then157_crit_edge

if.end151.if.then157_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then157

lor.lhs.false:                                    ; preds = %if.end151
  %43 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mount_opt, align 8
  %and155 = and i32 %44, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %lor.lhs.false.if.then157_crit_edge, label %if.end159

lor.lhs.false.if.then157_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then157

if.then157:                                       ; preds = %lor.lhs.false.if.then157_crit_edge, %if.end151.if.then157_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock152) #16
  br label %out_put

if.end159:                                        ; preds = %lor.lhs.false
  tail call void @_raw_spin_unlock(ptr noundef %lock152) #16
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %45 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %transaction, align 4
  %flags = getelementptr inbounds %struct.btrfs_transaction, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags, align 4
  %49 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool162.not = icmp eq i32 %49, 0
  br i1 %tobool162.not, label %if.end164, label %if.end159.out_put_crit_edge

if.end159.out_put_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put

if.end164:                                        ; preds = %if.end159
  %50 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %51)
  %tobool167.not = icmp ult i64 %51, 268435456
  %52 = lshr i64 %51, 24
  %call166.op = and i64 %52, 1099511627760
  %mul = select i1 %tobool167.not, i64 16, i64 %call166.op
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 167
  %53 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sectorsize, align 4
  %conv = zext i32 %54 to i64
  %mul170 = mul i64 %mul, %conv
  %call172 = call i32 @btrfs_check_data_free_space(ptr noundef %add.ptr.i, ptr noundef nonnull %data_reserved, i64 noundef 0, i64 noundef %mul170) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end175, label %if.end164.out_put_crit_edge

if.end164.out_put_crit_edge:                      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put

if.end175:                                        ; preds = %if.end164
  %call176 = call i32 @btrfs_prealloc_file_range_trans(ptr noundef %call.lcssa, ptr noundef %trans, i32 noundef 0, i64 noundef 0, i64 noundef %mul170, i64 noundef %mul170, i64 noundef %mul170, ptr noundef nonnull %alloc_hint) #16
  %55 = zext i32 %call176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call176, label %out_put.fold.split [
    i32 0, label %if.end175.out_put_crit_edge
    i32 -28, label %if.then182
  ]

if.end175.out_put_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put

if.then182:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #18
  %56 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %transaction, align 4
  %flags184 = getelementptr inbounds %struct.btrfs_transaction, ptr %57, i32 0, i32 4
  call void @_set_bit(i32 noundef 2, ptr noundef %flags184) #16
  br label %out_put

out_put.fold.split:                               ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put

out_put:                                          ; preds = %out_put.fold.split, %if.then182, %if.end175.out_put_crit_edge, %if.end164.out_put_crit_edge, %if.end159.out_put_crit_edge, %if.then157, %if.end146.out_put_crit_edge, %if.then142.out_put_crit_edge, %i_size_read.exit.out_put_crit_edge, %if.end99
  %ret.2 = phi i32 [ %call46, %if.end99 ], [ %call143, %if.then142.out_put_crit_edge ], [ %call147, %if.end146.out_put_crit_edge ], [ 0, %if.then157 ], [ %call172, %if.end164.out_put_crit_edge ], [ -28, %if.then182 ], [ 0, %i_size_read.exit.out_put_crit_edge ], [ -28, %if.end159.out_put_crit_edge ], [ %call176, %if.end175.out_put_crit_edge ], [ %call176, %out_put.fold.split ]
  %dcs.0 = phi i32 [ 1, %if.end99 ], [ 1, %if.then142.out_put_crit_edge ], [ 1, %if.end146.out_put_crit_edge ], [ 0, %if.then157 ], [ 1, %if.end164.out_put_crit_edge ], [ 1, %if.then182 ], [ 3, %i_size_read.exit.out_put_crit_edge ], [ 1, %if.end159.out_put_crit_edge ], [ 3, %if.end175.out_put_crit_edge ], [ 1, %out_put.fold.split ]
  call void @iput(ptr noundef %call.lcssa) #16
  br label %out_free

out_free:                                         ; preds = %out_put, %if.end38.out_free_crit_edge, %do.body18.out_free_crit_edge
  %ret.3 = phi i32 [ %ret.2, %out_put ], [ 0, %do.body18.out_free_crit_edge ], [ %call39, %if.end38.out_free_crit_edge ]
  %dcs.1 = phi i32 [ %dcs.0, %out_put ], [ 1, %do.body18.out_free_crit_edge ], [ 1, %if.end38.out_free_crit_edge ]
  call void @btrfs_release_path(ptr noundef %path) #16
  br label %out

out:                                              ; preds = %out_free, %if.then13
  %ret.4 = phi i32 [ 1, %if.then13 ], [ %ret.3, %out_free ]
  %dcs.2 = phi i32 [ 1, %if.then13 ], [ %dcs.1, %out_free ]
  %lock187 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock187) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %tobool188.not = icmp eq i32 %ret.4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dcs.2)
  %cmp190 = icmp eq i32 %dcs.2, 3
  %or.cond = and i1 %tobool188.not, %cmp190
  br i1 %or.cond, label %if.then192, label %out.if.end195_crit_edge

out.if.end195_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end195

if.then192:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  %58 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %trans, align 8
  %cache_generation194 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 11
  %60 = ptrtoint ptr %cache_generation194 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %cache_generation194, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.then192, %out.if.end195_crit_edge
  %disk_cache_state196 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group, i32 0, i32 18
  %61 = ptrtoint ptr %disk_cache_state196 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %dcs.2, ptr %disk_cache_state196, align 4
  call void @_raw_spin_unlock(ptr noundef %lock187) #16
  %62 = ptrtoint ptr %data_reserved to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data_reserved, align 4
  %tobool.not.i16 = icmp eq ptr %63, null
  br i1 %tobool.not.i16, label %if.end195.cleanup_crit_edge, label %extent_changeset_release.exit.i

if.end195.cleanup_crit_edge:                      ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

extent_changeset_release.exit.i:                  ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #18
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %63, align 4
  %range_changed.i.i = getelementptr inbounds %struct.extent_changeset, ptr %63, i32 0, i32 1
  call void @ulist_release(ptr noundef %range_changed.i.i) #16
  call void @kfree(ptr noundef nonnull %63) #16
  br label %cleanup

cleanup:                                          ; preds = %extent_changeset_release.exit.i, %if.end195.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %alloc_hint) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_reserved) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_start_dirty_block_groups(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  %dirty = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %2 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transaction, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dirty) #16
  %4 = getelementptr inbounds %struct.list_head, ptr %dirty, i32 0, i32 1
  %5 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dirty, ptr %dirty, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dirty, ptr %4, align 4
  %io_bgs = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 16
  %dirty_bgs_lock = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 20
  call void @_raw_spin_lock(ptr noundef %dirty_bgs_lock) #16
  %dirty_bgs = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 15
  %7 = ptrtoint ptr %dirty_bgs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %dirty_bgs, align 4
  %cmp.i.not = icmp eq ptr %8, %dirty_bgs
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock(ptr noundef %dirty_bgs_lock) #16
  br label %cleanup142

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %dirty_bgs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %dirty_bgs, align 4
  %cmp.i.not.i = icmp eq ptr %10, %dirty_bgs
  br i1 %cmp.i.not.i, label %if.end.list_splice_init.exit_crit_edge, label %if.then.i

if.end.list_splice_init.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dirty, align 4
  %prev2.i.i = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 15, i32 1
  %13 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dirty, ptr %prev3.i.i, align 4
  store ptr %10, ptr %dirty, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %12, ptr %14, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev6.i.i, align 4
  %18 = ptrtoint ptr %dirty_bgs to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %dirty_bgs, ptr %dirty_bgs, align 4
  store ptr %dirty_bgs, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dirty_bgs_lock) #16
  %prev.i = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 16, i32 1
  %prev.i236 = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 15, i32 1
  br label %again

again:                                            ; preds = %list_splice_init.exit246.again_crit_edge, %list_splice_init.exit
  %path.0 = phi ptr [ null, %list_splice_init.exit ], [ %path.1, %list_splice_init.exit246.again_crit_edge ]
  %cmp124 = phi i1 [ false, %list_splice_init.exit ], [ true, %list_splice_init.exit246.again_crit_edge ]
  call void @btrfs_create_pending_block_groups(ptr noundef %trans)
  %tobool5.not = icmp eq ptr %path.0, null
  br i1 %tobool5.not, label %if.then6, label %again.if.end11_crit_edge

again.if.end11_crit_edge:                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then6:                                         ; preds = %again
  %call7 = call ptr @btrfs_alloc_path() #16
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then6.if.then137_crit_edge, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then6.if.then137_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then137

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %again.if.end11_crit_edge
  %path.1 = phi ptr [ %path.0, %again.if.end11_crit_edge ], [ %call7, %if.then6.if.end11_crit_edge ]
  %19 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %transaction, align 4
  %cache_write_mutex = getelementptr inbounds %struct.btrfs_transaction, ptr %20, i32 0, i32 19
  call void @mutex_lock_nested(ptr noundef %cache_write_mutex, i32 noundef 0) #16
  %21 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %dirty, align 4
  %cmp.i221.not308 = icmp eq ptr %22, %dirty
  br i1 %cmp.i221.not308, label %if.end11.while.end_crit_edge, label %if.end11.while.body_crit_edge

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  br label %while.body

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end11.while.body_crit_edge
  %23 = phi ptr [ %74, %cleanup.while.body_crit_edge ], [ %22, %if.end11.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %23, i32 -356
  %io_list = getelementptr i8, ptr %23, i32 8
  %24 = ptrtoint ptr %io_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %io_list, align 4
  %cmp.i223.not = icmp eq ptr %25, %io_list
  br i1 %cmp.i223.not, label %while.body.if.end21_crit_edge, label %if.then18

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then18:                                        ; preds = %while.body
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %io_list) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.then18.list_del_init.exit_crit_edge

if.then18.list_del_init.exit_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr i8, ptr %23, i32 12
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %io_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then18.list_del_init.exit_crit_edge
  %32 = ptrtoint ptr %io_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %io_list, ptr %io_list, align 4
  %prev.i3.i = getelementptr i8, ptr %23, i32 12
  %33 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %io_list, ptr %prev.i3.i, align 4
  %call20 = call i32 @btrfs_wait_cache_io(ptr noundef %trans, ptr noundef %add.ptr, ptr noundef %path.1) #16
  call void @btrfs_put_block_group(ptr noundef %add.ptr)
  br label %if.end21

if.end21:                                         ; preds = %list_del_init.exit, %while.body.if.end21_crit_edge
  call void @_raw_spin_lock(ptr noundef %dirty_bgs_lock) #16
  %call.i.i225 = call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #16
  br i1 %call.i.i225, label %if.end.i.i228, label %if.end21.list_del_init.exit230_crit_edge

if.end21.list_del_init.exit230_crit_edge:         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit230

if.end.i.i228:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i226 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i226 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i226, align 4
  %36 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %23, align 4
  %prev1.i.i.i227 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i227 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i227, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del_init.exit230

list_del_init.exit230:                            ; preds = %if.end.i.i228, %if.end21.list_del_init.exit230_crit_edge
  %40 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %23, ptr %23, align 4
  %prev.i3.i229 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i3.i229 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %23, ptr %prev.i3.i229, align 4
  call void @_raw_spin_unlock(ptr noundef %dirty_bgs_lock) #16
  call fastcc void @cache_save_setup(ptr noundef %add.ptr, ptr noundef %trans, ptr noundef %path.1)
  %disk_cache_state = getelementptr i8, ptr %23, i32 -112
  %42 = ptrtoint ptr %disk_cache_state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %disk_cache_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp = icmp eq i32 %43, 3
  br i1 %cmp, label %if.then25, label %list_del_init.exit230.if.then36_crit_edge

list_del_init.exit230.if.then36_crit_edge:        ; preds = %list_del_init.exit230
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then36

if.then25:                                        ; preds = %list_del_init.exit230
  %inode = getelementptr i8, ptr %23, i32 36
  %44 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %inode, align 4
  %call26 = call i32 @btrfs_write_out_cache(ptr noundef %trans, ptr noundef %add.ptr, ptr noundef %path.1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %land.lhs.true, label %if.then25.if.then36_crit_edge

if.then25.if.then36_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then36

land.lhs.true:                                    ; preds = %if.then25
  %45 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %inode, align 4
  %tobool30.not = icmp eq ptr %46, null
  br i1 %tobool30.not, label %land.lhs.true.if.then36_crit_edge, label %if.then31

land.lhs.true.if.then36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then36

if.then31:                                        ; preds = %land.lhs.true
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i, align 4
  %call.i.i231 = call zeroext i1 @__list_add_valid(ptr noundef %io_list, ptr noundef %48, ptr noundef %io_bgs) #16
  br i1 %call.i.i231, label %if.end.i.i233, label %if.then31.if.then36_crit_edge

if.then31.if.then36_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then36

if.end.i.i233:                                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %io_list, ptr %prev.i, align 4
  %50 = ptrtoint ptr %io_list to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %io_bgs, ptr %io_list, align 4
  %prev3.i.i232 = getelementptr i8, ptr %23, i32 12
  %51 = ptrtoint ptr %prev3.i.i232 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i232, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %io_list, ptr %48, align 4
  br label %if.then36

if.then36:                                        ; preds = %if.end.i.i233, %if.then31.if.then36_crit_edge, %land.lhs.true.if.then36_crit_edge, %if.then25.if.then36_crit_edge, %list_del_init.exit230.if.then36_crit_edge
  %tobool103.not260 = phi i1 [ true, %if.end.i.i233 ], [ true, %if.then31.if.then36_crit_edge ], [ false, %if.then25.if.then36_crit_edge ], [ false, %land.lhs.true.if.then36_crit_edge ], [ false, %list_del_init.exit230.if.then36_crit_edge ]
  %call37 = call fastcc i32 @update_block_group_item(ptr noundef %trans, ptr noundef %path.1, ptr noundef %add.ptr)
  %53 = zext i32 %call37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call37, label %do.body [
    i32 -2, label %if.then39
    i32 0, label %if.end102
  ]

if.then39:                                        ; preds = %if.then36
  call void @_raw_spin_lock(ptr noundef %dirty_bgs_lock) #16
  %54 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %23, align 4
  %cmp.i234.not = icmp eq ptr %55, %23
  br i1 %cmp.i234.not, label %if.then44, label %if.end47.thread

if.then44:                                        ; preds = %if.then39
  %56 = ptrtoint ptr %prev.i236 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i236, align 4
  %call.i.i237 = call zeroext i1 @__list_add_valid(ptr noundef %23, ptr noundef %57, ptr noundef %dirty_bgs) #16
  br i1 %call.i.i237, label %if.end.i.i239, label %if.then44.list_add_tail.exit240_crit_edge

if.then44.list_add_tail.exit240_crit_edge:        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit240

if.end.i.i239:                                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  %58 = ptrtoint ptr %prev.i236 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %23, ptr %prev.i236, align 4
  %59 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %dirty_bgs, ptr %23, align 4
  %60 = ptrtoint ptr %prev.i3.i229 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev.i3.i229, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %23, ptr %57, align 4
  br label %list_add_tail.exit240

list_add_tail.exit240:                            ; preds = %if.end.i.i239, %if.then44.list_add_tail.exit240_crit_edge
  %refs.i = getelementptr i8, ptr %23, i32 -64
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #16
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #16, !srcloc !171
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %list_add_tail.exit240.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !172

list_add_tail.exit240.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %list_add_tail.exit240
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %list_add_tail.exit240
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %63 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %.not.i.i.i.i = icmp sgt i32 %63, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end47_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !173

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end47_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %list_add_tail.exit240.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %list_add_tail.exit240.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #16
  br label %if.end47

if.end47:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end47_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dirty_bgs_lock) #16
  br i1 %tobool103.not260, label %if.end105, label %if.then104

if.end47.thread:                                  ; preds = %if.then39
  call void @_raw_spin_unlock(ptr noundef %dirty_bgs_lock) #16
  br i1 %tobool103.not260, label %if.end47.thread.if.then107_crit_edge, label %if.end47.thread.if.then107.sink.split_crit_edge

if.end47.thread.if.then107.sink.split_crit_edge:  ; preds = %if.end47.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107.sink.split

if.end47.thread.if.then107_crit_edge:             ; preds = %if.end47.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

do.body:                                          ; preds = %if.then36
  %64 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fs_info1, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %65, i32 0, i32 149
  %call53 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then55, label %do.body.if.end97_crit_edge

do.body.if.end97_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end97

if.then55:                                        ; preds = %do.body
  %66 = zext i32 %call37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %call37, label %do.end [
    i32 -5, label %if.then55.do.body81_crit_edge
    i32 -30, label %if.then55.do.body81_crit_edge341
  ]

if.then55.do.body81_crit_edge341:                 ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body81

if.then55.do.body81_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body81

do.end:                                           ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3024, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %call37) #16
  br label %if.end97

do.body81:                                        ; preds = %if.then55.do.body81_crit_edge, %if.then55.do.body81_crit_edge341
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_start_dirty_block_groups.__UNIQUE_ID_ddebug938, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_start_dirty_block_groups, %if.then91)) #16
          to label %if.end97 [label %if.then91], !srcloc !190

if.then91:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #18
  %67 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %68, ptr noundef nonnull @.str.13, i32 noundef %call37) #20
  br label %if.end97

if.end97:                                         ; preds = %if.then91, %do.body81, %do.end, %do.body.if.end97_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.15, i32 noundef 3024, i32 noundef %call37) #20
  br i1 %tobool103.not260, label %if.end97.if.then107_crit_edge, label %if.end97.if.then107.sink.split_crit_edge

if.end97.if.then107.sink.split_crit_edge:         ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107.sink.split

if.end97.if.then107_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.end102:                                        ; preds = %if.then36
  br i1 %tobool103.not260, label %if.end102.if.then107_crit_edge, label %if.end102.if.then107.sink.split_crit_edge

if.end102.if.then107.sink.split_crit_edge:        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107.sink.split

if.end102.if.then107_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.then104:                                       ; preds = %if.end47
  call void @btrfs_put_block_group(ptr noundef %add.ptr)
  br i1 %cmp.i234.not, label %if.then104.if.end108_crit_edge, label %if.then104.if.then107_crit_edge

if.then104.if.then107_crit_edge:                  ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.then104.if.end108_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end108

if.end105:                                        ; preds = %if.end47
  br i1 %cmp.i234.not, label %if.end105.if.end108_crit_edge, label %if.end105.if.then107_crit_edge

if.end105.if.then107_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then107

if.end105.if.end108_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end108

if.then107.sink.split:                            ; preds = %if.end102.if.then107.sink.split_crit_edge, %if.end97.if.then107.sink.split_crit_edge, %if.end47.thread.if.then107.sink.split_crit_edge
  %ret.3273278.ph = phi i32 [ 0, %if.end47.thread.if.then107.sink.split_crit_edge ], [ %call37, %if.end102.if.then107.sink.split_crit_edge ], [ %call37, %if.end97.if.then107.sink.split_crit_edge ]
  call void @btrfs_put_block_group(ptr noundef %add.ptr)
  br label %if.then107

if.then107:                                       ; preds = %if.then107.sink.split, %if.end105.if.then107_crit_edge, %if.then104.if.then107_crit_edge, %if.end102.if.then107_crit_edge, %if.end97.if.then107_crit_edge, %if.end47.thread.if.then107_crit_edge
  %ret.3273278 = phi i32 [ 0, %if.end105.if.then107_crit_edge ], [ 0, %if.then104.if.then107_crit_edge ], [ %call37, %if.end97.if.then107_crit_edge ], [ 0, %if.end102.if.then107_crit_edge ], [ 0, %if.end47.thread.if.then107_crit_edge ], [ %ret.3273278.ph, %if.then107.sink.split ]
  call void @btrfs_delayed_refs_rsv_release(ptr noundef %1, i32 noundef 1) #16
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.end105.if.end108_crit_edge, %if.then104.if.end108_crit_edge
  %ret.3273277 = phi i32 [ %ret.3273278, %if.then107 ], [ 0, %if.end105.if.end108_crit_edge ], [ 0, %if.then104.if.end108_crit_edge ]
  %69 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %transaction, align 4
  %cache_write_mutex110 = getelementptr inbounds %struct.btrfs_transaction, ptr %70, i32 0, i32 19
  call void @mutex_unlock(ptr noundef %cache_write_mutex110) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3273277)
  %tobool111.not = icmp eq i32 %ret.3273277, 0
  br i1 %tobool111.not, label %cleanup, label %if.end108.out_crit_edge

if.end108.out_crit_edge:                          ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

cleanup:                                          ; preds = %if.end108
  %71 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %transaction, align 4
  %cache_write_mutex115 = getelementptr inbounds %struct.btrfs_transaction, ptr %72, i32 0, i32 19
  call void @mutex_lock_nested(ptr noundef %cache_write_mutex115, i32 noundef 0) #16
  %73 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %dirty, align 4
  %cmp.i221.not = icmp eq ptr %74, %dirty
  br i1 %cmp.i221.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end11.while.end_crit_edge
  %75 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %transaction, align 4
  %cache_write_mutex117 = getelementptr inbounds %struct.btrfs_transaction, ptr %76, i32 0, i32 19
  call void @mutex_unlock(ptr noundef %cache_write_mutex117) #16
  %call120 = call i32 @btrfs_run_delayed_refs(ptr noundef %trans, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool122.not = icmp ne i32 %call120, 0
  %brmerge = or i1 %cmp124, %tobool122.not
  br i1 %brmerge, label %while.end.out_crit_edge, label %if.then125

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then125:                                       ; preds = %while.end
  call void @_raw_spin_lock(ptr noundef %dirty_bgs_lock) #16
  %77 = ptrtoint ptr %dirty_bgs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %dirty_bgs, align 4
  %cmp.i.not.i241 = icmp eq ptr %78, %dirty_bgs
  br i1 %cmp.i.not.i241, label %if.then125.list_splice_init.exit246_crit_edge, label %if.then.i245

if.then125.list_splice_init.exit246_crit_edge:    ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_splice_init.exit246

if.then.i245:                                     ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #18
  %79 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dirty, align 4
  %81 = ptrtoint ptr %prev.i236 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i236, align 4
  %prev3.i.i243 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %83 = ptrtoint ptr %prev3.i.i243 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %dirty, ptr %prev3.i.i243, align 4
  store ptr %78, ptr %dirty, align 4
  %84 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %80, ptr %82, align 4
  %prev6.i.i244 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %85 = ptrtoint ptr %prev6.i.i244 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev6.i.i244, align 4
  %86 = ptrtoint ptr %dirty_bgs to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %dirty_bgs, ptr %dirty_bgs, align 4
  store ptr %dirty_bgs, ptr %prev.i236, align 4
  br label %list_splice_init.exit246

list_splice_init.exit246:                         ; preds = %if.then.i245, %if.then125.list_splice_init.exit246_crit_edge
  %87 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %dirty, align 4
  %cmp.i247.not = icmp eq ptr %88, %dirty
  call void @_raw_spin_unlock(ptr noundef %dirty_bgs_lock) #16
  br i1 %cmp.i247.not, label %list_splice_init.exit246.if.end141_crit_edge, label %list_splice_init.exit246.again_crit_edge

list_splice_init.exit246.again_crit_edge:         ; preds = %list_splice_init.exit246
  call void @__sanitizer_cov_trace_pc() #18
  br label %again

list_splice_init.exit246.if.end141_crit_edge:     ; preds = %list_splice_init.exit246
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end141

out:                                              ; preds = %while.end.out_crit_edge, %if.end108.out_crit_edge
  %ret.5 = phi i32 [ %ret.3273277, %if.end108.out_crit_edge ], [ %call120, %while.end.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.5)
  %cmp136 = icmp slt i32 %ret.5, 0
  br i1 %cmp136, label %out.if.then137_crit_edge, label %out.if.end141_crit_edge

out.if.end141_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end141

out.if.then137_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then137

if.then137:                                       ; preds = %out.if.then137_crit_edge, %if.then6.if.then137_crit_edge
  %ret.5298 = phi i32 [ %ret.5, %out.if.then137_crit_edge ], [ -12, %if.then6.if.then137_crit_edge ]
  %path.2297 = phi ptr [ %path.1, %out.if.then137_crit_edge ], [ null, %if.then6.if.then137_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %dirty_bgs_lock) #16
  %89 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile ptr, ptr %dirty, align 4
  %cmp.i.not.i249 = icmp eq ptr %90, %dirty
  br i1 %cmp.i.not.i249, label %if.then137.list_splice_init.exit254_crit_edge, label %if.then.i253

if.then137.list_splice_init.exit254_crit_edge:    ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_splice_init.exit254

if.then.i253:                                     ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #18
  %91 = ptrtoint ptr %dirty_bgs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dirty_bgs, align 4
  %93 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %4, align 4
  %prev3.i.i251 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %95 = ptrtoint ptr %prev3.i.i251 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %dirty_bgs, ptr %prev3.i.i251, align 4
  store ptr %90, ptr %dirty_bgs, align 4
  %96 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %92, ptr %94, align 4
  %prev6.i.i252 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %97 = ptrtoint ptr %prev6.i.i252 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev6.i.i252, align 4
  %98 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %dirty, ptr %dirty, align 4
  store ptr %dirty, ptr %4, align 4
  br label %list_splice_init.exit254

list_splice_init.exit254:                         ; preds = %if.then.i253, %if.then137.list_splice_init.exit254_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dirty_bgs_lock) #16
  call void @btrfs_cleanup_dirty_bgs(ptr noundef %3, ptr noundef %1) #16
  br label %if.end141

if.end141:                                        ; preds = %list_splice_init.exit254, %out.if.end141_crit_edge, %list_splice_init.exit246.if.end141_crit_edge
  %ret.5292 = phi i32 [ %ret.5298, %list_splice_init.exit254 ], [ %ret.5, %out.if.end141_crit_edge ], [ 0, %list_splice_init.exit246.if.end141_crit_edge ]
  %path.2291 = phi ptr [ %path.2297, %list_splice_init.exit254 ], [ %path.1, %out.if.end141_crit_edge ], [ %path.1, %list_splice_init.exit246.if.end141_crit_edge ]
  call void @btrfs_free_path(ptr noundef %path.2291) #16
  br label %cleanup142

cleanup142:                                       ; preds = %if.end141, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.5292, %if.end141 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dirty) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_write_out_cache(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_block_group_item(ptr noundef %trans, ptr noundef %path, ptr nocapture noundef readonly %cache) unnamed_addr #0 align 64 {
entry:
  %bgi = alloca %struct.btrfs_block_group_item, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %call.i = tail call ptr @btrfs_extent_root(ptr noundef %1, i64 noundef 0) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bgi) #16
  %2 = call ptr @memset(ptr %bgi, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #16
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 3
  %5 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start, align 8
  %7 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %key, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -64, ptr %3, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 4
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %length, align 8
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %4, align 1
  %call2 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %call.i, ptr noundef nonnull %key, ptr noundef %path, i32 noundef 0, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp sgt i32 %call2, 0
  %spec.store.select = select i1 %cmp, i32 -2, i32 %call2
  br label %fail

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %12 = getelementptr inbounds %struct.btrfs_block_group_item, ptr %bgi, i32 0, i32 2
  %13 = getelementptr inbounds %struct.btrfs_block_group_item, ptr %bgi, i32 0, i32 1
  %14 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %16 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %17, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %18 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %15, ptr noundef %18, i32 noundef 17) #16
  %add = add i32 %call.i.i, 101
  %used = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 7
  %19 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %used, align 8
  %21 = call i64 @llvm.bswap.i64(i64 %20) #16
  %22 = ptrtoint ptr %bgi to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %bgi, align 8
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 281474976710656, ptr %13, align 8
  %flags = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 10
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %flags, align 8
  %26 = call i64 @llvm.bswap.i64(i64 %25) #16
  %27 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %12, align 8
  call void @write_extent_buffer(ptr noundef %15, ptr noundef nonnull %bgi, i32 noundef %add, i32 noundef 24) #16
  call void @btrfs_mark_buffer_dirty(ptr noundef %15) #16
  br label %fail

fail:                                             ; preds = %if.end4, %if.then
  %ret.0 = phi i32 [ %spec.store.select, %if.then ], [ 0, %if.end4 ]
  call void @btrfs_release_path(ptr noundef %path) #16
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bgi) #16
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_run_delayed_refs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_cleanup_dirty_bgs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_write_dirty_block_groups(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %2 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transaction, align 4
  %io_bgs = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 16
  %call = tail call ptr @btrfs_alloc_path() #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup129_crit_edge, label %if.end

entry.cleanup129_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup129

if.end:                                           ; preds = %entry
  %dirty_bgs_lock = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %dirty_bgs_lock) #16
  %dirty_bgs = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dirty_bgs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %dirty_bgs, align 4
  %cmp.i.not240 = icmp eq ptr %5, %dirty_bgs
  br i1 %cmp.i.not240, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %prev.i = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 16, i32 1
  %num_writers = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 2
  %writer_wait = getelementptr inbounds %struct.btrfs_transaction, ptr %3, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %if.end113.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %5, %while.body.lr.ph ], [ %49, %if.end113.while.body_crit_edge ]
  %ret.0242 = phi i32 [ 0, %while.body.lr.ph ], [ %ret.4236, %if.end113.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %6, i32 -356
  %io_list = getelementptr i8, ptr %6, i32 8
  %7 = ptrtoint ptr %io_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %io_list, align 4
  %cmp.i198.not = icmp eq ptr %8, %io_list
  br i1 %cmp.i198.not, label %while.body.if.end12_crit_edge, label %if.then7

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then7:                                         ; preds = %while.body
  call void @_raw_spin_unlock(ptr noundef %dirty_bgs_lock) #16
  %call.i.i200 = call zeroext i1 @__list_del_entry_valid(ptr noundef %io_list) #16
  br i1 %call.i.i200, label %if.end.i.i, label %if.then7.list_del_init.exit_crit_edge

if.then7.list_del_init.exit_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr i8, ptr %6, i32 12
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %io_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then7.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %io_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %io_list, ptr %io_list, align 4
  %prev.i3.i = getelementptr i8, ptr %6, i32 12
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %io_list, ptr %prev.i3.i, align 4
  %call10 = call i32 @btrfs_wait_cache_io(ptr noundef %trans, ptr noundef %add.ptr, ptr noundef nonnull %call) #16
  call void @btrfs_put_block_group(ptr noundef %add.ptr)
  call void @_raw_spin_lock(ptr noundef %dirty_bgs_lock) #16
  br label %if.end12

if.end12:                                         ; preds = %list_del_init.exit, %while.body.if.end12_crit_edge
  %call.i.i201 = call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #16
  br i1 %call.i.i201, label %if.end.i.i204, label %if.end12.list_del_init.exit206_crit_edge

if.end12.list_del_init.exit206_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit206

if.end.i.i204:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i202 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i202 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i202, align 4
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %6, align 4
  %prev1.i.i.i203 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i203 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i203, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit206

list_del_init.exit206:                            ; preds = %if.end.i.i204, %if.end12.list_del_init.exit206_crit_edge
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %6, ptr %6, align 4
  %prev.i3.i205 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i205 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %6, ptr %prev.i3.i205, align 4
  call void @_raw_spin_unlock(ptr noundef %dirty_bgs_lock) #16
  call fastcc void @cache_save_setup(ptr noundef %add.ptr, ptr noundef %trans, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0242)
  %tobool15.not = icmp eq i32 %ret.0242, 0
  br i1 %tobool15.not, label %if.end18, label %list_del_init.exit206.if.then112_crit_edge

list_del_init.exit206.if.then112_crit_edge:       ; preds = %list_del_init.exit206
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then112

if.end18:                                         ; preds = %list_del_init.exit206
  %call17 = call i32 @btrfs_run_delayed_refs(ptr noundef %trans, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool19.not = icmp eq i32 %call17, 0
  br i1 %tobool19.not, label %land.lhs.true, label %if.end18.if.then112_crit_edge

if.end18.if.then112_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then112

land.lhs.true:                                    ; preds = %if.end18
  %disk_cache_state = getelementptr i8, ptr %6, i32 -112
  %25 = ptrtoint ptr %disk_cache_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %disk_cache_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp = icmp eq i32 %26, 3
  br i1 %cmp, label %if.then20, label %land.lhs.true.if.then32_crit_edge

land.lhs.true.if.then32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then32

if.then20:                                        ; preds = %land.lhs.true
  %inode = getelementptr i8, ptr %6, i32 36
  %27 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %inode, align 4
  %call21 = call i32 @btrfs_write_out_cache(ptr noundef %trans, ptr noundef %add.ptr, ptr noundef nonnull %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %land.lhs.true23, label %if.then20.if.then32_crit_edge

if.then20.if.then32_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then32

land.lhs.true23:                                  ; preds = %if.then20
  %28 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %inode, align 4
  %tobool26.not = icmp eq ptr %29, null
  br i1 %tobool26.not, label %land.lhs.true23.if.then32_crit_edge, label %if.then27

land.lhs.true23.if.then32_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then32

if.then27:                                        ; preds = %land.lhs.true23
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i, align 4
  %call.i.i207 = call zeroext i1 @__list_add_valid(ptr noundef %io_list, ptr noundef %31, ptr noundef %io_bgs) #16
  br i1 %call.i.i207, label %if.end.i.i208, label %if.then27.if.then32_crit_edge

if.then27.if.then32_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then32

if.end.i.i208:                                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %io_list, ptr %prev.i, align 4
  %33 = ptrtoint ptr %io_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %io_bgs, ptr %io_list, align 4
  %prev3.i.i = getelementptr i8, ptr %6, i32 12
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %io_list, ptr %31, align 4
  br label %if.then32

if.then32:                                        ; preds = %if.end.i.i208, %if.then27.if.then32_crit_edge, %land.lhs.true23.if.then32_crit_edge, %if.then20.if.then32_crit_edge, %land.lhs.true.if.then32_crit_edge
  %tobool111.not.ph = phi i1 [ true, %if.end.i.i208 ], [ true, %if.then27.if.then32_crit_edge ], [ false, %if.then20.if.then32_crit_edge ], [ false, %land.lhs.true23.if.then32_crit_edge ], [ false, %land.lhs.true.if.then32_crit_edge ]
  %call33 = call fastcc i32 @update_block_group_item(ptr noundef %trans, ptr noundef nonnull %call, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call33)
  %cmp34 = icmp eq i32 %call33, -2
  br i1 %cmp34, label %do.body36, label %if.then32.if.end55_crit_edge

if.then32.if.end55_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

do.body36:                                        ; preds = %if.then32
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 3172) #16
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %num_writers, i32 noundef 4) #16
  %36 = ptrtoint ptr %num_writers to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %num_writers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp41 = icmp eq i32 %37, 1
  br i1 %cmp41, label %do.body36.do.end53_crit_edge, label %if.end43

do.body36.do.end53_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end53

if.end43:                                         ; preds = %do.body36
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %38 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %call44237 = call i32 @prepare_to_wait_event(ptr noundef %writer_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %call.i.i197238 = call zeroext i1 @__kasan_check_read(ptr noundef %num_writers, i32 noundef 4) #16
  %39 = ptrtoint ptr %num_writers to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %num_writers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp47239 = icmp eq i32 %40, 1
  br i1 %cmp47239, label %if.end43.for.end_crit_edge, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  br label %cleanup

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end43.cleanup_crit_edge
  call void @schedule() #16
  %call44 = call i32 @prepare_to_wait_event(ptr noundef %writer_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %call.i.i197 = call zeroext i1 @__kasan_check_read(ptr noundef %num_writers, i32 noundef 4) #16
  %41 = ptrtoint ptr %num_writers to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %num_writers, align 4
  %cmp47 = icmp eq i32 %42, 1
  br i1 %cmp47, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end43.for.end_crit_edge
  call void @finish_wait(ptr noundef %writer_wait, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %do.end53

do.end53:                                         ; preds = %for.end, %do.body36.do.end53_crit_edge
  %call54 = call fastcc i32 @update_block_group_item(ptr noundef %trans, ptr noundef nonnull %call, ptr noundef %add.ptr)
  br label %if.end55

if.end55:                                         ; preds = %do.end53, %if.then32.if.end55_crit_edge
  %ret.3 = phi i32 [ %call54, %do.end53 ], [ %call33, %if.then32.if.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool56.not = icmp eq i32 %ret.3, 0
  br i1 %tobool56.not, label %if.end110, label %do.body58

do.body58:                                        ; preds = %if.end55
  %43 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fs_info1, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %44, i32 0, i32 149
  %call60 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then62, label %do.body58.if.end106_crit_edge

do.body58.if.end106_crit_edge:                    ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end106

if.then62:                                        ; preds = %do.body58
  %45 = zext i32 %ret.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %ret.3, label %do.end75 [
    i32 -5, label %if.then62.do.body90_crit_edge
    i32 -30, label %if.then62.do.body90_crit_edge244
  ]

if.then62.do.body90_crit_edge244:                 ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body90

if.then62.do.body90_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body90

do.end75:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3176, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %ret.3) #16
  br label %if.end106

do.body90:                                        ; preds = %if.then62.do.body90_crit_edge, %if.then62.do.body90_crit_edge244
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_write_dirty_block_groups.__UNIQUE_ID_ddebug939, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_write_dirty_block_groups, %if.then100)) #16
          to label %if.end106 [label %if.then100], !srcloc !190

if.then100:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #18
  %46 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fs_info1, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %47, ptr noundef nonnull @.str.13, i32 noundef %ret.3) #20
  br label %if.end106

if.end106:                                        ; preds = %if.then100, %do.body90, %do.end75, %do.body58.if.end106_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.16, i32 noundef 3176, i32 noundef %ret.3) #20
  br i1 %tobool111.not.ph, label %if.end106.if.end113_crit_edge, label %if.end106.if.then112_crit_edge

if.end106.if.then112_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then112

if.end106.if.end113_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113

if.end110:                                        ; preds = %if.end55
  br i1 %tobool111.not.ph, label %if.end110.if.end113_crit_edge, label %if.end110.if.then112_crit_edge

if.end110.if.then112_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then112

if.end110.if.end113_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113

if.then112:                                       ; preds = %if.end110.if.then112_crit_edge, %if.end106.if.then112_crit_edge, %if.end18.if.then112_crit_edge, %list_del_init.exit206.if.then112_crit_edge
  %ret.4235 = phi i32 [ 0, %if.end110.if.then112_crit_edge ], [ %ret.3, %if.end106.if.then112_crit_edge ], [ %call17, %if.end18.if.then112_crit_edge ], [ %ret.0242, %list_del_init.exit206.if.then112_crit_edge ]
  call void @btrfs_put_block_group(ptr noundef %add.ptr)
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %if.end110.if.end113_crit_edge, %if.end106.if.end113_crit_edge
  %ret.4236 = phi i32 [ %ret.4235, %if.then112 ], [ 0, %if.end110.if.end113_crit_edge ], [ %ret.3, %if.end106.if.end113_crit_edge ]
  call void @btrfs_delayed_refs_rsv_release(ptr noundef %1, i32 noundef 1) #16
  call void @_raw_spin_lock(ptr noundef %dirty_bgs_lock) #16
  %48 = ptrtoint ptr %dirty_bgs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %dirty_bgs, align 4
  %cmp.i.not = icmp eq ptr %49, %dirty_bgs
  br i1 %cmp.i.not, label %if.end113.while.end_crit_edge, label %if.end113.while.body_crit_edge

if.end113.while.body_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end113.while.end_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end113.while.end_crit_edge, %if.end.while.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %ret.4236, %if.end113.while.end_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %dirty_bgs_lock) #16
  %50 = ptrtoint ptr %io_bgs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %io_bgs, align 4
  %cmp.i209.not243 = icmp eq ptr %51, %io_bgs
  br i1 %cmp.i209.not243, label %while.end.while.end128_crit_edge, label %while.end.while.body121_crit_edge

while.end.while.body121_crit_edge:                ; preds = %while.end
  br label %while.body121

while.end.while.end128_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end128

while.body121:                                    ; preds = %list_del_init.exit216.while.body121_crit_edge, %while.end.while.body121_crit_edge
  %52 = phi ptr [ %62, %list_del_init.exit216.while.body121_crit_edge ], [ %51, %while.end.while.body121_crit_edge ]
  %add.ptr125 = getelementptr i8, ptr %52, i32 -364
  %call.i.i211 = call zeroext i1 @__list_del_entry_valid(ptr noundef %52) #16
  br i1 %call.i.i211, label %if.end.i.i214, label %while.body121.list_del_init.exit216_crit_edge

while.body121.list_del_init.exit216_crit_edge:    ; preds = %while.body121
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit216

if.end.i.i214:                                    ; preds = %while.body121
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i212 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i212 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i212, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %52, align 4
  %prev1.i.i.i213 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i213 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i213, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del_init.exit216

list_del_init.exit216:                            ; preds = %if.end.i.i214, %while.body121.list_del_init.exit216_crit_edge
  %59 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %52, ptr %52, align 4
  %prev.i3.i215 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i3.i215 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %52, ptr %prev.i3.i215, align 4
  %call127 = call i32 @btrfs_wait_cache_io(ptr noundef %trans, ptr noundef %add.ptr125, ptr noundef nonnull %call) #16
  call void @btrfs_put_block_group(ptr noundef %add.ptr125)
  %61 = ptrtoint ptr %io_bgs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %io_bgs, align 4
  %cmp.i209.not = icmp eq ptr %62, %io_bgs
  br i1 %cmp.i209.not, label %list_del_init.exit216.while.end128_crit_edge, label %list_del_init.exit216.while.body121_crit_edge

list_del_init.exit216.while.body121_crit_edge:    ; preds = %list_del_init.exit216
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body121

list_del_init.exit216.while.end128_crit_edge:     ; preds = %list_del_init.exit216
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end128

while.end128:                                     ; preds = %list_del_init.exit216.while.end128_crit_edge, %while.end.while.end128_crit_edge
  call void @btrfs_free_path(ptr noundef nonnull %call) #16
  br label %cleanup129

cleanup129:                                       ; preds = %while.end128, %entry.cleanup129_crit_edge
  %retval.0 = phi i32 [ %ret.0.lcssa, %while.end128 ], [ -12, %entry.cleanup129_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_update_block_group(ptr noundef %trans, i64 noundef %bytenr, i64 noundef %num_bytes, i1 noundef zeroext %alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 4
  %delalloc_root_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 74
  tail call void @_raw_spin_lock(ptr noundef %delalloc_root_lock) #16
  %super_copy = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %super_copy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %super_copy, align 8
  %bytes_used.i = getelementptr inbounds %struct.btrfs_super_block, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %bytes_used.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %bytes_used.i, align 1
  %6 = tail call i64 @llvm.bswap.i64(i64 %5) #16
  %7 = sub i64 0, %num_bytes
  %old_val.0.p = select i1 %alloc, i64 %num_bytes, i64 %7
  %old_val.0 = add i64 %6, %old_val.0.p
  %8 = tail call i64 @llvm.bswap.i64(i64 %old_val.0) #16
  %9 = ptrtoint ptr %bytes_used.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %bytes_used.i, align 1
  tail call void @_raw_spin_unlock(ptr noundef %delalloc_root_lock) #16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %num_bytes)
  %tobool3.not188 = icmp eq i64 %num_bytes, 0
  br i1 %tobool3.not188, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 31
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %delayed_ref_updates = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 3
  %alloc.not = xor i1 %alloc, true
  br label %while.body

while.body:                                       ; preds = %if.end101.while.body_crit_edge, %while.body.lr.ph
  %bytenr.addr.0190 = phi i64 [ %bytenr, %while.body.lr.ph ], [ %add103, %if.end101.while.body_crit_edge ]
  %total.0189 = phi i64 [ %num_bytes, %while.body.lr.ph ], [ %sub102, %if.end101.while.body_crit_edge ]
  %call.i = tail call fastcc ptr @block_group_cache_tree_search(ptr noundef %1, i64 noundef %bytenr.addr.0190, i32 noundef 1) #16
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %while.body.while.end_crit_edge, label %if.end7

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end7:                                          ; preds = %while.body
  %flags = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 10
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %flags, align 8
  %call8 = tail call i32 @btrfs_bg_type_to_factor(i64 noundef %11) #16
  br i1 %alloc, label %if.end7.if.end14_crit_edge, label %land.lhs.true

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !182
  %cached.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 19
  %12 = ptrtoint ptr %cached.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cached.i, align 8
  %14 = add i32 %13, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %14)
  %15 = icmp ult i32 %14, -2
  br i1 %15, label %if.then12, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %call13 = tail call i32 @btrfs_cache_block_group(ptr noundef nonnull %call.i, i32 noundef 1)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %start, align 8
  %sub15 = sub i64 %bytenr.addr.0190, %17
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub15, i64 %19)
  %cmp = icmp ugt i64 %sub15, %19
  br i1 %cmp, label %do.end, label %if.end14.if.end30_crit_edge, !prof !172

if.end14.if.end30_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3242, i32 noundef 9, ptr noundef null) #16
  br label %if.end30

if.end30:                                         ; preds = %do.end, %if.end14.if.end30_crit_edge
  %space_info = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 22
  %20 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %space_info, align 8
  tail call void @_raw_spin_lock(ptr noundef %21) #16
  %lock37 = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock37) #16
  %22 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mount_opt, align 8
  %and = and i32 %23, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.end30.if.end43_crit_edge, label %land.lhs.true39

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

land.lhs.true39:                                  ; preds = %if.end30
  %disk_cache_state = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 18
  %24 = ptrtoint ptr %disk_cache_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %disk_cache_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp40 = icmp slt i32 %25, 2
  br i1 %cmp40, label %if.then41, label %land.lhs.true39.if.end43_crit_edge

land.lhs.true39.if.end43_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then41:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %disk_cache_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %disk_cache_state, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %land.lhs.true39.if.end43_crit_edge, %if.end30.if.end43_crit_edge
  %used = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %used to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %used, align 8
  %29 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %length, align 8
  %sub45 = sub i64 %30, %sub15
  %31 = tail call i64 @llvm.umin.i64(i64 %total.0189, i64 %sub45)
  br i1 %alloc, label %if.then49, label %if.else62

if.then49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  %add50 = add i64 %31, %28
  %32 = ptrtoint ptr %used to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add50, ptr %used, align 8
  %reserved = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 6
  %33 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %reserved, align 8
  %sub52 = sub i64 %34, %31
  store i64 %sub52, ptr %reserved, align 8
  %35 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %space_info, align 8
  %bytes_reserved = getelementptr inbounds %struct.btrfs_space_info, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %bytes_reserved to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %bytes_reserved, align 8
  %sub54 = sub i64 %38, %31
  store i64 %sub54, ptr %bytes_reserved, align 8
  %39 = load ptr, ptr %space_info, align 8
  %bytes_used = getelementptr inbounds %struct.btrfs_space_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %bytes_used to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %bytes_used, align 8
  %add56 = add i64 %41, %31
  store i64 %add56, ptr %bytes_used, align 8
  %conv = sext i32 %call8 to i64
  %mul = mul i64 %31, %conv
  %42 = load ptr, ptr %space_info, align 8
  %disk_used = getelementptr inbounds %struct.btrfs_space_info, ptr %42, i32 0, i32 12
  %43 = ptrtoint ptr %disk_used to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %disk_used, align 8
  %add58 = add i64 %44, %mul
  store i64 %add58, ptr %disk_used, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock37) #16
  %45 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %space_info, align 8
  tail call void @_raw_spin_unlock(ptr noundef %46) #16
  br label %if.end81

if.else62:                                        ; preds = %if.end43
  %sub63 = sub i64 %28, %31
  %47 = ptrtoint ptr %used to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %sub63, ptr %used, align 8
  %pinned = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 5
  %48 = ptrtoint ptr %pinned to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %pinned, align 8
  %add65 = add i64 %49, %31
  store i64 %add65, ptr %pinned, align 8
  %50 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %space_info, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %cmp.i = icmp slt i64 %31, 0
  %sub.i = sub i64 0, %31
  %cond.i = select i1 %cmp.i, i64 %sub.i, i64 %31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %52 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i, label %if.else62.if.end.i_crit_edge, label %land.rhs.i

if.else62.if.end.i_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.else62
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %51, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp1.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !172

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 111, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.else62.if.end.i_crit_edge
  %bytes_pinned.i = getelementptr inbounds %struct.btrfs_space_info, ptr %51, i32 0, i32 3
  %53 = ptrtoint ptr %bytes_pinned.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %bytes_pinned.i, align 8
  tail call fastcc void @trace_update_bytes_pinned(ptr noundef %1, ptr noundef %51, i64 noundef %54, i64 noundef %31) #16
  %flags.i = getelementptr inbounds %struct.btrfs_space_info, ptr %51, i32 0, i32 14
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %cmp25.i = icmp sgt i64 %31, 0
  %conv.i = zext i1 %cmp25.i to i32
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %1, ptr noundef nonnull @.str.39, i64 noundef %56, i64 noundef %cond.i, i32 noundef %conv.i) #16
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end60.i_crit_edge

if.end.i.if.end60.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %57 = ptrtoint ptr %bytes_pinned.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %bytes_pinned.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %sub.i)
  %cmp30.i = icmp ult i64 %58, %sub.i
  br i1 %cmp30.i, label %do.end45.i, label %land.lhs.true.i.if.end60.i_crit_edge

land.lhs.true.i.if.end60.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60.i

do.end45.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 111, i32 noundef 9, ptr noundef null) #16
  br label %btrfs_space_info_update_bytes_pinned.exit

if.end60.i:                                       ; preds = %land.lhs.true.i.if.end60.i_crit_edge, %if.end.i.if.end60.i_crit_edge
  %59 = ptrtoint ptr %bytes_pinned.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %bytes_pinned.i, align 8
  %add.i = add i64 %60, %31
  br label %btrfs_space_info_update_bytes_pinned.exit

btrfs_space_info_update_bytes_pinned.exit:        ; preds = %if.end60.i, %do.end45.i
  %storemerge.i = phi i64 [ %add.i, %if.end60.i ], [ 0, %do.end45.i ]
  %61 = ptrtoint ptr %bytes_pinned.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %storemerge.i, ptr %bytes_pinned.i, align 8
  %62 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %space_info, align 8
  %bytes_used68 = getelementptr inbounds %struct.btrfs_space_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %bytes_used68 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %bytes_used68, align 8
  %sub69 = sub i64 %65, %31
  store i64 %sub69, ptr %bytes_used68, align 8
  %conv70 = sext i32 %call8 to i64
  %mul71 = mul i64 %31, %conv70
  %66 = load ptr, ptr %space_info, align 8
  %disk_used73 = getelementptr inbounds %struct.btrfs_space_info, ptr %66, i32 0, i32 12
  %67 = ptrtoint ptr %disk_used73 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %disk_used73, align 8
  %sub74 = sub i64 %68, %mul71
  store i64 %sub74, ptr %disk_used73, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock37) #16
  %69 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %space_info, align 8
  tail call void @_raw_spin_unlock(ptr noundef %70) #16
  %71 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %transaction, align 4
  %pinned_extents = getelementptr inbounds %struct.btrfs_transaction, ptr %72, i32 0, i32 18
  %add78 = add i64 %31, %bytenr.addr.0190
  %sub79 = add i64 %add78, -1
  %call.i184 = tail call i32 @set_extent_bit(ptr noundef %pinned_extents, i64 noundef %bytenr.addr.0190, i64 noundef %sub79, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 35904, ptr noundef null) #16
  br label %if.end81

if.end81:                                         ; preds = %btrfs_space_info_update_bytes_pinned.exit, %if.then49
  %old_val.1 = phi i64 [ %add50, %if.then49 ], [ %sub63, %btrfs_space_info_update_bytes_pinned.exit ]
  %73 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %transaction, align 4
  %dirty_bgs_lock = getelementptr inbounds %struct.btrfs_transaction, ptr %74, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %dirty_bgs_lock) #16
  %dirty_list = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 36
  %75 = ptrtoint ptr %dirty_list to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %dirty_list, align 4
  %cmp.i185.not = icmp eq ptr %76, %dirty_list
  br i1 %cmp.i185.not, label %if.then85, label %if.end81.if.end88_crit_edge

if.end81.if.end88_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end88

if.then85:                                        ; preds = %if.end81
  %77 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %transaction, align 4
  %dirty_bgs = getelementptr inbounds %struct.btrfs_transaction, ptr %78, i32 0, i32 15
  %prev.i = getelementptr inbounds %struct.btrfs_transaction, ptr %78, i32 0, i32 15, i32 1
  %79 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i, align 4
  %call.i.i187 = tail call zeroext i1 @__list_add_valid(ptr noundef %dirty_list, ptr noundef %80, ptr noundef %dirty_bgs) #16
  br i1 %call.i.i187, label %if.end.i.i, label %if.then85.list_add_tail.exit_crit_edge

if.then85.list_add_tail.exit_crit_edge:           ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #18
  %81 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %dirty_list, ptr %prev.i, align 4
  %82 = ptrtoint ptr %dirty_list to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %dirty_bgs, ptr %dirty_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 36, i32 1
  %83 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev3.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %dirty_list, ptr %80, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then85.list_add_tail.exit_crit_edge
  %85 = ptrtoint ptr %delayed_ref_updates to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %delayed_ref_updates, align 8
  %inc = add i32 %86, 1
  store i32 %inc, ptr %delayed_ref_updates, align 8
  %refs.i = getelementptr inbounds %struct.btrfs_block_group, ptr %call.i, i32 0, i32 26
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #16
  %87 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #16, !srcloc !171
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !172

list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %list_add_tail.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %88 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %.not.i.i.i.i = icmp sgt i32 %88, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end88_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !173

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end88_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end88

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #16
  br label %if.end88

if.end88:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end88_crit_edge, %if.end81.if.end88_crit_edge
  %89 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %transaction, align 4
  %dirty_bgs_lock90 = getelementptr inbounds %struct.btrfs_transaction, ptr %90, i32 0, i32 20
  tail call void @_raw_spin_unlock(ptr noundef %dirty_bgs_lock90) #16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %old_val.1)
  %cmp93 = icmp eq i64 %old_val.1, 0
  %or.cond = select i1 %alloc.not, i1 %cmp93, i1 false
  br i1 %or.cond, label %if.then95, label %if.end88.if.end101_crit_edge

if.end88.if.end101_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101

if.then95:                                        ; preds = %if.end88
  %91 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mount_opt, align 8
  %and97 = and i32 %92, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.then99, label %if.then95.if.end101_crit_edge

if.then95.if.end101_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101

if.then99:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @btrfs_mark_bg_unused(ptr noundef nonnull %call.i)
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.then95.if.end101_crit_edge, %if.end88.if.end101_crit_edge
  tail call void @btrfs_put_block_group(ptr noundef nonnull %call.i)
  %sub102 = sub i64 %total.0189, %31
  %add103 = add i64 %31, %bytenr.addr.0190
  %tobool3.not = icmp eq i64 %sub102, 0
  br i1 %tobool3.not, label %if.end101.while.end_crit_edge, label %if.end101.while.body_crit_edge

if.end101.while.body_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end101.while.end_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end101.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.while.end_crit_edge ], [ -2, %while.body.while.end_crit_edge ], [ 0, %if.end101.while.end_crit_edge ]
  tail call void @btrfs_update_delayed_refs_rsv(ptr noundef %trans) #16
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_add_reserved_bytes(ptr noundef %cache, i64 noundef %ram_bytes, i64 noundef %num_bytes, i32 noundef %delalloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %space_info1 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 22
  %0 = ptrtoint ptr %space_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %space_info1, align 8
  tail call void @_raw_spin_lock(ptr noundef %1) #16
  %lock2 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock2) #16
  %ro = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 16
  %2 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.else:                                          ; preds = %entry
  %reserved = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 6
  %4 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %reserved, align 8
  %add = add i64 %5, %num_bytes
  store i64 %add, ptr %reserved, align 8
  %bytes_reserved = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %bytes_reserved to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bytes_reserved, align 8
  %add3 = add i64 %7, %num_bytes
  store i64 %add3, ptr %bytes_reserved, align 8
  %8 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cache, align 8
  %flags = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %flags, align 8
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %9, ptr noundef nonnull @.str.17, i64 noundef %11, i64 noundef %num_bytes, i32 noundef 1)
  %12 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cache, align 8
  %sub = sub i64 0, %ram_bytes
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp.i = icmp slt i64 %sub, 0
  %cond.i = select i1 %cmp.i, i64 %ram_bytes, i64 %sub
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %14 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.else.if.end.i_crit_edge, label %land.rhs.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.else
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp1.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !172

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 110, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  %bytes_may_use.i = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %bytes_may_use.i, align 8
  tail call fastcc void @trace_update_bytes_may_use(ptr noundef %13, ptr noundef %1, i64 noundef %16, i64 noundef %sub) #16
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp25.i = icmp sgt i64 %sub, 0
  %conv.i = zext i1 %cmp25.i to i32
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %13, ptr noundef nonnull @.str.17, i64 noundef %18, i64 noundef %cond.i, i32 noundef %conv.i) #16
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end60.i_crit_edge

if.end.i.if.end60.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %19 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %bytes_may_use.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %ram_bytes)
  %cmp30.i = icmp ult i64 %20, %ram_bytes
  br i1 %cmp30.i, label %do.end45.i, label %land.lhs.true.i.if.end60.i_crit_edge

land.lhs.true.i.if.end60.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60.i

do.end45.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 110, i32 noundef 9, ptr noundef null) #16
  br label %btrfs_space_info_update_bytes_may_use.exit

if.end60.i:                                       ; preds = %land.lhs.true.i.if.end60.i_crit_edge, %if.end.i.if.end60.i_crit_edge
  %21 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bytes_may_use.i, align 8
  %add.i = sub i64 %22, %ram_bytes
  br label %btrfs_space_info_update_bytes_may_use.exit

btrfs_space_info_update_bytes_may_use.exit:       ; preds = %if.end60.i, %do.end45.i
  %storemerge.i = phi i64 [ %add.i, %if.end60.i ], [ 0, %do.end45.i ]
  %23 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %storemerge.i, ptr %bytes_may_use.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delalloc)
  %tobool5.not = icmp eq i32 %delalloc, 0
  br i1 %tobool5.not, label %btrfs_space_info_update_bytes_may_use.exit.if.end_crit_edge, label %if.then6

btrfs_space_info_update_bytes_may_use.exit.if.end_crit_edge: ; preds = %btrfs_space_info_update_bytes_may_use.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then6:                                         ; preds = %btrfs_space_info_update_bytes_may_use.exit
  call void @__sanitizer_cov_trace_pc() #18
  %delalloc_bytes = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 8
  %24 = ptrtoint ptr %delalloc_bytes to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %delalloc_bytes, align 8
  %add7 = add i64 %25, %num_bytes
  store i64 %add7, ptr %delalloc_bytes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %btrfs_space_info_update_bytes_may_use.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %num_bytes, i64 %ram_bytes)
  %cmp = icmp ult i64 %num_bytes, %ram_bytes
  br i1 %cmp, label %if.then8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cache, align 8
  tail call void @btrfs_try_granting_tickets(ptr noundef %27, ptr noundef %1) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  %ret.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.end.if.end11_crit_edge ], [ -11, %entry.if.end11_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock2) #16
  tail call void @_raw_spin_unlock(ptr noundef %1) #16
  ret i32 %ret.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, ptr noundef %type, i64 noundef %val, i64 noundef %bytes, i32 noundef %reserve) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 1), ptr blockaddress(@trace_btrfs_space_reservation, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !190

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !173

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !218
  %call42 = tail call i32 @__traceiter_btrfs_space_reservation(ptr noundef null, ptr noundef %fs_info, ptr noundef %type, i64 noundef %val, i64 noundef %bytes, i32 noundef %reserve) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !219
  %13 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !173

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_space_reservation.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_btrfs_space_reservation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 1076, ptr noundef nonnull @.str.31) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !194
  %31 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
declare dso_local void @btrfs_try_granting_tickets(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_free_reserved_bytes(ptr noundef %cache, i64 noundef %num_bytes, i32 noundef %delalloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %space_info1 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 22
  %0 = ptrtoint ptr %space_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %space_info1, align 8
  tail call void @_raw_spin_lock(ptr noundef %1) #16
  %lock2 = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock2) #16
  %ro = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 16
  %2 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %bytes_readonly = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %bytes_readonly to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bytes_readonly, align 8
  %add = add i64 %5, %num_bytes
  store i64 %add, ptr %bytes_readonly, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reserved = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 6
  %6 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %reserved, align 8
  %sub = sub i64 %7, %num_bytes
  store i64 %sub, ptr %reserved, align 8
  %bytes_reserved = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %bytes_reserved to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bytes_reserved, align 8
  %sub3 = sub i64 %9, %num_bytes
  store i64 %sub3, ptr %bytes_reserved, align 8
  %max_extent_size = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %max_extent_size to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %max_extent_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delalloc)
  %tobool4.not = icmp eq i32 %delalloc, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %delalloc_bytes = getelementptr inbounds %struct.btrfs_block_group, ptr %cache, i32 0, i32 8
  %11 = ptrtoint ptr %delalloc_bytes to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %delalloc_bytes, align 8
  %sub6 = sub i64 %12, %num_bytes
  store i64 %sub6, ptr %delalloc_bytes, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock2) #16
  %13 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cache, align 8
  tail call void @btrfs_try_granting_tickets(ptr noundef %14, ptr noundef %1) #16
  tail call void @_raw_spin_unlock(ptr noundef %1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_force_chunk_alloc(ptr noundef %trans, i64 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 4
  %call = tail call i64 @btrfs_get_alloc_profile(ptr noundef %1, i64 noundef %type), !range !208
  %call1 = tail call i32 @btrfs_chunk_alloc(ptr noundef %trans, i64 noundef %call, i32 noundef 2)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_chunk_alloc(ptr noundef %trans, i64 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1.i, align 4
  %call.i.i = tail call i32 @btrfs_bg_flags_to_raid_index(i64 noundef %flags) #22
  %devs_max.i.i = getelementptr [9 x %struct.btrfs_raid_attr], ptr @btrfs_raid_array, i32 0, i32 %call.i.i, i32 2
  %2 = ptrtoint ptr %devs_max.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %devs_max.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  %extract.t.i = zext i8 %3 to i32
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.check_system_chunk.exit_crit_edge

entry.check_system_chunk.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_system_chunk.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %fs_devices.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 100
  %4 = ptrtoint ptr %fs_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_devices.i.i, align 8
  %rw_devices.i.i = getelementptr inbounds %struct.btrfs_fs_devices, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %rw_devices.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rw_devices.i.i, align 8
  %extract.t11.i = trunc i64 %7 to i32
  br label %check_system_chunk.exit

check_system_chunk.exit:                          ; preds = %if.then.i.i, %entry.check_system_chunk.exit_crit_edge
  %num_dev.0.i.off0.i = phi i32 [ %extract.t.i, %entry.check_system_chunk.exit_crit_edge ], [ %extract.t11.i, %if.then.i.i ]
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %8 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nodesize.i.i, align 8
  %conv.i8.i = zext i32 %9 to i64
  %conv1.i.i = zext i32 %num_dev.0.i.off0.i to i64
  %mul.i.i = shl nuw nsw i64 %conv1.i.i, 3
  %mul2.i12.i = add nuw nsw i64 %mul.i.i, 16
  %add.i = mul i64 %mul2.i12.i, %conv.i8.i
  tail call fastcc void @reserve_chunk_space(ptr noundef %trans, i64 noundef %add.i, i64 noundef %flags) #16
  %call = tail call ptr @btrfs_create_chunk(ptr noundef %trans, i64 noundef %flags) #16
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %check_system_chunk.exit
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %call to i32
  br label %out

if.end:                                           ; preds = %check_system_chunk.exit
  %call3 = tail call i32 @btrfs_chunk_alloc_add_chunk_item(ptr noundef %trans, ptr noundef %call) #16
  %11 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call3, label %do.body182 [
    i32 -28, label %if.then4
    i32 0, label %if.end.out_crit_edge
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then4:                                         ; preds = %if.end
  %12 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fs_info1.i, align 4
  %call.i = tail call i64 @btrfs_get_alloc_profile(ptr noundef %13, i64 noundef 2) #16
  %call6 = tail call ptr @btrfs_create_chunk(ptr noundef %trans, i64 noundef %call.i) #16
  %cmp.i306 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i306, label %if.then8, label %if.end53

if.then8:                                         ; preds = %if.then4
  %14 = ptrtoint ptr %call6 to i32
  %15 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fs_info1.i, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %16, i32 0, i32 149
  %call11 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %if.then8.if.end50_crit_edge

if.then8.if.end50_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50

if.then12:                                        ; preds = %if.then8
  %17 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %14, label %do.end [
    i32 -5, label %if.then12.do.body34_crit_edge
    i32 -30, label %if.then12.do.body34_crit_edge311
  ]

if.then12.do.body34_crit_edge311:                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body34

if.then12.do.body34_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body34

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3493, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %14) #16
  br label %if.end50

do.body34:                                        ; preds = %if.then12.do.body34_crit_edge, %if.then12.do.body34_crit_edge311
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_chunk_alloc.__UNIQUE_ID_ddebug944, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_chunk_alloc, %if.then44)) #16
          to label %if.end50 [label %if.then44], !srcloc !190

if.then44:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fs_info1.i, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %19, ptr noundef nonnull @.str.13, i32 noundef %14) #20
  br label %if.end50

if.end50:                                         ; preds = %if.then44, %do.body34, %do.end, %if.then8.if.end50_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.58, i32 noundef 3493, i32 noundef %14) #20
  br label %out

if.end53:                                         ; preds = %if.then4
  %call54 = tail call i32 @btrfs_chunk_alloc_add_chunk_item(ptr noundef %trans, ptr noundef %call6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end115, label %do.body57

do.body57:                                        ; preds = %if.end53
  %20 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fs_info1.i, align 4
  %fs_state59 = getelementptr inbounds %struct.btrfs_fs_info, ptr %21, i32 0, i32 149
  %call60 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state59) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then62, label %do.body57.if.end112_crit_edge

do.body57.if.end112_crit_edge:                    ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end112

if.then62:                                        ; preds = %do.body57
  %22 = zext i32 %call54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %call54, label %do.end79 [
    i32 -5, label %if.then62.do.body94_crit_edge
    i32 -30, label %if.then62.do.body94_crit_edge312
  ]

if.then62.do.body94_crit_edge312:                 ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body94

if.then62.do.body94_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body94

do.end79:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3499, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %call54) #16
  br label %if.end112

do.body94:                                        ; preds = %if.then62.do.body94_crit_edge, %if.then62.do.body94_crit_edge312
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_chunk_alloc.__UNIQUE_ID_ddebug945, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_chunk_alloc, %if.then106)) #16
          to label %if.end112 [label %if.then106], !srcloc !190

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fs_info1.i, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %24, ptr noundef nonnull @.str.13, i32 noundef %call54) #20
  br label %if.end112

if.end112:                                        ; preds = %if.then106, %do.body94, %do.end79, %do.body57.if.end112_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.58, i32 noundef 3499, i32 noundef %call54) #20
  br label %out

if.end115:                                        ; preds = %if.end53
  %call116 = tail call i32 @btrfs_chunk_alloc_add_chunk_item(ptr noundef %trans, ptr noundef %call) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end115.out_crit_edge, label %do.body119

if.end115.out_crit_edge:                          ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.body119:                                       ; preds = %if.end115
  %25 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fs_info1.i, align 4
  %fs_state121 = getelementptr inbounds %struct.btrfs_fs_info, ptr %26, i32 0, i32 149
  %call122 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state121) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then124, label %do.body119.if.end174_crit_edge

do.body119.if.end174_crit_edge:                   ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end174

if.then124:                                       ; preds = %do.body119
  %27 = zext i32 %call116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call116, label %do.end141 [
    i32 -5, label %if.then124.do.body156_crit_edge
    i32 -30, label %if.then124.do.body156_crit_edge313
  ]

if.then124.do.body156_crit_edge313:               ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body156

if.then124.do.body156_crit_edge:                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body156

do.end141:                                        ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3505, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %call116) #16
  br label %if.end174

do.body156:                                       ; preds = %if.then124.do.body156_crit_edge, %if.then124.do.body156_crit_edge313
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_chunk_alloc.__UNIQUE_ID_ddebug946, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_chunk_alloc, %if.then168)) #16
          to label %if.end174 [label %if.then168], !srcloc !190

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fs_info1.i, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %29, ptr noundef nonnull @.str.13, i32 noundef %call116) #20
  br label %if.end174

if.end174:                                        ; preds = %if.then168, %do.body156, %do.end141, %do.body119.if.end174_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.58, i32 noundef 3505, i32 noundef %call116) #20
  br label %out

do.body182:                                       ; preds = %if.end
  %30 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fs_info1.i, align 4
  %fs_state184 = getelementptr inbounds %struct.btrfs_fs_info, ptr %31, i32 0, i32 149
  %call185 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state184) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.then187, label %do.body182.if.end237_crit_edge

do.body182.if.end237_crit_edge:                   ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end237

if.then187:                                       ; preds = %do.body182
  %32 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %call3, label %do.end204 [
    i32 -5, label %if.then187.do.body219_crit_edge
    i32 -30, label %if.then187.do.body219_crit_edge314
  ]

if.then187.do.body219_crit_edge314:               ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body219

if.then187.do.body219_crit_edge:                  ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body219

do.end204:                                        ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3509, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %call3) #16
  br label %if.end237

do.body219:                                       ; preds = %if.then187.do.body219_crit_edge, %if.then187.do.body219_crit_edge314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_chunk_alloc.__UNIQUE_ID_ddebug947, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_chunk_alloc, %if.then231)) #16
          to label %if.end237 [label %if.then231], !srcloc !190

if.then231:                                       ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fs_info1.i, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %34, ptr noundef nonnull @.str.13, i32 noundef %call3) #20
  br label %if.end237

if.end237:                                        ; preds = %if.then231, %do.body219, %do.end204, %do.body182.if.end237_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.58, i32 noundef 3509, i32 noundef %call3) #20
  br label %out

out:                                              ; preds = %if.end237, %if.end174, %if.end115.out_crit_edge, %if.end112, %if.end50, %if.end.out_crit_edge, %if.then
  %ret.1 = phi i32 [ %10, %if.then ], [ %call3, %if.end237 ], [ %14, %if.end50 ], [ %call54, %if.end112 ], [ %call116, %if.end174 ], [ 0, %if.end115.out_crit_edge ], [ %call3, %if.end.out_crit_edge ]
  tail call void @btrfs_trans_release_chunk_metadata(ptr noundef %trans) #16
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reserve_chunk_space(ptr noundef %trans, i64 noundef %bytes, i64 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 50, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !172

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3770, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call25 = tail call ptr @btrfs_find_space_info(ptr noundef %1, i64 noundef 2) #16
  tail call void @_raw_spin_lock(ptr noundef %call25) #16
  %total_bytes = getelementptr inbounds %struct.btrfs_space_info, ptr %call25, i32 0, i32 1
  %3 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %total_bytes, align 8
  %call26 = tail call i64 @btrfs_space_info_used(ptr noundef %call25, i1 noundef zeroext true) #23
  %sub = sub i64 %4, %call26
  tail call void @_raw_spin_unlock(ptr noundef %call25) #16
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %bytes)
  %cmp28 = icmp ult i64 %sub, %bytes
  br i1 %cmp28, label %land.lhs.true, label %if.end.if.then43_crit_edge

if.end.if.then43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then43

land.lhs.true:                                    ; preds = %if.end
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 31
  %5 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mount_opt, align 8
  %and = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %land.lhs.true.if.then33_crit_edge, label %if.then30

land.lhs.true.if.then33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then33

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.59, i64 noundef %sub, i64 noundef %bytes, i64 noundef %type) #20
  tail call void @btrfs_dump_space_info(ptr noundef %1, ptr noundef %call25, i64 noundef 0, i32 noundef 0) #16
  br label %if.then33

if.then33:                                        ; preds = %if.then30, %land.lhs.true.if.then33_crit_edge
  %call.i74 = tail call i64 @btrfs_get_alloc_profile(ptr noundef %1, i64 noundef 2) #16
  %call35 = tail call ptr @btrfs_create_chunk(ptr noundef %trans, i64 noundef %call.i74) #16
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33.if.end48_crit_edge, label %if.else

if.then33.if.end48_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.else:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #18
  %call39 = tail call i32 @btrfs_chunk_alloc_add_chunk_item(ptr noundef %trans, ptr noundef %call35) #16
  br label %if.then43

if.then43:                                        ; preds = %if.else, %if.end.if.then43_crit_edge
  %chunk_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 22
  %call44 = tail call i32 @btrfs_block_rsv_add(ptr noundef %1, ptr noundef %chunk_block_rsv, i64 noundef %bytes, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.then43.if.end48_crit_edge

if.then43.if.end48_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.then46:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #18
  %chunk_bytes_reserved = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 2
  %7 = ptrtoint ptr %chunk_bytes_reserved to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %chunk_bytes_reserved, align 8
  %add = add i64 %8, %bytes
  store i64 %add, ptr %chunk_bytes_reserved, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.then43.if.end48_crit_edge, %if.then33.if.end48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_reserve_chunk_metadata(ptr noundef %trans, i1 noundef zeroext %is_item_insertion) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %2 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nodesize.i, align 8
  %conv.i = zext i32 %3 to i64
  %. = select i1 %is_item_insertion, i64 4, i64 3
  %mul2.i = shl nuw nsw i64 %conv.i, %.
  %chunk_mutex = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 50
  tail call void @mutex_lock_nested(ptr noundef %chunk_mutex, i32 noundef 0) #16
  tail call fastcc void @reserve_chunk_space(ptr noundef %trans, i64 noundef %mul2.i, i64 noundef 2)
  tail call void @mutex_unlock(ptr noundef %chunk_mutex) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_put_block_group_cache(ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %last.0 = phi i64 [ 0, %entry ], [ %last.0.be, %while.cond.backedge ]
  %call.i = tail call fastcc ptr @block_group_cache_tree_search(ptr noundef %info, i64 noundef %last.0, i32 noundef 0) #16
  %tobool.not38 = icmp eq ptr %call.i, null
  br i1 %tobool.not38, label %while.cond.if.then8.critedge_crit_edge, label %while.cond.while.body2_crit_edge

while.cond.while.body2_crit_edge:                 ; preds = %while.cond
  br label %while.body2

while.cond.if.then8.critedge_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8.critedge

while.body2:                                      ; preds = %if.end.while.body2_crit_edge, %while.cond.while.body2_crit_edge
  %block_group.039 = phi ptr [ %call6, %if.end.while.body2_crit_edge ], [ %call.i, %while.cond.while.body2_crit_edge ]
  %call3 = tail call i32 @btrfs_wait_block_group_cache_done(ptr noundef nonnull %block_group.039)
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group.039, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %iref = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group.039, i32 0, i32 17
  %0 = ptrtoint ptr %iref to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %iref, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %if.end, label %if.end11

if.end:                                           ; preds = %while.body2
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  %call6 = tail call ptr @btrfs_next_block_group(ptr noundef nonnull %block_group.039)
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.if.then8.critedge_crit_edge, label %if.end.while.body2_crit_edge

if.end.while.body2_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body2

if.end.if.then8.critedge_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8.critedge

if.then8.critedge:                                ; preds = %if.end.if.then8.critedge_crit_edge, %while.cond.if.then8.critedge_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %last.0)
  %cmp = icmp eq i64 %last.0, 0
  br i1 %cmp, label %while.end21, label %if.then8.critedge.while.cond.backedge_crit_edge

if.then8.critedge.while.cond.backedge_crit_edge:  ; preds = %if.then8.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %cond.end, %if.then8.critedge.while.cond.backedge_crit_edge
  %last.0.be = phi i64 [ %add, %cond.end ], [ 0, %if.then8.critedge.while.cond.backedge_crit_edge ]
  br label %while.cond

if.end11:                                         ; preds = %while.body2
  %iref.le = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group.039, i32 0, i32 17
  %inode12 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group.039, i32 0, i32 1
  %1 = ptrtoint ptr %inode12 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %inode12, align 4
  %bf.clear = and i8 %bf.load, 127
  %3 = ptrtoint ptr %iref.le to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.clear, ptr %iref.le, align 8
  store ptr null, ptr %inode12, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  %inode17 = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group.039, i32 0, i32 38, i32 5
  %4 = ptrtoint ptr %inode17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inode17, align 4
  %cmp18 = icmp eq ptr %5, null
  br i1 %cmp18, label %cond.end, label %cond.false, !prof !173

cond.false:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.18, i32 noundef 3897) #19
  unreachable

cond.end:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @iput(ptr noundef %2) #16
  %start = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group.039, i32 0, i32 3
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %length = getelementptr inbounds %struct.btrfs_block_group, ptr %block_group.039, i32 0, i32 4
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %length, align 8
  %add = add i64 %9, %7
  tail call void @btrfs_put_block_group(ptr noundef nonnull %block_group.039)
  br label %while.cond.backedge

while.end21:                                      ; preds = %if.then8.critedge
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_free_block_groups(ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %block_group_cache_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %block_group_cache_lock) #16
  %caching_block_groups = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 61
  %0 = ptrtoint ptr %caching_block_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %caching_block_groups, align 4
  %cmp.i.not343 = icmp eq ptr %1, %caching_block_groups
  br i1 %cmp.i.not343, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %btrfs_put_caching_control.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %13, %btrfs_put_caching_control.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #16
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %count.i = getelementptr inbounds %struct.btrfs_caching_control, ptr %2, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #16
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #16, !srcloc !175
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.btrfs_put_caching_control.exit_crit_edge, label %if.then10.i.i.i.i, !prof !173

if.end5.i.i.i.i.btrfs_put_caching_control.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %btrfs_put_caching_control.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #16
  br label %btrfs_put_caching_control.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !176
  tail call void @kfree(ptr noundef %2) #16
  br label %btrfs_put_caching_control.exit

btrfs_put_caching_control.exit:                   ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.btrfs_put_caching_control.exit_crit_edge
  %12 = ptrtoint ptr %caching_block_groups to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %caching_block_groups, align 4
  %cmp.i.not = icmp eq ptr %13, %caching_block_groups
  br i1 %cmp.i.not, label %btrfs_put_caching_control.exit.while.end_crit_edge, label %btrfs_put_caching_control.exit.while.body_crit_edge

btrfs_put_caching_control.exit.while.body_crit_edge: ; preds = %btrfs_put_caching_control.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

btrfs_put_caching_control.exit.while.end_crit_edge: ; preds = %btrfs_put_caching_control.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %btrfs_put_caching_control.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %block_group_cache_lock) #16
  %unused_bgs_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 162
  tail call void @_raw_spin_lock(ptr noundef %unused_bgs_lock) #16
  %unused_bgs = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 163
  %14 = ptrtoint ptr %unused_bgs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %unused_bgs, align 4
  %cmp.i301.not344 = icmp eq ptr %15, %unused_bgs
  br i1 %cmp.i301.not344, label %while.end.while.cond14.preheader_crit_edge, label %while.end.while.body7_crit_edge

while.end.while.body7_crit_edge:                  ; preds = %while.end
  br label %while.body7

while.end.while.cond14.preheader_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond14.preheader

while.cond14.preheader:                           ; preds = %list_del_init.exit.while.cond14.preheader_crit_edge, %while.end.while.cond14.preheader_crit_edge
  %reclaim_bgs = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 160
  %16 = ptrtoint ptr %reclaim_bgs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %reclaim_bgs, align 4
  %cmp.i307.not345 = icmp eq ptr %17, %reclaim_bgs
  br i1 %cmp.i307.not345, label %while.cond14.preheader.while.end25_crit_edge, label %while.cond14.preheader.while.body18_crit_edge

while.cond14.preheader.while.body18_crit_edge:    ; preds = %while.cond14.preheader
  br label %while.body18

while.cond14.preheader.while.end25_crit_edge:     ; preds = %while.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end25

while.body7:                                      ; preds = %list_del_init.exit.while.body7_crit_edge, %while.end.while.body7_crit_edge
  %18 = phi ptr [ %28, %list_del_init.exit.while.body7_crit_edge ], [ %15, %while.end.while.body7_crit_edge ]
  %add.ptr12 = getelementptr i8, ptr %18, i32 -304
  %call.i.i303 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #16
  br i1 %call.i.i303, label %if.end.i.i306, label %while.body7.list_del_init.exit_crit_edge

while.body7.list_del_init.exit_crit_edge:         ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i306:                                    ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i304 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i304 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i304, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %prev1.i.i.i305 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i305 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i305, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i306, %while.body7.list_del_init.exit_crit_edge
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %18, ptr %18, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %18, ptr %prev.i3.i, align 4
  tail call void @btrfs_put_block_group(ptr noundef %add.ptr12)
  %27 = ptrtoint ptr %unused_bgs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %unused_bgs, align 4
  %cmp.i301.not = icmp eq ptr %28, %unused_bgs
  br i1 %cmp.i301.not, label %list_del_init.exit.while.cond14.preheader_crit_edge, label %list_del_init.exit.while.body7_crit_edge

list_del_init.exit.while.body7_crit_edge:         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body7

list_del_init.exit.while.cond14.preheader_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond14.preheader

while.body18:                                     ; preds = %list_del_init.exit314.while.body18_crit_edge, %while.cond14.preheader.while.body18_crit_edge
  %29 = phi ptr [ %39, %list_del_init.exit314.while.body18_crit_edge ], [ %17, %while.cond14.preheader.while.body18_crit_edge ]
  %add.ptr23 = getelementptr i8, ptr %29, i32 -304
  %call.i.i309 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %29) #16
  br i1 %call.i.i309, label %if.end.i.i312, label %while.body18.list_del_init.exit314_crit_edge

while.body18.list_del_init.exit314_crit_edge:     ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit314

if.end.i.i312:                                    ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i310 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i310 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i310, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %prev1.i.i.i311 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i311 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i311, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del_init.exit314

list_del_init.exit314:                            ; preds = %if.end.i.i312, %while.body18.list_del_init.exit314_crit_edge
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %29, ptr %29, align 4
  %prev.i3.i313 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i3.i313 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %29, ptr %prev.i3.i313, align 4
  tail call void @btrfs_put_block_group(ptr noundef %add.ptr23)
  %38 = ptrtoint ptr %reclaim_bgs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %reclaim_bgs, align 4
  %cmp.i307.not = icmp eq ptr %39, %reclaim_bgs
  br i1 %cmp.i307.not, label %list_del_init.exit314.while.end25_crit_edge, label %list_del_init.exit314.while.body18_crit_edge

list_del_init.exit314.while.body18_crit_edge:     ; preds = %list_del_init.exit314
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body18

list_del_init.exit314.while.end25_crit_edge:      ; preds = %list_del_init.exit314
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end25

while.end25:                                      ; preds = %list_del_init.exit314.while.end25_crit_edge, %while.cond14.preheader.while.end25_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %unused_bgs_lock) #16
  %zone_active_bgs_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 182
  tail call void @_raw_spin_lock(ptr noundef %zone_active_bgs_lock) #16
  %zone_active_bgs = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 183
  %40 = ptrtoint ptr %zone_active_bgs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %zone_active_bgs, align 4
  %cmp.i315.not346 = icmp eq ptr %41, %zone_active_bgs
  br i1 %cmp.i315.not346, label %while.end25.while.end37_crit_edge, label %while.end25.while.body31_crit_edge

while.end25.while.body31_crit_edge:               ; preds = %while.end25
  br label %while.body31

while.end25.while.end37_crit_edge:                ; preds = %while.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end37

while.body31:                                     ; preds = %list_del_init.exit322.while.body31_crit_edge, %while.end25.while.body31_crit_edge
  %42 = phi ptr [ %52, %list_del_init.exit322.while.body31_crit_edge ], [ %41, %while.end25.while.body31_crit_edge ]
  %add.ptr36 = getelementptr i8, ptr %42, i32 -660
  %call.i.i317 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %42) #16
  br i1 %call.i.i317, label %if.end.i.i320, label %while.body31.list_del_init.exit322_crit_edge

while.body31.list_del_init.exit322_crit_edge:     ; preds = %while.body31
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit322

if.end.i.i320:                                    ; preds = %while.body31
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i318 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i318 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i318, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 4
  %prev1.i.i.i319 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i319 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i319, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del_init.exit322

list_del_init.exit322:                            ; preds = %if.end.i.i320, %while.body31.list_del_init.exit322_crit_edge
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %42, ptr %42, align 4
  %prev.i3.i321 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i3.i321 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %42, ptr %prev.i3.i321, align 4
  tail call void @btrfs_put_block_group(ptr noundef %add.ptr36)
  %51 = ptrtoint ptr %zone_active_bgs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %zone_active_bgs, align 4
  %cmp.i315.not = icmp eq ptr %52, %zone_active_bgs
  br i1 %cmp.i315.not, label %list_del_init.exit322.while.end37_crit_edge, label %list_del_init.exit322.while.body31_crit_edge

list_del_init.exit322.while.body31_crit_edge:     ; preds = %list_del_init.exit322
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body31

list_del_init.exit322.while.end37_crit_edge:      ; preds = %list_del_init.exit322
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end37

while.end37:                                      ; preds = %list_del_init.exit322.while.end37_crit_edge, %while.end25.while.end37_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %zone_active_bgs_lock) #16
  tail call void @_raw_spin_lock(ptr noundef %block_group_cache_lock) #16
  %block_group_cache_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 16
  %call41347 = tail call ptr @rb_last(ptr noundef %block_group_cache_tree) #16
  %cmp.not348 = icmp eq ptr %call41347, null
  br i1 %cmp.not348, label %while.end37.while.end118_crit_edge, label %while.end37.while.body42_crit_edge

while.end37.while.body42_crit_edge:               ; preds = %while.end37
  br label %while.body42

while.end37.while.end118_crit_edge:               ; preds = %while.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end118

while.body42:                                     ; preds = %cond.end116.while.body42_crit_edge, %while.end37.while.body42_crit_edge
  %call41349 = phi ptr [ %call41, %cond.end116.while.body42_crit_edge ], [ %call41347, %while.end37.while.body42_crit_edge ]
  %add.ptr45 = getelementptr i8, ptr %call41349, i32 -272
  tail call void @rb_erase(ptr noundef nonnull %call41349, ptr noundef %block_group_cache_tree) #16
  %53 = ptrtoint ptr %call41349 to i32
  %54 = ptrtoint ptr %call41349 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %call41349, align 8
  tail call void @_raw_spin_unlock(ptr noundef %block_group_cache_lock) #16
  %space_info50 = getelementptr i8, ptr %call41349, i32 -8
  %55 = ptrtoint ptr %space_info50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %space_info50, align 8
  %groups_sem = getelementptr inbounds %struct.btrfs_space_info, ptr %56, i32 0, i32 21
  tail call void @down_write(ptr noundef %groups_sem) #16
  %list51 = getelementptr i8, ptr %call41349, i32 12
  %call.i.i323 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list51) #16
  br i1 %call.i.i323, label %if.end.i.i326, label %while.body42.list_del.exit328_crit_edge

while.body42.list_del.exit328_crit_edge:          ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit328

if.end.i.i326:                                    ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i324 = getelementptr i8, ptr %call41349, i32 16
  %57 = ptrtoint ptr %prev.i.i324 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i324, align 4
  %59 = ptrtoint ptr %list51 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %list51, align 4
  %prev1.i.i.i325 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i325 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i325, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del.exit328

list_del.exit328:                                 ; preds = %if.end.i.i326, %while.body42.list_del.exit328_crit_edge
  %63 = ptrtoint ptr %list51 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 256 to ptr), ptr %list51, align 4
  %prev.i327 = getelementptr i8, ptr %call41349, i32 16
  %64 = ptrtoint ptr %prev.i327 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i327, align 4
  %65 = ptrtoint ptr %space_info50 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %space_info50, align 8
  %groups_sem53 = getelementptr inbounds %struct.btrfs_space_info, ptr %66, i32 0, i32 21
  tail call void @up_write(ptr noundef %groups_sem53) #16
  %cached = getelementptr i8, ptr %call41349, i32 -24
  %67 = ptrtoint ptr %cached to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cached, align 8
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %68, label %list_del.exit328.if.end_crit_edge [
    i32 0, label %list_del.exit328.if.then_crit_edge
    i32 4, label %list_del.exit328.if.then_crit_edge352
  ]

list_del.exit328.if.then_crit_edge352:            ; preds = %list_del.exit328
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

list_del.exit328.if.then_crit_edge:               ; preds = %list_del.exit328
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

list_del.exit328.if.end_crit_edge:                ; preds = %list_del.exit328
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %list_del.exit328.if.then_crit_edge, %list_del.exit328.if.then_crit_edge352
  tail call void @btrfs_free_excluded_extents(ptr noundef %add.ptr45) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit328.if.end_crit_edge
  tail call void @btrfs_remove_free_space_cache(ptr noundef %add.ptr45) #16
  %70 = ptrtoint ptr %cached to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cached, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp58.not = icmp eq i32 %71, 1
  br i1 %cmp58.not, label %cond.false, label %cond.end, !prof !172

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.19, i32 noundef 3975) #19
  unreachable

cond.end:                                         ; preds = %if.end
  %dirty_list = getelementptr i8, ptr %call41349, i32 84
  %72 = ptrtoint ptr %dirty_list to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %dirty_list, align 4
  %cmp.i329.not = icmp eq ptr %73, %dirty_list
  br i1 %cmp.i329.not, label %cond.end72, label %cond.false71, !prof !173

cond.false71:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.20, i32 noundef 3976) #19
  unreachable

cond.end72:                                       ; preds = %cond.end
  %io_list = getelementptr i8, ptr %call41349, i32 92
  %74 = ptrtoint ptr %io_list to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %io_list, align 4
  %cmp.i331.not = icmp eq ptr %75, %io_list
  br i1 %cmp.i331.not, label %cond.end83, label %cond.false82, !prof !173

cond.false82:                                     ; preds = %cond.end72
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.21, i32 noundef 3977) #19
  unreachable

cond.end83:                                       ; preds = %cond.end72
  %bg_list84 = getelementptr i8, ptr %call41349, i32 32
  %76 = ptrtoint ptr %bg_list84 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %bg_list84, align 4
  %cmp.i333.not = icmp eq ptr %77, %bg_list84
  br i1 %cmp.i333.not, label %cond.end95, label %cond.false94, !prof !173

cond.false94:                                     ; preds = %cond.end83
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.22, i32 noundef 3978) #19
  unreachable

cond.end95:                                       ; preds = %cond.end83
  %refs = getelementptr i8, ptr %call41349, i32 20
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refs, i32 noundef 4) #16
  %78 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp97 = icmp eq i32 %79, 1
  br i1 %cmp97, label %cond.end106, label %cond.false105, !prof !173

cond.false105:                                    ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.23, i32 noundef 3979) #19
  unreachable

cond.end106:                                      ; preds = %cond.end95
  %swap_extents = getelementptr i8, ptr %call41349, i32 252
  %80 = ptrtoint ptr %swap_extents to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %swap_extents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp107 = icmp eq i32 %81, 0
  br i1 %cmp107, label %cond.end116, label %cond.false115, !prof !173

cond.false115:                                    ; preds = %cond.end106
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.24, i32 noundef 3980) #19
  unreachable

cond.end116:                                      ; preds = %cond.end106
  tail call void @btrfs_put_block_group(ptr noundef %add.ptr45)
  tail call void @_raw_spin_lock(ptr noundef %block_group_cache_lock) #16
  %call41 = tail call ptr @rb_last(ptr noundef %block_group_cache_tree) #16
  %cmp.not = icmp eq ptr %call41, null
  br i1 %cmp.not, label %cond.end116.while.end118_crit_edge, label %cond.end116.while.body42_crit_edge

cond.end116.while.body42_crit_edge:               ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body42

cond.end116.while.end118_crit_edge:               ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end118

while.end118:                                     ; preds = %cond.end116.while.end118_crit_edge, %while.end37.while.end118_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %block_group_cache_lock) #16
  tail call void @btrfs_release_global_block_rsv(ptr noundef %info) #16
  %space_info121 = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 101
  %82 = ptrtoint ptr %space_info121 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %space_info121, align 4
  %cmp.i335.not351 = icmp eq ptr %83, %space_info121
  br i1 %cmp.i335.not351, label %while.end118.while.end241_crit_edge, label %while.body126.lr.ph

while.end118.while.end241_crit_edge:              ; preds = %while.end118
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end241

while.body126.lr.ph:                              ; preds = %while.end118
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 149
  br label %while.body126

while.body126:                                    ; preds = %list_del.exit342.while.body126_crit_edge, %while.body126.lr.ph
  %84 = phi ptr [ %83, %while.body126.lr.ph ], [ %107, %list_del.exit342.while.body126_crit_edge ]
  %add.ptr131 = getelementptr i8, ptr %84, i32 -152
  %bytes_pinned = getelementptr i8, ptr %84, i32 -88
  %85 = ptrtoint ptr %bytes_pinned to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %bytes_pinned, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %86)
  %cmp132.not = icmp eq i64 %86, 0
  br i1 %cmp132.not, label %lor.rhs, label %while.body126.do.end_crit_edge

while.body126.do.end_crit_edge:                   ; preds = %while.body126
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.rhs:                                          ; preds = %while.body126
  %bytes_may_use = getelementptr i8, ptr %84, i32 -72
  %87 = ptrtoint ptr %bytes_may_use to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %bytes_may_use, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %88)
  %cmp133.not = icmp eq i64 %88, 0
  br i1 %cmp133.not, label %lor.rhs.if.end162_crit_edge, label %lor.rhs.do.end_crit_edge, !prof !173

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.rhs.if.end162_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end162

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %while.body126.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3999, i32 noundef 9, ptr noundef null) #16
  tail call void @btrfs_dump_space_info(ptr noundef %info, ptr noundef %add.ptr131, i64 noundef 0, i32 noundef 0) #16
  br label %if.end162

if.end162:                                        ; preds = %do.end, %lor.rhs.if.end162_crit_edge
  %flags = getelementptr i8, ptr %84, i32 -8
  %89 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %flags, align 8
  %and = and i64 %90, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool163.not = icmp eq i64 %and, 0
  br i1 %tobool163.not, label %if.end162.if.then173_crit_edge, label %lor.lhs.false164

if.end162.if.then173_crit_edge:                   ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then173

lor.lhs.false164:                                 ; preds = %if.end162
  %91 = ptrtoint ptr %fs_state to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %fs_state, align 4
  %93 = and i32 %92, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool166.not = icmp eq i32 %93, 0
  br i1 %tobool166.not, label %lor.lhs.false164.if.then173_crit_edge, label %lor.lhs.false164.if.end208_crit_edge, !prof !173

lor.lhs.false164.if.end208_crit_edge:             ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end208

lor.lhs.false164.if.then173_crit_edge:            ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then173

if.then173:                                       ; preds = %lor.lhs.false164.if.then173_crit_edge, %if.end162.if.then173_crit_edge
  %bytes_reserved = getelementptr i8, ptr %84, i32 -80
  %94 = ptrtoint ptr %bytes_reserved to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %bytes_reserved, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %95)
  %cmp175.not = icmp eq i64 %95, 0
  br i1 %cmp175.not, label %if.then173.if.end208_crit_edge, label %do.end191, !prof !173

if.then173.if.end208_crit_edge:                   ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end208

do.end191:                                        ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4011, i32 noundef 9, ptr noundef null) #16
  tail call void @btrfs_dump_space_info(ptr noundef %info, ptr noundef %add.ptr131, i64 noundef 0, i32 noundef 0) #16
  br label %if.end208

if.end208:                                        ; preds = %do.end191, %if.then173.if.end208_crit_edge, %lor.lhs.false164.if.end208_crit_edge
  %reclaim_size = getelementptr i8, ptr %84, i32 32
  %96 = ptrtoint ptr %reclaim_size to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %reclaim_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %97)
  %cmp210.not = icmp eq i64 %97, 0
  br i1 %cmp210.not, label %if.end208.if.end232_crit_edge, label %do.end226, !prof !173

if.end208.if.end232_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end232

do.end226:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4015, i32 noundef 9, ptr noundef null) #16
  br label %if.end232

if.end232:                                        ; preds = %do.end226, %if.end208.if.end232_crit_edge
  %call.i.i337 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %84) #16
  br i1 %call.i.i337, label %if.end.i.i340, label %if.end232.list_del.exit342_crit_edge

if.end232.list_del.exit342_crit_edge:             ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit342

if.end.i.i340:                                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i338 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %98 = ptrtoint ptr %prev.i.i338 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prev.i.i338, align 4
  %100 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %84, align 4
  %prev1.i.i.i339 = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %prev1.i.i.i339 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %prev1.i.i.i339, align 4
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %101, ptr %99, align 4
  br label %list_del.exit342

list_del.exit342:                                 ; preds = %if.end.i.i340, %if.end232.list_del.exit342_crit_edge
  %104 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr inttoptr (i32 256 to ptr), ptr %84, align 4
  %prev.i341 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i341 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i341, align 4
  tail call void @btrfs_sysfs_remove_space_info(ptr noundef %add.ptr131) #16
  %106 = ptrtoint ptr %space_info121 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile ptr, ptr %space_info121, align 4
  %cmp.i335.not = icmp eq ptr %107, %space_info121
  br i1 %cmp.i335.not, label %list_del.exit342.while.end241_crit_edge, label %list_del.exit342.while.body126_crit_edge

list_del.exit342.while.body126_crit_edge:         ; preds = %list_del.exit342
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body126

list_del.exit342.while.end241_crit_edge:          ; preds = %list_del.exit342
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end241

while.end241:                                     ; preds = %list_del.exit342.while.end241_crit_edge, %while.end118.while.end241_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_global_block_rsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_dump_space_info(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_sysfs_remove_space_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__btrfs_remove_free_space_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_inc_block_group_swap_extents(ptr noundef %bg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %ro = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 16
  %0 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %swap_extents = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 44
  %2 = ptrtoint ptr %swap_extents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %swap_extents, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %swap_extents, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_dec_block_group_swap_extents(ptr noundef %bg, i32 noundef %amount) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %ro = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 16
  %0 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.end, label %cond.false, !prof !173

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.25, i32 noundef 4078) #19
  unreachable

cond.end:                                         ; preds = %entry
  %swap_extents = getelementptr inbounds %struct.btrfs_block_group, ptr %bg, i32 0, i32 44
  %2 = ptrtoint ptr %swap_extents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %swap_extents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %amount)
  %cmp.not = icmp slt i32 %3, %amount
  br i1 %cmp.not, label %cond.false11, label %cond.end12, !prof !172

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.26, i32 noundef 4079) #19
  unreachable

cond.end12:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  %sub = sub i32 %3, %amount
  %4 = ptrtoint ptr %swap_extents to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %swap_extents, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @seqcount_lockdep_reader_access(ptr noundef %s) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !220
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.body24.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @trace_hardirqs_off() #16
  %dep_map.c = getelementptr inbounds %struct.seqcount, ptr %s, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #16
  tail call void @lock_release(ptr noundef %dep_map.c, i32 noundef %2) #16
  tail call void @trace_hardirqs_on() #16
  br label %do.body24

do.body24.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dep_map.c48 = getelementptr inbounds %struct.seqcount, ptr %s, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #16
  tail call void @lock_release(ptr noundef %dep_map.c48, i32 noundef %4) #16
  br label %do.body24

do.body24:                                        ; preds = %do.body24.critedge, %if.then
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !221
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !172

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #16, !srcloc !222
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @load_free_space_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @load_free_space_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_extent_root(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_find_next_key(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_next_old_leaf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_remove_block_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_del_items(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_skip_unused_block_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i64 @btrfs_space_info_used(ptr noundef, i1 noundef zeroext) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_can_overcommit(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clear_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_update_bytes_pinned(ptr noundef %fs_info, ptr noundef %sinfo, i64 noundef %old, i64 noundef %diff) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_update_bytes_pinned, i32 0, i32 1), ptr blockaddress(@trace_update_bytes_pinned, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !190

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !173

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !223
  %call42 = tail call i32 @__traceiter_update_bytes_pinned(ptr noundef null, ptr noundef %fs_info, ptr noundef %sinfo, i64 noundef %old, i64 noundef %diff) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !224
  %13 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !173

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_update_bytes_pinned, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_update_bytes_pinned, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_update_bytes_pinned.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_update_bytes_pinned.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2264, ptr noundef nonnull @.str.31) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !194
  %31 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
declare dso_local i32 @__traceiter_update_bytes_pinned(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_add_unused_block_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_reclaim_block_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_add_reclaim_block_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_calc_zone_unusable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btrfs_chunk_writeable(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_item(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_empty_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_64(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_full_stripe_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_init_free_space_ctl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_add_excluded_extent(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_remove_free_space(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_add_block_group(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_free_space_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_update_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_check_trunc_cache_free_space(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_truncate_free_space_cache(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_check_data_free_space(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_prealloc_file_range_trans(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ulist_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_extent_bit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_space_reservation(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_update_bytes_may_use(ptr noundef %fs_info, ptr noundef %sinfo, i64 noundef %old, i64 noundef %diff) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_update_bytes_may_use, i32 0, i32 1), ptr blockaddress(@trace_update_bytes_may_use, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !190

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !173

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !225
  %call42 = tail call i32 @__traceiter_update_bytes_may_use(ptr noundef null, ptr noundef %fs_info, ptr noundef %sinfo, i64 noundef %old, i64 noundef %diff) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !226
  %13 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !173

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !157) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_update_bytes_may_use, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_update_bytes_may_use, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_update_bytes_may_use.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_update_bytes_may_use.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2256, ptr noundef nonnull @.str.31) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !194
  %31 = tail call i32 @llvm.read_register.i32(metadata !157) #16
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
declare dso_local i32 @__traceiter_update_bytes_may_use(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_create_chunk(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_block_rsv_add(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold noreturn }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind readnone willreturn }
attributes #23 = { nounwind readonly willreturn }
attributes #24 = { nounwind readnone }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !73, !74, !76, !78, !80, !82, !83, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !153, !155}
!llvm.named.register.sp = !{!157}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/block-group.c", i32 126, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/block-group.c", i32 319, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/btrfs/block-group.c", i32 351, i32 2}
!6 = !{ptr @btrfs_cache_block_group.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../fs/btrfs/block-group.c", i32 749, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @btrfs_cache_block_group.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../fs/btrfs/block-group.c", i32 750, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/block-group.c", i32 1128, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/btrfs/block-group.c", i32 1591, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/block-group.c", i32 1598, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/block-group.c", i32 2416, i32 4}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @btrfs_create_pending_block_groups.__UNIQUE_ID_ddebug933, !19, !"__UNIQUE_ID_ddebug933", i1 false, i1 false}
!24 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @btrfs_create_pending_block_groups.__UNIQUE_ID_ddebug934, !26, !"__UNIQUE_ID_ddebug934", i1 false, i1 false}
!26 = !{!"../fs/btrfs/block-group.c", i32 2422, i32 5}
!27 = !{ptr @btrfs_create_pending_block_groups.__UNIQUE_ID_ddebug935, !28, !"__UNIQUE_ID_ddebug935", i1 false, i1 false}
!28 = !{!"../fs/btrfs/block-group.c", i32 2427, i32 4}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/btrfs/block-group.c", i32 2508, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/btrfs/block-group.c", i32 3024, i32 5}
!33 = !{ptr @btrfs_start_dirty_block_groups.__UNIQUE_ID_ddebug938, !32, !"__UNIQUE_ID_ddebug938", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/btrfs/block-group.c", i32 3176, i32 5}
!36 = !{ptr @btrfs_write_dirty_block_groups.__UNIQUE_ID_ddebug939, !35, !"__UNIQUE_ID_ddebug939", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/btrfs/block-group.c", i32 3333, i32 49}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/btrfs/block-group.c", i32 3897, i32 3}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/btrfs/block-group.c", i32 3975, i32 3}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/btrfs/block-group.c", i32 3976, i32 3}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/btrfs/block-group.c", i32 3977, i32 3}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/btrfs/block-group.c", i32 3978, i32 3}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/btrfs/block-group.c", i32 3979, i32 3}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/btrfs/block-group.c", i32 3980, i32 3}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/btrfs/block-group.c", i32 4078, i32 2}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/btrfs/block-group.c", i32 4079, i32 2}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @assertfail._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @assertfail._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/trace/events/btrfs.h", i32 1890, i32 1}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!67 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../fs/btrfs/block-group.c", i32 826, i32 3}
!73 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/btrfs/block-group.c", i32 839, i32 4}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/btrfs/block-group.c", i32 841, i32 4}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/btrfs/ctree.h", i32 3674, i32 4}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/trace/events/btrfs.h", i32 1914, i32 1}
!82 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/btrfs/block-group.c", i32 1234, i32 3}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/btrfs/space-info.h", i32 111, i32 1}
!87 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/trace/events/btrfs.h", i32 2258, i32 1}
!90 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../include/trace/events/btrfs.h", i32 1896, i32 1}
!93 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../include/trace/events/btrfs.h", i32 1908, i32 1}
!96 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../include/trace/events/btrfs.h", i32 1902, i32 1}
!99 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/btrfs/block-group.c", i32 1650, i32 3}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/btrfs/block-group.c", i32 1657, i32 3}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/btrfs/block-group.c", i32 1670, i32 3}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/btrfs/block-group.c", i32 2000, i32 2}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/btrfs/block-group.c", i32 2028, i32 4}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/btrfs/block-group.c", i32 2037, i32 3}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/btrfs/block-group.c", i32 2099, i32 4}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/btrfs/block-group.c", i32 1962, i32 4}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/btrfs/block-group.c", i32 1972, i32 4}
!118 = !{ptr @btrfs_create_block_group_cache.__key, !119, !"__key", i1 false, i1 false}
!119 = !{!"../fs/btrfs/block-group.c", i32 1918, i32 2}
!120 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @btrfs_create_block_group_cache.__key.50, !122, !"__key", i1 false, i1 false}
!122 = !{!"../fs/btrfs/block-group.c", i32 1919, i32 2}
!123 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @btrfs_create_block_group_cache.__key.52, !125, !"__key", i1 false, i1 false}
!125 = !{!"../fs/btrfs/block-group.c", i32 1930, i32 2}
!126 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @btrfs_init_full_stripe_locks_tree.__key, !128, !"__key", i1 false, i1 false}
!128 = !{!"../fs/btrfs/ctree.h", i32 3805, i32 2}
!129 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/btrfs/block-group.c", i32 1860, i32 4}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/btrfs/block-group.c", i32 172, i32 2}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../include/trace/events/btrfs.h", i32 733, i32 1}
!136 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/btrfs/block-group.c", i32 2775, i32 3}
!139 = !{ptr @cache_save_setup.__UNIQUE_ID_ddebug937, !138, !"__UNIQUE_ID_ddebug937", i1 false, i1 false}
!140 = distinct !{null, !141, !"__already_done", i1 false, i1 false}
!141 = !{!"../include/trace/events/btrfs.h", i32 1052, i32 1}
!142 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../include/trace/events/btrfs.h", i32 2250, i32 1}
!145 = distinct !{null, !144, !"__warned", i1 false, i1 false}
!146 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/btrfs/block-group.c", i32 3493, i32 4}
!148 = !{ptr @do_chunk_alloc.__UNIQUE_ID_ddebug944, !147, !"__UNIQUE_ID_ddebug944", i1 false, i1 false}
!149 = !{ptr @do_chunk_alloc.__UNIQUE_ID_ddebug945, !150, !"__UNIQUE_ID_ddebug945", i1 false, i1 false}
!150 = !{!"../fs/btrfs/block-group.c", i32 3499, i32 4}
!151 = !{ptr @do_chunk_alloc.__UNIQUE_ID_ddebug946, !152, !"__UNIQUE_ID_ddebug946", i1 false, i1 false}
!152 = !{!"../fs/btrfs/block-group.c", i32 3505, i32 4}
!153 = !{ptr @do_chunk_alloc.__UNIQUE_ID_ddebug947, !154, !"__UNIQUE_ID_ddebug947", i1 false, i1 false}
!154 = !{!"../fs/btrfs/block-group.c", i32 3509, i32 3}
!155 = !{ptr @.str.59, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/btrfs/block-group.c", i32 3778, i32 3}
!157 = !{!"sp"}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{i64 2150312933}
!168 = !{i64 2150312775}
!169 = !{i64 2150313103}
!170 = !{i64 2150298174}
!171 = !{i64 2148544659, i64 2148544691, i64 2148544720, i64 2148544754, i64 2148544785, i64 2148544808}
!172 = !{!"branch_weights", i32 1, i32 2000}
!173 = !{!"branch_weights", i32 2000, i32 1}
!174 = !{i64 2148632660}
!175 = !{i64 2148547124, i64 2148547156, i64 2148547185, i64 2148547219, i64 2148547250, i64 2148547273}
!176 = !{i64 2149678630}
!177 = !{i64 2148543129, i64 2148543155, i64 2148543184, i64 2148543218, i64 2148543249, i64 2148543272}
!178 = !{i64 2148631581}
!179 = !{i64 2148546314, i64 2148546346, i64 2148546375, i64 2148546409, i64 2148546440, i64 2148546463}
!180 = !{i64 2148631810}
!181 = !{i64 2158304229, i64 2158304711, i64 2158304266, i64 2158304322, i64 2158304356, i64 2158304380, i64 2158304421, i64 2158304442, i64 2158304470, i64 2158304504}
!182 = !{i64 2158354334}
!183 = !{!"auto-init"}
!184 = !{i64 2158570749, i64 2158571236, i64 2158570786, i64 2158570842, i64 2158570876, i64 2158570900, i64 2158570941, i64 2158570962, i64 2158570990, i64 2158571024}
!185 = !{i64 2158572320, i64 2158572807, i64 2158572357, i64 2158572413, i64 2158572447, i64 2158572471, i64 2158572512, i64 2158572533, i64 2158572561, i64 2158572595}
!186 = !{i64 2158615401, i64 2158615888, i64 2158615438, i64 2158615494, i64 2158615528, i64 2158615552, i64 2158615593, i64 2158615614, i64 2158615642, i64 2158615676}
!187 = !{i64 2158616998, i64 2158621546, i64 2158617035, i64 2158617091, i64 2158617125, i64 2158617149, i64 2158617190, i64 2158617211, i64 2158617239, i64 2158617273}
!188 = !{i64 2150298499}
!189 = !{i64 2150298824}
!190 = !{i64 2148356522, i64 2148356527, i64 2148356540, i64 2148356584, i64 2148356618, i64 2148356639}
!191 = !{i64 2156126537}
!192 = !{i64 2156126764}
!193 = !{i64 2149379202}
!194 = !{i64 2149380238}
!195 = !{i64 2156200664}
!196 = !{i64 2156200901}
!197 = !{i64 2158677807, i64 2158678295, i64 2158677844, i64 2158677900, i64 2158677934, i64 2158677958, i64 2158677999, i64 2158678020, i64 2158678048, i64 2158678082}
!198 = !{i64 2158754051, i64 2158754539, i64 2158754088, i64 2158754144, i64 2158754178, i64 2158754202, i64 2158754243, i64 2158754264, i64 2158754292, i64 2158754326}
!199 = !{i64 2156143928}
!200 = !{i64 2156144163}
!201 = !{i64 2148381709, i64 2148381989, i64 2148382323, i64 2148382657}
!202 = !{i64 2156183181}
!203 = !{i64 2156183410}
!204 = !{i64 2156161573}
!205 = !{i64 2156161810}
!206 = !{i64 2155304278}
!207 = !{i64 2155304539}
!208 = !{i64 0, i64 -281474976710656}
!209 = !{i8 0, i8 2}
!210 = !{i64 896165, i64 896192, i64 896214, i64 896242}
!211 = !{i64 896573, i64 896600, i64 896633, i64 896654, i64 896681, i64 896707}
!212 = !{i64 896048, i64 896075}
!213 = !{i64 896388, i64 896415, i64 896449, i64 896470}
!214 = !{i64 2158687928, i64 2158688416, i64 2158687965, i64 2158688021, i64 2158688055, i64 2158688079, i64 2158688120, i64 2158688141, i64 2158688169, i64 2158688203}
!215 = !{i64 2153317323}
!216 = !{i64 2153317165}
!217 = !{i64 2153317493}
!218 = !{i64 2155499361}
!219 = !{i64 2155499638}
!220 = !{i64 937387, i64 937448}
!221 = !{i64 940119}
!222 = !{i64 940404}
!223 = !{i64 2156537519}
!224 = !{i64 2156537770}
!225 = !{i64 2156519517}
!226 = !{i64 2156519770}
