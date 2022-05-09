; ModuleID = '/llk/IR_all_yes/fs/btrfs/ctree.c_pt.bc'
source_filename = "../fs/btrfs/ctree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.btrfs_csums = type { i16, [10 x i8], [12 x i8] }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%union.anon.70 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
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
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.86, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
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
%union.anon.86 = type { i64 }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.btrfs_fs_devices = type { [16 x i8], [16 x i8], i8, %struct.list_head, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32, i8, ptr, %struct.kobject, ptr, ptr, %struct.completion, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.btrfs_map_token = type { ptr, ptr, i32 }
%struct.btrfs_item_batch = type { ptr, ptr, i32, i32 }

@btrfs_csums = internal constant { [4 x %struct.btrfs_csums], [32 x i8] } { [4 x %struct.btrfs_csums] [%struct.btrfs_csums { i16 4, [10 x i8] c"crc32c\00\00\00\00", [12 x i8] zeroinitializer }, %struct.btrfs_csums { i16 8, [10 x i8] c"xxhash64\00\00", [12 x i8] zeroinitializer }, %struct.btrfs_csums { i16 32, [10 x i8] c"sha256\00\00\00\00", [12 x i8] zeroinitializer }, %struct.btrfs_csums { i16 32, [10 x i8] c"blake2b\00\00\00", [12 x i8] c"blake2b-256\00" }], [32 x i8] zeroinitializer }, align 32
@btrfs_path_cachep = external dso_local local_unnamed_addr global ptr, align 4
@btrfs_root_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017BTRFS: Transaction aborted (error %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@btrfs_copy_root.__UNIQUE_ID_ddebug926 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"btrfs_copy_root\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Transaction aborted (error %d)\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017Transaction aborted (error %d)\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013COW'ing blocks on a fs root that's being dropped\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\012trans %llu running %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"path\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"found_key\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"p->search_commit_root\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"write_lock_level >= 1\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\012slot %u key (%llu %u %llu) new key (%llu %u %llu)\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\012leaf free space ret %d, leaf data size %lu, used %d nritems %d\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\012slot %d too large, nritems %d\00", [32 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__btrfs_cow_block.__UNIQUE_ID_ddebug927 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.19, ptr @.str, ptr @.str.5, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__btrfs_cow_block\00", [46 x i8] zeroinitializer }, align 32
@__btrfs_cow_block.__UNIQUE_ID_ddebug928 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.19, ptr @.str, ptr @.str.5, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__btrfs_cow_block.__UNIQUE_ID_ddebug932 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.19, ptr @.str, ptr @.str.5, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/btrfs/locking.h\00", [45 x i8] zeroinitializer }, align 32
@__func__.update_ref_for_cow = private unnamed_addr constant [19 x i8] c"update_ref_for_cow\00", align 1
@__tracepoint_btrfs_cow_block = external dso_local global %struct.tracepoint, align 4
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/btrfs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_btrfs_cow_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: low (%d) > high (%d) eb %llu owner %llu level %d\00", [41 x i8] zeroinitializer }, align 32
@__func__.generic_bin_search = private unnamed_addr constant [19 x i8] c"generic_bin_search\00", align 1
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.26, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"p->skip_locking == 1\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"btrfs_header_nritems(leaf) > 0\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ins_len >= sizeof(struct btrfs_item)\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"leaf_free_space >= 0\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"err <= 0\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"btrfs_header_level(c) == level\00", [33 x i8] zeroinitializer }, align 32
@split_node.__UNIQUE_ID_ddebug949 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.33, ptr @.str, ptr @.str.5, i8 2, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"split_node\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"push_node_left\00", [17 x i8] zeroinitializer }, align 32
@push_node_left.__UNIQUE_ID_ddebug943 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.34, ptr @.str, ptr @.str.5, i8 2, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\012bad key order, sibling blocks, left last (%llu %u %llu) right first (%llu %u %llu)\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"balance_node_right\00", [45 x i8] zeroinitializer }, align 32
@balance_node_right.__UNIQUE_ID_ddebug945 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.36, ptr @.str, ptr @.str.5, i8 2, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.balance_level = private unnamed_addr constant [14 x i8] c"balance_level\00", align 1
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"path->need_commit_sem\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\012not enough freespace need %u have %d\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\012item at slot %d with data offset %u beyond data end of leaf %u\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\012push items %d nr %u\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 108, i64 128]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"btrfs_csums\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 38, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 131, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 229, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 545, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 549, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1544, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1545, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1911, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1991, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 2330, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 2798, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 3844, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 695, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 723, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 441, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [22 x i8] c"../fs/btrfs/locking.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 101, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [32 x i8] c"../include/trace/events/btrfs.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1017, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 108, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 751, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 3491, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1587, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1739, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1811, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1815, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1822, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 2732, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 2736, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 2462, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 2405, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 2536, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1666, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 3919, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 3930, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.183 = private constant [20 x i8] c"../fs/btrfs/ctree.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 3125, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @btrfs_csums, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_csums to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @btrfs_super_csum_size(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %csum_type.i = getelementptr inbounds %struct.btrfs_super_block, ptr %s, i32 0, i32 23
  %0 = ptrtoint ptr %csum_type.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %csum_type.i, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #14
  %idxprom = zext i16 %2 to i32
  %arrayidx = getelementptr [4 x %struct.btrfs_csums], ptr @btrfs_csums, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %4 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @btrfs_super_csum_name(i16 noundef zeroext %csum_type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %csum_type to i32
  %name = getelementptr [4 x %struct.btrfs_csums], ptr @btrfs_csums, i32 0, i32 %idxprom, i32 1
  ret ptr %name
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @btrfs_super_csum_driver(i16 noundef zeroext %csum_type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %csum_type to i32
  %driver = getelementptr [4 x %struct.btrfs_csums], ptr @btrfs_csums, i32 0, i32 %idxprom, i32 2
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %driver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %name = getelementptr [4 x %struct.btrfs_csums], ptr @btrfs_csums, i32 0, i32 %idxprom, i32 1
  %cond = select i1 %tobool.not, ptr %name, ptr %driver
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @btrfs_get_num_csums() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @btrfs_alloc_path() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_path_cachep to i32))
  %0 = load ptr, ptr @btrfs_path_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3392) #14
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_free_path(ptr noundef %p) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_release_path(ptr noundef nonnull %p)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_path_cachep to i32))
  %0 = load ptr, ptr @btrfs_path_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef nonnull %p) #14
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_release_path(ptr nocapture noundef %p) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.033 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.btrfs_path, ptr %p, i32 0, i32 1, i32 %i.033
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [8 x ptr], ptr %p, i32 0, i32 %i.033
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx2 = getelementptr %struct.btrfs_path, ptr %p, i32 0, i32 2, i32 %i.033
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %do.body.i [
    i8 0, label %if.end.if.end11_crit_edge
    i8 1, label %if.then.i
    i8 2, label %if.then2.i
  ]

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_tree_unlock(ptr noundef nonnull %2) #14
  br label %btrfs_tree_unlock_rw.exit

if.then2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_tree_read_unlock(ptr noundef nonnull %2) #14
  br label %btrfs_tree_unlock_rw.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/locking.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #14, !srcloc !114
  unreachable

btrfs_tree_unlock_rw.exit:                        ; preds = %if.then2.i, %if.then.i
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx2, align 1
  br label %if.end11

if.end11:                                         ; preds = %btrfs_tree_unlock_rw.exit, %if.end.if.end11_crit_edge
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx1, align 4
  tail call void @free_extent_buffer(ptr noundef %8) #14
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_buffer(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_root_node(ptr noundef %root) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %rcu_read_unlock.exit33, %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !115
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %while.cond.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

while.cond.rcu_read_lock.exit_crit_edge:          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %while.cond
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %while.cond.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %node, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b13 = load i1, ptr @btrfs_root_node.__warned, align 1
  br i1 %.b13, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @btrfs_root_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 131, ptr noundef nonnull @.str.1) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %refs = getelementptr inbounds %struct.extent_buffer, ptr %5, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 0, i32 1, ptr elementtype(i32) %refs) #14, !srcloc !117
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end11, label %if.then10

if.then10:                                        ; preds = %do.end7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !118
  %call.i14 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i14, label %if.then10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

if.then10.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %if.then10
  %call1.i15 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %if.then10.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !119
  %7 = tail call i32 @llvm.read_register.i32(metadata !104) #14
  %and.i.i.i.i.i21 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i22, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %5

if.end11:                                         ; preds = %do.end7
  %call.i23 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i23, label %if.end11.rcu_read_unlock.exit33_crit_edge, label %land.lhs.true.i26

if.end11.rcu_read_unlock.exit33_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit33

land.lhs.true.i26:                                ; preds = %if.end11
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit33_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit33_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit33

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit33_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit33_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit33

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #14
  br label %rcu_read_unlock.exit33

rcu_read_unlock.exit33:                           ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit33_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit33_crit_edge, %if.end11.rcu_read_unlock.exit33_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !119
  %11 = tail call i32 @llvm.read_register.i32(metadata !104) #14
  %and.i.i.i.i.i30 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i32 = add i32 %14, -1
  store volatile i32 %sub.i.i.i32, ptr %preempt_count.i.i.i.i31, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  tail call void @synchronize_rcu() #14
  br label %while.cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_copy_root(ptr noundef %trans, ptr noundef %root, ptr noundef %buf, ptr nocapture noundef writeonly %cow_ret, i64 noundef %new_root_objectid) local_unnamed_addr #3 align 64 {
entry:
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #14
  %state = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 5
  %2 = call ptr @memset(ptr %disk_key, i32 255, i32 17)
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %entry
  %6 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %trans, align 8
  %running_transaction = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 37
  %8 = ptrtoint ptr %running_transaction to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %running_transaction, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %11)
  %cmp.not = icmp eq i64 %7, %11
  br i1 %cmp.not, label %land.rhs.if.end_crit_edge, label %do.end, !prof !120

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 192, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool25.not = icmp eq i32 %14, 0
  br i1 %tobool25.not, label %if.end.if.end51_crit_edge, label %land.rhs26

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

land.rhs26:                                       ; preds = %if.end
  %15 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %trans, align 8
  %last_trans = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 24
  %17 = ptrtoint ptr %last_trans to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %last_trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp28.not = icmp eq i64 %16, %18
  br i1 %cmp28.not, label %land.rhs26.if.end51_crit_edge, label %do.end45, !prof !120

land.rhs26.if.end51_crit_edge:                    ; preds = %land.rhs26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

do.end45:                                         ; preds = %land.rhs26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 194, i32 noundef 9, ptr noundef null) #14
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %land.rhs26.if.end51_crit_edge, %if.end.if.end51_crit_edge
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %buf, i32 0, i32 12
  %19 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %20) #14
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %buf, align 8
  %conv.i = trunc i64 %22 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %23 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %level.i, align 1
  %conv = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp60 = icmp eq i8 %24, 0
  br i1 %cmp60, label %if.then62, label %if.else

if.then62:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  call void @read_extent_buffer(ptr noundef %buf, ptr noundef nonnull %disk_key, i32 noundef 101, i32 noundef 17) #14
  br label %if.end63

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_node_key(ptr noundef %buf, ptr noundef nonnull %disk_key, i32 noundef 0) #14
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then62
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %buf, align 8
  %call64 = call ptr @btrfs_alloc_tree_block(ptr noundef %trans, ptr noundef %root, i64 noundef 0, i64 noundef %new_root_objectid, ptr noundef nonnull %disk_key, i32 noundef %conv, i64 noundef %26, i64 noundef 0, i32 noundef 7) #14
  %cmp.i = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %call64 to i32
  br label %cleanup

if.end68:                                         ; preds = %if.end63
  call void @copy_extent_buffer_full(ptr noundef %call64, ptr noundef %buf) #14
  %28 = ptrtoint ptr %call64 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %call64, align 8
  %pages.i233 = getelementptr inbounds %struct.extent_buffer, ptr %call64, i32 0, i32 12
  %30 = ptrtoint ptr %pages.i233 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pages.i233, align 4
  %call.i234 = call ptr @page_address(ptr noundef %31) #14
  %32 = ptrtoint ptr %call64 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %call64, align 8
  %conv.i235 = trunc i64 %33 to i32
  %and.i236 = and i32 %conv.i235, 4095
  %add.ptr.i237 = getelementptr i8, ptr %call.i234, i32 %and.i236
  %bytenr.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i237, i32 0, i32 2
  %34 = call i64 @llvm.bswap.i64(i64 %29) #14
  %35 = ptrtoint ptr %bytenr.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %34, ptr %bytenr.i, align 1
  %36 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %trans, align 8
  %38 = ptrtoint ptr %pages.i233 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pages.i233, align 4
  %call.i239 = call ptr @page_address(ptr noundef %39) #14
  %40 = ptrtoint ptr %call64 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %call64, align 8
  %conv.i240 = trunc i64 %41 to i32
  %and.i241 = and i32 %conv.i240, 4095
  %add.ptr.i242 = getelementptr i8, ptr %call.i239, i32 %and.i241
  %generation.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i242, i32 0, i32 5
  %42 = call i64 @llvm.bswap.i64(i64 %37) #14
  %43 = ptrtoint ptr %generation.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %generation.i, align 1
  %44 = ptrtoint ptr %pages.i233 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pages.i233, align 4
  %call.i.i = call ptr @page_address(ptr noundef %45) #14
  %46 = ptrtoint ptr %call64 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %call64, align 8
  %conv.i.i = trunc i64 %47 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %flags.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %flags.i.i, align 1
  %50 = and i64 %49, -256
  %51 = or i64 %50, 1
  %52 = ptrtoint ptr %pages.i233 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pages.i233, align 4
  %call.i2.i = call ptr @page_address(ptr noundef %53) #14
  %54 = ptrtoint ptr %call64 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %call64, align 8
  %conv.i3.i = trunc i64 %55 to i32
  %and.i4.i = and i32 %conv.i3.i, 4095
  %add.ptr.i5.i = getelementptr i8, ptr %call.i2.i, i32 %and.i4.i
  %flags.i6.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i5.i, i32 0, i32 3
  %56 = ptrtoint ptr %flags.i6.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 8)
  store i64 %51, ptr %flags.i6.i, align 1
  %57 = ptrtoint ptr %pages.i233 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pages.i233, align 4
  %call.i.i244 = call ptr @page_address(ptr noundef %58) #14
  %59 = ptrtoint ptr %call64 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %call64, align 8
  %conv.i.i245 = trunc i64 %60 to i32
  %and.i.i246 = and i32 %conv.i.i245, 4095
  %add.ptr.i.i247 = getelementptr i8, ptr %call.i.i244, i32 %and.i.i246
  %flags.i.i248 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i247, i32 0, i32 3
  %61 = ptrtoint ptr %flags.i.i248 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %flags.i.i248, align 1
  %63 = and i64 %62, -216172782113783809
  %64 = ptrtoint ptr %pages.i233 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pages.i233, align 4
  %call.i2.i249 = call ptr @page_address(ptr noundef %65) #14
  %66 = ptrtoint ptr %call64 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %call64, align 8
  %conv.i3.i250 = trunc i64 %67 to i32
  %and.i4.i251 = and i32 %conv.i3.i250, 4095
  %add.ptr.i5.i252 = getelementptr i8, ptr %call.i2.i249, i32 %and.i4.i251
  %flags.i6.i253 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i5.i252, i32 0, i32 3
  %68 = ptrtoint ptr %flags.i6.i253 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 8)
  store i64 %63, ptr %flags.i6.i253, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8, i64 %new_root_objectid)
  %cmp71 = icmp eq i64 %new_root_objectid, -8
  %69 = ptrtoint ptr %pages.i233 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pages.i233, align 4
  %call.i.i255 = call ptr @page_address(ptr noundef %70) #14
  %71 = ptrtoint ptr %call64 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %call64, align 8
  %conv.i.i256 = trunc i64 %72 to i32
  %and.i.i257 = and i32 %conv.i.i256, 4095
  %add.ptr.i.i258 = getelementptr i8, ptr %call.i.i255, i32 %and.i.i257
  br i1 %cmp71, label %if.then73, label %if.else74

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  %flags.i.i259 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i258, i32 0, i32 3
  %73 = ptrtoint ptr %flags.i.i259 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 8)
  %74 = load i64, ptr %flags.i.i259, align 1
  %75 = or i64 %74, 144115188075855872
  %76 = ptrtoint ptr %pages.i233 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pages.i233, align 4
  %call.i2.i260 = call ptr @page_address(ptr noundef %77) #14
  %78 = ptrtoint ptr %call64 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %call64, align 8
  %conv.i3.i261 = trunc i64 %79 to i32
  %and.i4.i262 = and i32 %conv.i3.i261, 4095
  %add.ptr.i5.i263 = getelementptr i8, ptr %call.i2.i260, i32 %and.i4.i262
  %flags.i6.i264 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i5.i263, i32 0, i32 3
  %80 = ptrtoint ptr %flags.i6.i264 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 8)
  store i64 %75, ptr %flags.i6.i264, align 1
  br label %if.end75

if.else74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i258, i32 0, i32 6
  %81 = call i64 @llvm.bswap.i64(i64 %new_root_objectid) #14
  %82 = ptrtoint ptr %owner.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 8)
  store i64 %81, ptr %owner.i, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.else74, %if.then73
  %fs_devices = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 100
  %83 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fs_devices, align 8
  %metadata_uuid = getelementptr inbounds %struct.btrfs_fs_devices, ptr %84, i32 0, i32 1
  call void @write_extent_buffer_fsid(ptr noundef %call64, ptr noundef %metadata_uuid) #14
  %85 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pages.i, align 4
  %call.i271 = call ptr @page_address(ptr noundef %86) #14
  %87 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %buf, align 8
  %conv.i272 = trunc i64 %88 to i32
  %and.i273 = and i32 %conv.i272, 4095
  %add.ptr.i274 = getelementptr i8, ptr %call.i271, i32 %and.i273
  %generation.i275 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i274, i32 0, i32 5
  %89 = ptrtoint ptr %generation.i275 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 8)
  %90 = load i64, ptr %generation.i275, align 1
  %91 = call i64 @llvm.bswap.i64(i64 %90) #14
  %92 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %91, i64 %93)
  %cmp79 = icmp ugt i64 %91, %93
  br i1 %cmp79, label %do.end96, label %if.end75.if.end102_crit_edge, !prof !121

if.end75.if.end102_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102

do.end96:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 221, i32 noundef 9, ptr noundef null) #14
  br label %if.end102

if.end102:                                        ; preds = %do.end96, %if.end75.if.end102_crit_edge
  %. = zext i1 %cmp71 to i32
  %call115 = call i32 @btrfs_inc_ref(ptr noundef %trans, ptr noundef %root, ptr noundef %call64, i32 noundef %.) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool117.not = icmp eq i32 %call115, 0
  br i1 %tobool117.not, label %if.end175, label %if.then118

if.then118:                                       ; preds = %if.end102
  call void @btrfs_tree_unlock(ptr noundef %call64) #14
  call void @free_extent_buffer(ptr noundef %call64) #14
  %fs_info120 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %94 = ptrtoint ptr %fs_info120 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fs_info120, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %95, i32 0, i32 149
  %call121 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.then123, label %if.then118.if.end172_crit_edge

if.then118.if.end172_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end172

if.then123:                                       ; preds = %if.then118
  %96 = zext i32 %call115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call115, label %do.end141 [
    i32 -5, label %if.then123.do.body156_crit_edge
    i32 -30, label %if.then123.do.body156_crit_edge277
  ]

if.then123.do.body156_crit_edge277:               ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body156

if.then123.do.body156_crit_edge:                  ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body156

do.end141:                                        ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %call115) #14
  br label %if.end172

do.body156:                                       ; preds = %if.then123.do.body156_crit_edge, %if.then123.do.body156_crit_edge277
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_copy_root.__UNIQUE_ID_ddebug926, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_copy_root, %if.then166)) #14
          to label %if.end172 [label %if.then166], !srcloc !122

if.then166:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #16
  %97 = ptrtoint ptr %fs_info120 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fs_info120, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %98, ptr noundef nonnull @.str.6, i32 noundef %call115) #17
  br label %if.end172

if.end172:                                        ; preds = %if.then166, %do.body156, %do.end141, %if.then118.if.end172_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.4, i32 noundef 229, i32 noundef %call115) #17
  br label %cleanup

if.end175:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_mark_buffer_dirty(ptr noundef %call64) #14
  %99 = ptrtoint ptr %cow_ret to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call64, ptr %cow_ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end175, %if.end172, %if.then66
  %retval.0 = phi i32 [ %27, %if.then66 ], [ %call115, %if.end172 ], [ 0, %if.end175 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_node_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_tree_block(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_extent_buffer_full(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_extent_buffer_fsid(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_inc_ref(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_tree_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_abort_transaction(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mark_buffer_dirty(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_block_can_be_shared(ptr noundef %root, ptr noundef readonly %buf) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %node = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 1
  %3 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %node, align 4
  %cmp.not = icmp eq ptr %4, %buf
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true1

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %commit_root = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 2
  %5 = ptrtoint ptr %commit_root to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %commit_root, align 8
  %cmp2.not = icmp eq ptr %6, %buf
  br i1 %cmp2.not, label %land.lhs.true1.if.end_crit_edge, label %land.lhs.true3

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %buf, i32 0, i32 12
  %7 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %8) #14
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %buf, align 8
  %conv.i = trunc i64 %10 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %generation.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 5
  %11 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %generation.i, align 1
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #14
  %last_snapshot.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 6, i32 6
  %14 = ptrtoint ptr %last_snapshot.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %last_snapshot.i, align 1
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %16)
  %cmp6.not = icmp ugt i64 %13, %16
  br i1 %cmp6.not, label %lor.lhs.false, label %land.lhs.true3.return_crit_edge

land.lhs.true3.return_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %17 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pages.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %18) #14
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %buf, align 8
  %conv.i.i = trunc i64 %20 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %flags.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %flags.i.i, align 1
  %23 = and i64 %22, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool8.not = icmp eq i64 %23, 0
  br i1 %tobool8.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %land.lhs.true3.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %lor.lhs.false.return_crit_edge ], [ 1, %land.lhs.true3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_cow_block(ptr noundef %trans, ptr noundef %root, ptr noundef %buf, ptr noundef %parent, i32 noundef %parent_slot, ptr nocapture noundef %cow_ret, i32 noundef %nest) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %state = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.7) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %5 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transaction, align 4
  %running_transaction = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 37
  %7 = ptrtoint ptr %running_transaction to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %running_transaction, align 8
  %cmp.not = icmp eq ptr %6, %8
  br i1 %cmp.not, label %if.end.if.end22_crit_edge, label %do.end

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %trans, align 8
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %8, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 551, i32 noundef 9, ptr noundef nonnull @.str.8, i64 noundef %10, i64 noundef %12) #14
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end.if.end22_crit_edge
  %13 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %trans, align 8
  %generation = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 26
  %15 = ptrtoint ptr %generation to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %generation, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp24.not = icmp eq i64 %14, %16
  br i1 %cmp24.not, label %if.end22.if.end54_crit_edge, label %do.end38

if.end22.if.end54_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

do.end38:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 555, i32 noundef 9, ptr noundef nonnull @.str.8, i64 noundef %14, i64 noundef %16) #14
  br label %if.end54

if.end54:                                         ; preds = %do.end38, %if.end22.if.end54_crit_edge
  %17 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fs_info1, align 8
  %fs_state.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %18, i32 0, i32 149
  %19 = ptrtoint ptr %fs_state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %fs_state.i.i, align 4
  %21 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end54.if.then57_crit_edge

if.end54.if.then57_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then57

do.end.i:                                         ; preds = %if.end54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !123
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %buf, i32 0, i32 12
  %22 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pages.i.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %23) #14
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %buf, align 8
  %conv.i.i = trunc i64 %25 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %generation.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %generation.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %generation.i.i, align 1
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #14
  %29 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %30)
  %cmp.i = icmp eq i64 %28, %30
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end.i.if.end58_crit_edge

do.end.i.if.end58_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

land.lhs.true.i:                                  ; preds = %do.end.i
  %31 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pages.i.i, align 4
  %call.i.i.i = tail call ptr @page_address(ptr noundef %32) #14
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %buf, align 8
  %conv.i.i.i = trunc i64 %34 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 4095
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %flags.i.i.i, align 1
  %37 = and i64 %36, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %tobool5.not.i = icmp eq i64 %37, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.end58_crit_edge

land.lhs.true.i.if.end58_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %root_key.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %38 = ptrtoint ptr %root_key.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %root_key.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8, i64 %39)
  %cmp7.not.i = icmp eq i64 %39, -8
  br i1 %cmp7.not.i, label %land.lhs.true6.i.land.lhs.true11.i_crit_edge, label %land.lhs.true8.i

land.lhs.true6.i.land.lhs.true11.i_crit_edge:     ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true11.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true6.i
  %40 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pages.i.i, align 4
  %call.i.i23.i = tail call ptr @page_address(ptr noundef %41) #14
  %42 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %buf, align 8
  %conv.i.i24.i = trunc i64 %43 to i32
  %and.i.i25.i = and i32 %conv.i.i24.i, 4095
  %add.ptr.i.i26.i = getelementptr i8, ptr %call.i.i23.i, i32 %and.i.i25.i
  %flags.i.i27.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i26.i, i32 0, i32 3
  %44 = ptrtoint ptr %flags.i.i27.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %flags.i.i27.i, align 1
  %46 = and i64 %45, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %tobool10.not.i = icmp eq i64 %46, 0
  br i1 %tobool10.not.i, label %land.lhs.true8.i.land.lhs.true11.i_crit_edge, label %land.lhs.true8.i.if.end58_crit_edge

land.lhs.true8.i.if.end58_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

land.lhs.true8.i.land.lhs.true11.i_crit_edge:     ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true11.i

land.lhs.true11.i:                                ; preds = %land.lhs.true8.i.land.lhs.true11.i_crit_edge, %land.lhs.true6.i.land.lhs.true11.i_crit_edge
  %47 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %state, align 4
  %49 = and i32 %48, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool13.not.i = icmp eq i32 %49, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.if.then57_crit_edge, label %land.lhs.true11.i.if.end58_crit_edge

land.lhs.true11.i.if.end58_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

land.lhs.true11.i.if.then57_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then57

if.then57:                                        ; preds = %land.lhs.true11.i.if.then57_crit_edge, %if.end54.if.then57_crit_edge
  %50 = ptrtoint ptr %cow_ret to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %buf, ptr %cow_ret, align 4
  br label %cleanup

if.end58:                                         ; preds = %land.lhs.true11.i.if.end58_crit_edge, %land.lhs.true8.i.if.end58_crit_edge, %land.lhs.true.i.if.end58_crit_edge, %do.end.i.if.end58_crit_edge
  %51 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %buf, align 8
  %and = and i64 %52, -1073741824
  %call59 = tail call i32 @btrfs_qgroup_trace_subtree_after_cow(ptr noundef %trans, ptr noundef %root, ptr noundef %buf) #14
  %call60 = tail call fastcc i32 @__btrfs_cow_block(ptr noundef %trans, ptr noundef %root, ptr noundef %buf, ptr noundef %parent, i32 noundef %parent_slot, ptr noundef %cow_ret, i64 noundef %and, i64 noundef 0, i32 noundef %nest)
  %53 = ptrtoint ptr %cow_ret to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cow_ret, align 4
  tail call fastcc void @trace_btrfs_cow_block(ptr noundef %root, ptr noundef %buf, ptr noundef %54)
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then57
  %retval.0 = phi i32 [ %call60, %if.end58 ], [ 0, %if.then57 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_qgroup_trace_subtree_after_cow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__btrfs_cow_block(ptr noundef %trans, ptr noundef %root, ptr noundef %buf, ptr noundef %parent, i32 noundef %parent_slot, ptr nocapture noundef %cow_ret, i64 noundef %search_start, i64 noundef %empty_size, i32 noundef %nest) unnamed_addr #4 align 64 {
entry:
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  %last_ref = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #14
  %2 = call ptr @memset(ptr %disk_key, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_ref) #14
  %3 = ptrtoint ptr %last_ref to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %last_ref, align 4
  %4 = ptrtoint ptr %cow_ret to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cow_ret, align 4
  %cmp = icmp eq ptr %5, %buf
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.btrfs_assert_tree_write_locked.exit_crit_edge, label %land.rhs.i

entry.btrfs_assert_tree_write_locked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_assert_tree_write_locked.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.extent_buffer, ptr %buf, i32 0, i32 11, i32 6
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %do.end.i, label %land.rhs.i.btrfs_assert_tree_write_locked.exit_crit_edge, !prof !121

land.rhs.i.btrfs_assert_tree_write_locked.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_assert_tree_write_locked.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 101, i32 noundef 9, ptr noundef null) #14
  br label %btrfs_assert_tree_write_locked.exit

btrfs_assert_tree_write_locked.exit:              ; preds = %do.end.i, %land.rhs.i.btrfs_assert_tree_write_locked.exit_crit_edge, %entry.btrfs_assert_tree_write_locked.exit_crit_edge
  %state = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 5
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %btrfs_assert_tree_write_locked.exit.if.end18_crit_edge, label %land.rhs

btrfs_assert_tree_write_locked.exit.if.end18_crit_edge: ; preds = %btrfs_assert_tree_write_locked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

land.rhs:                                         ; preds = %btrfs_assert_tree_write_locked.exit
  %10 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %trans, align 8
  %running_transaction = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 37
  %12 = ptrtoint ptr %running_transaction to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %running_transaction, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %13, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %15)
  %cmp3.not = icmp eq i64 %11, %15
  br i1 %cmp3.not, label %land.rhs.if.end18_crit_edge, label %do.end, !prof !120

land.rhs.if.end18_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 402, i32 noundef 9, ptr noundef null) #14
  br label %if.end18

if.end18:                                         ; preds = %do.end, %land.rhs.if.end18_crit_edge, %btrfs_assert_tree_write_locked.exit.if.end18_crit_edge
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool28.not = icmp eq i32 %18, 0
  br i1 %tobool28.not, label %if.end18.if.end54_crit_edge, label %land.rhs29

if.end18.if.end54_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

land.rhs29:                                       ; preds = %if.end18
  %19 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %trans, align 8
  %last_trans = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 24
  %21 = ptrtoint ptr %last_trans to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %last_trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %22)
  %cmp31.not = icmp eq i64 %20, %22
  br i1 %cmp31.not, label %land.rhs29.if.end54_crit_edge, label %do.end48, !prof !120

land.rhs29.if.end54_crit_edge:                    ; preds = %land.rhs29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

do.end48:                                         ; preds = %land.rhs29
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 404, i32 noundef 9, ptr noundef null) #14
  br label %if.end54

if.end54:                                         ; preds = %do.end48, %land.rhs29.if.end54_crit_edge, %if.end18.if.end54_crit_edge
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %buf, i32 0, i32 12
  %23 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pages.i, align 4
  %call.i578 = tail call ptr @page_address(ptr noundef %24) #14
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %buf, align 8
  %conv.i = trunc i64 %26 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i578, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %27 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %level.i, align 1
  %conv = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp63 = icmp eq i8 %28, 0
  br i1 %cmp63, label %if.then65, label %if.else

if.then65:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  call void @read_extent_buffer(ptr noundef %buf, ptr noundef nonnull %disk_key, i32 noundef 101, i32 noundef 17) #14
  br label %if.end66

if.else:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_node_key(ptr noundef %buf, ptr noundef nonnull %disk_key, i32 noundef 0) #14
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then65
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %29 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %root_key, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8, i64 %30)
  %cmp67 = icmp ne i64 %30, -8
  %tobool69.not = icmp eq ptr %parent, null
  %or.cond = or i1 %tobool69.not, %cmp67
  br i1 %or.cond, label %if.end66.if.end71_crit_edge, label %if.then70

if.end66.if.end71_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %parent, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end66.if.end71_crit_edge
  %parent_start.0 = phi i64 [ %32, %if.then70 ], [ 0, %if.end66.if.end71_crit_edge ]
  %call74 = call ptr @btrfs_alloc_tree_block(ptr noundef %trans, ptr noundef %root, i64 noundef %parent_start.0, i64 noundef %30, ptr noundef nonnull %disk_key, i32 noundef %conv, i64 noundef %search_start, i64 noundef %empty_size, i32 noundef %nest) #14
  %cmp.i = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %call74 to i32
  br label %cleanup

if.end78:                                         ; preds = %if.end71
  call void @copy_extent_buffer_full(ptr noundef %call74, ptr noundef %buf) #14
  %34 = ptrtoint ptr %call74 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %call74, align 8
  %pages.i579 = getelementptr inbounds %struct.extent_buffer, ptr %call74, i32 0, i32 12
  %36 = ptrtoint ptr %pages.i579 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pages.i579, align 4
  %call.i580 = call ptr @page_address(ptr noundef %37) #14
  %38 = ptrtoint ptr %call74 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %call74, align 8
  %conv.i581 = trunc i64 %39 to i32
  %and.i582 = and i32 %conv.i581, 4095
  %add.ptr.i583 = getelementptr i8, ptr %call.i580, i32 %and.i582
  %bytenr.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i583, i32 0, i32 2
  %40 = call i64 @llvm.bswap.i64(i64 %35) #14
  %41 = ptrtoint ptr %bytenr.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %bytenr.i, align 1
  %42 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %trans, align 8
  %44 = ptrtoint ptr %pages.i579 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pages.i579, align 4
  %call.i585 = call ptr @page_address(ptr noundef %45) #14
  %46 = ptrtoint ptr %call74 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %call74, align 8
  %conv.i586 = trunc i64 %47 to i32
  %and.i587 = and i32 %conv.i586, 4095
  %add.ptr.i588 = getelementptr i8, ptr %call.i585, i32 %and.i587
  %generation.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i588, i32 0, i32 5
  %48 = call i64 @llvm.bswap.i64(i64 %43) #14
  %49 = ptrtoint ptr %generation.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %48, ptr %generation.i, align 1
  %50 = ptrtoint ptr %pages.i579 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pages.i579, align 4
  %call.i.i589 = call ptr @page_address(ptr noundef %51) #14
  %52 = ptrtoint ptr %call74 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %call74, align 8
  %conv.i.i = trunc i64 %53 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i589, i32 %and.i.i
  %flags.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %flags.i.i, align 1
  %56 = and i64 %55, -256
  %57 = or i64 %56, 1
  %58 = ptrtoint ptr %pages.i579 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pages.i579, align 4
  %call.i2.i = call ptr @page_address(ptr noundef %59) #14
  %60 = ptrtoint ptr %call74 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %call74, align 8
  %conv.i3.i = trunc i64 %61 to i32
  %and.i4.i = and i32 %conv.i3.i, 4095
  %add.ptr.i5.i = getelementptr i8, ptr %call.i2.i, i32 %and.i4.i
  %flags.i6.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i5.i, i32 0, i32 3
  %62 = ptrtoint ptr %flags.i6.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %57, ptr %flags.i6.i, align 1
  %63 = ptrtoint ptr %pages.i579 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pages.i579, align 4
  %call.i.i591 = call ptr @page_address(ptr noundef %64) #14
  %65 = ptrtoint ptr %call74 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %call74, align 8
  %conv.i.i592 = trunc i64 %66 to i32
  %and.i.i593 = and i32 %conv.i.i592, 4095
  %add.ptr.i.i594 = getelementptr i8, ptr %call.i.i591, i32 %and.i.i593
  %flags.i.i595 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i594, i32 0, i32 3
  %67 = ptrtoint ptr %flags.i.i595 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 8)
  %68 = load i64, ptr %flags.i.i595, align 1
  %69 = and i64 %68, -216172782113783809
  %70 = ptrtoint ptr %pages.i579 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pages.i579, align 4
  %call.i2.i596 = call ptr @page_address(ptr noundef %71) #14
  %72 = ptrtoint ptr %call74 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %call74, align 8
  %conv.i3.i597 = trunc i64 %73 to i32
  %and.i4.i598 = and i32 %conv.i3.i597, 4095
  %add.ptr.i5.i599 = getelementptr i8, ptr %call.i2.i596, i32 %and.i4.i598
  %flags.i6.i600 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i5.i599, i32 0, i32 3
  %74 = ptrtoint ptr %flags.i6.i600 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 8)
  store i64 %69, ptr %flags.i6.i600, align 1
  %75 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %75, i32 8)
  %76 = load i64, ptr %root_key, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8, i64 %76)
  %cmp83 = icmp eq i64 %76, -8
  %77 = ptrtoint ptr %pages.i579 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pages.i579, align 4
  %call.i.i602 = call ptr @page_address(ptr noundef %78) #14
  %79 = ptrtoint ptr %call74 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %call74, align 8
  %conv.i.i603 = trunc i64 %80 to i32
  %and.i.i604 = and i32 %conv.i.i603, 4095
  %add.ptr.i.i605 = getelementptr i8, ptr %call.i.i602, i32 %and.i.i604
  br i1 %cmp83, label %if.then85, label %if.else86

if.then85:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  %flags.i.i606 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i605, i32 0, i32 3
  %81 = ptrtoint ptr %flags.i.i606 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 8)
  %82 = load i64, ptr %flags.i.i606, align 1
  %83 = or i64 %82, 144115188075855872
  %84 = ptrtoint ptr %pages.i579 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pages.i579, align 4
  %call.i2.i607 = call ptr @page_address(ptr noundef %85) #14
  %86 = ptrtoint ptr %call74 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %call74, align 8
  %conv.i3.i608 = trunc i64 %87 to i32
  %and.i4.i609 = and i32 %conv.i3.i608, 4095
  %add.ptr.i5.i610 = getelementptr i8, ptr %call.i2.i607, i32 %and.i4.i609
  %flags.i6.i611 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i5.i610, i32 0, i32 3
  %88 = ptrtoint ptr %flags.i6.i611 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %83, ptr %flags.i6.i611, align 1
  br label %if.end89

if.else86:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i605, i32 0, i32 6
  %89 = call i64 @llvm.bswap.i64(i64 %76) #14
  %90 = ptrtoint ptr %owner.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 8)
  store i64 %89, ptr %owner.i, align 1
  br label %if.end89

if.end89:                                         ; preds = %if.else86, %if.then85
  %fs_devices = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 100
  %91 = ptrtoint ptr %fs_devices to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fs_devices, align 8
  %metadata_uuid = getelementptr inbounds %struct.btrfs_fs_devices, ptr %92, i32 0, i32 1
  call void @write_extent_buffer_fsid(ptr noundef %call74, ptr noundef %metadata_uuid) #14
  %call90 = call fastcc i32 @update_ref_for_cow(ptr noundef %trans, ptr noundef %root, ptr noundef %buf, ptr noundef %call74, ptr noundef nonnull %last_ref)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end150, label %if.then92

if.then92:                                        ; preds = %if.end89
  call void @btrfs_tree_unlock(ptr noundef %call74) #14
  call void @free_extent_buffer(ptr noundef %call74) #14
  %fs_info94 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %93 = ptrtoint ptr %fs_info94 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fs_info94, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %94, i32 0, i32 149
  %call95 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then97, label %if.then92.if.end147_crit_edge

if.then92.if.end147_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147

if.then97:                                        ; preds = %if.then92
  %95 = zext i32 %call90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call90, label %do.end116 [
    i32 -5, label %if.then97.do.body131_crit_edge
    i32 -30, label %if.then97.do.body131_crit_edge637
  ]

if.then97.do.body131_crit_edge637:                ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body131

if.then97.do.body131_crit_edge:                   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body131

do.end116:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 441, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %call90) #14
  br label %if.end147

do.body131:                                       ; preds = %if.then97.do.body131_crit_edge, %if.then97.do.body131_crit_edge637
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__btrfs_cow_block.__UNIQUE_ID_ddebug927, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__btrfs_cow_block, %if.then141)) #14
          to label %if.end147 [label %if.then141], !srcloc !122

if.then141:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #16
  %96 = ptrtoint ptr %fs_info94 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fs_info94, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %97, ptr noundef nonnull @.str.6, i32 noundef %call90) #17
  br label %if.end147

if.end147:                                        ; preds = %if.then141, %do.body131, %do.end116, %if.then92.if.end147_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.19, i32 noundef 441, i32 noundef %call90) #17
  br label %cleanup

if.end150:                                        ; preds = %if.end89
  %98 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %state, align 4
  %100 = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool153.not = icmp eq i32 %100, 0
  br i1 %tobool153.not, label %if.end150.if.end219_crit_edge, label %if.then154

if.end150.if.end219_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end219

if.then154:                                       ; preds = %if.end150
  %call155 = call i32 @btrfs_reloc_cow_block(ptr noundef %trans, ptr noundef %root, ptr noundef %buf, ptr noundef %call74) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.then154.if.end219_crit_edge, label %if.then157

if.then154.if.end219_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end219

if.then157:                                       ; preds = %if.then154
  call void @btrfs_tree_unlock(ptr noundef %call74) #14
  call void @free_extent_buffer(ptr noundef %call74) #14
  %fs_info159 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %101 = ptrtoint ptr %fs_info159 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fs_info159, align 4
  %fs_state160 = getelementptr inbounds %struct.btrfs_fs_info, ptr %102, i32 0, i32 149
  %call161 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state160) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.then163, label %if.then157.if.end215_crit_edge

if.then157.if.end215_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end215

if.then163:                                       ; preds = %if.then157
  %103 = zext i32 %call155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call155, label %do.end182 [
    i32 -5, label %if.then163.do.body197_crit_edge
    i32 -30, label %if.then163.do.body197_crit_edge638
  ]

if.then163.do.body197_crit_edge638:               ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body197

if.then163.do.body197_crit_edge:                  ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body197

do.end182:                                        ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 450, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %call155) #14
  br label %if.end215

do.body197:                                       ; preds = %if.then163.do.body197_crit_edge, %if.then163.do.body197_crit_edge638
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__btrfs_cow_block.__UNIQUE_ID_ddebug928, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__btrfs_cow_block, %if.then209)) #14
          to label %if.end215 [label %if.then209], !srcloc !122

if.then209:                                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #16
  %104 = ptrtoint ptr %fs_info159 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fs_info159, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %105, ptr noundef nonnull @.str.6, i32 noundef %call155) #17
  br label %if.end215

if.end215:                                        ; preds = %if.then209, %do.body197, %do.end182, %if.then157.if.end215_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.19, i32 noundef 450, i32 noundef %call155) #17
  br label %cleanup

if.end219:                                        ; preds = %if.then154.if.end219_crit_edge, %if.end150.if.end219_crit_edge
  %node = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 1
  %106 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %node, align 4
  %cmp220 = icmp eq ptr %107, %buf
  br i1 %cmp220, label %if.then222, label %if.else331

if.then222:                                       ; preds = %if.end219
  %cmp226 = icmp eq ptr %parent, %buf
  %108 = or i1 %tobool69.not, %cmp226
  br i1 %108, label %if.then222.if.end250_crit_edge, label %do.end244, !prof !120

if.then222.if.end250_crit_edge:                   ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end250

do.end244:                                        ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 456, i32 noundef 9, ptr noundef null) #14
  br label %if.end250

if.end250:                                        ; preds = %do.end244, %if.then222.if.end250_crit_edge
  %109 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %109, i32 8)
  %110 = load i64, ptr %root_key, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8, i64 %110)
  %cmp260 = icmp eq i64 %110, -8
  br i1 %cmp260, label %if.end250.if.then265_crit_edge, label %lor.lhs.false

if.end250.if.then265_crit_edge:                   ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then265

lor.lhs.false:                                    ; preds = %if.end250
  %111 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pages.i, align 4
  %call.i.i618 = call ptr @page_address(ptr noundef %112) #14
  %113 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %buf, align 8
  %conv.i.i619 = trunc i64 %114 to i32
  %and.i.i620 = and i32 %conv.i.i619, 4095
  %add.ptr.i.i621 = getelementptr i8, ptr %call.i.i618, i32 %and.i.i620
  %flags.i.i622 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i621, i32 0, i32 3
  %115 = ptrtoint ptr %flags.i.i622 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 8)
  %116 = load i64, ptr %flags.i.i622, align 1
  %conv.i623636 = and i64 %116, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv.i623636)
  %cmp263 = icmp eq i64 %conv.i623636, 0
  br i1 %cmp263, label %lor.lhs.false.if.then265_crit_edge, label %lor.lhs.false.if.end267_crit_edge

lor.lhs.false.if.end267_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end267

lor.lhs.false.if.then265_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then265

if.then265:                                       ; preds = %lor.lhs.false.if.then265_crit_edge, %if.end250.if.then265_crit_edge
  %117 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %buf, align 8
  br label %if.end267

if.end267:                                        ; preds = %if.then265, %lor.lhs.false.if.end267_crit_edge
  %parent_start.1 = phi i64 [ %118, %if.then265 ], [ %parent_start.0, %lor.lhs.false.if.end267_crit_edge ]
  %refs = getelementptr inbounds %struct.extent_buffer, ptr %call74, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  %119 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #14, !srcloc !124
  %120 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %node, align 4
  %call269 = call i32 @btrfs_tree_mod_log_insert_root(ptr noundef %121, ptr noundef %call74, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %cmp271 = icmp slt i32 %call269, 0
  br i1 %cmp271, label %do.body280, label %do.body289, !prof !121

do.body280:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #14, !srcloc !125
  unreachable

do.body289:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !126
  %122 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %call74, ptr %node, align 4
  %123 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %123, i32 8)
  %124 = load i64, ptr %root_key, align 1
  %125 = ptrtoint ptr %last_ref to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %last_ref, align 4
  call void @btrfs_free_tree_block(ptr noundef %trans, i64 noundef %124, ptr noundef %buf, i64 noundef %parent_start.1, i32 noundef %126) #14
  call void @free_extent_buffer(ptr noundef %buf) #14
  call fastcc void @add_root_to_dirty_list(ptr noundef %root)
  br label %if.end437

if.else331:                                       ; preds = %if.end219
  %127 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %trans, align 8
  %pages.i624 = getelementptr inbounds %struct.extent_buffer, ptr %parent, i32 0, i32 12
  %129 = ptrtoint ptr %pages.i624 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pages.i624, align 4
  %call.i625 = call ptr @page_address(ptr noundef %130) #14
  %131 = ptrtoint ptr %parent to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %parent, align 8
  %conv.i626 = trunc i64 %132 to i32
  %and.i627 = and i32 %conv.i626, 4095
  %add.ptr.i628 = getelementptr i8, ptr %call.i625, i32 %and.i627
  %generation.i629 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i628, i32 0, i32 5
  %133 = ptrtoint ptr %generation.i629 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 8)
  %134 = load i64, ptr %generation.i629, align 1
  %135 = call i64 @llvm.bswap.i64(i64 %134) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %128, i64 %135)
  %cmp335.not = icmp eq i64 %128, %135
  br i1 %cmp335.not, label %if.else331.if.end358_crit_edge, label %do.end352, !prof !120

if.else331.if.end358_crit_edge:                   ; preds = %if.else331
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end358

do.end352:                                        ; preds = %if.else331
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 471, i32 noundef 9, ptr noundef null) #14
  br label %if.end358

if.end358:                                        ; preds = %do.end352, %if.else331.if.end358_crit_edge
  %call366 = call i32 @btrfs_tree_mod_log_insert_key(ptr noundef %parent, i32 noundef %parent_slot, i32 noundef 0, i32 noundef 3136) #14
  %136 = ptrtoint ptr %call74 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %call74, align 8
  %mul.i = mul i32 %parent_slot, 33
  %add.i = add i32 %mul.i, 101
  %138 = inttoptr i32 %add.i to ptr
  call void @btrfs_set_64(ptr noundef %parent, ptr noundef %138, i32 noundef 17, i64 noundef %137) #14
  %139 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %trans, align 8
  call void @btrfs_set_64(ptr noundef %parent, ptr noundef %138, i32 noundef 25, i64 noundef %140) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef %parent) #14
  %141 = ptrtoint ptr %last_ref to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %last_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool369.not = icmp eq i32 %142, 0
  br i1 %tobool369.not, label %if.end358.if.end435_crit_edge, label %if.then370

if.end358.if.end435_crit_edge:                    ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end435

if.then370:                                       ; preds = %if.end358
  %call371 = call i32 @btrfs_tree_mod_log_free_eb(ptr noundef %buf) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call371)
  %tobool372.not = icmp eq i32 %call371, 0
  br i1 %tobool372.not, label %if.then370.if.end435_crit_edge, label %if.then373

if.then370.if.end435_crit_edge:                   ; preds = %if.then370
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end435

if.then373:                                       ; preds = %if.then370
  call void @btrfs_tree_unlock(ptr noundef %call74) #14
  call void @free_extent_buffer(ptr noundef %call74) #14
  %fs_info375 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %143 = ptrtoint ptr %fs_info375 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %fs_info375, align 4
  %fs_state376 = getelementptr inbounds %struct.btrfs_fs_info, ptr %144, i32 0, i32 149
  %call377 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state376) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call377)
  %tobool378.not = icmp eq i32 %call377, 0
  br i1 %tobool378.not, label %if.then379, label %if.then373.if.end431_crit_edge

if.then373.if.end431_crit_edge:                   ; preds = %if.then373
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end431

if.then379:                                       ; preds = %if.then373
  %145 = zext i32 %call371 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call371, label %do.end398 [
    i32 -5, label %if.then379.do.body413_crit_edge
    i32 -30, label %if.then379.do.body413_crit_edge639
  ]

if.then379.do.body413_crit_edge639:               ; preds = %if.then379
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body413

if.then379.do.body413_crit_edge:                  ; preds = %if.then379
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body413

do.end398:                                        ; preds = %if.then379
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 484, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %call371) #14
  br label %if.end431

do.body413:                                       ; preds = %if.then379.do.body413_crit_edge, %if.then379.do.body413_crit_edge639
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__btrfs_cow_block.__UNIQUE_ID_ddebug932, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__btrfs_cow_block, %if.then425)) #14
          to label %if.end431 [label %if.then425], !srcloc !122

if.then425:                                       ; preds = %do.body413
  call void @__sanitizer_cov_trace_pc() #16
  %146 = ptrtoint ptr %fs_info375 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %fs_info375, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %147, ptr noundef nonnull @.str.6, i32 noundef %call371) #17
  br label %if.end431

if.end431:                                        ; preds = %if.then425, %do.body413, %do.end398, %if.then373.if.end431_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.19, i32 noundef 484, i32 noundef %call371) #17
  br label %cleanup

if.end435:                                        ; preds = %if.then370.if.end435_crit_edge, %if.end358.if.end435_crit_edge
  %148 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %148, i32 8)
  %149 = load i64, ptr %root_key, align 1
  call void @btrfs_free_tree_block(ptr noundef %trans, i64 noundef %149, ptr noundef %buf, i64 noundef %parent_start.0, i32 noundef %142) #14
  br label %if.end437

if.end437:                                        ; preds = %if.end435, %do.body289
  br i1 %cmp, label %if.then439, label %if.end437.if.end440_crit_edge

if.end437.if.end440_crit_edge:                    ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end440

if.then439:                                       ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_unlock(ptr noundef %buf) #14
  br label %if.end440

if.end440:                                        ; preds = %if.then439, %if.end437.if.end440_crit_edge
  call void @free_extent_buffer_stale(ptr noundef %buf) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef %call74) #14
  %150 = ptrtoint ptr %cow_ret to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call74, ptr %cow_ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end440, %if.end431, %if.end215, %if.end147, %if.then76
  %retval.0 = phi i32 [ %33, %if.then76 ], [ %call90, %if.end147 ], [ %call155, %if.end215 ], [ 0, %if.end440 ], [ %call371, %if.end431 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_ref) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #14
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_cow_block(ptr noundef %root, ptr noundef %buf, ptr noundef %cow) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_cow_block, i32 0, i32 1), ptr blockaddress(@trace_btrfs_cow_block, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !122

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !120

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !104) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !127
  %call42 = tail call i32 @__traceiter_btrfs_cow_block(ptr noundef null, ptr noundef %root, ptr noundef %buf, ptr noundef %cow) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !128
  %13 = tail call i32 @llvm.read_register.i32(metadata !104) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !104) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !120

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !104) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_cow_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_cow_block, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_cow_block.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_btrfs_cow_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 1050, ptr noundef nonnull @.str.1) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !130
  %31 = tail call i32 @llvm.read_register.i32(metadata !104) #14
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @btrfs_comp_cpu_keys(ptr nocapture noundef readonly %k1, ptr nocapture noundef readonly %k2) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %k1, align 1
  %2 = ptrtoint ptr %k2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %k2, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp ugt i64 %1, %3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp4 = icmp ult i64 %1, %3
  br i1 %cmp4, label %if.end.return_crit_edge, label %if.end6

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end6:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.btrfs_key, ptr %k1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  %type7 = getelementptr inbounds %struct.btrfs_key, ptr %k2, i32 0, i32 1
  %6 = ptrtoint ptr %type7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp9 = icmp ugt i8 %5, %7
  br i1 %cmp9, label %if.end6.return_crit_edge, label %if.end12

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp17 = icmp ult i8 %5, %7
  br i1 %cmp17, label %if.end12.return_crit_edge, label %if.end20

if.end12.return_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end20:                                         ; preds = %if.end12
  %offset = getelementptr inbounds %struct.btrfs_key, ptr %k1, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %offset, align 1
  %offset21 = getelementptr inbounds %struct.btrfs_key, ptr %k2, i32 0, i32 2
  %10 = ptrtoint ptr %offset21 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %offset21, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp22 = icmp ugt i64 %9, %11
  br i1 %cmp22, label %if.end20.return_crit_edge, label %if.end25

if.end20.return_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp28 = icmp ult i64 %9, %11
  %. = sext i1 %cmp28 to i32
  br label %return

return:                                           ; preds = %if.end25, %if.end20.return_crit_edge, %if.end12.return_crit_edge, %if.end6.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ -1, %if.end.return_crit_edge ], [ 1, %if.end6.return_crit_edge ], [ -1, %if.end12.return_crit_edge ], [ 1, %if.end20.return_crit_edge ], [ %., %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_realloc_node(ptr noundef %trans, ptr noundef %root, ptr noundef %parent, i32 noundef %start_slot, ptr nocapture noundef %last_ret, ptr nocapture noundef readonly %progress) local_unnamed_addr #3 align 64 {
entry:
  %cur = alloca ptr, align 4
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur) #14
  %2 = ptrtoint ptr %last_ret to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %last_ret, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #14
  %4 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 1
  %5 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 2
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %6 = call ptr @memset(ptr %disk_key, i32 255, i32 17)
  %7 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transaction, align 4
  %running_transaction = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 37
  %9 = ptrtoint ptr %running_transaction to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %running_transaction, align 8
  %cmp.not = icmp eq ptr %8, %10
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !120

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %trans, align 8
  %generation = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 26
  %13 = ptrtoint ptr %generation to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %generation, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp21.not = icmp eq i64 %12, %14
  br i1 %cmp21.not, label %if.end.if.end43_crit_edge, label %do.end37, !prof !120

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 668, i32 noundef 9, ptr noundef null) #14
  br label %if.end43

if.end43:                                         ; preds = %do.end37, %if.end.if.end43_crit_edge
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %parent, i32 0, i32 12
  %15 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %16) #14
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %parent, align 8
  %conv.i = trunc i64 %18 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %19 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %nritems.i, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #14
  %nodesize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %22 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nodesize, align 8
  %sub = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp51 = icmp ult i32 %21, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %start_slot)
  %cmp54.not206 = icmp slt i32 %sub, %start_slot
  %or.cond = or i1 %cmp51, %cmp54.not206
  br i1 %or.cond, label %if.end43.cleanup97_crit_edge, label %for.body.lr.ph

if.end43.cleanup97_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup97

for.body.lr.ph:                                   ; preds = %if.end43
  %type7.i.i = getelementptr inbounds %struct.btrfs_key, ptr %progress, i32 0, i32 1
  %offset21.i.i = getelementptr inbounds %struct.btrfs_key, ptr %progress, i32 0, i32 2
  %conv.i155 = zext i32 %23 to i64
  %mul = shl i32 %23, 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %progress_passed.0216 = phi i32 [ 0, %for.body.lr.ph ], [ %progress_passed.1.ph, %for.inc.for.body_crit_edge ]
  %i.0213 = phi i32 [ %start_slot, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %last_block.0211 = phi i64 [ 0, %for.body.lr.ph ], [ %last_block.2.ph, %for.inc.for.body_crit_edge ]
  %search_start.0207 = phi i64 [ %3, %for.body.lr.ph ], [ %search_start.2.ph, %for.inc.for.body_crit_edge ]
  call void @btrfs_node_key(ptr noundef %parent, ptr noundef nonnull %disk_key, i32 noundef %i.0213) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %progress_passed.0216)
  %tobool55.not = icmp eq i32 %progress_passed.0216, 0
  br i1 %tobool55.not, label %land.lhs.true, label %for.body.if.end59_crit_edge

for.body.if.end59_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

land.lhs.true:                                    ; preds = %for.body
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %5, align 1
  %26 = call i64 @llvm.bswap.i64(i64 %25) #14
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %4, align 8
  %29 = ptrtoint ptr %disk_key to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %disk_key, align 8
  %31 = call i64 @llvm.bswap.i64(i64 %30) #14
  %32 = ptrtoint ptr %progress to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %progress, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %33)
  %cmp.i.i = icmp ugt i64 %31, %33
  br i1 %cmp.i.i, label %land.lhs.true.if.end59_crit_edge, label %if.end.i.i

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.end.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %33)
  %cmp4.i.i = icmp ult i64 %31, %33
  br i1 %cmp4.i.i, label %if.end.i.i.for.inc_crit_edge, label %if.end6.i.i

if.end.i.i.for.inc_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end6.i.i:                                      ; preds = %if.end.i.i
  %34 = ptrtoint ptr %type7.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %type7.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %35)
  %cmp9.i.i = icmp ugt i8 %28, %35
  br i1 %cmp9.i.i, label %if.end6.i.i.if.end59_crit_edge, label %if.end12.i.i

if.end6.i.i.if.end59_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.end12.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %35)
  %cmp17.i.i = icmp ult i8 %28, %35
  br i1 %cmp17.i.i, label %if.end12.i.i.for.inc_crit_edge, label %if.end20.i.i

if.end12.i.i.for.inc_crit_edge:                   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end20.i.i:                                     ; preds = %if.end12.i.i
  %36 = ptrtoint ptr %offset21.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %offset21.i.i, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %37)
  %cmp28.i.i = icmp ult i64 %26, %37
  br i1 %cmp28.i.i, label %if.end20.i.i.for.inc_crit_edge, label %if.end20.i.i.if.end59_crit_edge

if.end20.i.i.if.end59_crit_edge:                  ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.end20.i.i.for.inc_crit_edge:                   ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end59:                                         ; preds = %if.end20.i.i.if.end59_crit_edge, %if.end6.i.i.if.end59_crit_edge, %land.lhs.true.if.end59_crit_edge, %for.body.if.end59_crit_edge
  %mul.i = mul i32 %i.0213, 33
  %add.i = add i32 %mul.i, 101
  %38 = inttoptr i32 %add.i to ptr
  %call.i.i = call i64 @btrfs_get_64(ptr noundef %parent, ptr noundef %38, i32 noundef 17) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %last_block.0211)
  %cmp61 = icmp eq i64 %last_block.0211, 0
  %spec.select = select i1 %cmp61, i64 %call.i.i, i64 %last_block.0211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0213)
  %cmp64 = icmp sgt i32 %i.0213, 0
  br i1 %cmp64, label %if.then65, label %if.end59.for.inc_crit_edge

if.end59.for.inc_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then65:                                        ; preds = %if.end59
  %add.i153 = add i32 %mul.i, 68
  %39 = inttoptr i32 %add.i153 to ptr
  %call.i.i154 = call i64 @btrfs_get_64(ptr noundef %parent, ptr noundef %39, i32 noundef 17) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %call.i.i154)
  %cmp.i = icmp ult i64 %call.i.i, %call.i.i154
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then65.if.end.i_crit_edge

if.then65.if.end.i_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then65
  %40 = add i64 %call.i.i, %conv.i155
  %sub.i = sub i64 %call.i.i154, %40
  call void @__sanitizer_cov_trace_const_cmp8(i64 32768, i64 %sub.i)
  %cmp1.i = icmp ult i64 %sub.i, 32768
  br i1 %cmp1.i, label %land.lhs.true.i.for.inc_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then65.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %call.i.i154)
  %cmp3.i = icmp ugt i64 %call.i.i, %call.i.i154
  br i1 %cmp3.i, label %land.lhs.true5.i, label %if.end.i.land.lhs.true71_crit_edge

if.end.i.land.lhs.true71_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true71

land.lhs.true5.i:                                 ; preds = %if.end.i
  %41 = add i64 %call.i.i154, %conv.i155
  %sub8.i = sub i64 %call.i.i, %41
  call void @__sanitizer_cov_trace_const_cmp8(i64 32768, i64 %sub8.i)
  %cmp9.i = icmp ult i64 %sub8.i, 32768
  br i1 %cmp9.i, label %land.lhs.true5.i.for.inc_crit_edge, label %land.lhs.true5.i.land.lhs.true71_crit_edge

land.lhs.true5.i.land.lhs.true71_crit_edge:       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true71

land.lhs.true5.i.for.inc_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true71:                                  ; preds = %land.lhs.true5.i.land.lhs.true71_crit_edge, %if.end.i.land.lhs.true71_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %i.0213)
  %cmp72 = icmp sgt i32 %sub, %i.0213
  br i1 %cmp72, label %if.then73, label %land.lhs.true71.if.end79_crit_edge

land.lhs.true71.if.end79_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.then73:                                        ; preds = %land.lhs.true71
  %add.i157 = add i32 %mul.i, 134
  %42 = inttoptr i32 %add.i157 to ptr
  %call.i.i158 = call i64 @btrfs_get_64(ptr noundef %parent, ptr noundef %42, i32 noundef 17) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %call.i.i158)
  %cmp.i159 = icmp ult i64 %call.i.i, %call.i.i158
  br i1 %cmp.i159, label %land.lhs.true.i163, label %if.then73.if.end.i165_crit_edge

if.then73.if.end.i165_crit_edge:                  ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i165

land.lhs.true.i163:                               ; preds = %if.then73
  %43 = add i64 %call.i.i, %conv.i155
  %sub.i161 = sub i64 %call.i.i158, %43
  call void @__sanitizer_cov_trace_const_cmp8(i64 32768, i64 %sub.i161)
  %cmp1.i162 = icmp ult i64 %sub.i161, 32768
  br i1 %cmp1.i162, label %land.lhs.true.i163.for.inc_crit_edge, label %land.lhs.true.i163.if.end.i165_crit_edge

land.lhs.true.i163.if.end.i165_crit_edge:         ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i165

land.lhs.true.i163.for.inc_crit_edge:             ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end.i165:                                      ; preds = %land.lhs.true.i163.if.end.i165_crit_edge, %if.then73.if.end.i165_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %call.i.i158)
  %cmp3.i164 = icmp ugt i64 %call.i.i, %call.i.i158
  br i1 %cmp3.i164, label %land.lhs.true5.i169, label %if.end.i165.if.end79_crit_edge

if.end.i165.if.end79_crit_edge:                   ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

land.lhs.true5.i169:                              ; preds = %if.end.i165
  %44 = add i64 %call.i.i158, %conv.i155
  %sub8.i167 = sub i64 %call.i.i, %44
  call void @__sanitizer_cov_trace_const_cmp8(i64 32768, i64 %sub8.i167)
  %cmp9.i168 = icmp ult i64 %sub8.i167, 32768
  br i1 %cmp9.i168, label %land.lhs.true5.i169.for.inc_crit_edge, label %land.lhs.true5.i169.if.end79_crit_edge

land.lhs.true5.i169.if.end79_crit_edge:           ; preds = %land.lhs.true5.i169
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

land.lhs.true5.i169.for.inc_crit_edge:            ; preds = %land.lhs.true5.i169
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end79:                                         ; preds = %land.lhs.true5.i169.if.end79_crit_edge, %if.end.i165.if.end79_crit_edge, %land.lhs.true71.if.end79_crit_edge
  %call80 = call ptr @btrfs_read_node_slot(ptr noundef %parent, i32 noundef %i.0213)
  %45 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call80, ptr %cur, align 4
  %cmp.i173 = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %cleanup.thread195, label %if.end84

cleanup.thread195:                                ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %call80 to i32
  br label %cleanup97

if.end84:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %search_start.0207)
  %cmp85 = icmp eq i64 %search_start.0207, 0
  %spec.select151 = select i1 %cmp85, i64 %spec.select, i64 %search_start.0207
  call void @btrfs_tree_lock(ptr noundef %call80) #14
  %sub88 = sub i32 %sub, %i.0213
  %mul89 = mul i32 %sub88, %23
  %47 = call i32 @llvm.umin.i32(i32 %mul, i32 %mul89)
  %conv = zext i32 %47 to i64
  %call92 = call fastcc i32 @__btrfs_cow_block(ptr noundef %trans, ptr noundef %root, ptr noundef %call80, ptr noundef %parent, i32 noundef %i.0213, ptr noundef nonnull %cur, i64 noundef %spec.select151, i64 noundef %conv, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  %48 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cur, align 4
  br i1 %tobool93.not, label %if.end95, label %cleanup

if.end95:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %49, align 8
  %52 = ptrtoint ptr %last_ret to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %last_ret, align 8
  call void @btrfs_tree_unlock(ptr noundef %49) #14
  call void @free_extent_buffer(ptr noundef %49) #14
  br label %for.inc

cleanup:                                          ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_unlock(ptr noundef %49) #14
  call void @free_extent_buffer(ptr noundef %49) #14
  br label %cleanup97

for.inc:                                          ; preds = %if.end95, %land.lhs.true5.i169.for.inc_crit_edge, %land.lhs.true.i163.for.inc_crit_edge, %land.lhs.true5.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end59.for.inc_crit_edge, %if.end20.i.i.for.inc_crit_edge, %if.end12.i.i.for.inc_crit_edge, %if.end.i.i.for.inc_crit_edge
  %search_start.2.ph = phi i64 [ %51, %if.end95 ], [ %search_start.0207, %if.end.i.i.for.inc_crit_edge ], [ %search_start.0207, %if.end12.i.i.for.inc_crit_edge ], [ %search_start.0207, %land.lhs.true.i163.for.inc_crit_edge ], [ %search_start.0207, %land.lhs.true5.i169.for.inc_crit_edge ], [ %search_start.0207, %if.end59.for.inc_crit_edge ], [ %search_start.0207, %land.lhs.true.i.for.inc_crit_edge ], [ %search_start.0207, %land.lhs.true5.i.for.inc_crit_edge ], [ %search_start.0207, %if.end20.i.i.for.inc_crit_edge ]
  %last_block.2.ph = phi i64 [ %51, %if.end95 ], [ %last_block.0211, %if.end.i.i.for.inc_crit_edge ], [ %last_block.0211, %if.end12.i.i.for.inc_crit_edge ], [ %call.i.i, %land.lhs.true.i163.for.inc_crit_edge ], [ %call.i.i, %land.lhs.true5.i169.for.inc_crit_edge ], [ %call.i.i, %if.end59.for.inc_crit_edge ], [ %call.i.i, %land.lhs.true.i.for.inc_crit_edge ], [ %call.i.i, %land.lhs.true5.i.for.inc_crit_edge ], [ %last_block.0211, %if.end20.i.i.for.inc_crit_edge ]
  %progress_passed.1.ph = phi i32 [ 1, %if.end95 ], [ 0, %if.end.i.i.for.inc_crit_edge ], [ 0, %if.end12.i.i.for.inc_crit_edge ], [ 1, %land.lhs.true.i163.for.inc_crit_edge ], [ 1, %land.lhs.true5.i169.for.inc_crit_edge ], [ 1, %if.end59.for.inc_crit_edge ], [ 1, %land.lhs.true.i.for.inc_crit_edge ], [ 1, %land.lhs.true5.i.for.inc_crit_edge ], [ 0, %if.end20.i.i.for.inc_crit_edge ]
  %inc = add i32 %i.0213, 1
  %cmp54.not = icmp slt i32 %sub, %inc
  br i1 %cmp54.not, label %for.inc.cleanup97_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup97_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup97

cleanup97:                                        ; preds = %for.inc.cleanup97_crit_edge, %cleanup, %cleanup.thread195, %if.end43.cleanup97_crit_edge
  %retval.2 = phi i32 [ 0, %if.end43.cleanup97_crit_edge ], [ %46, %cleanup.thread195 ], [ %call92, %cleanup ], [ 0, %for.inc.cleanup97_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur) #14
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_read_node_slot(ptr noundef %parent, i32 noundef %slot) local_unnamed_addr #3 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %first_key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %parent, i32 0, i32 12
  %0 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #14
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %parent, align 8
  %conv.i = trunc i64 %3 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %4 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %level.i, align 1
  %conv = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %first_key) #14
  %6 = getelementptr inbounds %struct.btrfs_key, ptr %first_key, i32 0, i32 1
  %7 = getelementptr inbounds %struct.btrfs_key, ptr %first_key, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp = icmp slt i32 %slot, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pages.i, align 4
  %call.i44 = tail call ptr @page_address(ptr noundef %9) #14
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %parent, align 8
  %conv.i45 = trunc i64 %11 to i32
  %and.i46 = and i32 %conv.i45, 4095
  %add.ptr.i47 = getelementptr i8, ptr %call.i44, i32 %and.i46
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i47, i32 0, i32 7
  %12 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %nritems.i, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %slot)
  %cmp3.not = icmp ugt i32 %14, %slot
  br i1 %cmp3.not, label %do.body, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp6 = icmp eq i8 %5, 0
  br i1 %cmp6, label %do.body10, label %do.end16, !prof !121

do.body10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 842, 0\0A.popsection", ""() #14, !srcloc !131
  unreachable

do.end16:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %15 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %17 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @btrfs_node_key(ptr noundef %parent, ptr noundef nonnull %disk_key.i, i32 noundef %slot) #14
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %16, align 1
  %20 = call i64 @llvm.bswap.i64(i64 %19) #14
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %7, align 1
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %15, align 8
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %6, align 8
  %25 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %disk_key.i, align 8
  %27 = call i64 @llvm.bswap.i64(i64 %26) #14
  %28 = ptrtoint ptr %first_key to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %first_key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  %fs_info = getelementptr inbounds %struct.extent_buffer, ptr %parent, i32 0, i32 3
  %29 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fs_info, align 8
  %mul.i = mul i32 %slot, 33
  %add.i = add i32 %mul.i, 101
  %31 = inttoptr i32 %add.i to ptr
  %call.i.i = call i64 @btrfs_get_64(ptr noundef %parent, ptr noundef %31, i32 noundef 17) #14
  %32 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pages.i, align 4
  %call.i49 = call ptr @page_address(ptr noundef %33) #14
  %34 = ptrtoint ptr %parent to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %parent, align 8
  %conv.i50 = trunc i64 %35 to i32
  %and.i51 = and i32 %conv.i50, 4095
  %add.ptr.i52 = getelementptr i8, ptr %call.i49, i32 %and.i51
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i52, i32 0, i32 6
  %36 = ptrtoint ptr %owner.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %owner.i, align 1
  %38 = call i64 @llvm.bswap.i64(i64 %37) #14
  %call.i.i55 = call i64 @btrfs_get_64(ptr noundef %parent, ptr noundef %31, i32 noundef 25) #14
  %sub = add nsw i32 %conv, -1
  %call20 = call ptr @read_tree_block(ptr noundef %30, i64 noundef %call.i.i, i64 noundef %38, i64 noundef %call.i.i55, i32 noundef %sub, ptr noundef nonnull %first_key) #14
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end16.cleanup_crit_edge, label %land.lhs.true

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end16
  %bflags.i = getelementptr inbounds %struct.extent_buffer, ptr %call20, i32 0, i32 2
  %39 = ptrtoint ptr %bflags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %bflags.i, align 4
  %and1.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool23.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call void @free_extent_buffer(ptr noundef %call20) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %land.lhs.true.cleanup_crit_edge, %do.end16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call20, %do.end16.cleanup_crit_edge ], [ %call20, %land.lhs.true.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.then24 ], [ inttoptr (i32 -2 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %first_key) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_tree_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_bin_search(ptr noundef %eb, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %slot) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @generic_bin_search(ptr noundef %eb, i32 noundef 0, ptr noundef %key, ptr noundef %slot)
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generic_bin_search(ptr noundef %eb, i32 noundef %low, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %slot) unnamed_addr #4 align 64 {
entry:
  %unaligned = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 12
  %0 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #14
  %2 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %eb, align 8
  %conv.i = trunc i64 %3 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %4 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %nritems.i, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %low)
  %cmp = icmp slt i32 %6, %low
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %7 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fs_info, align 8
  %9 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pages.i, align 4
  %call.i67 = tail call ptr @page_address(ptr noundef %10) #14
  %11 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %eb, align 8
  %conv.i68 = trunc i64 %12 to i32
  %and.i69 = and i32 %conv.i68, 4095
  %add.ptr.i70 = getelementptr i8, ptr %call.i67, i32 %and.i69
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i70, i32 0, i32 6
  %13 = ptrtoint ptr %owner.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %owner.i, align 1
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #14
  %16 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages.i, align 4
  %call.i72 = tail call ptr @page_address(ptr noundef %17) #14
  %18 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %eb, align 8
  %conv.i73 = trunc i64 %19 to i32
  %and.i74 = and i32 %conv.i73, 4095
  %add.ptr.i75 = getelementptr i8, ptr %call.i72, i32 %and.i74
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i75, i32 0, i32 8
  %20 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %level.i, align 1
  %conv = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %8, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.generic_bin_search, i32 noundef %low, i32 noundef %6, i64 noundef %3, i64 noundef %15, i32 noundef %conv) #17
  br label %cleanup37

if.end:                                           ; preds = %entry
  %22 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pages.i, align 4
  %call.i77 = tail call ptr @page_address(ptr noundef %23) #14
  %24 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %eb, align 8
  %conv.i78 = trunc i64 %25 to i32
  %and.i79 = and i32 %conv.i78, 4095
  %add.ptr.i80 = getelementptr i8, ptr %call.i77, i32 %and.i79
  %level.i81 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i80, i32 0, i32 8
  %26 = ptrtoint ptr %level.i81 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %level.i81, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp5 = icmp eq i8 %27, 0
  %. = select i1 %cmp5, i32 25, i32 33
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %low)
  %cmp996 = icmp sgt i32 %6, %low
  br i1 %cmp996, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %type7.i.i = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %offset21.i.i = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %low.addr.098 = phi i32 [ %low, %while.body.lr.ph ], [ %low.addr.2, %cleanup.while.body_crit_edge ]
  %high.097 = phi i32 [ %6, %while.body.lr.ph ], [ %high.2, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %unaligned) #14
  %add = add i32 %low.addr.098, %high.097
  %div = sdiv i32 %add, 2
  %mul = mul i32 %div, %.
  %add11 = add i32 %mul, 101
  %and = and i32 %add11, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 4080, i32 %and)
  %cmp13.not = icmp eq i32 %and, 4080
  %28 = call ptr @memset(ptr %unaligned, i32 255, i32 17)
  br i1 %cmp13.not, label %if.else19, label %if.then15

if.then15:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i = lshr i32 %add11, 12
  %arrayidx = getelementptr %struct.extent_buffer, ptr %eb, i32 0, i32 12, i32 %shr.i
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %call17 = call ptr @page_address(ptr noundef %30) #14
  %31 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %eb, align 8
  %33 = trunc i64 %32 to i32
  %conv1.i = add i32 %add11, %33
  %and.i82 = and i32 %conv1.i, 4095
  %add.ptr = getelementptr i8, ptr %call17, i32 %and.i82
  br label %if.end20

if.else19:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @read_extent_buffer(ptr noundef %eb, ptr noundef nonnull %unaligned, i32 noundef %add11, i32 noundef 17) #14
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then15
  %tmp.0 = phi ptr [ %add.ptr, %if.then15 ], [ %unaligned, %if.else19 ]
  %offset.i.i = getelementptr inbounds %struct.btrfs_disk_key, ptr %tmp.0, i32 0, i32 2
  %34 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %offset.i.i, align 1
  %36 = call i64 @llvm.bswap.i64(i64 %35) #14
  %type.i.i = getelementptr inbounds %struct.btrfs_disk_key, ptr %tmp.0, i32 0, i32 1
  %37 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %type.i.i, align 1
  %39 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %tmp.0, align 1
  %41 = call i64 @llvm.bswap.i64(i64 %40) #14
  %42 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %key, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %43)
  %cmp.i.i = icmp ugt i64 %41, %43
  br i1 %cmp.i.i, label %if.end20.cleanup_crit_edge, label %if.end.i.i

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %43)
  %cmp4.i.i = icmp ult i64 %41, %43
  br i1 %cmp4.i.i, label %if.end.i.i.if.then24_crit_edge, label %if.end6.i.i

if.end.i.i.if.then24_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

if.end6.i.i:                                      ; preds = %if.end.i.i
  %44 = ptrtoint ptr %type7.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %type7.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %45)
  %cmp9.i.i = icmp ugt i8 %38, %45
  br i1 %cmp9.i.i, label %if.end6.i.i.cleanup_crit_edge, label %if.end12.i.i

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %45)
  %cmp17.i.i = icmp ult i8 %38, %45
  br i1 %cmp17.i.i, label %if.end12.i.i.if.then24_crit_edge, label %if.end20.i.i

if.end12.i.i.if.then24_crit_edge:                 ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

if.end20.i.i:                                     ; preds = %if.end12.i.i
  %46 = ptrtoint ptr %offset21.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %offset21.i.i, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %47)
  %cmp22.i.i = icmp ugt i64 %36, %47
  br i1 %cmp22.i.i, label %if.end20.i.i.cleanup_crit_edge, label %comp_keys.exit

if.end20.i.i.cleanup_crit_edge:                   ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

comp_keys.exit:                                   ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %47)
  %cmp28.i.i = icmp ult i64 %36, %47
  br i1 %cmp28.i.i, label %comp_keys.exit.if.then24_crit_edge, label %cleanup.thread

comp_keys.exit.if.then24_crit_edge:               ; preds = %comp_keys.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

if.then24:                                        ; preds = %comp_keys.exit.if.then24_crit_edge, %if.end12.i.i.if.then24_crit_edge, %if.end.i.i.if.then24_crit_edge
  %add25 = add nsw i32 %div, 1
  br label %cleanup

cleanup.thread:                                   ; preds = %comp_keys.exit
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div, ptr %slot, align 4
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %unaligned) #14
  br label %cleanup37

cleanup:                                          ; preds = %if.then24, %if.end20.i.i.cleanup_crit_edge, %if.end6.i.i.cleanup_crit_edge, %if.end20.cleanup_crit_edge
  %high.2 = phi i32 [ %high.097, %if.then24 ], [ %div, %if.end20.cleanup_crit_edge ], [ %div, %if.end6.i.i.cleanup_crit_edge ], [ %div, %if.end20.i.i.cleanup_crit_edge ]
  %low.addr.2 = phi i32 [ %add25, %if.then24 ], [ %low.addr.098, %if.end20.cleanup_crit_edge ], [ %low.addr.098, %if.end6.i.i.cleanup_crit_edge ], [ %low.addr.098, %if.end20.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %unaligned) #14
  %cmp9 = icmp slt i32 %low.addr.2, %high.2
  br i1 %cmp9, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.while.end_crit_edge
  %low.addr.0.lcssa = phi i32 [ %low, %if.end.while.end_crit_edge ], [ %low.addr.2, %cleanup.while.end_crit_edge ]
  %49 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %low.addr.0.lcssa, ptr %slot, align 4
  br label %cleanup37

cleanup37:                                        ; preds = %while.end, %cleanup.thread, %if.then
  %retval.2 = phi i32 [ -22, %if.then ], [ 1, %while.end ], [ 0, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_tree_block(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_find_item(ptr noundef %fs_root, ptr noundef %path, i64 noundef %iobjectid, i64 noundef %ioff, i8 noundef zeroext %key_type, ptr noundef %found_key) local_unnamed_addr #3 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #14
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %tobool.not = icmp eq ptr %path, null
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !121

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.9, i32 noundef 1544) #18
  unreachable

cond.end:                                         ; preds = %entry
  %tobool3.not = icmp eq ptr %found_key, null
  br i1 %tobool3.not, label %cond.false11, label %cond.end12, !prof !121

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.10, i32 noundef 1545) #18
  unreachable

cond.end12:                                       ; preds = %cond.end
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %key_type, ptr %0, align 8
  %3 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %iobjectid, ptr %key, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %ioff, ptr %1, align 1
  %call = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %fs_root, ptr noundef nonnull %key, ptr noundef nonnull %path, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cond.end12.cleanup_crit_edge, label %if.end

cond.end12.cleanup_crit_edge:                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %cond.end12
  %5 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %if.end.if.end24_crit_edge, label %land.lhs.true

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %7 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slots, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %6, i32 0, i32 12
  %9 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %10) #14
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %6, align 8
  %conv.i = trunc i64 %12 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %13 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %nritems.i, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %15)
  %cmp16.not = icmp ult i32 %8, %15
  br i1 %cmp16.not, label %land.lhs.true.if.end24_crit_edge, label %if.then17

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then17:                                        ; preds = %land.lhs.true
  %call.i55 = tail call i32 @btrfs_next_old_leaf(ptr noundef %fs_root, ptr noundef nonnull %path, i64 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool19.not = icmp eq i32 %call.i55, 0
  br i1 %tobool19.not, label %if.end21, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end21:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %path, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %land.lhs.true.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %eb.0 = phi ptr [ %17, %if.end21 ], [ %6, %land.lhs.true.if.end24_crit_edge ], [ %6, %if.end.if.end24_crit_edge ]
  %slots25 = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %18 = ptrtoint ptr %slots25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slots25, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %20 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %21 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %19, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %22 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %eb.0, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #14
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %21, align 1
  %25 = call i64 @llvm.bswap.i64(i64 %24) #14
  %offset1.i.i = getelementptr inbounds %struct.btrfs_key, ptr %found_key, i32 0, i32 2
  %26 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %offset1.i.i, align 1
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %20, align 8
  %type2.i.i = getelementptr inbounds %struct.btrfs_key, ptr %found_key, i32 0, i32 1
  %29 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %type2.i.i, align 1
  %30 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %disk_key.i, align 8
  %32 = call i64 @llvm.bswap.i64(i64 %31) #14
  %33 = ptrtoint ptr %found_key to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %found_key, align 1
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %key_type)
  %cmp30.not = icmp eq i8 %28, %key_type
  br i1 %cmp30.not, label %lor.lhs.false, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %iobjectid)
  %cmp34.not = icmp ne i64 %32, %iobjectid
  %spec.select = zext i1 %cmp34.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end24.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %cond.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %cond.end12.cleanup_crit_edge ], [ %call.i55, %if.then17.cleanup_crit_edge ], [ 1, %if.end24.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #14
  ret i32 %retval.0
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #9 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %expr, ptr noundef nonnull @.str, i32 noundef %line) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #14, !srcloc !132
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr nocapture noundef readonly %key, ptr noundef %p, i32 noundef %ins_len, i32 noundef %cow) local_unnamed_addr #3 align 64 {
entry:
  %first_key.i = alloca %struct.btrfs_disk_key, align 8
  %b = alloca ptr, align 4
  %slot = alloca i32, align 4
  %write_lock_level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #14
  %2 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %b, align 4, !annotation !133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slot) #14
  %3 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %slot, align 4, !annotation !133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %write_lock_level) #14
  %4 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %write_lock_level, align 4
  %lowest_level2 = getelementptr inbounds %struct.btrfs_path, ptr %p, i32 0, i32 4
  %5 = ptrtoint ptr %lowest_level2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lowest_level2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp ne i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ins_len)
  %cmp = icmp sgt i32 %ins_len, 0
  %spec.select = and i1 %cmp, %tobool.not
  br i1 %spec.select, label %do.end, label %entry.if.end_crit_edge, !prof !121

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1882, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p, align 4
  %cmp24.not = icmp eq ptr %8, null
  br i1 %cmp24.not, label %if.end.if.end47_crit_edge, label %do.end41, !prof !120

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1883, i32 noundef 9, ptr noundef null) #14
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %if.end.if.end47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cow)
  %tobool56.not = icmp eq i32 %cow, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ins_len)
  %tobool58 = icmp ne i32 %ins_len, 0
  %spec.select435 = and i1 %tobool58, %tobool56.not
  br i1 %spec.select435, label %do.body67, label %do.end75, !prof !121

do.body67:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1884, 0\0A.popsection", ""() #14, !srcloc !134
  unreachable

do.end75:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ins_len)
  %cmp76 = icmp slt i32 %ins_len, 0
  br i1 %cmp76, label %if.then78, label %if.else

if.then78:                                        ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %write_lock_level, align 4
  br label %if.end83

if.else:                                          ; preds = %do.end75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ins_len)
  %cmp79.not = icmp eq i32 %ins_len, 0
  br i1 %cmp79.not, label %if.else.if.end83_crit_edge, label %if.then81

if.else.if.end83_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

if.then81:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %write_lock_level, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.else.if.end83_crit_edge, %if.then78
  %lowest_unlock.0 = phi i32 [ 2, %if.then78 ], [ 1, %if.then81 ], [ 1, %if.else.if.end83_crit_edge ]
  br i1 %tobool56.not, label %if.then85, label %land.lhs.true.critedge

if.then85:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %write_lock_level, align 4
  br label %if.end93

land.lhs.true.critedge:                           ; preds = %if.end83
  %keep_locks = getelementptr inbounds %struct.btrfs_path, ptr %p, i32 0, i32 5
  %12 = ptrtoint ptr %keep_locks to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %keep_locks, align 2
  %13 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool88.not = icmp eq i8 %13, 0
  br i1 %tobool88.not, label %lor.lhs.false, label %land.lhs.true.critedge.if.then92_crit_edge

land.lhs.true.critedge.if.then92_crit_edge:       ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then92

lor.lhs.false:                                    ; preds = %land.lhs.true.critedge
  %14 = ptrtoint ptr %lowest_level2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %lowest_level2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool91.not = icmp eq i8 %15, 0
  br i1 %tobool91.not, label %lor.lhs.false.if.end93_crit_edge, label %lor.lhs.false.if.then92_crit_edge

lor.lhs.false.if.then92_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then92

lor.lhs.false.if.end93_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93

if.then92:                                        ; preds = %lor.lhs.false.if.then92_crit_edge, %land.lhs.true.critedge.if.then92_crit_edge
  %16 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %write_lock_level, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %lor.lhs.false.if.end93_crit_edge, %if.then85
  %17 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %write_lock_level, align 4
  %need_commit_sem = getelementptr inbounds %struct.btrfs_path, ptr %p, i32 0, i32 5
  %19 = ptrtoint ptr %need_commit_sem to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load94 = load i8, ptr %need_commit_sem, align 2
  %20 = and i8 %bf.load94, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool98.not = icmp eq i8 %20, 0
  br i1 %tobool98.not, label %if.end93.if.end111_crit_edge, label %if.then99

if.end93.if.end111_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111

if.then99:                                        ; preds = %if.end93
  %21 = and i8 %bf.load94, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool104.not = icmp eq i8 %21, 0
  br i1 %tobool104.not, label %cond.false, label %cond.end, !prof !121

cond.false:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.11, i32 noundef 1911) #18
  unreachable

cond.end:                                         ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #16
  %commit_root_sem = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 54
  tail call void @down_read(ptr noundef %commit_root_sem) #14
  br label %if.end111

if.end111:                                        ; preds = %cond.end, %if.end93.if.end111_crit_edge
  %commit_root.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 2
  %root_key.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %state.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ins_len)
  %tobool161.not = icmp eq i32 %ins_len, 0
  br label %again

again:                                            ; preds = %again.backedge, %if.end111
  %22 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %write_lock_level, align 4
  %24 = ptrtoint ptr %need_commit_sem to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %need_commit_sem, align 2
  %25 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %again
  %26 = ptrtoint ptr %commit_root.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %commit_root.i, align 8
  %refs.i = getelementptr inbounds %struct.extent_buffer, ptr %27, i32 0, i32 5
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #14
  %28 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #14, !srcloc !124
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %27, i32 0, i32 12
  %29 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pages.i.i, align 4
  %call.i.i = call ptr @page_address(ptr noundef %30) #14
  %31 = ptrtoint ptr %need_commit_sem to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load1.i = load i8, ptr %need_commit_sem, align 2
  %32 = and i8 %bf.load1.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp.not.i = icmp eq i8 %32, 0
  br i1 %cmp.not.i, label %cond.false.i, label %out.i.thread666, !prof !121

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.27, i32 noundef 1587) #19
  unreachable

if.end.i:                                         ; preds = %again
  %33 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool13.not.i = icmp eq i8 %33, 0
  br i1 %tobool13.not.i, label %if.end18.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call15.i = call ptr @btrfs_root_node(ptr noundef %root) #14
  br label %out.i

if.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %23)
  %cmp19.i = icmp slt i32 %23, 8
  br i1 %cmp19.i, label %if.then21.i, label %if.end18.i.if.end29.i_crit_edge

if.end18.i.if.end29.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

if.then21.i:                                      ; preds = %if.end18.i
  %call22.i = call ptr @btrfs_read_lock_root_node(ptr noundef %root) #14
  %pages.i83.i = getelementptr inbounds %struct.extent_buffer, ptr %call22.i, i32 0, i32 12
  %34 = ptrtoint ptr %pages.i83.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pages.i83.i, align 4
  %call.i84.i = call ptr @page_address(ptr noundef %35) #14
  %36 = ptrtoint ptr %call22.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %call22.i, align 8
  %conv.i85.i = trunc i64 %37 to i32
  %and.i86.i = and i32 %conv.i85.i, 4095
  %add.ptr.i87.i = getelementptr i8, ptr %call.i84.i, i32 %and.i86.i
  %level.i88.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i87.i, i32 0, i32 8
  %38 = ptrtoint ptr %level.i88.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %level.i88.i, align 1
  %conv24.i = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv24.i)
  %cmp25.i = icmp slt i32 %23, %conv24.i
  br i1 %cmp25.i, label %out.i.thread, label %if.end28.i

if.end28.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_read_unlock(ptr noundef %call22.i) #14
  call void @free_extent_buffer(ptr noundef %call22.i) #14
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end28.i, %if.end18.i.if.end29.i_crit_edge
  %call30.i = call ptr @btrfs_lock_root_node(ptr noundef %root) #14
  br label %out.i

out.i:                                            ; preds = %if.end29.i, %if.then14.i
  %call30.sink95.i = phi ptr [ %call30.i, %if.end29.i ], [ %call15.i, %if.then14.i ]
  %root_lock.0.ph.i = phi i8 [ 1, %if.end29.i ], [ 0, %if.then14.i ]
  %pages.i89.i = getelementptr inbounds %struct.extent_buffer, ptr %call30.sink95.i, i32 0, i32 12
  %40 = ptrtoint ptr %pages.i89.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pages.i89.i, align 4
  %call.i90.i = call ptr @page_address(ptr noundef %41) #14
  %42 = ptrtoint ptr %call30.sink95.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %call30.sink95.i, align 8
  %conv.i91.i = trunc i64 %43 to i32
  %and.i92.i = and i32 %conv.i91.i, 4095
  %add.ptr.i93.i = getelementptr i8, ptr %call.i90.i, i32 %and.i92.i
  %level.0.i.in.in = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i93.i, i32 0, i32 8
  %44 = ptrtoint ptr %level.0.i.in.in to i32
  call void @__asan_load1_noabort(i32 %44)
  %level.0.i.in = load i8, ptr %level.0.i.in.in, align 1
  %level.0.i = zext i8 %level.0.i.in to i32
  %bflags.i.i = getelementptr inbounds %struct.extent_buffer, ptr %call30.sink95.i, i32 0, i32 2
  %45 = ptrtoint ptr %bflags.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %bflags.i.i, align 4
  %and1.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool34.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %out.i.if.end40.i_crit_edge

out.i.if.end40.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.i

out.i.thread666:                                  ; preds = %if.then.i
  %47 = ptrtoint ptr %27 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %27, align 8
  %conv.i.i = trunc i64 %48 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %level.0.i.in.in671 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 8
  %49 = ptrtoint ptr %level.0.i.in.in671 to i32
  call void @__asan_load1_noabort(i32 %49)
  %level.0.i.in672 = load i8, ptr %level.0.i.in.in671, align 1
  %level.0.i673 = zext i8 %level.0.i.in672 to i32
  %bflags.i.i674 = getelementptr inbounds %struct.extent_buffer, ptr %27, i32 0, i32 2
  %50 = ptrtoint ptr %bflags.i.i674 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %bflags.i.i674, align 4
  %and1.i.i.i675 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i675)
  %tobool34.not.i676 = icmp eq i32 %and1.i.i.i675, 0
  br i1 %tobool34.not.i676, label %out.i.thread666.btrfs_search_slot_get_root.exit.thread_crit_edge, label %out.i.thread666.if.end40.i_crit_edge

out.i.thread666.if.end40.i_crit_edge:             ; preds = %out.i.thread666
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.i

out.i.thread666.btrfs_search_slot_get_root.exit.thread_crit_edge: ; preds = %out.i.thread666
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_search_slot_get_root.exit.thread

out.i.thread:                                     ; preds = %if.then21.i
  %bflags.i.i494 = getelementptr inbounds %struct.extent_buffer, ptr %call22.i, i32 0, i32 2
  %52 = ptrtoint ptr %bflags.i.i494 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %bflags.i.i494, align 4
  %and1.i.i.i495 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i495)
  %tobool34.not.i496 = icmp eq i32 %and1.i.i.i495, 0
  br i1 %tobool34.not.i496, label %if.then2.i.i, label %out.i.thread.if.end40.i_crit_edge

out.i.thread.if.end40.i_crit_edge:                ; preds = %out.i.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.i

if.then35.i:                                      ; preds = %out.i
  br i1 %tobool13.not.i, label %if.then.i.i, label %if.then35.i.btrfs_search_slot_get_root.exit.thread_crit_edge

if.then35.i.btrfs_search_slot_get_root.exit.thread_crit_edge: ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_search_slot_get_root.exit.thread

if.then.i.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_unlock(ptr noundef %call30.sink95.i) #14
  br label %btrfs_search_slot_get_root.exit.thread

if.then2.i.i:                                     ; preds = %out.i.thread
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_read_unlock(ptr noundef %call22.i) #14
  br label %btrfs_search_slot_get_root.exit.thread

btrfs_search_slot_get_root.exit.thread:           ; preds = %if.then2.i.i, %if.then.i.i, %if.then35.i.btrfs_search_slot_get_root.exit.thread_crit_edge, %out.i.thread666.btrfs_search_slot_get_root.exit.thread_crit_edge
  %b.0.i499 = phi ptr [ %call22.i, %if.then2.i.i ], [ %call30.sink95.i, %if.then.i.i ], [ %call30.sink95.i, %if.then35.i.btrfs_search_slot_get_root.exit.thread_crit_edge ], [ %27, %out.i.thread666.btrfs_search_slot_get_root.exit.thread_crit_edge ]
  call void @free_extent_buffer(ptr noundef %b.0.i499) #14
  %54 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 -5 to ptr), ptr %b, align 4
  br label %if.then113

if.end40.i:                                       ; preds = %out.i.thread.if.end40.i_crit_edge, %out.i.thread666.if.end40.i_crit_edge, %out.i.if.end40.i_crit_edge
  %level.0.i503 = phi i32 [ %conv24.i, %out.i.thread.if.end40.i_crit_edge ], [ %level.0.i, %out.i.if.end40.i_crit_edge ], [ %level.0.i673, %out.i.thread666.if.end40.i_crit_edge ]
  %root_lock.0.i501 = phi i8 [ 2, %out.i.thread.if.end40.i_crit_edge ], [ %root_lock.0.ph.i, %out.i.if.end40.i_crit_edge ], [ 0, %out.i.thread666.if.end40.i_crit_edge ]
  %b.0.i497 = phi ptr [ %call22.i, %out.i.thread.if.end40.i_crit_edge ], [ %call30.sink95.i, %out.i.if.end40.i_crit_edge ], [ %27, %out.i.thread666.if.end40.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x ptr], ptr %p, i32 0, i32 %level.0.i503
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %b.0.i497, ptr %arrayidx.i, align 4
  %56 = ptrtoint ptr %need_commit_sem to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load42.i = load i8, ptr %need_commit_sem, align 2
  %57 = and i8 %bf.load42.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool46.not.i = icmp eq i8 %57, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %if.end40.i.btrfs_search_slot_get_root.exit_crit_edge

if.end40.i.btrfs_search_slot_get_root.exit_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_search_slot_get_root.exit

if.then47.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx49.i = getelementptr %struct.btrfs_path, ptr %p, i32 0, i32 2, i32 %level.0.i503
  %58 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %root_lock.0.i501, ptr %arrayidx49.i, align 1
  br label %btrfs_search_slot_get_root.exit

btrfs_search_slot_get_root.exit:                  ; preds = %if.then47.i, %if.end40.i.btrfs_search_slot_get_root.exit_crit_edge
  %59 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %b.0.i497, ptr %b, align 4
  %cmp.i = icmp ugt ptr %b.0.i497, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %btrfs_search_slot_get_root.exit.if.then113_crit_edge, label %while.cond.preheader

btrfs_search_slot_get_root.exit.if.then113_crit_edge: ; preds = %btrfs_search_slot_get_root.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then113

while.cond.preheader:                             ; preds = %btrfs_search_slot_get_root.exit
  %tobool116.not609 = icmp eq ptr %b.0.i497, null
  br i1 %tobool116.not609, label %while.cond.preheader.if.end300_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end300_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end300

if.then113:                                       ; preds = %btrfs_search_slot_get_root.exit.if.then113_crit_edge, %btrfs_search_slot_get_root.exit.thread
  %retval.0.i514 = phi ptr [ inttoptr (i32 -5 to ptr), %btrfs_search_slot_get_root.exit.thread ], [ %b.0.i497, %btrfs_search_slot_get_root.exit.if.then113_crit_edge ]
  %60 = ptrtoint ptr %retval.0.i514 to i32
  br label %done

while.condthread-pre-split:                       ; preds = %if.end284, %if.end267.while.condthread-pre-split_crit_edge
  %61 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pr = load ptr, ptr %b, align 4
  %tobool116.not = icmp eq ptr %.pr, null
  br i1 %tobool116.not, label %while.condthread-pre-split.if.end300_crit_edge, label %while.condthread-pre-split.while.body_crit_edge

while.condthread-pre-split.while.body_crit_edge:  ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.condthread-pre-split.if.end300_crit_edge:   ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end300

while.body:                                       ; preds = %while.condthread-pre-split.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %prev_cmp.0610 = phi i32 [ %retval.0.i465522526, %while.condthread-pre-split.while.body_crit_edge ], [ -1, %while.cond.preheader.while.body_crit_edge ]
  %62 = phi ptr [ %.pr, %while.condthread-pre-split.while.body_crit_edge ], [ %b.0.i497, %while.cond.preheader.while.body_crit_edge ]
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %62, i32 0, i32 12
  %63 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %64) #14
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %62, align 8
  %conv.i437 = trunc i64 %66 to i32
  %and.i = and i32 %conv.i437, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %67 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %level.i, align 1
  %conv118 = zext i8 %68 to i32
  br i1 %tobool56.not, label %while.body.cow_done_crit_edge, label %if.then120

while.body.cow_done_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cow_done

if.then120:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %68)
  %cmp121 = icmp eq i8 %68, 7
  %69 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fs_info1, align 8
  %fs_state.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %70, i32 0, i32 149
  %71 = ptrtoint ptr %fs_state.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %fs_state.i.i, align 4
  %73 = and i32 %72, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i438 = icmp eq i32 %73, 0
  br i1 %tobool.not.i438, label %do.end.i, label %if.then120.cow_done_crit_edge

if.then120.cow_done_crit_edge:                    ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #16
  br label %cow_done

do.end.i:                                         ; preds = %if.then120
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !123
  %74 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pages.i, align 4
  %call.i.i440 = call ptr @page_address(ptr noundef %75) #14
  %76 = ptrtoint ptr %62 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %62, align 8
  %conv.i.i441 = trunc i64 %77 to i32
  %and.i.i442 = and i32 %conv.i.i441, 4095
  %add.ptr.i.i443 = getelementptr i8, ptr %call.i.i440, i32 %and.i.i442
  %generation.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i443, i32 0, i32 5
  %78 = ptrtoint ptr %generation.i.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %79 = load i64, ptr %generation.i.i, align 1
  %80 = call i64 @llvm.bswap.i64(i64 %79) #14
  %81 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %80, i64 %82)
  %cmp.i444 = icmp eq i64 %80, %82
  br i1 %cmp.i444, label %land.lhs.true.i, label %do.end.i.if.end126_crit_edge

do.end.i.if.end126_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end126

land.lhs.true.i:                                  ; preds = %do.end.i
  %83 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pages.i, align 4
  %call.i.i.i445 = call ptr @page_address(ptr noundef %84) #14
  %85 = ptrtoint ptr %62 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %62, align 8
  %conv.i.i.i = trunc i64 %86 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 4095
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i445, i32 %and.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i.i, i32 0, i32 3
  %87 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 8)
  %88 = load i64, ptr %flags.i.i.i, align 1
  %89 = and i64 %88, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %89)
  %tobool5.not.i = icmp eq i64 %89, 0
  br i1 %tobool5.not.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.end126_crit_edge

land.lhs.true.i.if.end126_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end126

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %90 = ptrtoint ptr %root_key.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 8)
  %91 = load i64, ptr %root_key.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8, i64 %91)
  %cmp7.not.i = icmp eq i64 %91, -8
  br i1 %cmp7.not.i, label %land.lhs.true6.i.land.lhs.true11.i_crit_edge, label %land.lhs.true8.i

land.lhs.true6.i.land.lhs.true11.i_crit_edge:     ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true11.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true6.i
  %92 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pages.i, align 4
  %call.i.i23.i = call ptr @page_address(ptr noundef %93) #14
  %94 = ptrtoint ptr %62 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %62, align 8
  %conv.i.i24.i = trunc i64 %95 to i32
  %and.i.i25.i = and i32 %conv.i.i24.i, 4095
  %add.ptr.i.i26.i = getelementptr i8, ptr %call.i.i23.i, i32 %and.i.i25.i
  %flags.i.i27.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i26.i, i32 0, i32 3
  %96 = ptrtoint ptr %flags.i.i27.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 8)
  %97 = load i64, ptr %flags.i.i27.i, align 1
  %98 = and i64 %97, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %98)
  %tobool10.not.i = icmp eq i64 %98, 0
  br i1 %tobool10.not.i, label %land.lhs.true8.i.land.lhs.true11.i_crit_edge, label %land.lhs.true8.i.if.end126_crit_edge

land.lhs.true8.i.if.end126_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end126

land.lhs.true8.i.land.lhs.true11.i_crit_edge:     ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true11.i

land.lhs.true11.i:                                ; preds = %land.lhs.true8.i.land.lhs.true11.i_crit_edge, %land.lhs.true6.i.land.lhs.true11.i_crit_edge
  %99 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %state.i, align 4
  %101 = and i32 %100, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool13.not.i446 = icmp eq i32 %101, 0
  br i1 %tobool13.not.i446, label %land.lhs.true11.i.cow_done_crit_edge, label %land.lhs.true11.i.if.end126_crit_edge

land.lhs.true11.i.if.end126_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end126

land.lhs.true11.i.cow_done_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cow_done

if.end126:                                        ; preds = %land.lhs.true11.i.if.end126_crit_edge, %land.lhs.true8.i.if.end126_crit_edge, %land.lhs.true.i.if.end126_crit_edge, %do.end.i.if.end126_crit_edge
  %102 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %write_lock_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %conv118)
  %cmp127 = icmp slt i32 %103, %conv118
  br i1 %cmp127, label %if.end126.if.then141_crit_edge, label %lor.lhs.false129

if.end126.if.then141_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #16
  %conv118.le745 = zext i8 %68 to i32
  %.pre = add nuw nsw i32 %conv118.le745, 1
  br label %if.then141

lor.lhs.false129:                                 ; preds = %if.end126
  %add = add nuw nsw i32 %conv118, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %conv118)
  %cmp130.not = icmp sle i32 %103, %conv118
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %68)
  %cmp134 = icmp ult i8 %68, 7
  %or.cond = and i1 %cmp134, %cmp130.not
  br i1 %or.cond, label %land.lhs.true136, label %lor.lhs.false129.if.end143_crit_edge

lor.lhs.false129.if.end143_crit_edge:             ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143

land.lhs.true136:                                 ; preds = %lor.lhs.false129
  %arrayidx139 = getelementptr [8 x ptr], ptr %p, i32 0, i32 %add
  %104 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx139, align 4
  %tobool140.not = icmp eq ptr %105, null
  br i1 %tobool140.not, label %land.lhs.true136.if.end143_crit_edge, label %land.lhs.true136.if.then141_crit_edge

land.lhs.true136.if.then141_crit_edge:            ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then141

land.lhs.true136.if.end143_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143

if.then141:                                       ; preds = %land.lhs.true136.if.then141_crit_edge, %if.end126.if.then141_crit_edge
  %add142.pre-phi = phi i32 [ %.pre, %if.end126.if.then141_crit_edge ], [ %add, %land.lhs.true136.if.then141_crit_edge ]
  %106 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add142.pre-phi, ptr %write_lock_level, align 4
  call void @btrfs_release_path(ptr noundef %p)
  br label %again.backedge

if.end143:                                        ; preds = %land.lhs.true136.if.end143_crit_edge, %lor.lhs.false129.if.end143_crit_edge
  br i1 %cmp121, label %if.then145, label %if.else147

if.then145:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #16
  %call146 = call i32 @btrfs_cow_block(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %62, ptr noundef null, i32 noundef 0, ptr noundef nonnull %b, i32 noundef 1)
  br label %if.end154

if.else147:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx150 = getelementptr [8 x ptr], ptr %p, i32 0, i32 %add
  %107 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx150, align 4
  %arrayidx152 = getelementptr %struct.btrfs_path, ptr %p, i32 0, i32 1, i32 %add
  %109 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx152, align 4
  %call153 = call i32 @btrfs_cow_block(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %62, ptr noundef %108, i32 noundef %110, ptr noundef nonnull %b, i32 noundef 1)
  br label %if.end154

if.end154:                                        ; preds = %if.else147, %if.then145
  %err.0 = phi i32 [ %call146, %if.then145 ], [ %call153, %if.else147 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool155.not = icmp eq i32 %err.0, 0
  br i1 %tobool155.not, label %if.end154.cow_done_crit_edge, label %if.end154.done_crit_edge

if.end154.done_crit_edge:                         ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end154.cow_done_crit_edge:                     ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #16
  br label %cow_done

cow_done:                                         ; preds = %if.end154.cow_done_crit_edge, %land.lhs.true11.i.cow_done_crit_edge, %if.then120.cow_done_crit_edge, %while.body.cow_done_crit_edge
  %111 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %b, align 4
  %arrayidx160 = getelementptr [8 x ptr], ptr %p, i32 0, i32 %conv118
  %113 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %arrayidx160, align 4
  br i1 %tobool161.not, label %land.lhs.true162, label %cow_done.if.end186_crit_edge

cow_done.if.end186_crit_edge:                     ; preds = %cow_done
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end186

land.lhs.true162:                                 ; preds = %cow_done
  %114 = ptrtoint ptr %need_commit_sem to i32
  call void @__asan_load1_noabort(i32 %114)
  %bf.load164 = load i8, ptr %need_commit_sem, align 2
  %115 = and i8 %bf.load164, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool168.not = icmp eq i8 %115, 0
  br i1 %tobool168.not, label %if.then169, label %land.lhs.true162.if.end186_crit_edge

land.lhs.true162.if.end186_crit_edge:             ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end186

if.then169:                                       ; preds = %land.lhs.true162
  %add170 = add nuw nsw i32 %conv118, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %68)
  %cmp171 = icmp ult i8 %68, 7
  br i1 %cmp171, label %land.lhs.true173, label %if.then169.if.end212_crit_edge

if.then169.if.end212_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end212

land.lhs.true173:                                 ; preds = %if.then169
  %arrayidx174 = getelementptr %struct.btrfs_path, ptr %p, i32 0, i32 2, i32 %add170
  %116 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx174, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool176.not = icmp eq i8 %117, 0
  br i1 %tobool176.not, label %land.lhs.true173.if.end186_crit_edge, label %if.then177

land.lhs.true173.if.end186_crit_edge:             ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end186

if.then177:                                       ; preds = %land.lhs.true173
  %arrayidx179 = getelementptr [8 x ptr], ptr %p, i32 0, i32 %add170
  %118 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx179, align 4
  %120 = zext i8 %117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %117, label %do.body.i [
    i8 1, label %if.then.i448
    i8 2, label %if.then2.i
  ]

if.then.i448:                                     ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_unlock(ptr noundef %119) #14
  br label %btrfs_tree_unlock_rw.exit

if.then2.i:                                       ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_read_unlock(ptr noundef %119) #14
  br label %btrfs_tree_unlock_rw.exit

do.body.i:                                        ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/locking.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #14, !srcloc !114
  unreachable

btrfs_tree_unlock_rw.exit:                        ; preds = %if.then2.i, %if.then.i448
  %121 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %arrayidx174, align 1
  br label %if.end186

if.end186:                                        ; preds = %btrfs_tree_unlock_rw.exit, %land.lhs.true173.if.end186_crit_edge, %land.lhs.true162.if.end186_crit_edge, %cow_done.if.end186_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp187 = icmp eq i8 %68, 0
  br i1 %cmp187, label %if.then189, label %if.end186.if.end212_crit_edge

if.end186.if.end212_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end212

if.then189:                                       ; preds = %if.end186
  br i1 %cmp, label %if.then192, label %if.end204

if.then192:                                       ; preds = %if.then189
  %122 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %write_lock_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp193 = icmp sgt i32 %123, 0
  br i1 %cmp193, label %if.then.i452, label %cond.false202, !prof !120

cond.false202:                                    ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.12, i32 noundef 1991) #18
  unreachable

if.end204:                                        ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #16
  %124 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %p, align 4
  br label %if.then22.i

if.then.i452:                                     ; preds = %if.then192
  %126 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %p, align 4
  %call.i450 = call i32 @btrfs_leaf_free_space(ptr noundef %127) #14
  %arrayidx1.i = getelementptr %struct.btrfs_path, ptr %p, i32 0, i32 2, i32 1
  %128 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i451 = icmp eq i8 %129, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i450, i32 %ins_len)
  %cmp2.not.i = icmp slt i32 %call.i450, %ins_len
  %or.cond.i = select i1 %tobool.not.i451, i1 true, i1 %cmp2.not.i
  br i1 %or.cond.i, label %if.then.i452.if.then22.i_crit_edge, label %if.then4.i

if.then.i452.if.then22.i_crit_edge:               ; preds = %if.then.i452
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22.i

if.then4.i:                                       ; preds = %if.then.i452
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %first_key.i) #14
  %pages.i.i453 = getelementptr inbounds %struct.extent_buffer, ptr %127, i32 0, i32 12
  %130 = call ptr @memset(ptr %first_key.i, i32 255, i32 17)
  %131 = ptrtoint ptr %pages.i.i453 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pages.i.i453, align 4
  %call.i.i454 = call ptr @page_address(ptr noundef %132) #14
  %133 = ptrtoint ptr %127 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %127, align 8
  %conv.i.i455 = trunc i64 %134 to i32
  %and.i.i456 = and i32 %conv.i.i455, 4095
  %add.ptr.i.i457 = getelementptr i8, ptr %call.i.i454, i32 %and.i.i456
  %nritems.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i457, i32 0, i32 7
  %135 = ptrtoint ptr %nritems.i.i to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %nritems.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp6.not.i = icmp eq i32 %136, 0
  br i1 %cmp6.not.i, label %cond.false.i458, label %cond.end.i, !prof !121

cond.false.i458:                                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.28, i32 noundef 1739) #19
  unreachable

cond.end.i:                                       ; preds = %if.then4.i
  %137 = getelementptr inbounds %struct.btrfs_disk_key, ptr %first_key.i, i32 0, i32 2
  %138 = getelementptr inbounds %struct.btrfs_disk_key, ptr %first_key.i, i32 0, i32 1
  call void @read_extent_buffer(ptr noundef %127, ptr noundef nonnull %first_key.i, i32 noundef 101, i32 noundef 17) #14
  %139 = ptrtoint ptr %137 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 8)
  %140 = load i64, ptr %137, align 1
  %141 = call i64 @llvm.bswap.i64(i64 %140) #14
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %138, align 8
  %144 = ptrtoint ptr %first_key.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %first_key.i, align 8
  %146 = call i64 @llvm.bswap.i64(i64 %145) #14
  %147 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %147, i32 8)
  %148 = load i64, ptr %key, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %146, i64 %148)
  %cmp.i.i.i = icmp ugt i64 %146, %148
  br i1 %cmp.i.i.i, label %cond.end.i.if.end30.thread.i_crit_edge, label %if.end.i.i.i

cond.end.i.if.end30.thread.i_crit_edge:           ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.thread.i

if.end.i.i.i:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_cmp8(i64 %146, i64 %148)
  %cmp4.i.i.i = icmp ult i64 %146, %148
  br i1 %cmp4.i.i.i, label %if.end.i.i.i.if.end20.thread175.i_crit_edge, label %if.end6.i.i.i

if.end.i.i.i.if.end20.thread175.i_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.thread175.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  %type7.i.i.i = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %149 = ptrtoint ptr %type7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %type7.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %143, i8 %150)
  %cmp9.i.i.i = icmp ugt i8 %143, %150
  br i1 %cmp9.i.i.i, label %if.end6.i.i.i.if.end30.thread.i_crit_edge, label %if.end12.i.i.i

if.end6.i.i.i.if.end30.thread.i_crit_edge:        ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.thread.i

if.end12.i.i.i:                                   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %143, i8 %150)
  %cmp17.i.i.i = icmp ult i8 %143, %150
  br i1 %cmp17.i.i.i, label %if.end12.i.i.i.if.end20.thread175.i_crit_edge, label %if.end20.i.i.i

if.end12.i.i.i.if.end20.thread175.i_crit_edge:    ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.thread175.i

if.end20.i.i.i:                                   ; preds = %if.end12.i.i.i
  %offset21.i.i.i = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %151 = ptrtoint ptr %offset21.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %151, i32 8)
  %152 = load i64, ptr %offset21.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %141, i64 %152)
  %cmp22.i.i.i = icmp ugt i64 %141, %152
  br i1 %cmp22.i.i.i, label %if.end20.i.i.i.if.end30.thread.i_crit_edge, label %comp_keys.exit.i

if.end20.i.i.i.if.end30.thread.i_crit_edge:       ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.thread.i

comp_keys.exit.i:                                 ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %141, i64 %152)
  %cmp28.i.i.i = icmp ult i64 %141, %152
  br i1 %cmp28.i.i.i, label %comp_keys.exit.i.if.end20.thread175.i_crit_edge, label %if.then16.i

comp_keys.exit.i.if.end20.thread175.i_crit_edge:  ; preds = %comp_keys.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.thread175.i

if.end20.thread175.i:                             ; preds = %comp_keys.exit.i.if.end20.thread175.i_crit_edge, %if.end12.i.i.i.if.end20.thread175.i_crit_edge, %if.end.i.i.i.if.end20.thread175.i_crit_edge
  call void @btrfs_unlock_up_safe(ptr noundef %p, i32 noundef 1) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %first_key.i) #14
  br label %if.then22.i

if.then16.i:                                      ; preds = %comp_keys.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_unlock_up_safe(ptr noundef %p, i32 noundef 1) #14
  br label %if.end30.thread.i

if.end30.thread.i:                                ; preds = %if.then16.i, %if.end20.i.i.i.if.end30.thread.i_crit_edge, %if.end6.i.i.i.if.end30.thread.i_crit_edge, %cond.end.i.if.end30.thread.i_crit_edge
  %retval.0.i.i151166.i = phi i32 [ 0, %if.then16.i ], [ 1, %cond.end.i.if.end30.thread.i_crit_edge ], [ 1, %if.end6.i.i.i.if.end30.thread.i_crit_edge ], [ 1, %if.end20.i.i.i.if.end30.thread.i_crit_edge ]
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %p, i32 0, i32 1
  %153 = ptrtoint ptr %slots.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %slots.i, align 4
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %first_key.i) #14
  br label %if.then33.i

if.then22.i:                                      ; preds = %if.end20.thread175.i, %if.then.i452.if.then22.i_crit_edge, %if.end204
  %154 = phi ptr [ %127, %if.end20.thread175.i ], [ %127, %if.then.i452.if.then22.i_crit_edge ], [ %125, %if.end204 ]
  %search_low_slot.1174.i = phi i32 [ 1, %if.end20.thread175.i ], [ 0, %if.then.i452.if.then22.i_crit_edge ], [ 0, %if.end204 ]
  %leaf_free_space.0173.i = phi i32 [ %call.i450, %if.end20.thread175.i ], [ %call.i450, %if.then.i452.if.then22.i_crit_edge ], [ -1, %if.end204 ]
  %slots23.i = getelementptr inbounds %struct.btrfs_path, ptr %p, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_cmp.0610)
  %cmp.i.i = icmp eq i32 %prev_cmp.0610, 0
  br i1 %cmp.i.i, label %search_for_key_slot.exit.thread.i, label %search_for_key_slot.exit.i

search_for_key_slot.exit.thread.i:                ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  %155 = ptrtoint ptr %slots23.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %slots23.i, align 4
  br label %if.end30.i

search_for_key_slot.exit.i:                       ; preds = %if.then22.i
  %call.i148.i = call fastcc i32 @generic_bin_search(ptr noundef %154, i32 noundef %search_low_slot.1174.i, ptr noundef %key, ptr noundef %slots23.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148.i)
  %cmp26.i = icmp slt i32 %call.i148.i, 0
  br i1 %cmp26.i, label %search_for_key_slot.exit.i.search_leaf.exit_crit_edge, label %search_for_key_slot.exit.i.if.end30.i_crit_edge

search_for_key_slot.exit.i.if.end30.i_crit_edge:  ; preds = %search_for_key_slot.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

search_for_key_slot.exit.i.search_leaf.exit_crit_edge: ; preds = %search_for_key_slot.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %search_leaf.exit

if.end30.i:                                       ; preds = %search_for_key_slot.exit.i.if.end30.i_crit_edge, %search_for_key_slot.exit.thread.i
  %ret.1.i = phi i32 [ %call.i148.i, %search_for_key_slot.exit.i.if.end30.i_crit_edge ], [ 0, %search_for_key_slot.exit.thread.i ]
  br i1 %cmp, label %if.end30.i.if.then33.i_crit_edge, label %if.end30.i.search_leaf.exit_crit_edge

if.end30.i.search_leaf.exit_crit_edge:            ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %search_leaf.exit

if.end30.i.if.then33.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then33.i

if.then33.i:                                      ; preds = %if.end30.i.if.then33.i_crit_edge, %if.end30.thread.i
  %ret.1184.i = phi i32 [ %retval.0.i.i151166.i, %if.end30.thread.i ], [ %ret.1.i, %if.end30.i.if.then33.i_crit_edge ]
  %leaf_free_space.0172183.i = phi i32 [ %call.i450, %if.end30.thread.i ], [ %leaf_free_space.0173.i, %if.end30.i.if.then33.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1184.i)
  %cmp34.i = icmp eq i32 %ret.1184.i, 0
  br i1 %cmp34.i, label %land.lhs.true36.i, label %if.then33.i.if.end50.i_crit_edge

if.then33.i.if.end50.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.i

land.lhs.true36.i:                                ; preds = %if.then33.i
  %156 = ptrtoint ptr %need_commit_sem to i32
  call void @__asan_load1_noabort(i32 %156)
  %bf.load.i459 = load i8, ptr %need_commit_sem, align 2
  %157 = and i8 %bf.load.i459, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool37.not.i = icmp eq i8 %157, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %land.lhs.true36.i.if.end50.i_crit_edge

land.lhs.true36.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.i

if.then38.i:                                      ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %ins_len)
  %cmp39.i = icmp ugt i32 %ins_len, 24
  br i1 %cmp39.i, label %cond.end49.i, label %cond.false48.i, !prof !120

cond.false48.i:                                   ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.29, i32 noundef 1811) #19
  unreachable

cond.end49.i:                                     ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = add nsw i32 %ins_len, -25
  br label %if.end50.i

if.end50.i:                                       ; preds = %cond.end49.i, %land.lhs.true36.i.if.end50.i_crit_edge, %if.then33.i.if.end50.i_crit_edge
  %ins_len.addr.0.i = phi i32 [ %ins_len, %land.lhs.true36.i.if.end50.i_crit_edge ], [ %sub.i, %cond.end49.i ], [ %ins_len, %if.then33.i.if.end50.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %leaf_free_space.0172183.i)
  %cmp51.i = icmp sgt i32 %leaf_free_space.0172183.i, -1
  br i1 %cmp51.i, label %cond.end61.i, label %cond.false60.i, !prof !120

cond.false60.i:                                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.30, i32 noundef 1815) #19
  unreachable

cond.end61.i:                                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_cmp4(i32 %leaf_free_space.0172183.i, i32 %ins_len.addr.0.i)
  %cmp62.i = icmp ult i32 %leaf_free_space.0172183.i, %ins_len.addr.0.i
  br i1 %cmp62.i, label %if.then64.i, label %cond.end61.i.search_leaf.exit_crit_edge

cond.end61.i.search_leaf.exit_crit_edge:          ; preds = %cond.end61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %search_leaf.exit

if.then64.i:                                      ; preds = %cond.end61.i
  %conv66.i = zext i1 %cmp34.i to i32
  %call67.i = call fastcc i32 @split_leaf(ptr noundef %trans, ptr noundef %root, ptr noundef %key, ptr noundef %p, i32 noundef %ins_len.addr.0.i, i32 noundef %conv66.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call67.i)
  %cmp68.i = icmp slt i32 %call67.i, 1
  br i1 %cmp68.i, label %if.end108.i, label %cond.false77.i, !prof !120

cond.false77.i:                                   ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.31, i32 noundef 1822) #19
  unreachable

if.end108.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool109.not.i = icmp eq i32 %call67.i, 0
  %spec.select.i = select i1 %tobool109.not.i, i32 %ret.1184.i, i32 %call67.i
  br label %search_leaf.exit

search_leaf.exit:                                 ; preds = %if.end108.i, %cond.end61.i.search_leaf.exit_crit_edge, %if.end30.i.search_leaf.exit_crit_edge, %search_for_key_slot.exit.i.search_leaf.exit_crit_edge
  %retval.0.i460 = phi i32 [ %call.i148.i, %search_for_key_slot.exit.i.search_leaf.exit_crit_edge ], [ %spec.select.i, %if.end108.i ], [ %ret.1184.i, %cond.end61.i.search_leaf.exit_crit_edge ], [ %ret.1.i, %if.end30.i.search_leaf.exit_crit_edge ]
  %158 = ptrtoint ptr %need_commit_sem to i32
  call void @__asan_load1_noabort(i32 %158)
  %bf.load206 = load i8, ptr %need_commit_sem, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load206)
  %tobool209.not = icmp sgt i8 %bf.load206, -1
  br i1 %tobool209.not, label %if.then210, label %search_leaf.exit.done_crit_edge

search_leaf.exit.done_crit_edge:                  ; preds = %search_leaf.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.then210:                                       ; preds = %search_leaf.exit
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @unlock_up(ptr noundef %p, i32 noundef 0, i32 noundef %lowest_unlock.0, i32 noundef %18, ptr noundef null)
  br label %done

if.end212:                                        ; preds = %if.end186.if.end212_crit_edge, %if.then169.if.end212_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_cmp.0610)
  %cmp.i461 = icmp eq i32 %prev_cmp.0610, 0
  br i1 %cmp.i461, label %if.end217.thread, label %search_for_key_slot.exit

if.end217.thread:                                 ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #16
  %159 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %slot, align 4
  br label %if.end224

search_for_key_slot.exit:                         ; preds = %if.end212
  %call.i463 = call fastcc i32 @generic_bin_search(ptr noundef %112, i32 noundef 0, ptr noundef %key, ptr noundef nonnull %slot) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i463)
  %cmp214 = icmp slt i32 %call.i463, 0
  br i1 %cmp214, label %search_for_key_slot.exit.land.lhs.true293_crit_edge, label %if.end217

search_for_key_slot.exit.land.lhs.true293_crit_edge: ; preds = %search_for_key_slot.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true293

if.end217:                                        ; preds = %search_for_key_slot.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i463)
  %tobool218.not = icmp eq i32 %call.i463, 0
  br i1 %tobool218.not, label %if.end217.if.end224_crit_edge, label %land.lhs.true219

if.end217.if.end224_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end224

land.lhs.true219:                                 ; preds = %if.end217
  %160 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp220 = icmp sgt i32 %161, 0
  br i1 %cmp220, label %if.then222, label %land.lhs.true219.if.end224_crit_edge

land.lhs.true219.if.end224_crit_edge:             ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end224

if.then222:                                       ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #16
  %dec223 = add nsw i32 %161, -1
  %162 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %dec223, ptr %slot, align 4
  br label %if.end224

if.end224:                                        ; preds = %if.then222, %land.lhs.true219.if.end224_crit_edge, %if.end217.if.end224_crit_edge, %if.end217.thread
  %retval.0.i465522526 = phi i32 [ %call.i463, %if.then222 ], [ %call.i463, %land.lhs.true219.if.end224_crit_edge ], [ 0, %if.end217.if.end224_crit_edge ], [ 0, %if.end217.thread ]
  %tobool254.not = phi i1 [ false, %if.then222 ], [ true, %land.lhs.true219.if.end224_crit_edge ], [ true, %if.end217.if.end224_crit_edge ], [ true, %if.end217.thread ]
  %163 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %slot, align 4
  %arrayidx226 = getelementptr %struct.btrfs_path, ptr %p, i32 0, i32 1, i32 %conv118
  %165 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %arrayidx226, align 4
  %166 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %fs_info1, align 8
  %168 = ptrtoint ptr %need_commit_sem to i32
  call void @__asan_load1_noabort(i32 %168)
  %bf.load.i466 = load i8, ptr %need_commit_sem, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i466)
  %tobool.not.i467 = icmp slt i8 %bf.load.i466, 0
  %or.cond.i469 = or i1 %cmp, %tobool.not.i467
  br i1 %or.cond.i469, label %land.lhs.true.i477, label %if.end224.if.else.i_crit_edge

if.end224.if.else.i_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

land.lhs.true.i477:                               ; preds = %if.end224
  %pages.i.i470 = getelementptr inbounds %struct.extent_buffer, ptr %112, i32 0, i32 12
  %169 = ptrtoint ptr %pages.i.i470 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pages.i.i470, align 4
  %call.i.i471 = call ptr @page_address(ptr noundef %170) #14
  %171 = ptrtoint ptr %112 to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %112, align 8
  %conv.i.i472 = trunc i64 %172 to i32
  %and.i.i473 = and i32 %conv.i.i472, 4095
  %add.ptr.i.i474 = getelementptr i8, ptr %call.i.i471, i32 %and.i.i473
  %nritems.i.i475 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i474, i32 0, i32 7
  %173 = ptrtoint ptr %nritems.i.i475 to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %nritems.i.i475, align 1
  %175 = call i32 @llvm.bswap.i32(i32 %174) #14
  %nodesize.i.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %167, i32 0, i32 166
  %176 = ptrtoint ptr %nodesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %nodesize.i.i.i, align 8
  %sub.i.i.i = add i32 %177, -101
  %div.i.i = udiv i32 %sub.i.i.i, 33
  %sub.i476 = add nsw i32 %div.i.i, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %sub.i476)
  %cmp3.not.i = icmp ult i32 %175, %sub.i476
  br i1 %cmp3.not.i, label %land.lhs.true.i477.if.else.i_crit_edge, label %if.then.i478

land.lhs.true.i477.if.else.i_crit_edge:           ; preds = %land.lhs.true.i477
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.then.i478:                                     ; preds = %land.lhs.true.i477
  %178 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %write_lock_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %conv118)
  %cmp4.i.not = icmp sgt i32 %179, %conv118
  br i1 %cmp4.i.not, label %if.end.i479, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i478
  call void @__sanitizer_cov_trace_pc() #16
  %conv118.le743 = zext i8 %68 to i32
  %add.i = add nuw nsw i32 %conv118.le743, 1
  %180 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %add.i, ptr %write_lock_level, align 4
  call void @btrfs_release_path(ptr noundef %p) #14
  br label %again.backedge

if.end.i479:                                      ; preds = %if.then.i478
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @reada_for_balance(ptr noundef %p, i32 noundef %conv118) #14
  %call7.i = call fastcc i32 @split_node(ptr noundef %trans, ptr noundef %root, ptr noundef %p, i32 noundef %conv118) #14
  br label %setup_nodes_for_search.exit

if.else.i:                                        ; preds = %land.lhs.true.i477.if.else.i_crit_edge, %if.end224.if.else.i_crit_edge
  br i1 %cmp76, label %land.lhs.true9.i, label %if.else.i.if.end234_crit_edge

if.else.i.if.end234_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end234

land.lhs.true9.i:                                 ; preds = %if.else.i
  %pages.i75.i = getelementptr inbounds %struct.extent_buffer, ptr %112, i32 0, i32 12
  %181 = ptrtoint ptr %pages.i75.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %pages.i75.i, align 4
  %call.i76.i = call ptr @page_address(ptr noundef %182) #14
  %183 = ptrtoint ptr %112 to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %112, align 8
  %conv.i77.i = trunc i64 %184 to i32
  %and.i78.i = and i32 %conv.i77.i, 4095
  %add.ptr.i79.i = getelementptr i8, ptr %call.i76.i, i32 %and.i78.i
  %nritems.i80.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i79.i, i32 0, i32 7
  %185 = ptrtoint ptr %nritems.i80.i to i32
  call void @__asan_loadN_noabort(i32 %185, i32 4)
  %186 = load i32, ptr %nritems.i80.i, align 1
  %187 = call i32 @llvm.bswap.i32(i32 %186) #14
  %nodesize.i.i81.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %167, i32 0, i32 166
  %188 = ptrtoint ptr %nodesize.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %nodesize.i.i81.i, align 8
  %sub.i.i82.i = add i32 %189, -101
  %div.i83.i = udiv i32 %sub.i.i82.i, 33
  %div74.i = lshr i32 %div.i83.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %187, i32 %div74.i)
  %cmp12.i = icmp ult i32 %187, %div74.i
  br i1 %cmp12.i, label %if.then13.i, label %land.lhs.true9.i.if.end234_crit_edge

land.lhs.true9.i.if.end234_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end234

if.then13.i:                                      ; preds = %land.lhs.true9.i
  %190 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %write_lock_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %191, i32 %conv118)
  %cmp15.i.not = icmp sgt i32 %191, %conv118
  br i1 %cmp15.i.not, label %if.end18.i481, label %if.then16.i480

if.then16.i480:                                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv118.le741 = zext i8 %68 to i32
  %add14.i = add nuw nsw i32 %conv118.le741, 1
  %192 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %add14.i, ptr %write_lock_level, align 4
  call void @btrfs_release_path(ptr noundef %p) #14
  br label %again.backedge

if.end18.i481:                                    ; preds = %if.then13.i
  call fastcc void @reada_for_balance(ptr noundef %p, i32 noundef %conv118) #14
  %call19.i = call fastcc i32 @balance_level(ptr noundef %trans, ptr noundef %root, ptr noundef %p, i32 noundef %conv118) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i481.setup_nodes_for_search.exit_crit_edge

if.end18.i481.setup_nodes_for_search.exit_crit_edge: ; preds = %if.end18.i481
  call void @__sanitizer_cov_trace_pc() #16
  br label %setup_nodes_for_search.exit

if.end22.i:                                       ; preds = %if.end18.i481
  %193 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx160, align 4
  %tobool25.not.i = icmp eq ptr %194, null
  br i1 %tobool25.not.i, label %if.then26.i, label %do.body.i482

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_release_path(ptr noundef %p) #14
  br label %again.backedge

again.backedge:                                   ; preds = %if.end259.again.backedge_crit_edge, %if.then247, %setup_nodes_for_search.exit.again.backedge_crit_edge, %if.then26.i, %if.then16.i480, %if.then5.i, %if.then141
  br label %again

do.body.i482:                                     ; preds = %if.end22.i
  %pages.i84.i = getelementptr inbounds %struct.extent_buffer, ptr %194, i32 0, i32 12
  %195 = ptrtoint ptr %pages.i84.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %pages.i84.i, align 4
  %call.i85.i = call ptr @page_address(ptr noundef %196) #14
  %197 = ptrtoint ptr %194 to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %194, align 8
  %conv.i86.i = trunc i64 %198 to i32
  %and.i87.i = and i32 %conv.i86.i, 4095
  %add.ptr.i88.i = getelementptr i8, ptr %call.i85.i, i32 %and.i87.i
  %nritems.i89.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i88.i, i32 0, i32 7
  %199 = ptrtoint ptr %nritems.i89.i to i32
  call void @__asan_loadN_noabort(i32 %199, i32 4)
  %200 = load i32, ptr %nritems.i89.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %200)
  %cmp29.i = icmp eq i32 %200, 16777216
  br i1 %cmp29.i, label %do.body33.i, label %do.body.i482.if.end234_crit_edge, !prof !121

do.body.i482.if.end234_crit_edge:                 ; preds = %do.body.i482
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end234

do.body33.i:                                      ; preds = %do.body.i482
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1531, 0\0A.popsection", ""() #14, !srcloc !135
  unreachable

setup_nodes_for_search.exit:                      ; preds = %if.end18.i481.setup_nodes_for_search.exit_crit_edge, %if.end.i479
  %retval.0.i483 = phi i32 [ %call19.i, %if.end18.i481.setup_nodes_for_search.exit_crit_edge ], [ %call7.i, %if.end.i479 ]
  %201 = zext i32 %retval.0.i483 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %retval.0.i483, label %setup_nodes_for_search.exit.done_crit_edge [
    i32 -11, label %setup_nodes_for_search.exit.again.backedge_crit_edge
    i32 0, label %setup_nodes_for_search.exit.if.end234_crit_edge
  ]

setup_nodes_for_search.exit.if.end234_crit_edge:  ; preds = %setup_nodes_for_search.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end234

setup_nodes_for_search.exit.again.backedge_crit_edge: ; preds = %setup_nodes_for_search.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.backedge

setup_nodes_for_search.exit.done_crit_edge:       ; preds = %setup_nodes_for_search.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end234:                                        ; preds = %setup_nodes_for_search.exit.if.end234_crit_edge, %do.body.i482.if.end234_crit_edge, %land.lhs.true9.i.if.end234_crit_edge, %if.else.i.if.end234_crit_edge
  %202 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx160, align 4
  %204 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %203, ptr %b, align 4
  %205 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx226, align 4
  %207 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %cmp239 = icmp ne i32 %206, 0
  %brmerge = or i1 %tobool161.not, %cmp239
  br i1 %brmerge, label %if.end234.if.end249_crit_edge, label %land.lhs.true243

if.end234.if.end249_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end249

land.lhs.true243:                                 ; preds = %if.end234
  %208 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %write_lock_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %conv118)
  %cmp245.not = icmp sgt i32 %209, %conv118
  br i1 %cmp245.not, label %land.lhs.true243.if.end249_crit_edge, label %if.then247

land.lhs.true243.if.end249_crit_edge:             ; preds = %land.lhs.true243
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end249

if.then247:                                       ; preds = %land.lhs.true243
  call void @__sanitizer_cov_trace_pc() #16
  %conv118.le = zext i8 %68 to i32
  %add244 = add nuw nsw i32 %conv118.le, 1
  %210 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %add244, ptr %write_lock_level, align 4
  call void @btrfs_release_path(ptr noundef %p)
  br label %again.backedge

if.end249:                                        ; preds = %land.lhs.true243.if.end249_crit_edge, %if.end234.if.end249_crit_edge
  call fastcc void @unlock_up(ptr noundef %p, i32 noundef %conv118, i32 noundef %lowest_unlock.0, i32 noundef %18, ptr noundef nonnull %write_lock_level)
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %6)
  %cmp251 = icmp eq i8 %68, %6
  br i1 %cmp251, label %if.then253, label %if.end259

if.then253:                                       ; preds = %if.end249
  br i1 %tobool254.not, label %if.then253.if.end300_crit_edge, label %if.then255

if.then253.if.end300_crit_edge:                   ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end300

if.then255:                                       ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #16
  %211 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx226, align 4
  %inc = add i32 %212, 1
  store i32 %inc, ptr %arrayidx226, align 4
  br label %if.end300

if.end259:                                        ; preds = %if.end249
  %call260 = call fastcc i32 @read_block_for_search(ptr noundef %root, ptr noundef %p, ptr noundef nonnull %b, i32 noundef %conv118, i32 noundef %206, ptr noundef %key)
  %213 = zext i32 %call260 to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call260, label %if.end259.done_crit_edge [
    i32 -11, label %if.end259.again.backedge_crit_edge
    i32 0, label %if.end267
  ]

if.end259.again.backedge_crit_edge:               ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.backedge

if.end259.done_crit_edge:                         ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end267:                                        ; preds = %if.end259
  %214 = ptrtoint ptr %need_commit_sem to i32
  call void @__asan_load1_noabort(i32 %214)
  %bf.load268 = load i8, ptr %need_commit_sem, align 2
  %215 = and i8 %bf.load268, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool272.not = icmp eq i8 %215, 0
  br i1 %tobool272.not, label %if.then273, label %if.end267.while.condthread-pre-split_crit_edge

if.end267.while.condthread-pre-split_crit_edge:   ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.condthread-pre-split

if.then273:                                       ; preds = %if.end267
  %216 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %b, align 4
  %pages.i484 = getelementptr inbounds %struct.extent_buffer, ptr %217, i32 0, i32 12
  %218 = ptrtoint ptr %pages.i484 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %pages.i484, align 4
  %call.i485 = call ptr @page_address(ptr noundef %219) #14
  %220 = ptrtoint ptr %217 to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %217, align 8
  %conv.i486 = trunc i64 %221 to i32
  %and.i487 = and i32 %conv.i486, 4095
  %add.ptr.i488 = getelementptr i8, ptr %call.i485, i32 %and.i487
  %level.i489 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i488, i32 0, i32 8
  %222 = ptrtoint ptr %level.i489 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %level.i489, align 1
  %conv275 = zext i8 %223 to i32
  %224 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %write_lock_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %225, i32 %conv275)
  %cmp276.not = icmp slt i32 %225, %conv275
  br i1 %cmp276.not, label %if.else281, label %if.then278

if.then278:                                       ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_lock(ptr noundef %217) #14
  br label %if.end284

if.else281:                                       ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_read_lock(ptr noundef %217) #14
  br label %if.end284

if.end284:                                        ; preds = %if.else281, %if.then278
  %.sink = phi i8 [ 2, %if.else281 ], [ 1, %if.then278 ]
  %226 = getelementptr %struct.btrfs_path, ptr %p, i32 0, i32 2, i32 %conv275
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %.sink, ptr %226, align 1
  %arrayidx286 = getelementptr [8 x ptr], ptr %p, i32 0, i32 %conv275
  %228 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %217, ptr %arrayidx286, align 4
  br label %while.condthread-pre-split

done:                                             ; preds = %if.end259.done_crit_edge, %setup_nodes_for_search.exit.done_crit_edge, %if.then210, %search_leaf.exit.done_crit_edge, %if.end154.done_crit_edge, %if.then113
  %ret.4 = phi i32 [ %60, %if.then113 ], [ %retval.0.i460, %search_leaf.exit.done_crit_edge ], [ %retval.0.i460, %if.then210 ], [ %err.0, %if.end154.done_crit_edge ], [ %call260, %if.end259.done_crit_edge ], [ %retval.0.i483, %setup_nodes_for_search.exit.done_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %cmp291 = icmp slt i32 %ret.4, 0
  br i1 %cmp291, label %done.land.lhs.true293_crit_edge, label %done.if.end300_crit_edge

done.if.end300_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end300

done.land.lhs.true293_crit_edge:                  ; preds = %done
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true293

land.lhs.true293:                                 ; preds = %done.land.lhs.true293_crit_edge, %search_for_key_slot.exit.land.lhs.true293_crit_edge
  %ret.4554 = phi i32 [ %ret.4, %done.land.lhs.true293_crit_edge ], [ %call.i463, %search_for_key_slot.exit.land.lhs.true293_crit_edge ]
  %229 = ptrtoint ptr %need_commit_sem to i32
  call void @__asan_load1_noabort(i32 %229)
  %bf.load294 = load i8, ptr %need_commit_sem, align 2
  %230 = and i8 %bf.load294, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool298.not = icmp eq i8 %230, 0
  br i1 %tobool298.not, label %if.then299, label %land.lhs.true293.if.end300_crit_edge

land.lhs.true293.if.end300_crit_edge:             ; preds = %land.lhs.true293
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end300

if.then299:                                       ; preds = %land.lhs.true293
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_release_path(ptr noundef %p)
  br label %if.end300

if.end300:                                        ; preds = %if.then299, %land.lhs.true293.if.end300_crit_edge, %done.if.end300_crit_edge, %if.then255, %if.then253.if.end300_crit_edge, %while.condthread-pre-split.if.end300_crit_edge, %while.cond.preheader.if.end300_crit_edge
  %ret.4543 = phi i32 [ %ret.4554, %if.then299 ], [ %ret.4554, %land.lhs.true293.if.end300_crit_edge ], [ %ret.4, %done.if.end300_crit_edge ], [ %retval.0.i465522526, %if.then253.if.end300_crit_edge ], [ %retval.0.i465522526, %if.then255 ], [ 1, %while.condthread-pre-split.if.end300_crit_edge ], [ 1, %while.cond.preheader.if.end300_crit_edge ]
  %231 = ptrtoint ptr %need_commit_sem to i32
  call void @__asan_load1_noabort(i32 %231)
  %bf.load302 = load i8, ptr %need_commit_sem, align 2
  %232 = and i8 %bf.load302, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool306.not = icmp eq i8 %232, 0
  br i1 %tobool306.not, label %if.end300.cleanup314_crit_edge, label %if.then307

if.end300.cleanup314_crit_edge:                   ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup314

if.then307:                                       ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #16
  %call308 = call fastcc i32 @finish_need_commit_sem_search(ptr noundef %p)
  %commit_root_sem309 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 54
  call void @up_read(ptr noundef %commit_root_sem309) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308)
  %tobool310.not = icmp eq i32 %call308, 0
  %spec.select436 = select i1 %tobool310.not, i32 %ret.4543, i32 %call308
  br label %cleanup314

cleanup314:                                       ; preds = %if.then307, %if.end300.cleanup314_crit_edge
  %retval.0 = phi i32 [ %spec.select436, %if.then307 ], [ %ret.4543, %if.end300.cleanup314_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %write_lock_level) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slot) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unlock_up(ptr nocapture noundef %path, i32 noundef %level, i32 noundef %lowest_unlock, i32 noundef %min_write_lock_level, ptr noundef %write_lock_level) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %level)
  %cmp80 = icmp slt i32 %level, 8
  br i1 %cmp80, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %keep_locks = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 5
  %tobool33.not = icmp ne ptr %write_lock_level, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %check_skip.0.off085 = phi i1 [ true, %for.body.lr.ph ], [ %check_skip.1.off0, %for.inc.for.body_crit_edge ]
  %skip_level.084 = phi i32 [ %level, %for.body.lr.ph ], [ %skip_level.3, %for.inc.for.body_crit_edge ]
  %i.081 = phi i32 [ %level, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x ptr], ptr %path, i32 0, i32 %i.081
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end:                                           ; preds = %for.body
  %arrayidx1 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 2, i32 %i.081
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end.for.end_crit_edge, label %if.end4

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end4:                                          ; preds = %if.end
  br i1 %check_skip.0.off085, label %if.then6, label %if.end4.if.end23_crit_edge

if.end4.if.end23_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then6:                                         ; preds = %if.end4
  %arrayidx7 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %i.081
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %add = add nsw i32 %i.081, 1
  br label %for.inc

if.end10:                                         ; preds = %if.then6
  %6 = ptrtoint ptr %keep_locks to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %keep_locks, align 2
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool11.not = icmp eq i8 %7, 0
  br i1 %tobool11.not, label %if.end10.if.end23_crit_edge, label %if.then12

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then12:                                        ; preds = %if.end10
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %9) #14
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %1, align 8
  %conv.i = trunc i64 %11 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %12 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %nritems.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp15 = icmp eq i32 %13, 0
  br i1 %cmp15, label %if.then12.cleanup_crit_edge, label %lor.lhs.false

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then12
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #14
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7, align 4
  %sub = add i32 %14, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %sub)
  %cmp18.not = icmp ult i32 %16, %sub
  br i1 %cmp18.not, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %add20 = add nsw i32 %i.081, 1
  br label %for.inc

if.end23:                                         ; preds = %lor.lhs.false.if.end23_crit_edge, %if.end10.if.end23_crit_edge, %if.end4.if.end23_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.081, i32 %lowest_unlock)
  %cmp24.not = icmp sge i32 %i.081, %lowest_unlock
  call void @__sanitizer_cov_trace_cmp4(i32 %i.081, i32 %skip_level.084)
  %cmp25 = icmp sgt i32 %i.081, %skip_level.084
  %or.cond = select i1 %cmp24.not, i1 %cmp25, i1 false
  br i1 %or.cond, label %if.then26, label %if.end23.for.inc_crit_edge

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then26:                                        ; preds = %if.end23
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %20, label %do.body.i [
    i8 1, label %if.then.i
    i8 2, label %if.then2.i
  ]

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_tree_unlock(ptr noundef %18) #14
  br label %btrfs_tree_unlock_rw.exit

if.then2.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_tree_read_unlock(ptr noundef %18) #14
  br label %btrfs_tree_unlock_rw.exit

do.body.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/locking.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #14, !srcloc !114
  unreachable

btrfs_tree_unlock_rw.exit:                        ; preds = %if.then2.i, %if.then.i
  %22 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.081, i32 %min_write_lock_level)
  %cmp35 = icmp sgt i32 %i.081, %min_write_lock_level
  %or.cond76 = select i1 %tobool33.not, i1 %cmp35, i1 false
  br i1 %or.cond76, label %land.lhs.true37, label %btrfs_tree_unlock_rw.exit.for.inc_crit_edge

btrfs_tree_unlock_rw.exit.for.inc_crit_edge:      ; preds = %btrfs_tree_unlock_rw.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true37:                                  ; preds = %btrfs_tree_unlock_rw.exit
  %23 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %write_lock_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.081, i32 %24)
  %cmp38.not = icmp sgt i32 %i.081, %24
  br i1 %cmp38.not, label %land.lhs.true37.for.inc_crit_edge, label %if.then40

land.lhs.true37.for.inc_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then40:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #16
  %sub41 = add nsw i32 %i.081, -1
  %25 = ptrtoint ptr %write_lock_level to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub41, ptr %write_lock_level, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then40, %land.lhs.true37.for.inc_crit_edge, %btrfs_tree_unlock_rw.exit.for.inc_crit_edge, %if.end23.for.inc_crit_edge, %cleanup, %if.then9
  %skip_level.3 = phi i32 [ %add, %if.then9 ], [ %add20, %cleanup ], [ %skip_level.084, %if.then40 ], [ %skip_level.084, %land.lhs.true37.for.inc_crit_edge ], [ %skip_level.084, %btrfs_tree_unlock_rw.exit.for.inc_crit_edge ], [ %skip_level.084, %if.end23.for.inc_crit_edge ]
  %check_skip.1.off0 = phi i1 [ true, %if.then9 ], [ true, %cleanup ], [ false, %if.then40 ], [ false, %land.lhs.true37.for.inc_crit_edge ], [ false, %btrfs_tree_unlock_rw.exit.for.inc_crit_edge ], [ %check_skip.0.off085, %if.end23.for.inc_crit_edge ]
  %inc = add i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_block_for_search(ptr nocapture noundef readonly %root, ptr noundef %p, ptr nocapture noundef %eb_ret, i32 noundef %level, i32 noundef %slot, ptr nocapture noundef readonly %key) unnamed_addr #3 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %first_key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %first_key) #14
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %first_key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %first_key, i32 0, i32 2
  %4 = ptrtoint ptr %eb_ret to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eb_ret, align 4
  %mul.i = mul i32 %slot, 33
  %add.i = add i32 %mul.i, 101
  %6 = inttoptr i32 %add.i to ptr
  %call.i.i = tail call i64 @btrfs_get_64(ptr noundef %5, ptr noundef %6, i32 noundef 17) #14
  %7 = ptrtoint ptr %eb_ret to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eb_ret, align 4
  %call.i.i89 = tail call i64 @btrfs_get_64(ptr noundef %8, ptr noundef %6, i32 noundef 25) #14
  %9 = ptrtoint ptr %eb_ret to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %eb_ret, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %12) #14
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %10, align 8
  %conv.i = trunc i64 %14 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %15 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %level.i, align 1
  %conv = zext i8 %16 to i32
  %17 = ptrtoint ptr %eb_ret to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %eb_ret, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %19 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %21 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @btrfs_node_key(ptr noundef %18, ptr noundef nonnull %disk_key.i, i32 noundef %slot) #14
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %20, align 1
  %24 = call i64 @llvm.bswap.i64(i64 %23) #14
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %3, align 1
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %19, align 8
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %2, align 8
  %29 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %disk_key.i, align 8
  %31 = call i64 @llvm.bswap.i64(i64 %30) #14
  %32 = ptrtoint ptr %first_key to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %first_key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  %call4 = call ptr @find_extent_buffer(ptr noundef %1, i64 noundef %call.i.i) #14
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end22, label %if.then

if.then:                                          ; preds = %entry
  %reada = getelementptr inbounds %struct.btrfs_path, ptr %p, i32 0, i32 3
  %33 = ptrtoint ptr %reada to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %reada, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp = icmp eq i8 %34, 3
  br i1 %cmp, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %key, align 1
  call fastcc void @reada_for_search(ptr noundef %1, ptr noundef %p, i32 noundef %level, i32 noundef %slot, i64 noundef %36)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %call8 = call i32 @btrfs_buffer_uptodate(ptr noundef nonnull %call4, i64 noundef %call.i.i89, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp sgt i32 %call8, 0
  %sub = add nsw i32 %conv, -1
  br i1 %cmp9, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end
  %call12 = call i32 @btrfs_verify_level_key(ptr noundef nonnull %call4, i32 noundef %sub, ptr noundef nonnull %first_key, i64 noundef %call.i.i89) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  call void @free_extent_buffer(ptr noundef nonnull %call4) #14
  br label %cleanup

if.end15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %eb_ret to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call4, ptr %eb_ret, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call18 = call i32 @btrfs_read_buffer(ptr noundef nonnull %call4, i64 noundef %call.i.i89, i32 noundef %sub, ptr noundef nonnull %first_key) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %eb_ret to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call4, ptr %eb_ret, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  call void @free_extent_buffer(ptr noundef nonnull %call4) #14
  call void @btrfs_release_path(ptr noundef %p)
  br label %cleanup

if.end22:                                         ; preds = %entry
  %add = add i32 %level, 1
  call void @btrfs_unlock_up_safe(ptr noundef %p, i32 noundef %add) #14
  %reada23 = getelementptr inbounds %struct.btrfs_path, ptr %p, i32 0, i32 3
  %39 = ptrtoint ptr %reada23 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %reada23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp25.not = icmp eq i8 %40, 0
  br i1 %cmp25.not, label %if.end22.if.end29_crit_edge, label %if.then27

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %key, align 1
  call fastcc void @reada_for_search(ptr noundef %1, ptr noundef %p, i32 noundef %level, i32 noundef %slot, i64 noundef %42)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end22.if.end29_crit_edge
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %43 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %root_key, align 1
  %sub31 = add nsw i32 %conv, -1
  %call32 = call ptr @read_tree_block(ptr noundef %1, i64 noundef %call.i.i, i64 noundef %44, i64 noundef %call.i.i89, i32 noundef %sub31, ptr noundef nonnull %first_key) #14
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %bflags.i = getelementptr inbounds %struct.extent_buffer, ptr %call32, i32 0, i32 2
  %45 = ptrtoint ptr %bflags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %bflags.i, align 4
  %and1.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool36.not = icmp eq i32 %and1.i.i, 0
  %spec.select = select i1 %tobool36.not, i32 -5, i32 -11
  call void @free_extent_buffer(ptr noundef %call32) #14
  br label %if.end40

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %call32 to i32
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then34
  %ret.1 = phi i32 [ %47, %if.else ], [ %spec.select, %if.then34 ]
  call void @btrfs_release_path(ptr noundef %p)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end21, %if.then20, %if.end15, %if.then14
  %retval.0 = phi i32 [ -117, %if.then14 ], [ 0, %if.end15 ], [ -5, %if.end21 ], [ 0, %if.then20 ], [ %ret.1, %if.end40 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %first_key) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_tree_read_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @finish_need_commit_sem_search(ptr nocapture noundef %path) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lowest_level = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 4
  %0 = ptrtoint ptr %lowest_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lowest_level, align 1
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [8 x ptr], ptr %path, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %need_commit_sem = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 5
  %6 = ptrtoint ptr %need_commit_sem to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %need_commit_sem, align 2
  %7 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !121

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.38, i32 noundef 1666) #18
  unreachable

cond.end:                                         ; preds = %entry
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %cond.end.cleanup_crit_edge, label %do.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %do.body.if.end28_crit_edge, label %land.rhs

do.body.if.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

land.rhs:                                         ; preds = %do.body
  %fs_info = getelementptr inbounds %struct.extent_buffer, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_info, align 8
  %dep_map = getelementptr inbounds %struct.btrfs_fs_info, ptr %10, i32 0, i32 54, i32 6
  %call = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %do.end, label %land.rhs.if.end28_crit_edge, !prof !121

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1671, i32 noundef 9, ptr noundef null) #14
  br label %if.end28

if.end28:                                         ; preds = %do.end, %land.rhs.if.end28_crit_edge, %do.body.if.end28_crit_edge
  %call37 = tail call ptr @btrfs_clone_extent_buffer(ptr noundef nonnull %5) #14
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end28.cleanup_crit_edge, label %if.end40

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_release_path(ptr noundef %path)
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call37, ptr %arrayidx1, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %3, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end28.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end40 ], [ 0, %cond.end.cleanup_crit_edge ], [ -12, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_search_old_slot(ptr noundef %root, ptr nocapture noundef readonly %key, ptr noundef %p, i64 noundef %time_seq) local_unnamed_addr #3 align 64 {
entry:
  %b = alloca ptr, align 4
  %slot = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slot) #14
  %2 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %slot, align 4, !annotation !133
  %lowest_level2 = getelementptr inbounds %struct.btrfs_path, ptr %p, i32 0, i32 4
  %3 = ptrtoint ptr %lowest_level2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lowest_level2, align 1
  %5 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p, align 4
  %cmp.not = icmp eq ptr %6, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !120

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2103, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %search_commit_root = getelementptr inbounds %struct.btrfs_path, ptr %p, i32 0, i32 5
  %7 = ptrtoint ptr %search_commit_root to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %search_commit_root, align 2
  %8 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool21.not = icmp eq i8 %8, 0
  br i1 %tobool21.not, label %again.preheader, label %do.body23

again.preheader:                                  ; preds = %if.end
  %call42193 = tail call ptr @btrfs_get_old_root(ptr noundef %root, i64 noundef %time_seq) #14
  %9 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call42193, ptr %b, align 4
  %tobool43.not194 = icmp eq ptr %call42193, null
  br i1 %tobool43.not194, label %again.preheader.if.then101_crit_edge, label %again.preheader.if.end45_crit_edge

again.preheader.if.end45_crit_edge:               ; preds = %again.preheader
  br label %if.end45

again.preheader.if.then101_crit_edge:             ; preds = %again.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then101

do.body23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %time_seq)
  %tobool24.not = icmp eq i64 %time_seq, 0
  br i1 %tobool24.not, label %do.end40, label %do.body32, !prof !120

do.body32:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2106, 0\0A.popsection", ""() #14, !srcloc !136
  unreachable

do.end40:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %root, ptr noundef %key, ptr noundef %p, i32 noundef 0, i32 noundef 0)
  br label %cleanup103

again.loopexit:                                   ; preds = %if.end80
  %call42 = tail call ptr @btrfs_get_old_root(ptr noundef %root, i64 noundef %time_seq) #14
  %10 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call42, ptr %b, align 4
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %again.loopexit.if.then101_crit_edge, label %again.loopexit.if.end45_crit_edge

again.loopexit.if.end45_crit_edge:                ; preds = %again.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

again.loopexit.if.then101_crit_edge:              ; preds = %again.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then101

if.end45:                                         ; preds = %again.loopexit.if.end45_crit_edge, %again.preheader.if.end45_crit_edge
  %call42195 = phi ptr [ %call42, %again.loopexit.if.end45_crit_edge ], [ %call42193, %again.preheader.if.end45_crit_edge ]
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %call42195, i32 0, i32 12
  %11 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %12) #14
  %13 = ptrtoint ptr %call42195 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %call42195, align 8
  %conv.i = trunc i64 %14 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %15 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %level.i, align 1
  %conv = zext i8 %16 to i32
  %arrayidx47 = getelementptr %struct.btrfs_path, ptr %p, i32 0, i32 2, i32 %conv
  %17 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %arrayidx47, align 1
  %18 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b, align 4
  %tobool48.not227 = icmp eq ptr %19, null
  br i1 %tobool48.not227, label %if.end45.cleanup103_crit_edge, label %if.end45.while.body_crit_edge

if.end45.while.body_crit_edge:                    ; preds = %if.end45
  br label %while.body

if.end45.cleanup103_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end45.while.body_crit_edge
  %20 = phi ptr [ %52, %cleanup.while.body_crit_edge ], [ %19, %if.end45.while.body_crit_edge ]
  %pages.i154 = getelementptr inbounds %struct.extent_buffer, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %pages.i154 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pages.i154, align 4
  %call.i155 = tail call ptr @page_address(ptr noundef %22) #14
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %20, align 8
  %conv.i156 = trunc i64 %24 to i32
  %and.i157 = and i32 %conv.i156, 4095
  %add.ptr.i158 = getelementptr i8, ptr %call.i155, i32 %and.i157
  %level.i159 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i158, i32 0, i32 8
  %25 = ptrtoint ptr %level.i159 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %level.i159, align 1
  %conv50 = zext i8 %26 to i32
  %arrayidx52 = getelementptr [8 x ptr], ptr %p, i32 0, i32 %conv50
  %27 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %20, ptr %arrayidx52, align 4
  %add = add nuw nsw i32 %conv50, 1
  tail call void @btrfs_unlock_up_safe(ptr noundef %p, i32 noundef %add) #14
  %call.i160 = call fastcc i32 @generic_bin_search(ptr noundef nonnull %20, i32 noundef 0, ptr noundef %key, ptr noundef nonnull %slot) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %cmp54 = icmp slt i32 %call.i160, 0
  br i1 %cmp54, label %while.body.if.then101_crit_edge, label %if.end57

while.body.if.then101_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then101

if.end57:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp58 = icmp eq i8 %26, 0
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slot, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %p, i32 0, i32 1
  %30 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %slots, align 4
  tail call fastcc void @unlock_up(ptr noundef %p, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null)
  br label %cleanup103

if.end62:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool63.not = icmp eq i32 %call.i160, 0
  br i1 %tobool63.not, label %if.end62.if.end68_crit_edge, label %land.lhs.true

if.end62.if.end68_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end62
  %31 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp64 = icmp sgt i32 %32, 0
  br i1 %cmp64, label %if.then66, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.then66:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %dec67 = add nsw i32 %32, -1
  %33 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %dec67, ptr %slot, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %land.lhs.true.if.end68_crit_edge, %if.end62.if.end68_crit_edge
  %tobool75.not = phi i1 [ false, %if.then66 ], [ true, %land.lhs.true.if.end68_crit_edge ], [ true, %if.end62.if.end68_crit_edge ]
  %34 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %slot, align 4
  %arrayidx70 = getelementptr %struct.btrfs_path, ptr %p, i32 0, i32 1, i32 %conv50
  %36 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx70, align 4
  tail call fastcc void @unlock_up(ptr noundef %p, i32 noundef %conv50, i32 noundef 1, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %4)
  %cmp72 = icmp eq i8 %26, %4
  br i1 %cmp72, label %if.then74, label %if.end80

if.then74:                                        ; preds = %if.end68
  br i1 %tobool75.not, label %if.then74.cleanup103_crit_edge, label %if.then76

if.then74.cleanup103_crit_edge:                   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103

if.then76:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx70, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %arrayidx70, align 4
  br label %cleanup103

if.end80:                                         ; preds = %if.end68
  %call81 = call fastcc i32 @read_block_for_search(ptr noundef %root, ptr noundef %p, ptr noundef nonnull %b, i32 noundef %conv50, i32 noundef %35, ptr noundef %key)
  %39 = zext i32 %call81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call81, label %done [
    i32 -11, label %again.loopexit
    i32 0, label %if.end88
  ]

if.end88:                                         ; preds = %if.end80
  %40 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b, align 4
  %pages.i161 = getelementptr inbounds %struct.extent_buffer, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %pages.i161 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pages.i161, align 4
  %call.i162 = tail call ptr @page_address(ptr noundef %43) #14
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %41, align 8
  %conv.i163 = trunc i64 %45 to i32
  %and.i164 = and i32 %conv.i163, 4095
  %add.ptr.i165 = getelementptr i8, ptr %call.i162, i32 %and.i164
  %level.i166 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i165, i32 0, i32 8
  %46 = ptrtoint ptr %level.i166 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %level.i166, align 1
  tail call void @btrfs_tree_read_lock(ptr noundef %41) #14
  %call91 = tail call ptr @btrfs_tree_mod_log_rewind(ptr noundef %1, ptr noundef %p, ptr noundef %41, i64 noundef %time_seq) #14
  %48 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call91, ptr %b, align 4
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %if.end88.if.then101_crit_edge, label %cleanup

if.end88.if.then101_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then101

cleanup:                                          ; preds = %if.end88
  %conv90 = zext i8 %47 to i32
  %arrayidx96 = getelementptr %struct.btrfs_path, ptr %p, i32 0, i32 2, i32 %conv90
  %49 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %arrayidx96, align 1
  %arrayidx98 = getelementptr [8 x ptr], ptr %p, i32 0, i32 %conv90
  %50 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call91, ptr %arrayidx98, align 4
  %51 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %b, align 4
  %tobool48.not = icmp eq ptr %52, null
  br i1 %tobool48.not, label %cleanup.cleanup103_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.cleanup103_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103

done:                                             ; preds = %if.end80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp99 = icmp slt i32 %call81, 0
  br i1 %cmp99, label %done.if.then101_crit_edge, label %done.cleanup103_crit_edge

done.cleanup103_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103

done.if.then101_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then101

if.then101:                                       ; preds = %done.if.then101_crit_edge, %if.end88.if.then101_crit_edge, %while.body.if.then101_crit_edge, %again.loopexit.if.then101_crit_edge, %again.preheader.if.then101_crit_edge
  %ret.1174 = phi i32 [ %call81, %done.if.then101_crit_edge ], [ -5, %again.preheader.if.then101_crit_edge ], [ -12, %if.end88.if.then101_crit_edge ], [ %call.i160, %while.body.if.then101_crit_edge ], [ -5, %again.loopexit.if.then101_crit_edge ]
  tail call void @btrfs_release_path(ptr noundef %p)
  br label %cleanup103

cleanup103:                                       ; preds = %if.then101, %done.cleanup103_crit_edge, %cleanup.cleanup103_crit_edge, %if.then76, %if.then74.cleanup103_crit_edge, %if.then60, %if.end45.cleanup103_crit_edge, %do.end40
  %retval.0 = phi i32 [ %call, %do.end40 ], [ %ret.1174, %if.then101 ], [ %call81, %done.cleanup103_crit_edge ], [ %call.i160, %if.then74.cleanup103_crit_edge ], [ %call.i160, %if.then76 ], [ %call.i160, %if.then60 ], [ 1, %cleanup.cleanup103_crit_edge ], [ 1, %if.end45.cleanup103_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slot) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_get_old_root(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_unlock_up_safe(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_tree_mod_log_rewind(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_search_slot_for_read(ptr noundef %root, ptr nocapture noundef readonly %key, ptr noundef %p, i32 noundef %find_higher, i32 noundef %return_any) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call75 = tail call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %root, ptr noundef %key, ptr noundef %p, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 1
  br i1 %cmp76, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %p, i32 0, i32 1
  br label %if.end

if.end:                                           ; preds = %again.backedge.if.end_crit_edge, %if.end.lr.ph
  %return_any.addr.078 = phi i32 [ %return_any, %if.end.lr.ph ], [ 0, %again.backedge.if.end_crit_edge ]
  %find_higher.addr.077 = phi i32 [ %find_higher, %if.end.lr.ph ], [ %find_higher.addr.0.be, %again.backedge.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %find_higher.addr.077)
  %tobool.not = icmp eq i32 %find_higher.addr.077, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %2 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slots, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %5) #14
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %1, align 8
  %conv.i = trunc i64 %7 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %8 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %nritems.i, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %10)
  %cmp4.not = icmp ult i32 %3, %10
  br i1 %cmp4.not, label %if.then1.cleanup_crit_edge, label %if.then5

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %if.then1
  %call.i66 = tail call i32 @btrfs_next_old_leaf(ptr noundef %root, ptr noundef %p, i64 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i66)
  %cmp7 = icmp slt i32 %call.i66, 1
  br i1 %cmp7, label %if.then5.cleanup_crit_edge, label %if.end9

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %return_any.addr.078)
  %tobool10.not = icmp eq i32 %return_any.addr.078, 0
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end9.again.backedge_crit_edge

if.end9.again.backedge_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.backedge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

again.backedge:                                   ; preds = %if.end34.again.backedge_crit_edge, %if.end9.again.backedge_crit_edge
  %find_higher.addr.0.be = phi i32 [ 1, %if.end34.again.backedge_crit_edge ], [ 0, %if.end9.again.backedge_crit_edge ]
  tail call void @btrfs_release_path(ptr noundef %p)
  %call = tail call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %root, ptr noundef %key, ptr noundef %p, i32 noundef 0, i32 noundef 0)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %again.backedge.cleanup_crit_edge, label %again.backedge.if.end_crit_edge

again.backedge.if.end_crit_edge:                  ; preds = %again.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

again.backedge.cleanup_crit_edge:                 ; preds = %again.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %if.end
  %11 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp16 = icmp eq i32 %12, 0
  br i1 %cmp16, label %if.then17, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then17:                                        ; preds = %if.else
  %call18 = tail call i32 @btrfs_prev_leaf(ptr noundef %root, ptr noundef %p)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then17.cleanup_crit_edge, label %if.end21

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end21:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool22.not = icmp eq i32 %call18, 0
  br i1 %tobool22.not, label %if.then23, label %if.end34

if.then23:                                        ; preds = %if.end21
  %13 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p, align 4
  %15 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slots, align 4
  %pages.i67 = getelementptr inbounds %struct.extent_buffer, ptr %14, i32 0, i32 12
  %17 = ptrtoint ptr %pages.i67 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pages.i67, align 4
  %call.i68 = tail call ptr @page_address(ptr noundef %18) #14
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %14, align 8
  %conv.i69 = trunc i64 %20 to i32
  %and.i70 = and i32 %conv.i69, 4095
  %add.ptr.i71 = getelementptr i8, ptr %call.i68, i32 %and.i70
  %nritems.i72 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i71, i32 0, i32 7
  %21 = ptrtoint ptr %nritems.i72 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %nritems.i72, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %23)
  %cmp29 = icmp eq i32 %16, %23
  br i1 %cmp29, label %if.then30, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then30:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slots, align 4
  br label %cleanup.sink.split

if.end34:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %return_any.addr.078)
  %tobool35.not = icmp eq i32 %return_any.addr.078, 0
  br i1 %tobool35.not, label %if.end34.cleanup_crit_edge, label %if.end34.again.backedge_crit_edge

if.end34.again.backedge_crit_edge:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.backedge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then30, %if.else.cleanup.sink.split_crit_edge
  %.lcssa.sink = phi i32 [ %25, %if.then30 ], [ %12, %if.else.cleanup.sink.split_crit_edge ]
  %dec41 = add i32 %.lcssa.sink, -1
  %26 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %dec41, ptr %slots, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end34.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %again.backedge.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then23.cleanup_crit_edge ], [ %call75, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ %call, %again.backedge.cleanup_crit_edge ], [ %call.i66, %if.then5.cleanup_crit_edge ], [ 1, %if.end9.cleanup_crit_edge ], [ %call18, %if.then17.cleanup_crit_edge ], [ 1, %if.end34.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_prev_leaf(ptr noundef %root, ptr noundef %path) local_unnamed_addr #3 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  %found_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #14
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %key, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %found_key) #14
  %4 = getelementptr inbounds %struct.btrfs_disk_key, ptr %found_key, i32 0, i32 1
  %5 = getelementptr inbounds %struct.btrfs_disk_key, ptr %found_key, i32 0, i32 2
  %6 = call ptr @memset(ptr %found_key, i32 255, i32 17)
  %7 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %9 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %11 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %8, ptr noundef nonnull %disk_key.i, i32 noundef 101, i32 noundef 17) #14
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %10, align 1
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %9, align 8
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %0, align 8
  %17 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %disk_key.i, align 8
  %19 = call i64 @llvm.bswap.i64(i64 %18) #14
  %20 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp.not = icmp eq i64 %13, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %21 = call i64 @llvm.bswap.i64(i64 %13) #14
  %dec = add i64 %21, -1
  br label %if.end18

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp2.not = icmp eq i8 %15, 0
  br i1 %cmp2.not, label %if.else8, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %dec6 = add i8 %15, -1
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %dec6, ptr %0, align 8
  br label %if.end18

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %cmp9.not = icmp eq i64 %18, 0
  br i1 %cmp9.not, label %if.else8.cleanup_crit_edge, label %if.then11

if.else8.cleanup_crit_edge:                       ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then11:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #16
  %dec13 = add i64 %19, -1
  %23 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %dec13, ptr %key, align 8
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %0, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.then4, %if.then
  %.sink = phi i64 [ -1, %if.then4 ], [ -1, %if.then11 ], [ %dec, %if.then ]
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %.sink, ptr %1, align 1
  call void @btrfs_release_path(ptr noundef %path)
  %call = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %root, ptr noundef nonnull %key, ptr noundef %path, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp19 = icmp slt i32 %call, 0
  br i1 %cmp19, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %26 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %path, align 4
  call void @read_extent_buffer(ptr noundef %27, ptr noundef nonnull %found_key, i32 noundef 101, i32 noundef 17) #14
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %5, align 1
  %30 = call i64 @llvm.bswap.i64(i64 %29) #14
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %4, align 8
  %33 = ptrtoint ptr %found_key to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %found_key, align 8
  %35 = call i64 @llvm.bswap.i64(i64 %34) #14
  %36 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %37)
  %cmp.i.i = icmp ugt i64 %35, %37
  br i1 %cmp.i.i, label %if.end22.cleanup_crit_edge, label %if.end.i.i

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %37)
  %cmp4.i.i = icmp ult i64 %35, %37
  br i1 %cmp4.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end6.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %0, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %39)
  %cmp9.i.i = icmp ugt i8 %32, %39
  br i1 %cmp9.i.i, label %if.end6.i.i.cleanup_crit_edge, label %if.end12.i.i

if.end6.i.i.cleanup_crit_edge:                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %39)
  %cmp17.i.i = icmp ult i8 %32, %39
  br i1 %cmp17.i.i, label %if.end12.i.i.cleanup_crit_edge, label %if.end20.i.i

if.end12.i.i.cleanup_crit_edge:                   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20.i.i:                                     ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %1, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %41)
  %cmp22.i.i = icmp ugt i64 %30, %41
  %spec.select = zext i1 %cmp22.i.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end20.i.i, %if.end12.i.i.cleanup_crit_edge, %if.end6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.else8.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.else8.cleanup_crit_edge ], [ %call, %if.end18.cleanup_crit_edge ], [ 1, %if.end22.cleanup_crit_edge ], [ 1, %if.end6.i.i.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %if.end12.i.i.cleanup_crit_edge ], [ %spec.select, %if.end20.i.i ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %found_key) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_search_backwards(ptr noundef %root, ptr nocapture noundef %key, ptr noundef %path) local_unnamed_addr #3 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %root, ptr noundef %key, ptr noundef %path, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %key, align 1
  %type = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 @btrfs_previous_item(ptr noundef %root, ptr noundef %path, i64 noundef %1, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp2 = icmp eq i32 %ret.0, 0
  br i1 %cmp2, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %6 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %8 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %7, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %10 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %5, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #14
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %9, align 1
  %13 = call i64 @llvm.bswap.i64(i64 %12) #14
  %offset1.i.i = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %14 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %offset1.i.i, align 1
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %8, align 8
  %type2.i.i = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %17 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %type2.i.i, align 1
  %18 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %disk_key.i, align 8
  %20 = call i64 @llvm.bswap.i64(i64 %19) #14
  %21 = ptrtoint ptr %key to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %key, align 1
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_previous_item(ptr noundef %root, ptr noundef %path, i64 noundef %min_objectid, i32 noundef %type) local_unnamed_addr #3 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %0 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end28.while.cond_crit_edge, %entry
  %1 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.cond
  %call = call i32 @btrfs_prev_leaf(ptr noundef %root, ptr noundef %path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.else:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  %dec = add i32 %2, -1
  %3 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dec, ptr %slots, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then.if.end5_crit_edge
  %4 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %7) #14
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %5, align 8
  %conv.i = trunc i64 %9 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %10 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %nritems.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8 = icmp eq i32 %11, 0
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %12 = call i32 @llvm.bswap.i32(i32 %11) #14
  %13 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp13 = icmp eq i32 %14, %12
  br i1 %cmp13, label %if.then14, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %dec17 = add i32 %12, -1
  %15 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dec17, ptr %slots, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end10.if.end18_crit_edge
  %16 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %mul.i.i.i.i = mul i32 %17, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %18 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %5, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #14
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %0, align 8
  %21 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %disk_key.i, align 8
  %23 = call i64 @llvm.bswap.i64(i64 %22) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %min_objectid)
  %cmp21 = icmp ult i64 %23, %min_objectid
  br i1 %cmp21, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %conv = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %type)
  %cmp25 = icmp eq i32 %conv, %type
  br i1 %cmp25, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %min_objectid)
  %cmp30 = icmp eq i64 %23, %min_objectid
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %type)
  %cmp34 = icmp slt i32 %conv, %type
  %or.cond = select i1 %cmp30, i1 %cmp34, i1 false
  br i1 %or.cond, label %if.end28.cleanup_crit_edge, label %if.end28.while.cond_crit_edge

if.end28.while.cond_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end28.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 1, %if.end28.cleanup_crit_edge ], [ 1, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_set_item_key_safe(ptr noundef %fs_info, ptr nocapture noundef readonly %path, ptr nocapture noundef readonly %new_key) local_unnamed_addr #3 align 64 {
entry:
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #14
  %0 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 2
  %2 = call ptr @memset(ptr %disk_key, i32 255, i32 17)
  %3 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %5 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then:                                          ; preds = %entry
  %7 = mul i32 %6, 25
  %add.i.i.i = add i32 %7, 76
  call void @read_extent_buffer(ptr noundef %4, ptr noundef nonnull %disk_key, i32 noundef %add.i.i.i, i32 noundef 17) #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %1, align 1
  %10 = call i64 @llvm.bswap.i64(i64 %9) #14
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %0, align 8
  %13 = ptrtoint ptr %disk_key to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %disk_key, align 8
  %15 = call i64 @llvm.bswap.i64(i64 %14) #14
  %16 = ptrtoint ptr %new_key to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %new_key, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %17)
  %cmp.i.i = icmp ugt i64 %15, %17
  br i1 %cmp.i.i, label %if.then.if.then4_crit_edge, label %if.end.i.i

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %17)
  %cmp4.i.i = icmp ult i64 %15, %17
  br i1 %cmp4.i.i, label %if.end.i.i.if.end12_crit_edge, label %if.end6.i.i

if.end.i.i.if.end12_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end6.i.i:                                      ; preds = %if.end.i.i
  %type7.i.i = getelementptr inbounds %struct.btrfs_key, ptr %new_key, i32 0, i32 1
  %18 = ptrtoint ptr %type7.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type7.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %19)
  %cmp9.i.i = icmp ugt i8 %12, %19
  br i1 %cmp9.i.i, label %if.end6.i.i.if.then4_crit_edge, label %if.end12.i.i

if.end6.i.i.if.then4_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

if.end12.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %19)
  %cmp17.i.i = icmp ult i8 %12, %19
  br i1 %cmp17.i.i, label %if.end12.i.i.if.end12_crit_edge, label %if.end20.i.i

if.end12.i.i.if.end12_crit_edge:                  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end20.i.i:                                     ; preds = %if.end12.i.i
  %offset21.i.i = getelementptr inbounds %struct.btrfs_key, ptr %new_key, i32 0, i32 2
  %20 = ptrtoint ptr %offset21.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %offset21.i.i, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %21)
  %cmp28.i.i.not = icmp ult i64 %10, %21
  br i1 %cmp28.i.i.not, label %if.end20.i.i.if.end12_crit_edge, label %if.end20.i.i.if.then4_crit_edge, !prof !137

if.end20.i.i.if.then4_crit_edge:                  ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

if.end20.i.i.if.end12_crit_edge:                  ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then4:                                         ; preds = %if.end20.i.i.if.then4_crit_edge, %if.end6.i.i.if.then4_crit_edge, %if.then.if.then4_crit_edge
  %conv = zext i8 %12 to i32
  %type = getelementptr inbounds %struct.btrfs_key, ptr %new_key, i32 0, i32 1
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type, align 1
  %conv8 = zext i8 %23 to i32
  %offset = getelementptr inbounds %struct.btrfs_key, ptr %new_key, i32 0, i32 2
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %offset, align 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.13, i32 noundef %6, i64 noundef %15, i32 noundef %conv, i64 noundef %10, i64 noundef %17, i32 noundef %conv8, i64 noundef %25) #17
  call void @btrfs_print_leaf(ptr noundef %4) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2338, 0\0A.popsection", ""() #14, !srcloc !138
  unreachable

if.end12:                                         ; preds = %if.end20.i.i.if.end12_crit_edge, %if.end12.i.i.if.end12_crit_edge, %if.end.i.i.if.end12_crit_edge, %entry.if.end12_crit_edge
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %4, i32 0, i32 12
  %26 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %27) #14
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %4, align 8
  %conv.i = trunc i64 %29 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %30 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %nritems.i, align 1
  %32 = call i32 @llvm.bswap.i32(i32 %31) #14
  %sub14 = add i32 %32, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub14)
  %cmp15 = icmp ult i32 %6, %sub14
  %33 = mul i32 %6, 25
  br i1 %cmp15, label %if.then17, label %if.end12.if.end43_crit_edge

if.end12.if.end43_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then17:                                        ; preds = %if.end12
  %add.i.i.i73 = add i32 %33, 126
  call void @read_extent_buffer(ptr noundef %4, ptr noundef nonnull %disk_key, i32 noundef %add.i.i.i73, i32 noundef 17) #14
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %1, align 1
  %36 = call i64 @llvm.bswap.i64(i64 %35) #14
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %0, align 8
  %39 = ptrtoint ptr %disk_key to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %disk_key, align 8
  %41 = call i64 @llvm.bswap.i64(i64 %40) #14
  %42 = ptrtoint ptr %new_key to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %new_key, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %43)
  %cmp.i.i76 = icmp ugt i64 %41, %43
  br i1 %cmp.i.i76, label %if.then17.if.end43_crit_edge, label %if.end.i.i78

if.then17.if.end43_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.end.i.i78:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %43)
  %cmp4.i.i77 = icmp ult i64 %41, %43
  br i1 %cmp4.i.i77, label %if.end.i.i78.if.then27_crit_edge, label %if.end6.i.i81

if.end.i.i78.if.then27_crit_edge:                 ; preds = %if.end.i.i78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27

if.end6.i.i81:                                    ; preds = %if.end.i.i78
  %type7.i.i79 = getelementptr inbounds %struct.btrfs_key, ptr %new_key, i32 0, i32 1
  %44 = ptrtoint ptr %type7.i.i79 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %type7.i.i79, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %45)
  %cmp9.i.i80 = icmp ugt i8 %38, %45
  br i1 %cmp9.i.i80, label %if.end6.i.i81.if.end43_crit_edge, label %if.end12.i.i83

if.end6.i.i81.if.end43_crit_edge:                 ; preds = %if.end6.i.i81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.end12.i.i83:                                   ; preds = %if.end6.i.i81
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %45)
  %cmp17.i.i82 = icmp ult i8 %38, %45
  br i1 %cmp17.i.i82, label %if.end12.i.i83.if.then27_crit_edge, label %if.end20.i.i86

if.end12.i.i83.if.then27_crit_edge:               ; preds = %if.end12.i.i83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27

if.end20.i.i86:                                   ; preds = %if.end12.i.i83
  %offset21.i.i84 = getelementptr inbounds %struct.btrfs_key, ptr %new_key, i32 0, i32 2
  %46 = ptrtoint ptr %offset21.i.i84 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %offset21.i.i84, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %47)
  %cmp22.i.i85 = icmp ugt i64 %36, %47
  br i1 %cmp22.i.i85, label %if.end20.i.i86.if.end43_crit_edge, label %if.end20.i.i86.if.then27_crit_edge

if.end20.i.i86.if.then27_crit_edge:               ; preds = %if.end20.i.i86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27

if.end20.i.i86.if.end43_crit_edge:                ; preds = %if.end20.i.i86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then27:                                        ; preds = %if.end20.i.i86.if.then27_crit_edge, %if.end12.i.i83.if.then27_crit_edge, %if.end.i.i78.if.then27_crit_edge
  %conv30 = zext i8 %38 to i32
  %type33 = getelementptr inbounds %struct.btrfs_key, ptr %new_key, i32 0, i32 1
  %48 = ptrtoint ptr %type33 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %type33, align 1
  %conv34 = zext i8 %49 to i32
  %offset35 = getelementptr inbounds %struct.btrfs_key, ptr %new_key, i32 0, i32 2
  %50 = ptrtoint ptr %offset35 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %offset35, align 1
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.13, i32 noundef %6, i64 noundef %41, i32 noundef %conv30, i64 noundef %36, i64 noundef %43, i32 noundef %conv34, i64 noundef %51) #17
  call void @btrfs_print_leaf(ptr noundef %4) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2352, 0\0A.popsection", ""() #14, !srcloc !139
  unreachable

if.end43:                                         ; preds = %if.end20.i.i86.if.end43_crit_edge, %if.end6.i.i81.if.end43_crit_edge, %if.then17.if.end43_crit_edge, %if.end12.if.end43_crit_edge
  %offset.i94 = getelementptr inbounds %struct.btrfs_key, ptr %new_key, i32 0, i32 2
  %52 = ptrtoint ptr %offset.i94 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %offset.i94, align 1
  %54 = call i64 @llvm.bswap.i64(i64 %53) #14
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %54, ptr %1, align 1
  %type.i95 = getelementptr inbounds %struct.btrfs_key, ptr %new_key, i32 0, i32 1
  %56 = ptrtoint ptr %type.i95 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %type.i95, align 1
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %0, align 8
  %59 = ptrtoint ptr %new_key to i32
  call void @__asan_loadN_noabort(i32 %59, i32 8)
  %60 = load i64, ptr %new_key, align 1
  %61 = call i64 @llvm.bswap.i64(i64 %60) #14
  %62 = ptrtoint ptr %disk_key to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %disk_key, align 8
  %add.i.i.i97 = add i32 %33, 101
  call void @write_extent_buffer(ptr noundef %4, ptr noundef nonnull %disk_key, i32 noundef %add.i.i.i97, i32 noundef 17) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef %4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp44 = icmp eq i32 %6, 0
  br i1 %cmp44, label %if.end43.for.body.i_crit_edge, label %if.end43.if.end47_crit_edge

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.end43.for.body.i_crit_edge:                    ; preds = %if.end43
  br label %for.body.i

for.body.i:                                       ; preds = %do.end14.i.for.body.i_crit_edge, %if.end43.for.body.i_crit_edge
  %i.034.i = phi i32 [ %inc.i, %do.end14.i.for.body.i_crit_edge ], [ 1, %if.end43.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %i.034.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [8 x ptr], ptr %path, i32 0, i32 %i.034.i
  %65 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i = icmp eq ptr %66, null
  br i1 %tobool.not.i, label %for.body.i.if.end47_crit_edge, label %if.end.i

for.body.i.if.end47_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.end.i:                                         ; preds = %for.body.i
  %call.i98 = call i32 @btrfs_tree_mod_log_insert_key(ptr noundef nonnull %66, i32 noundef %64, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %cmp4.i = icmp slt i32 %call.i98, 0
  br i1 %cmp4.i, label %do.body8.i, label %do.end14.i, !prof !121

do.body8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2303, 0\0A.popsection", ""() #14, !srcloc !140
  unreachable

do.end14.i:                                       ; preds = %if.end.i
  %mul.i.i.i99 = mul i32 %64, 33
  %add.i.i.i100 = add i32 %mul.i.i.i99, 101
  call void @write_extent_buffer(ptr noundef nonnull %66, ptr noundef nonnull %disk_key, i32 noundef %add.i.i.i100, i32 noundef 17) #14
  %67 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx1.i, align 4
  call void @btrfs_mark_buffer_dirty(ptr noundef %68) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp17.not.i = icmp ne i32 %64, 0
  %inc.i = add nuw nsw i32 %i.034.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  %or.cond.i = select i1 %cmp17.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %do.end14.i.if.end47_crit_edge, label %do.end14.i.for.body.i_crit_edge

do.end14.i.for.body.i_crit_edge:                  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.end14.i.if.end47_crit_edge:                    ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.end47:                                         ; preds = %do.end14.i.if.end47_crit_edge, %for.body.i.if.end47_crit_edge, %if.end43.if.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_print_leaf(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_leaf_free_space(ptr noundef %leaf) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.extent_buffer, ptr %leaf, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %leaf, i32 0, i32 12
  %2 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %3) #14
  %4 = ptrtoint ptr %leaf to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %leaf, align 8
  %conv.i = trunc i64 %5 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %6 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %nritems.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #14
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %9 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nodesize.i, align 8
  %sub.i = add i32 %10, -101
  %call3 = tail call fastcc i32 @leaf_space_used(ptr noundef %leaf, i32 noundef 0, i32 noundef %8)
  %sub = sub i32 %sub.i, %call3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nodesize.i, align 8
  %sub.i16 = add i32 %12, -101
  %call5 = tail call fastcc i32 @leaf_space_used(ptr noundef %leaf, i32 noundef 0, i32 noundef %8)
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %sub, i32 noundef %sub.i16, i32 noundef %call5, i32 noundef %8) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @leaf_space_used(ptr noundef %l, i32 noundef %start, i32 noundef %nr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %l, i32 0, i32 12
  %0 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %tobool.not = icmp eq i32 %nr, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %l to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %l, align 8
  %conv.i = trunc i64 %3 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %4 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %nritems.i, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #14
  %add = add i32 %nr, %start
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 %add)
  %mul.i.i.i = mul i32 %start, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %8 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = tail call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %8, i32 noundef 17) #14
  %call.i.i47 = tail call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %8, i32 noundef 21) #14
  %9 = mul i32 %7, 25
  %add.i.i.i49 = add i32 %9, 76
  %10 = inttoptr i32 %add.i.i.i49 to ptr
  %call.i.i50 = tail call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %10, i32 noundef 17) #14
  %mul = mul i32 %nr, 25
  %add3 = add i32 %call.i.i, %mul
  %sub5 = add i32 %add3, %call.i.i47
  %add6 = sub i32 %sub5, %call.i.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add6)
  %cmp7 = icmp slt i32 %add6, 0
  br i1 %cmp7, label %do.end, label %if.end.cleanup_crit_edge, !prof !121

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2781, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %add6, %do.end ], [ %add6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_split_item(ptr noundef %trans, ptr noundef %root, ptr noundef %path, ptr nocapture noundef readonly %new_key, i32 noundef %split_offset) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @setup_leaf_for_split(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i32 noundef 25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call fastcc i32 @split_item(ptr noundef %path, ptr noundef %new_key, i32 noundef %split_offset)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_leaf_for_split(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i32 noundef %ins_len) unnamed_addr #4 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #14
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %2 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %4 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %6 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %5, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %8 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %3, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #14
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %7, align 1
  %11 = call i64 @llvm.bswap.i64(i64 %10) #14
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %1, align 1
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %6, align 8
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %0, align 8
  %16 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %disk_key.i, align 8
  %18 = call i64 @llvm.bswap.i64(i64 %17) #14
  %19 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %14)
  %cmp.not.not = icmp eq i8 %14, 108
  %20 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %14, label %do.body8 [
    i8 -128, label %entry.do.end13_crit_edge
    i8 108, label %entry.do.end13_crit_edge136
  ]

entry.do.end13_crit_edge136:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3574, 0\0A.popsection", ""() #14, !srcloc !141
  unreachable

do.end13:                                         ; preds = %entry.do.end13_crit_edge, %entry.do.end13_crit_edge136
  %call = call i32 @btrfs_leaf_free_space(ptr noundef %3)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %ins_len)
  %cmp14.not = icmp slt i32 %call, %ins_len
  br i1 %cmp14.not, label %if.end17, label %do.end13.cleanup_crit_edge

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end17:                                         ; preds = %do.end13
  %21 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %22, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %23 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %23, i32 noundef 21) #14
  br i1 %cmp.not.not, label %if.then25, label %if.end17.if.end30_crit_edge

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slots, align 4
  %mul.i.i.i126 = mul i32 %25, 25
  %add.i.i.i127 = add i32 %mul.i.i.i126, 101
  %26 = inttoptr i32 %add.i.i.i127 to ptr
  %call.i.i128 = call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %26, i32 noundef 17) #14
  %add = add i32 %call.i.i128, 101
  %27 = inttoptr i32 %add to ptr
  %call.i = call i64 @btrfs_get_64(ptr noundef %3, ptr noundef %27, i32 noundef 45) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end17.if.end30_crit_edge
  %extent_len.0 = phi i64 [ %call.i, %if.then25 ], [ 0, %if.end17.if.end30_crit_edge ]
  call void @btrfs_release_path(ptr noundef %path)
  %keep_locks = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 5
  %28 = ptrtoint ptr %keep_locks to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %keep_locks, align 2
  %bf.set33 = or i8 %bf.load, -64
  store i8 %bf.set33, ptr %keep_locks, align 2
  %call34 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %key, ptr noundef %path, i32 noundef 0, i32 noundef 1)
  %29 = ptrtoint ptr %keep_locks to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load36 = load i8, ptr %keep_locks, align 2
  %bf.clear37 = and i8 %bf.load36, 127
  store i8 %bf.clear37, ptr %keep_locks, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp39 = icmp sgt i32 %call34, 0
  %spec.store.select = select i1 %cmp39, i32 -11, i32 %call34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp43 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp43, label %if.end30.err_crit_edge, label %if.end46

if.end30.err_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end46:                                         ; preds = %if.end30
  %30 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %path, align 4
  %32 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %slots, align 4
  %mul.i.i.i129 = mul i32 %33, 25
  %add.i.i.i130 = add i32 %mul.i.i.i129, 101
  %34 = inttoptr i32 %add.i.i.i130 to ptr
  %call.i.i131 = call i32 @btrfs_get_32(ptr noundef %31, ptr noundef %34, i32 noundef 21) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %call.i.i131)
  %cmp52.not = icmp eq i32 %call.i.i, %call.i.i131
  br i1 %cmp52.not, label %if.end55, label %if.end46.err_crit_edge

if.end46.err_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end55:                                         ; preds = %if.end46
  %35 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %path, align 4
  %call58 = call i32 @btrfs_leaf_free_space(ptr noundef %36)
  call void @__sanitizer_cov_trace_cmp4(i32 %call58, i32 %ins_len)
  %cmp59.not = icmp slt i32 %call58, %ins_len
  br i1 %cmp59.not, label %if.end62, label %if.end55.err_crit_edge

if.end55.err_crit_edge:                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end62:                                         ; preds = %if.end55
  br i1 %cmp.not.not, label %if.then67, label %if.end62.if.end77_crit_edge

if.end62.if.end77_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end77

if.then67:                                        ; preds = %if.end62
  %37 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %slots, align 4
  %mul.i.i.i132 = mul i32 %38, 25
  %add.i.i.i133 = add i32 %mul.i.i.i132, 101
  %39 = inttoptr i32 %add.i.i.i133 to ptr
  %call.i.i134 = call i32 @btrfs_get_32(ptr noundef %31, ptr noundef %39, i32 noundef 17) #14
  %add71 = add i32 %call.i.i134, 101
  %40 = inttoptr i32 %add71 to ptr
  %call.i135 = call i64 @btrfs_get_64(ptr noundef %31, ptr noundef %40, i32 noundef 45) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %extent_len.0, i64 %call.i135)
  %cmp73.not = icmp eq i64 %extent_len.0, %call.i135
  br i1 %cmp73.not, label %if.then67.if.end77_crit_edge, label %if.then67.err_crit_edge

if.then67.err_crit_edge:                          ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.then67.if.end77_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end77

if.end77:                                         ; preds = %if.then67.if.end77_crit_edge, %if.end62.if.end77_crit_edge
  %call78 = call fastcc i32 @split_leaf(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %key, ptr noundef %path, i32 noundef %ins_len, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.err_crit_edge

if.end77.err_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end81:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %keep_locks to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load83 = load i8, ptr %keep_locks, align 2
  %bf.clear84 = and i8 %bf.load83, -65
  store i8 %bf.clear84, ptr %keep_locks, align 2
  call void @btrfs_unlock_up_safe(ptr noundef %path, i32 noundef 1) #14
  br label %cleanup

err:                                              ; preds = %if.end77.err_crit_edge, %if.then67.err_crit_edge, %if.end55.err_crit_edge, %if.end46.err_crit_edge, %if.end30.err_crit_edge
  %ret.0 = phi i32 [ %spec.store.select, %if.end30.err_crit_edge ], [ -11, %if.end46.err_crit_edge ], [ -11, %if.end55.err_crit_edge ], [ -11, %if.then67.err_crit_edge ], [ %call78, %if.end77.err_crit_edge ]
  %42 = ptrtoint ptr %keep_locks to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load87 = load i8, ptr %keep_locks, align 2
  %bf.clear88 = and i8 %bf.load87, -65
  store i8 %bf.clear88, ptr %keep_locks, align 2
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end81, %do.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end81 ], [ 0, %do.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @split_item(ptr nocapture noundef readonly %path, ptr nocapture noundef readonly %new_key, i32 noundef %split_offset) unnamed_addr #4 align 64 {
entry:
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #14
  %0 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 2
  %2 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path, align 4
  %call = tail call i32 @btrfs_leaf_free_space(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call)
  %cmp = icmp ult i32 %call, 25
  br i1 %cmp, label %do.body2, label %do.end7, !prof !121

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3638, 0\0A.popsection", ""() #14, !srcloc !142
  unreachable

do.end7:                                          ; preds = %entry
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %4 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %5, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %6 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = tail call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %6, i32 noundef 17) #14
  %7 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slots, align 4
  %mul.i.i.i117 = mul i32 %8, 25
  %add.i.i.i118 = add i32 %mul.i.i.i117, 101
  %9 = inttoptr i32 %add.i.i.i118 to ptr
  %call.i.i119 = tail call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %9, i32 noundef 21) #14
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call.i.i119, i32 noundef 3136) #20
  %tobool16.not = icmp eq ptr %call9.i, null
  br i1 %tobool16.not, label %do.end7.cleanup_crit_edge, label %if.end18

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %do.end7
  %10 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slots, align 4
  %mul.i.i.i120 = mul i32 %11, 25
  %add.i.i.i121 = add i32 %mul.i.i.i120, 101
  %12 = inttoptr i32 %add.i.i.i121 to ptr
  %call.i.i122 = tail call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %12, i32 noundef 17) #14
  %add = add i32 %call.i.i122, 101
  tail call void @read_extent_buffer(ptr noundef %3, ptr noundef nonnull %call9.i, i32 noundef %add, i32 noundef %call.i.i119) #14
  %13 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %slots, align 4
  %add24 = add i32 %14, 1
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %16) #14
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %3, align 8
  %conv.i = trunc i64 %18 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %19 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %nritems.i, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add24)
  %cmp26.not = icmp eq i32 %21, %add24
  br i1 %cmp26.not, label %if.end18.if.end31_crit_edge, label %if.then27

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %.pre = mul i32 %add24, 25
  %.pre150 = add i32 %.pre, 101
  br label %if.end31

if.then27:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %22 = mul i32 %14, 25
  %add.i = add i32 %22, 151
  %mul.i123 = mul i32 %add24, 25
  %add.i124 = add i32 %mul.i123, 101
  %sub = sub i32 %21, %add24
  %mul = mul i32 %sub, 25
  tail call void @memmove_extent_buffer(ptr noundef %3, i32 noundef %add.i, i32 noundef %add.i124, i32 noundef %mul) #14
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end18.if.end31_crit_edge
  %add.i.i.i126.pre-phi = phi i32 [ %.pre150, %if.end18.if.end31_crit_edge ], [ %add.i124, %if.then27 ]
  %offset.i = getelementptr inbounds %struct.btrfs_key, ptr %new_key, i32 0, i32 2
  %23 = ptrtoint ptr %offset.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %offset.i, align 1
  %25 = tail call i64 @llvm.bswap.i64(i64 %24) #14
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %1, align 1
  %type.i = getelementptr inbounds %struct.btrfs_key, ptr %new_key, i32 0, i32 1
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %type.i, align 1
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %0, align 8
  %30 = ptrtoint ptr %new_key to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %new_key, align 1
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #14
  %33 = ptrtoint ptr %disk_key to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %disk_key, align 8
  call void @write_extent_buffer(ptr noundef %3, ptr noundef nonnull %disk_key, i32 noundef %add.i.i.i126.pre-phi, i32 noundef 17) #14
  %34 = inttoptr i32 %add.i.i.i126.pre-phi to ptr
  call void @btrfs_set_32(ptr noundef %3, ptr noundef %34, i32 noundef 17, i32 noundef %call.i.i) #14
  %sub32 = sub i32 %call.i.i119, %split_offset
  call void @btrfs_set_32(ptr noundef %3, ptr noundef %34, i32 noundef 21, i32 noundef %sub32) #14
  %add33 = sub i32 %call.i.i, %split_offset
  %sub34 = add i32 %add33, %call.i.i119
  call void @btrfs_set_32(ptr noundef %3, ptr noundef %6, i32 noundef 17, i32 noundef %sub34) #14
  call void @btrfs_set_32(ptr noundef %3, ptr noundef %6, i32 noundef 21, i32 noundef %split_offset) #14
  %add35 = add i32 %21, 1
  %35 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pages.i, align 4
  %call.i136 = call ptr @page_address(ptr noundef %36) #14
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %3, align 8
  %conv.i137 = trunc i64 %38 to i32
  %and.i138 = and i32 %conv.i137, 4095
  %add.ptr.i139 = getelementptr i8, ptr %call.i136, i32 %and.i138
  %nritems.i140 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i139, i32 0, i32 7
  %39 = call i32 @llvm.bswap.i32(i32 %add35) #14
  %40 = ptrtoint ptr %nritems.i140 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %nritems.i140, align 1
  %41 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %slots, align 4
  %mul.i.i.i141 = mul i32 %42, 25
  %add.i.i.i142 = add i32 %mul.i.i.i141, 101
  %43 = inttoptr i32 %add.i.i.i142 to ptr
  %call.i.i143 = call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %43, i32 noundef 17) #14
  %add39 = add i32 %call.i.i143, 101
  call void @write_extent_buffer(ptr noundef %3, ptr noundef nonnull %call9.i, i32 noundef %add39, i32 noundef %split_offset) #14
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %split_offset
  %call.i.i146 = call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %34, i32 noundef 17) #14
  %add41 = add i32 %call.i.i146, 101
  call void @write_extent_buffer(ptr noundef %3, ptr noundef %add.ptr, i32 noundef %add41, i32 noundef %sub32) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef %3) #14
  %call44 = call i32 @btrfs_leaf_free_space(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.body53, label %do.end61, !prof !121

do.body53:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3683, 0\0A.popsection", ""() #14, !srcloc !143
  unreachable

do.end61:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call9.i) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end61, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end61 ], [ -12, %do.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_truncate_item(ptr nocapture noundef readonly %path, i32 noundef %new_size, i32 noundef %from_end) local_unnamed_addr #3 align 64 {
entry:
  %token = alloca %struct.btrfs_map_token, align 4
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %token) #14
  %0 = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 2
  %2 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %4 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %5, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %6 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = tail call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %6, i32 noundef 21) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %new_size)
  %cmp = icmp eq i32 %call.i.i, %new_size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %8) #14
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %3, align 8
  %conv.i = trunc i64 %10 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %11 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %nritems.i, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #14
  %14 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages.i, align 4
  %call.i.i137 = tail call ptr @page_address(ptr noundef %15) #14
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %3, align 8
  %conv.i.i = trunc i64 %17 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i137, i32 %and.i.i
  %nritems.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %nritems.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %nritems.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr inbounds %struct.extent_buffer, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fs_info.i, align 8
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %21, i32 0, i32 166
  %22 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nodesize.i.i, align 8
  %sub.i.i = add i32 %23, -101
  br label %leaf_data_end.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %24 = tail call i32 @llvm.bswap.i32(i32 %19) #14
  %25 = mul i32 %24, 25
  %add.i.i.i.i = add i32 %25, 76
  %26 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i.i = tail call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %26, i32 noundef 17) #14
  br label %leaf_data_end.exit

leaf_data_end.exit:                               ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i.i, %if.then.i ], [ %call.i.i.i, %if.end.i ]
  %call.i.i140 = tail call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %6, i32 noundef 17) #14
  %sub = sub i32 %call.i.i, %new_size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5 = icmp slt i32 %5, 0
  br i1 %cmp5, label %do.body8, label %do.body15, !prof !121

do.body8:                                         ; preds = %leaf_data_end.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3751, 0\0A.popsection", ""() #14, !srcloc !144
  unreachable

do.body15:                                        ; preds = %leaf_data_end.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %13)
  %cmp16.not = icmp ult i32 %5, %13
  br i1 %cmp16.not, label %do.end32, label %do.body24, !prof !120

do.body24:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3752, 0\0A.popsection", ""() #14, !srcloc !145
  unreachable

do.end32:                                         ; preds = %do.body15
  %27 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %3, ptr %token, align 4
  %28 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pages.i, align 4
  %call.i142 = tail call ptr @page_address(ptr noundef %29) #14
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i142, ptr %0, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %1, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end32
  %i.0168 = phi i32 [ %5, %do.end32 ], [ %inc, %for.body.for.body_crit_edge ]
  %mul.i.i.i143 = mul i32 %i.0168, 25
  %add.i.i.i144 = add i32 %mul.i.i.i143, 101
  %32 = inttoptr i32 %add.i.i.i144 to ptr
  %call.i.i145 = call i32 @btrfs_get_token_32(ptr noundef nonnull %token, ptr noundef %32, i32 noundef 17) #14
  %add = add i32 %call.i.i145, %sub
  call void @btrfs_set_token_32(ptr noundef nonnull %token, ptr noundef %32, i32 noundef 17, i32 noundef %add) #14
  %inc = add i32 %i.0168, 1
  %exitcond.not = icmp eq i32 %inc, %13
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %from_end)
  %tobool35.not = icmp eq i32 %from_end, 0
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %add37 = add i32 %retval.0.i, 101
  %add38 = add i32 %add37, %sub
  %add40 = sub i32 %new_size, %retval.0.i
  %sub41 = add i32 %add40, %call.i.i140
  call void @memmove_extent_buffer(ptr noundef %3, i32 noundef %add38, i32 noundef %add37, i32 noundef %sub41) #14
  br label %if.end69

if.else:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #14
  %33 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 1
  %34 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 2
  %35 = call ptr @memset(ptr %disk_key, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %3, ptr noundef nonnull %disk_key, i32 noundef %add.i.i.i, i32 noundef 17) #14
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %33, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %37)
  %cmp43 = icmp eq i8 %37, 108
  br i1 %cmp43, label %if.then45, label %if.else.if.end57_crit_edge

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.then45:                                        ; preds = %if.else
  %call.i.i152 = call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %6, i32 noundef 17) #14
  %add47 = sub i32 101, %sub
  %sub48 = add i32 %add47, %call.i.i152
  %38 = inttoptr i32 %sub48 to ptr
  %call.i153 = call zeroext i8 @btrfs_get_8(ptr noundef %3, ptr noundef %38, i32 noundef 20) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i153)
  %cmp51 = icmp eq i8 %call.i153, 0
  br i1 %cmp51, label %if.then53, label %if.then45.if.end57_crit_edge

if.then45.if.end57_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.then53:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i156 = call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %6, i32 noundef 17) #14
  %add55 = add i32 %call.i.i156, 101
  call void @memmove_extent_buffer(ptr noundef %3, i32 noundef %add55, i32 noundef %sub48, i32 noundef 21) #14
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.then45.if.end57_crit_edge, %if.else.if.end57_crit_edge
  %add58 = add i32 %retval.0.i, 101
  %add59 = add i32 %add58, %sub
  %sub61 = sub i32 %call.i.i140, %retval.0.i
  call void @memmove_extent_buffer(ptr noundef %3, i32 noundef %add59, i32 noundef %add58, i32 noundef %sub61) #14
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %34, align 1
  %41 = call i64 @llvm.bswap.i64(i64 %40) #14
  %conv63 = zext i32 %sub to i64
  %add64 = add i64 %41, %conv63
  %42 = call i64 @llvm.bswap.i64(i64 %add64) #14
  %43 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %34, align 1
  call void @write_extent_buffer(ptr noundef %3, ptr noundef nonnull %disk_key, i32 noundef %add.i.i.i, i32 noundef 17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp65 = icmp eq i32 %5, 0
  br i1 %cmp65, label %if.end57.for.body.i_crit_edge, label %if.end57.if.end68_crit_edge

if.end57.if.end68_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.end57.for.body.i_crit_edge:                    ; preds = %if.end57
  br label %for.body.i

for.body.i:                                       ; preds = %do.end14.i.for.body.i_crit_edge, %if.end57.for.body.i_crit_edge
  %i.034.i = phi i32 [ %inc.i, %do.end14.i.for.body.i_crit_edge ], [ 1, %if.end57.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %i.034.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [8 x ptr], ptr %path, i32 0, i32 %i.034.i
  %46 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %for.body.i.if.end68_crit_edge, label %if.end.i162

for.body.i.if.end68_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.end.i162:                                      ; preds = %for.body.i
  %call.i161 = call i32 @btrfs_tree_mod_log_insert_key(ptr noundef nonnull %47, i32 noundef %45, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %cmp4.i = icmp slt i32 %call.i161, 0
  br i1 %cmp4.i, label %do.body8.i, label %do.end14.i, !prof !121

do.body8.i:                                       ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2303, 0\0A.popsection", ""() #14, !srcloc !140
  unreachable

do.end14.i:                                       ; preds = %if.end.i162
  %mul.i.i.i163 = mul i32 %45, 33
  %add.i.i.i164 = add i32 %mul.i.i.i163, 101
  call void @write_extent_buffer(ptr noundef nonnull %47, ptr noundef nonnull %disk_key, i32 noundef %add.i.i.i164, i32 noundef 17) #14
  %48 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx1.i, align 4
  call void @btrfs_mark_buffer_dirty(ptr noundef %49) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp17.not.i = icmp ne i32 %45, 0
  %inc.i = add nuw nsw i32 %i.034.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  %or.cond.i = select i1 %cmp17.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %do.end14.i.if.end68_crit_edge, label %do.end14.i.for.body.i_crit_edge

do.end14.i.for.body.i_crit_edge:                  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.end14.i.if.end68_crit_edge:                    ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.end68:                                         ; preds = %do.end14.i.if.end68_crit_edge, %for.body.i.if.end68_crit_edge, %if.end57.if.end68_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #14
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then36
  call void @btrfs_set_32(ptr noundef %3, ptr noundef %6, i32 noundef 21, i32 noundef %new_size) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef %3) #14
  %call70 = call i32 @btrfs_leaf_free_space(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_print_leaf(ptr noundef %3) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3811, 0\0A.popsection", ""() #14, !srcloc !146
  unreachable

cleanup:                                          ; preds = %if.end69.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %token) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memmove_extent_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_extend_item(ptr nocapture noundef readonly %path, i32 noundef %data_size) local_unnamed_addr #3 align 64 {
entry:
  %token = alloca %struct.btrfs_map_token, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %token) #14
  %0 = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 2
  %2 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %5) #14
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %3, align 8
  %conv.i = trunc i64 %7 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %8 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %nritems.i, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #14
  %11 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %12) #14
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %3, align 8
  %conv.i.i = trunc i64 %14 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %nritems.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %nritems.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %nritems.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr inbounds %struct.extent_buffer, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fs_info.i, align 8
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %18, i32 0, i32 166
  %19 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nodesize.i.i, align 8
  %sub.i.i = add i32 %20, -101
  br label %leaf_data_end.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %21 = tail call i32 @llvm.bswap.i32(i32 %16) #14
  %22 = mul i32 %21, 25
  %add.i.i.i.i = add i32 %22, 76
  %23 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i.i = tail call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %23, i32 noundef 17) #14
  br label %leaf_data_end.exit

leaf_data_end.exit:                               ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i.i, %if.then.i ], [ %call.i.i.i, %if.end.i ]
  %call2 = tail call i32 @btrfs_leaf_free_space(ptr noundef %3)
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %data_size)
  %cmp = icmp ult i32 %call2, %data_size
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %leaf_data_end.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_print_leaf(ptr noundef %3) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3836, 0\0A.popsection", ""() #14, !srcloc !147
  unreachable

if.end:                                           ; preds = %leaf_data_end.exit
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %24 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slots, align 4
  %mul.i.i.i.i = mul i32 %25, 25
  %add.i.i.i.i78 = add i32 %mul.i.i.i.i, 101
  %26 = inttoptr i32 %add.i.i.i.i78 to ptr
  %call.i.i.i79 = tail call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %26, i32 noundef 17) #14
  %call.i.i6.i = tail call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %26, i32 noundef 21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp9 = icmp slt i32 %25, 0
  br i1 %cmp9, label %do.body12, label %do.end20, !prof !121

do.body12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3841, 0\0A.popsection", ""() #14, !srcloc !148
  unreachable

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %10)
  %cmp21.not = icmp ult i32 %25, %10
  br i1 %cmp21.not, label %if.end29, label %if.then22

if.then22:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_print_leaf(ptr noundef %3) #14
  %fs_info = getelementptr inbounds %struct.extent_buffer, ptr %3, i32 0, i32 3
  %27 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fs_info, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %28, ptr noundef nonnull @.str.15, i32 noundef %25, i32 noundef %10) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3846, 0\0A.popsection", ""() #14, !srcloc !149
  unreachable

if.end29:                                         ; preds = %do.end20
  %29 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %3, ptr %token, align 4
  %30 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pages.i, align 4
  %call.i81 = tail call ptr @page_address(ptr noundef %31) #14
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i81, ptr %0, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %1, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end29
  %i.091 = phi i32 [ %25, %if.end29 ], [ %inc, %for.body.for.body_crit_edge ]
  %mul.i.i.i = mul i32 %i.091, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %34 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i82 = call i32 @btrfs_get_token_32(ptr noundef nonnull %token, ptr noundef %34, i32 noundef 17) #14
  %sub = sub i32 %call.i.i82, %data_size
  call void @btrfs_set_token_32(ptr noundef nonnull %token, ptr noundef %34, i32 noundef 17, i32 noundef %sub) #14
  %inc = add i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  %add = add i32 %retval.0.i, 101
  %sub32 = sub i32 %add, %data_size
  %add.i = sub i32 %call.i.i.i79, %retval.0.i
  %sub34 = add i32 %add.i, %call.i.i6.i
  call void @memmove_extent_buffer(ptr noundef %3, i32 noundef %sub32, i32 noundef %add, i32 noundef %sub34) #14
  %call.i.i87 = call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %26, i32 noundef 21) #14
  %add36 = add i32 %call.i.i87, %data_size
  call void @btrfs_set_32(ptr noundef %3, ptr noundef %26, i32 noundef 21, i32 noundef %add36) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef %3) #14
  %call37 = call i32 @btrfs_leaf_free_space(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end46

if.then39:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_print_leaf(ptr noundef %3) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3873, 0\0A.popsection", ""() #14, !srcloc !150
  unreachable

if.end46:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %token) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_setup_item_for_insert(ptr nocapture noundef readonly %root, ptr noundef %path, ptr noundef %key, i32 noundef %data_size) local_unnamed_addr #3 align 64 {
entry:
  %data_size.addr = alloca i32, align 4
  %batch = alloca %struct.btrfs_item_batch, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data_size.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data_size, ptr %data_size.addr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch) #14
  %1 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch, i32 0, i32 1
  %2 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch, i32 0, i32 2
  %3 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch, i32 0, i32 3
  %4 = ptrtoint ptr %batch to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %key, ptr %batch, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data_size.addr, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %data_size, ptr %2, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %3, align 4
  call fastcc void @setup_items_for_insert(ptr noundef %root, ptr noundef %path, ptr noundef nonnull %batch)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_items_for_insert(ptr nocapture noundef readonly %root, ptr noundef %path, ptr nocapture noundef readonly %batch) unnamed_addr #3 align 64 {
entry:
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  %token = alloca %struct.btrfs_map_token, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #14
  %2 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 2
  %4 = call ptr @memset(ptr %disk_key, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %token) #14
  %5 = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 1
  %6 = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 2
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %7 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %batch, align 4
  %offset.i = getelementptr inbounds %struct.btrfs_key, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %offset.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %offset.i, align 1
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #14
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %3, align 1
  %type.i = getelementptr inbounds %struct.btrfs_key, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type.i, align 1
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %2, align 8
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %10, align 1
  %20 = tail call i64 @llvm.bswap.i64(i64 %19) #14
  %21 = ptrtoint ptr %disk_key to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %disk_key, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %do.end14.i.for.body.i_crit_edge, %if.then
  %i.034.i = phi i32 [ 1, %if.then ], [ %inc.i, %do.end14.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %i.034.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [8 x ptr], ptr %path, i32 0, i32 %i.034.i
  %24 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %for.body.i.if.end_crit_edge, label %if.end.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %for.body.i
  %call.i = call i32 @btrfs_tree_mod_log_insert_key(ptr noundef nonnull %25, i32 noundef %23, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %do.body8.i, label %do.end14.i, !prof !121

do.body8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2303, 0\0A.popsection", ""() #14, !srcloc !140
  unreachable

do.end14.i:                                       ; preds = %if.end.i
  %mul.i.i.i = mul i32 %23, 33
  %add.i.i.i = add i32 %mul.i.i.i, 101
  call void @write_extent_buffer(ptr noundef nonnull %25, ptr noundef nonnull %disk_key, i32 noundef %add.i.i.i, i32 noundef 17) #14
  %26 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx1.i, align 4
  call void @btrfs_mark_buffer_dirty(ptr noundef %27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp17.not.i = icmp ne i32 %23, 0
  %inc.i = add nuw nsw i32 %i.034.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  %or.cond.i = select i1 %cmp17.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %do.end14.i.if.end_crit_edge, label %do.end14.i.for.body.i_crit_edge

do.end14.i.for.body.i_crit_edge:                  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.end14.i.if.end_crit_edge:                      ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.end14.i.if.end_crit_edge, %for.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @btrfs_unlock_up_safe(ptr noundef %path, i32 noundef 1) #14
  %28 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %path, align 4
  %30 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %slots, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %29, i32 0, i32 12
  %32 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pages.i, align 4
  %call.i133 = call ptr @page_address(ptr noundef %33) #14
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %29, align 8
  %conv.i = trunc i64 %35 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i133, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %36 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %nritems.i, align 1
  %38 = call i32 @llvm.bswap.i32(i32 %37) #14
  %39 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pages.i, align 4
  %call.i.i = call ptr @page_address(ptr noundef %40) #14
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %29, align 8
  %conv.i.i = trunc i64 %42 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %nritems.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 7
  %43 = ptrtoint ptr %nritems.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %nritems.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i = icmp eq i32 %44, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i134

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr inbounds %struct.extent_buffer, ptr %29, i32 0, i32 3
  %45 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fs_info.i, align 8
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %46, i32 0, i32 166
  %47 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nodesize.i.i, align 8
  %sub.i.i = add i32 %48, -101
  br label %leaf_data_end.exit

if.end.i134:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %49 = call i32 @llvm.bswap.i32(i32 %44) #14
  %50 = mul i32 %49, 25
  %add.i.i.i.i = add i32 %50, 76
  %51 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i.i = call i32 @btrfs_get_32(ptr noundef %29, ptr noundef %51, i32 noundef 17) #14
  br label %leaf_data_end.exit

leaf_data_end.exit:                               ; preds = %if.end.i134, %if.then.i
  %retval.0.i = phi i32 [ %sub.i.i, %if.then.i ], [ %call.i.i.i, %if.end.i134 ]
  %total_data_size = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch, i32 0, i32 2
  %52 = ptrtoint ptr %total_data_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %total_data_size, align 4
  %nr = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch, i32 0, i32 3
  %54 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr, align 4
  %mul = mul i32 %55, 25
  %add = add i32 %mul, %53
  %call7 = call i32 @btrfs_leaf_free_space(ptr noundef %29)
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %add)
  %cmp8 = icmp ult i32 %call7, %add
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %leaf_data_end.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_print_leaf(ptr noundef %29) #14
  %call10 = call i32 @btrfs_leaf_free_space(ptr noundef %29)
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef %add, i32 noundef %call10) #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3921, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

if.end14:                                         ; preds = %leaf_data_end.exit
  %56 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %29, ptr %token, align 4
  %57 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pages.i, align 4
  %call.i136 = call ptr @page_address(ptr noundef %58) #14
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i136, ptr %5, align 4
  %60 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %31)
  %cmp15.not = icmp eq i32 %38, %31
  br i1 %cmp15.not, label %if.end14.if.end41_crit_edge, label %if.then16

if.end14.if.end41_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then16:                                        ; preds = %if.end14
  %mul.i.i.i.i = mul i32 %31, 25
  %add.i.i.i.i138 = add i32 %mul.i.i.i.i, 101
  %61 = inttoptr i32 %add.i.i.i.i138 to ptr
  %call.i.i.i139 = call i32 @btrfs_get_32(ptr noundef %29, ptr noundef %61, i32 noundef 17) #14
  %call.i.i6.i = call i32 @btrfs_get_32(ptr noundef %29, ptr noundef %61, i32 noundef 21) #14
  %add.i = add i32 %call.i.i6.i, %call.i.i.i139
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %retval.0.i)
  %cmp18 = icmp ult i32 %add.i, %retval.0.i
  br i1 %cmp18, label %if.then19, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then16
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %31)
  %cmp27164 = icmp ugt i32 %38, %31
  br i1 %cmp27164, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_print_leaf(ptr noundef %29) #14
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %31, i32 noundef %add.i, i32 noundef %retval.0.i) #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3933, 0\0A.popsection", ""() #14, !srcloc !152
  unreachable

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0165 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %31, %for.cond.preheader.for.body_crit_edge ]
  %mul.i.i.i140 = mul i32 %i.0165, 25
  %add.i.i.i141 = add i32 %mul.i.i.i140, 101
  %62 = inttoptr i32 %add.i.i.i141 to ptr
  %call.i.i142 = call i32 @btrfs_get_token_32(ptr noundef nonnull %token, ptr noundef %62, i32 noundef 17) #14
  %63 = ptrtoint ptr %total_data_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %total_data_size, align 4
  %sub = sub i32 %call.i.i142, %64
  call void @btrfs_set_token_32(ptr noundef nonnull %token, ptr noundef %62, i32 noundef 17, i32 noundef %sub) #14
  %inc = add i32 %i.0165, 1
  %exitcond.not = icmp eq i32 %inc, %38
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %65 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nr, align 4
  %add31 = add i32 %66, %31
  %mul.i = mul i32 %add31, 25
  %add.i145 = add i32 %mul.i, 101
  %sub34 = sub i32 %38, %31
  %mul35 = mul i32 %sub34, 25
  call void @memmove_extent_buffer(ptr noundef %29, i32 noundef %add.i145, i32 noundef %add.i.i.i.i138, i32 noundef %mul35) #14
  %add36 = add i32 %retval.0.i, 101
  %67 = ptrtoint ptr %total_data_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %total_data_size, align 4
  %sub38 = sub i32 %add36, %68
  %sub40 = sub i32 %add.i, %retval.0.i
  call void @memmove_extent_buffer(ptr noundef %29, i32 noundef %sub38, i32 noundef %add36, i32 noundef %sub40) #14
  br label %if.end41

if.end41:                                         ; preds = %for.end, %if.end14.if.end41_crit_edge
  %data_end.0 = phi i32 [ %add.i, %for.end ], [ %retval.0.i, %if.end14.if.end41_crit_edge ]
  %69 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp44166 = icmp sgt i32 %70, 0
  br i1 %cmp44166, label %for.body45.lr.ph, label %if.end41.for.end57_crit_edge

if.end41.for.end57_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end57

for.body45.lr.ph:                                 ; preds = %if.end41
  %data_sizes = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch, i32 0, i32 1
  br label %for.body45

for.body45:                                       ; preds = %for.body45.for.body45_crit_edge, %for.body45.lr.ph
  %data_end.1168 = phi i32 [ %data_end.0, %for.body45.lr.ph ], [ %sub50, %for.body45.for.body45_crit_edge ]
  %i.1167 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc56, %for.body45.for.body45_crit_edge ]
  %71 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %batch, align 4
  %arrayidx47 = getelementptr %struct.btrfs_key, ptr %72, i32 %i.1167
  %offset.i148 = getelementptr %struct.btrfs_key, ptr %72, i32 %i.1167, i32 2
  %73 = ptrtoint ptr %offset.i148 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 8)
  %74 = load i64, ptr %offset.i148, align 1
  %75 = call i64 @llvm.bswap.i64(i64 %74) #14
  %76 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 8)
  store i64 %75, ptr %3, align 1
  %type.i150 = getelementptr %struct.btrfs_key, ptr %72, i32 %i.1167, i32 1
  %77 = ptrtoint ptr %type.i150 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %type.i150, align 1
  %79 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %2, align 8
  %80 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 8)
  %81 = load i64, ptr %arrayidx47, align 1
  %82 = call i64 @llvm.bswap.i64(i64 %81) #14
  %83 = ptrtoint ptr %disk_key to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %disk_key, align 8
  %add48 = add i32 %i.1167, %31
  %mul.i.i.i152 = mul i32 %add48, 25
  %add.i.i.i153 = add i32 %mul.i.i.i152, 101
  call void @write_extent_buffer(ptr noundef %29, ptr noundef nonnull %disk_key, i32 noundef %add.i.i.i153, i32 noundef 17) #14
  %84 = ptrtoint ptr %data_sizes to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data_sizes, align 4
  %arrayidx49 = getelementptr i32, ptr %85, i32 %i.1167
  %86 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx49, align 4
  %sub50 = sub i32 %data_end.1168, %87
  %88 = inttoptr i32 %add.i.i.i153 to ptr
  call void @btrfs_set_token_32(ptr noundef nonnull %token, ptr noundef %88, i32 noundef 17, i32 noundef %sub50) #14
  %89 = ptrtoint ptr %data_sizes to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data_sizes, align 4
  %arrayidx54 = getelementptr i32, ptr %90, i32 %i.1167
  %91 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx54, align 4
  call void @btrfs_set_token_32(ptr noundef nonnull %token, ptr noundef %88, i32 noundef 21, i32 noundef %92) #14
  %inc56 = add nuw nsw i32 %i.1167, 1
  %93 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nr, align 4
  %cmp44 = icmp slt i32 %inc56, %94
  br i1 %cmp44, label %for.body45.for.body45_crit_edge, label %for.body45.for.end57_crit_edge

for.body45.for.end57_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end57

for.body45.for.body45_crit_edge:                  ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body45

for.end57:                                        ; preds = %for.body45.for.end57_crit_edge, %if.end41.for.end57_crit_edge
  %.lcssa = phi i32 [ %70, %if.end41.for.end57_crit_edge ], [ %94, %for.body45.for.end57_crit_edge ]
  %add59 = add i32 %.lcssa, %38
  %95 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pages.i, align 4
  %call.i159 = call ptr @page_address(ptr noundef %96) #14
  %97 = ptrtoint ptr %29 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %29, align 8
  %conv.i160 = trunc i64 %98 to i32
  %and.i161 = and i32 %conv.i160, 4095
  %add.ptr.i162 = getelementptr i8, ptr %call.i159, i32 %and.i161
  %nritems.i163 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i162, i32 0, i32 7
  %99 = call i32 @llvm.bswap.i32(i32 %add59) #14
  %100 = ptrtoint ptr %nritems.i163 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 %99, ptr %nritems.i163, align 1
  call void @btrfs_mark_buffer_dirty(ptr noundef %29) #14
  %call60 = call i32 @btrfs_leaf_free_space(ptr noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then62, label %if.end69

if.then62:                                        ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_print_leaf(ptr noundef %29) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3973, 0\0A.popsection", ""() #14, !srcloc !153
  unreachable

if.end69:                                         ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %token) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %root, ptr noundef %path, ptr nocapture noundef readonly %batch) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %total_data_size = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch, i32 0, i32 2
  %0 = ptrtoint ptr %total_data_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total_data_size, align 4
  %nr = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch, i32 0, i32 3
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  %mul = mul i32 %3, 25
  %add = add i32 %mul, %1
  %4 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %batch, align 4
  %call = tail call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef %5, ptr noundef %path, i32 noundef %add, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %6 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp slt i32 %7, 0
  br i1 %cmp5, label %do.body8, label %do.end14, !prof !121

do.body8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4021, 0\0A.popsection", ""() #14, !srcloc !154
  unreachable

do.end14:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @setup_items_for_insert(ptr noundef %root, ptr noundef %path, ptr noundef %batch)
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end14 ], [ -17, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_insert_item(ptr noundef %trans, ptr noundef %root, ptr noundef %cpu_key, ptr noundef %data, i32 noundef %data_size) local_unnamed_addr #3 align 64 {
entry:
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_path_cachep to i32))
  %0 = load ptr, ptr @btrfs_path_cachep, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3392) #14
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %1 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %data_size, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #14
  %2 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  %5 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cpu_key, ptr %batch.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data_size.addr.i, ptr %2, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %data_size, ptr %3, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %4, align 4
  %add.i.i = add i32 %data_size, 25
  %call.i.i18 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef %cpu_key, ptr noundef nonnull %call.i.i, i32 noundef %add.i.i, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %cmp.i.i = icmp eq i32 %call.i.i18, 0
  br i1 %cmp.i.i, label %if.end.btrfs_insert_empty_item.exit.thread_crit_edge, label %if.end.i.i

if.end.btrfs_insert_empty_item.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_insert_empty_item.exit.thread

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %cmp1.i.i = icmp slt i32 %call.i.i18, 0
  br i1 %cmp1.i.i, label %if.end.i.i.btrfs_insert_empty_item.exit.thread_crit_edge, label %if.end3.i.i

if.end.i.i.btrfs_insert_empty_item.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_insert_empty_item.exit.thread

if.end3.i.i:                                      ; preds = %if.end.i.i
  %slots.i.i = getelementptr inbounds %struct.btrfs_path, ptr %call.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slots.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5.i.i = icmp slt i32 %10, 0
  br i1 %cmp5.i.i, label %do.body8.i.i, label %if.then3, !prof !121

do.body8.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4021, 0\0A.popsection", ""() #14, !srcloc !154
  unreachable

btrfs_insert_empty_item.exit.thread:              ; preds = %if.end.i.i.btrfs_insert_empty_item.exit.thread_crit_edge, %if.end.btrfs_insert_empty_item.exit.thread_crit_edge
  %retval.0.i.i.ph = phi i32 [ %call.i.i18, %if.end.i.i.btrfs_insert_empty_item.exit.thread_crit_edge ], [ -17, %if.end.btrfs_insert_empty_item.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  br label %btrfs_free_path.exit

if.then3:                                         ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @setup_items_for_insert(ptr noundef %root, ptr noundef nonnull %call.i.i, ptr noundef nonnull %batch.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i.i, align 8
  %13 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %slots.i.i, align 8
  %mul.i.i.i = mul i32 %14, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %15 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i19 = call i32 @btrfs_get_32(ptr noundef %12, ptr noundef %15, i32 noundef 17) #14
  %add = add i32 %call.i.i19, 101
  call void @write_extent_buffer(ptr noundef %12, ptr noundef %data, i32 noundef %add, i32 noundef %data_size) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef %12) #14
  br label %btrfs_free_path.exit

btrfs_free_path.exit:                             ; preds = %if.then3, %btrfs_insert_empty_item.exit.thread
  %retval.0.i.i22 = phi i32 [ %retval.0.i.i.ph, %btrfs_insert_empty_item.exit.thread ], [ 0, %if.then3 ]
  call void @btrfs_release_path(ptr noundef nonnull %call.i.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btrfs_path_cachep to i32))
  %16 = load ptr, ptr @btrfs_path_cachep, align 4
  call void @kmem_cache_free(ptr noundef %16, ptr noundef nonnull %call.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %btrfs_free_path.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i22, %btrfs_free_path.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_duplicate_item(ptr noundef %trans, ptr noundef %root, ptr noundef %path, ptr noundef %new_key) local_unnamed_addr #3 align 64 {
entry:
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %3, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %4 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = tail call i32 @btrfs_get_32(ptr noundef %1, ptr noundef %4, i32 noundef 21) #14
  %add = add i32 %call.i.i, 25
  %call2 = tail call fastcc i32 @setup_leaf_for_split(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %slots, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %7 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i.i, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #14
  %8 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  %11 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %new_key, ptr %batch.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data_size.addr.i, ptr %8, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i.i, ptr %9, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %10, align 4
  call fastcc void @setup_items_for_insert(ptr noundef %root, ptr noundef %path, ptr noundef nonnull %batch.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  %15 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %path, align 4
  %17 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slots, align 4
  %mul.i.i.i31 = mul i32 %18, 25
  %add.i.i.i32 = add i32 %mul.i.i.i31, 101
  %19 = inttoptr i32 %add.i.i.i32 to ptr
  %call.i.i33 = call i32 @btrfs_get_32(ptr noundef %16, ptr noundef %19, i32 noundef 17) #14
  %add10 = add i32 %call.i.i33, 101
  %20 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slots, align 4
  %22 = mul i32 %21, 25
  %add.i.i.i35 = add i32 %22, 76
  %23 = inttoptr i32 %add.i.i.i35 to ptr
  %call.i.i36 = call i32 @btrfs_get_32(ptr noundef %16, ptr noundef %23, i32 noundef 17) #14
  %add14 = add i32 %call.i.i36, 101
  call void @memcpy_extent_buffer(ptr noundef %16, i32 noundef %add10, i32 noundef %add14, i32 noundef %call.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memcpy_extent_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i32 noundef %slot, i32 noundef %nr) local_unnamed_addr #3 align 64 {
entry:
  %token = alloca %struct.btrfs_map_token, align 4
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %2 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path, align 4
  %add = add i32 %nr, %slot
  %4 = mul i32 %add, 25
  %add.i.i.i = add i32 %4, 76
  %5 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i153 = tail call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %5, i32 noundef 17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp194 = icmp sgt i32 %nr, 0
  br i1 %cmp194, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0196 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %dsize.0195 = phi i32 [ %add4, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add2 = add i32 %i.0196, %slot
  %mul.i.i.i154 = mul i32 %add2, 25
  %add.i.i.i155 = add i32 %mul.i.i.i154, 101
  %6 = inttoptr i32 %add.i.i.i155 to ptr
  %call.i.i156 = tail call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %6, i32 noundef 21) #14
  %add4 = add i32 %call.i.i156, %dsize.0195
  %inc = add nuw nsw i32 %i.0196, 1
  %exitcond.not = icmp eq i32 %inc, %nr
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %dsize.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add4, %for.body.for.end_crit_edge ]
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %8) #14
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %3, align 8
  %conv.i = trunc i64 %10 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %11 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %nritems.i, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp7.not = icmp eq i32 %13, %add
  br i1 %cmp7.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %for.end
  %14 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages.i, align 4
  %call.i.i157 = tail call ptr @page_address(ptr noundef %15) #14
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %3, align 8
  %conv.i.i = trunc i64 %17 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i157, i32 %and.i.i
  %nritems.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %nritems.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %nritems.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr inbounds %struct.extent_buffer, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fs_info.i, align 8
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %21, i32 0, i32 166
  %22 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nodesize.i.i, align 8
  %sub.i.i = add i32 %23, -101
  br label %leaf_data_end.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %24 = tail call i32 @llvm.bswap.i32(i32 %19) #14
  %25 = mul i32 %24, 25
  %add.i.i.i.i = add i32 %25, 76
  %26 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i.i = tail call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %26, i32 noundef 17) #14
  br label %leaf_data_end.exit

leaf_data_end.exit:                               ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i.i, %if.then.i ], [ %call.i.i.i, %if.end.i ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %token) #14
  %27 = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 1
  %28 = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 2
  %add9 = add i32 %retval.0.i, 101
  %add10 = add i32 %add9, %dsize.0.lcssa
  %sub12 = sub i32 %call.i.i153, %retval.0.i
  tail call void @memmove_extent_buffer(ptr noundef %3, i32 noundef %add10, i32 noundef %add9, i32 noundef %sub12) #14
  %29 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %3, ptr %token, align 4
  %30 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pages.i, align 4
  %call.i159 = tail call ptr @page_address(ptr noundef %31) #14
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i159, ptr %27, align 4
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp15197 = icmp ugt i32 %13, %add
  br i1 %cmp15197, label %leaf_data_end.exit.for.body16_crit_edge, label %leaf_data_end.exit.for.end21_crit_edge

leaf_data_end.exit.for.end21_crit_edge:           ; preds = %leaf_data_end.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end21

leaf_data_end.exit.for.body16_crit_edge:          ; preds = %leaf_data_end.exit
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %leaf_data_end.exit.for.body16_crit_edge
  %i.1198 = phi i32 [ %inc20, %for.body16.for.body16_crit_edge ], [ %add, %leaf_data_end.exit.for.body16_crit_edge ]
  %mul.i.i.i160 = mul i32 %i.1198, 25
  %add.i.i.i161 = add i32 %mul.i.i.i160, 101
  %34 = inttoptr i32 %add.i.i.i161 to ptr
  %call.i.i162 = call i32 @btrfs_get_token_32(ptr noundef nonnull %token, ptr noundef %34, i32 noundef 17) #14
  %add18 = add i32 %call.i.i162, %dsize.0.lcssa
  call void @btrfs_set_token_32(ptr noundef nonnull %token, ptr noundef %34, i32 noundef 17, i32 noundef %add18) #14
  %inc20 = add nuw i32 %i.1198, 1
  %cmp15 = icmp ult i32 %inc20, %13
  br i1 %cmp15, label %for.body16.for.body16_crit_edge, label %for.body16.for.end21_crit_edge

for.body16.for.end21_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end21

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16

for.end21:                                        ; preds = %for.body16.for.end21_crit_edge, %leaf_data_end.exit.for.end21_crit_edge
  %mul.i = mul i32 %slot, 25
  %add.i = add i32 %mul.i, 101
  %add.i166 = add i32 %4, 101
  %sub26 = sub i32 %13, %add
  %mul = mul i32 %sub26, 25
  call void @memmove_extent_buffer(ptr noundef %3, i32 noundef %add.i, i32 noundef %add.i166, i32 noundef %mul) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %token) #14
  br label %if.end

if.end:                                           ; preds = %for.end21, %for.end.if.end_crit_edge
  %sub27 = sub i32 %13, %nr
  %35 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pages.i, align 4
  %call.i168 = call ptr @page_address(ptr noundef %36) #14
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %3, align 8
  %conv.i169 = trunc i64 %38 to i32
  %and.i170 = and i32 %conv.i169, 4095
  %add.ptr.i171 = getelementptr i8, ptr %call.i168, i32 %and.i170
  %nritems.i172 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i171, i32 0, i32 7
  %39 = call i32 @llvm.bswap.i32(i32 %sub27) #14
  %40 = ptrtoint ptr %nritems.i172 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %nritems.i172, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %nr)
  %cmp29 = icmp eq i32 %13, %nr
  br i1 %cmp29, label %if.then30, label %if.else34

if.then30:                                        ; preds = %if.end
  %node = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 1
  %41 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %node, align 4
  %cmp31 = icmp eq ptr %3, %42
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pages.i, align 4
  %call.i174 = call ptr @page_address(ptr noundef %44) #14
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %3, align 8
  %conv.i175 = trunc i64 %46 to i32
  %and.i176 = and i32 %conv.i175, 4095
  %add.ptr.i177 = getelementptr i8, ptr %call.i174, i32 %and.i176
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i177, i32 0, i32 8
  %47 = ptrtoint ptr %level.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %level.i, align 1
  br label %if.end75

if.else:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_clean_tree_block(ptr noundef %3) #14
  call fastcc void @btrfs_del_leaf(ptr noundef %trans, ptr noundef %root, ptr noundef %path, ptr noundef %3)
  br label %if.end75

if.else34:                                        ; preds = %if.end
  %call35 = call fastcc i32 @leaf_space_used(ptr noundef %3, i32 noundef 0, i32 noundef %sub27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp36 = icmp eq i32 %slot, 0
  br i1 %cmp36, label %if.then37, label %if.else34.if.end38_crit_edge

if.else34.if.end38_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then37:                                        ; preds = %if.else34
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #14
  %48 = call ptr @memset(ptr %disk_key, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %3, ptr noundef nonnull %disk_key, i32 noundef 101, i32 noundef 17) #14
  br label %for.body.i

for.body.i:                                       ; preds = %do.end14.i.for.body.i_crit_edge, %if.then37
  %i.034.i = phi i32 [ 1, %if.then37 ], [ %inc.i, %do.end14.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %i.034.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [8 x ptr], ptr %path, i32 0, i32 %i.034.i
  %51 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %for.body.i.fixup_low_keys.exit_crit_edge, label %if.end.i179

for.body.i.fixup_low_keys.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fixup_low_keys.exit

if.end.i179:                                      ; preds = %for.body.i
  %call.i178 = call i32 @btrfs_tree_mod_log_insert_key(ptr noundef nonnull %52, i32 noundef %50, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %cmp4.i = icmp slt i32 %call.i178, 0
  br i1 %cmp4.i, label %do.body8.i, label %do.end14.i, !prof !121

do.body8.i:                                       ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2303, 0\0A.popsection", ""() #14, !srcloc !140
  unreachable

do.end14.i:                                       ; preds = %if.end.i179
  %mul.i.i.i180 = mul i32 %50, 33
  %add.i.i.i181 = add i32 %mul.i.i.i180, 101
  call void @write_extent_buffer(ptr noundef nonnull %52, ptr noundef nonnull %disk_key, i32 noundef %add.i.i.i181, i32 noundef 17) #14
  %53 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx1.i, align 4
  call void @btrfs_mark_buffer_dirty(ptr noundef %54) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp17.not.i = icmp ne i32 %50, 0
  %inc.i = add nuw nsw i32 %i.034.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  %or.cond.i = select i1 %cmp17.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %do.end14.i.fixup_low_keys.exit_crit_edge, label %do.end14.i.for.body.i_crit_edge

do.end14.i.for.body.i_crit_edge:                  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.end14.i.fixup_low_keys.exit_crit_edge:         ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fixup_low_keys.exit

fixup_low_keys.exit:                              ; preds = %do.end14.i.fixup_low_keys.exit_crit_edge, %for.body.i.fixup_low_keys.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #14
  br label %if.end38

if.end38:                                         ; preds = %fixup_low_keys.exit, %if.else34.if.end38_crit_edge
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %55 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nodesize.i, align 8
  %sub.i = add i32 %56, -101
  %div = udiv i32 %sub.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %call35, i32 %div)
  %cmp40 = icmp ult i32 %call35, %div
  br i1 %cmp40, label %if.then41, label %if.else73

if.then41:                                        ; preds = %if.end38
  %arrayidx42 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx42, align 4
  %refs = getelementptr inbounds %struct.extent_buffer, ptr %3, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  %59 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #14, !srcloc !124
  %call43 = call fastcc i32 @push_leaf_left(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call43)
  %cmp44 = icmp sgt i32 %call43, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call43)
  %cmp45.not = icmp eq i32 %call43, -28
  %or.cond = or i1 %cmp44, %cmp45.not
  %ret.0 = select i1 %or.cond, i32 0, i32 %call43
  %60 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %path, align 4
  %cmp50 = icmp eq ptr %61, %3
  br i1 %cmp50, label %land.lhs.true51, label %if.then41.if.end60_crit_edge

if.then41.if.end60_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

land.lhs.true51:                                  ; preds = %if.then41
  %62 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pages.i, align 4
  %call.i183 = call ptr @page_address(ptr noundef %63) #14
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %3, align 8
  %conv.i184 = trunc i64 %65 to i32
  %and.i185 = and i32 %conv.i184, 4095
  %add.ptr.i186 = getelementptr i8, ptr %call.i183, i32 %and.i185
  %nritems.i187 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i186, i32 0, i32 7
  %66 = ptrtoint ptr %nritems.i187 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %nritems.i187, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not = icmp eq i32 %67, 0
  br i1 %tobool.not, label %land.lhs.true51.if.end60_crit_edge, label %if.then53

land.lhs.true51.if.end60_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then53:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #16
  %call54 = call fastcc i32 @push_leaf_right(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call54)
  %cmp55 = icmp sgt i32 %call54, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call54)
  %cmp57.not = icmp eq i32 %call54, -28
  %or.cond152 = or i1 %cmp55, %cmp57.not
  %spec.select = select i1 %or.cond152, i32 %ret.0, i32 %call54
  br label %if.end60

if.end60:                                         ; preds = %if.then53, %land.lhs.true51.if.end60_crit_edge, %if.then41.if.end60_crit_edge
  %ret.1 = phi i32 [ %ret.0, %land.lhs.true51.if.end60_crit_edge ], [ %ret.0, %if.then41.if.end60_crit_edge ], [ %spec.select, %if.then53 ]
  %68 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pages.i, align 4
  %call.i189 = call ptr @page_address(ptr noundef %69) #14
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %3, align 8
  %conv.i190 = trunc i64 %71 to i32
  %and.i191 = and i32 %conv.i190, 4095
  %add.ptr.i192 = getelementptr i8, ptr %call.i189, i32 %and.i191
  %nritems.i193 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i192, i32 0, i32 7
  %72 = ptrtoint ptr %nritems.i193 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %nritems.i193, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp62 = icmp eq i32 %73, 0
  br i1 %cmp62, label %if.then63, label %if.else66

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  %74 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %58, ptr %arrayidx42, align 4
  call fastcc void @btrfs_del_leaf(ptr noundef %trans, ptr noundef %root, ptr noundef %path, ptr noundef %3)
  call void @free_extent_buffer(ptr noundef %3) #14
  br label %if.end75

if.else66:                                        ; preds = %if.end60
  %75 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %path, align 4
  %cmp69 = icmp eq ptr %76, %3
  br i1 %cmp69, label %if.then70, label %if.else66.if.end71_crit_edge

if.else66.if.end71_crit_edge:                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then70:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_mark_buffer_dirty(ptr noundef %3) #14
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.else66.if.end71_crit_edge
  call void @free_extent_buffer(ptr noundef %3) #14
  br label %if.end75

if.else73:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_mark_buffer_dirty(ptr noundef %3) #14
  br label %if.end75

if.end75:                                         ; preds = %if.else73, %if.end71, %if.then63, %if.else, %if.then32
  %ret.3 = phi i32 [ 0, %if.then32 ], [ 0, %if.else ], [ 0, %if.then63 ], [ %ret.1, %if.end71 ], [ 0, %if.else73 ]
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_clean_tree_block(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btrfs_del_leaf(ptr noundef %trans, ptr noundef %root, ptr noundef %path, ptr noundef %leaf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %leaf, i32 0, i32 12
  %0 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #14
  %2 = ptrtoint ptr %leaf to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %leaf, align 8
  %conv.i = trunc i64 %3 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %generation.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 5
  %4 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %generation.i, align 1
  %6 = tail call i64 @llvm.bswap.i64(i64 %5) #14
  %7 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp.not = icmp eq i64 %6, %8
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !120

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4149, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  tail call fastcc void @del_ptr(ptr noundef %root, ptr noundef %path, i32 noundef 1, i32 noundef %10)
  tail call void @btrfs_unlock_up_safe(ptr noundef %path, i32 noundef 0) #14
  %len = getelementptr inbounds %struct.extent_buffer, ptr %leaf, i32 0, i32 1
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 8
  %accounting_lock.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %accounting_lock.i) #14
  %bytes_used.i.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 6, i32 5
  %13 = ptrtoint ptr %bytes_used.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %bytes_used.i.i, align 1
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #14
  %conv.i30 = zext i32 %12 to i64
  %sub.i = sub i64 %15, %conv.i30
  %16 = tail call i64 @llvm.bswap.i64(i64 %sub.i) #14
  %17 = ptrtoint ptr %bytes_used.i.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %bytes_used.i.i, align 1
  tail call void @_raw_spin_unlock(ptr noundef %accounting_lock.i) #14
  %refs = getelementptr inbounds %struct.extent_buffer, ptr %leaf, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #14, !srcloc !124
  %root_key.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %19 = ptrtoint ptr %root_key.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %root_key.i, align 1
  tail call void @btrfs_free_tree_block(ptr noundef %trans, i64 noundef %20, ptr noundef %leaf, i64 noundef 0, i32 noundef 1) #14
  tail call void @free_extent_buffer_stale(ptr noundef %leaf) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @push_leaf_left(ptr noundef %trans, ptr noundef %root, ptr nocapture noundef %path, i32 noundef %min_data_size, i32 noundef %data_size, i32 noundef %empty, i32 noundef %max_slot) unnamed_addr #3 align 64 {
entry:
  %left = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %left) #14
  %arrayidx1 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr [8 x ptr], ptr %path, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %7) #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %1, align 8
  %conv.i = trunc i64 %9 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %10 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %nritems.i, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6 = icmp eq i32 %11, 0
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end8.btrfs_assert_tree_write_locked.exit_crit_edge, label %land.rhs.i

if.end8.btrfs_assert_tree_write_locked.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_assert_tree_write_locked.exit

land.rhs.i:                                       ; preds = %if.end8
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx3, align 4
  %dep_map.i = getelementptr inbounds %struct.extent_buffer, ptr %15, i32 0, i32 11, i32 6
  %call.i59 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool1.not.i = icmp eq i32 %call.i59, 0
  br i1 %tobool1.not.i, label %do.end.i, label %land.rhs.i.btrfs_assert_tree_write_locked.exit_crit_edge, !prof !121

land.rhs.i.btrfs_assert_tree_write_locked.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_assert_tree_write_locked.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 101, i32 noundef 9, ptr noundef null) #14
  br label %btrfs_assert_tree_write_locked.exit

btrfs_assert_tree_write_locked.exit:              ; preds = %do.end.i, %land.rhs.i.btrfs_assert_tree_write_locked.exit_crit_edge, %if.end8.btrfs_assert_tree_write_locked.exit_crit_edge
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3, align 4
  %sub = add i32 %3, -1
  %call13 = tail call ptr @btrfs_read_node_slot(ptr noundef %17, i32 noundef %sub)
  %18 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call13, ptr %left, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %btrfs_assert_tree_write_locked.exit.cleanup_crit_edge, label %if.end16

btrfs_assert_tree_write_locked.exit.cleanup_crit_edge: ; preds = %btrfs_assert_tree_write_locked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %btrfs_assert_tree_write_locked.exit
  tail call void @__btrfs_tree_lock(ptr noundef %call13, i32 noundef 2) #14
  %call17 = tail call i32 @btrfs_leaf_free_space(ptr noundef %call13)
  call void @__sanitizer_cov_trace_cmp4(i32 %call17, i32 %data_size)
  %cmp18 = icmp slt i32 %call17, %data_size
  br i1 %cmp18, label %if.end16.out_crit_edge, label %if.end20

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end20:                                         ; preds = %if.end16
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx3, align 4
  %call24 = call i32 @btrfs_cow_block(ptr noundef %trans, ptr noundef %root, ptr noundef %call13, ptr noundef %20, i32 noundef %sub, ptr noundef nonnull %left, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end30, label %if.then26

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call24)
  %cmp27 = icmp eq i32 %call24, -28
  %spec.store.select = select i1 %cmp27, i32 1, i32 %call24
  br label %out

if.end30:                                         ; preds = %if.end20
  %21 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %left, align 4
  %call31 = tail call i32 @btrfs_leaf_free_space(ptr noundef %22)
  call void @__sanitizer_cov_trace_cmp4(i32 %call31, i32 %data_size)
  %cmp32 = icmp slt i32 %call31, %data_size
  br i1 %cmp32, label %if.end30.out_crit_edge, label %if.end34

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end34:                                         ; preds = %if.end30
  %call35 = tail call fastcc zeroext i1 @check_sibling_keys(ptr noundef %22, ptr noundef %1)
  br i1 %call35, label %if.end34.out_crit_edge, label %if.end37

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end37:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  %call38 = tail call fastcc i32 @__push_leaf_left(ptr noundef %path, i32 noundef %min_data_size, i32 noundef %empty, ptr noundef %22, i32 noundef %call31, i32 noundef %12, i32 noundef %max_slot)
  br label %cleanup

out:                                              ; preds = %if.end34.out_crit_edge, %if.end30.out_crit_edge, %if.then26, %if.end16.out_crit_edge
  %ret.0 = phi i32 [ %spec.store.select, %if.then26 ], [ 1, %if.end16.out_crit_edge ], [ 1, %if.end30.out_crit_edge ], [ -117, %if.end34.out_crit_edge ]
  %23 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %left, align 4
  tail call void @btrfs_tree_unlock(ptr noundef %24) #14
  tail call void @free_extent_buffer(ptr noundef %24) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end37, %btrfs_assert_tree_write_locked.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call38, %if.end37 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ 1, %btrfs_assert_tree_write_locked.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @push_leaf_right(ptr noundef %trans, ptr noundef %root, ptr nocapture noundef %path, i32 noundef %min_data_size, i32 noundef %data_size, i32 noundef %empty, i32 noundef %min_slot) unnamed_addr #3 align 64 {
entry:
  %right = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %right) #14
  %arrayidx2 = getelementptr [8 x ptr], ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %arrayidx3 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %7) #14
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %3, align 8
  %conv.i = trunc i64 %9 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %10 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %nritems.i, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #14
  %sub = add i32 %12, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub)
  %cmp.not = icmp ult i32 %5, %sub
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end7.btrfs_assert_tree_write_locked.exit_crit_edge, label %land.rhs.i

if.end7.btrfs_assert_tree_write_locked.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_assert_tree_write_locked.exit

land.rhs.i:                                       ; preds = %if.end7
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2, align 4
  %dep_map.i = getelementptr inbounds %struct.extent_buffer, ptr %15, i32 0, i32 11, i32 6
  %call.i77 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool1.not.i = icmp eq i32 %call.i77, 0
  br i1 %tobool1.not.i, label %do.end.i, label %land.rhs.i.btrfs_assert_tree_write_locked.exit_crit_edge, !prof !121

land.rhs.i.btrfs_assert_tree_write_locked.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_assert_tree_write_locked.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 101, i32 noundef 9, ptr noundef null) #14
  br label %btrfs_assert_tree_write_locked.exit

btrfs_assert_tree_write_locked.exit:              ; preds = %do.end.i, %land.rhs.i.btrfs_assert_tree_write_locked.exit_crit_edge, %if.end7.btrfs_assert_tree_write_locked.exit_crit_edge
  %add = add nuw i32 %5, 1
  %call10 = tail call ptr @btrfs_read_node_slot(ptr noundef nonnull %3, i32 noundef %add)
  %16 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call10, ptr %right, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %btrfs_assert_tree_write_locked.exit.cleanup_crit_edge, label %if.end13

btrfs_assert_tree_write_locked.exit.cleanup_crit_edge: ; preds = %btrfs_assert_tree_write_locked.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %btrfs_assert_tree_write_locked.exit
  tail call void @__btrfs_tree_lock(ptr noundef %call10, i32 noundef 3) #14
  %call14 = tail call i32 @btrfs_leaf_free_space(ptr noundef %call10)
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %data_size)
  %cmp15 = icmp slt i32 %call14, %data_size
  br i1 %cmp15, label %if.end13.out_unlock_crit_edge, label %if.end17

if.end13.out_unlock_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end17:                                         ; preds = %if.end13
  %call19 = call i32 @btrfs_cow_block(ptr noundef %trans, ptr noundef %root, ptr noundef %call10, ptr noundef nonnull %3, i32 noundef %add, ptr noundef nonnull %right, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.out_unlock_crit_edge

if.end17.out_unlock_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end22:                                         ; preds = %if.end17
  %17 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %right, align 4
  %call23 = tail call i32 @btrfs_leaf_free_space(ptr noundef %18)
  call void @__sanitizer_cov_trace_cmp4(i32 %call23, i32 %data_size)
  %cmp24 = icmp slt i32 %call23, %data_size
  br i1 %cmp24, label %if.end22.out_unlock_crit_edge, label %if.end26

if.end22.out_unlock_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end26:                                         ; preds = %if.end22
  %pages.i78 = getelementptr inbounds %struct.extent_buffer, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %pages.i78 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pages.i78, align 4
  %call.i79 = tail call ptr @page_address(ptr noundef %20) #14
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %1, align 8
  %conv.i80 = trunc i64 %22 to i32
  %and.i81 = and i32 %conv.i80, 4095
  %add.ptr.i82 = getelementptr i8, ptr %call.i79, i32 %and.i81
  %nritems.i83 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i82, i32 0, i32 7
  %23 = ptrtoint ptr %nritems.i83 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %nritems.i83, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp28 = icmp eq i32 %24, 0
  br i1 %cmp28, label %if.end26.out_unlock_crit_edge, label %if.end30

if.end26.out_unlock_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end30:                                         ; preds = %if.end26
  %call31 = tail call fastcc zeroext i1 @check_sibling_keys(ptr noundef %1, ptr noundef %18)
  br i1 %call31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_tree_unlock(ptr noundef %18) #14
  tail call void @free_extent_buffer(ptr noundef %18) #14
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  %26 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp36 = icmp eq i32 %27, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %empty)
  %tobool37.not = icmp eq i32 %empty, 0
  %or.cond = and i1 %tobool37.not, %cmp36
  br i1 %or.cond, label %if.then38, label %if.end45

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_tree_unlock(ptr noundef %1) #14
  tail call void @free_extent_buffer(ptr noundef %1) #14
  %28 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %18, ptr %path, align 4
  %29 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %slots, align 4
  %30 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx3, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %arrayidx3, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %call46 = tail call fastcc i32 @__push_leaf_right(ptr noundef %path, i32 noundef %min_data_size, i32 noundef %empty, ptr noundef %18, i32 noundef %call23, i32 noundef %25, i32 noundef %min_slot)
  br label %cleanup

out_unlock:                                       ; preds = %if.end26.out_unlock_crit_edge, %if.end22.out_unlock_crit_edge, %if.end17.out_unlock_crit_edge, %if.end13.out_unlock_crit_edge
  %32 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %right, align 4
  tail call void @btrfs_tree_unlock(ptr noundef %33) #14
  tail call void @free_extent_buffer(ptr noundef %33) #14
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end45, %if.then38, %if.then32, %btrfs_assert_tree_write_locked.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %out_unlock ], [ -117, %if.then32 ], [ %call46, %if.end45 ], [ 0, %if.then38 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %btrfs_assert_tree_write_locked.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %right) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_search_forward(ptr noundef %root, ptr nocapture noundef %min_key, ptr noundef %path, i64 noundef %min_trans) local_unnamed_addr #3 align 64 {
entry:
  %disk_key.i183 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %slot = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slot) #14
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %slot, align 4, !annotation !133
  %keep_locks1 = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 5
  %1 = ptrtoint ptr %keep_locks1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %keep_locks1, align 2
  %bf.clear = and i8 %bf.load, 64
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %keep_locks1, align 2
  %lowest_level = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 4
  %2 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i183, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i183, i32 0, i32 2
  br label %again

again:                                            ; preds = %if.then72, %entry
  %call = call ptr @btrfs_read_lock_root_node(ptr noundef %root) #14
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %call, i32 0, i32 12
  %4 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %5) #14
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %call, align 8
  %conv.i = trunc i64 %7 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %8 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %level.i, align 1
  %conv = zext i8 %9 to i32
  %arrayidx = getelementptr [8 x ptr], ptr %path, i32 0, i32 %conv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %again.if.end_crit_edge, label %do.end, !prof !120

again.if.end_crit_edge:                           ; preds = %again
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %again
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4360, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %again.if.end_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %arrayidx, align 4
  %arrayidx27 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 2, i32 %conv
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %arrayidx27, align 1
  %14 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages.i, align 4
  %call.i167 = call ptr @page_address(ptr noundef %15) #14
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %call, align 8
  %conv.i168 = trunc i64 %17 to i32
  %and.i169 = and i32 %conv.i168, 4095
  %add.ptr.i170 = getelementptr i8, ptr %call.i167, i32 %and.i169
  %generation.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i170, i32 0, i32 5
  %18 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %generation.i, align 1
  %20 = call i64 @llvm.bswap.i64(i64 %19) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %min_trans)
  %cmp = icmp ult i64 %20, %min_trans
  br i1 %cmp, label %if.end.out.thread_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

while.cond:                                       ; preds = %if.end86, %if.end.while.cond_crit_edge
  %cur.0 = phi ptr [ %call82, %if.end86 ], [ %call, %if.end.while.cond_crit_edge ]
  %pages.i171 = getelementptr inbounds %struct.extent_buffer, ptr %cur.0, i32 0, i32 12
  %21 = ptrtoint ptr %pages.i171 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pages.i171, align 4
  %call.i172 = call ptr @page_address(ptr noundef %22) #14
  %23 = ptrtoint ptr %cur.0 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %cur.0, align 8
  %conv.i173 = trunc i64 %24 to i32
  %and.i174 = and i32 %conv.i173, 4095
  %add.ptr.i175 = getelementptr i8, ptr %call.i172, i32 %and.i174
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i175, i32 0, i32 7
  %25 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %nritems.i, align 1
  %27 = call i32 @llvm.bswap.i32(i32 %26) #14
  %28 = ptrtoint ptr %pages.i171 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pages.i171, align 4
  %call.i177 = call ptr @page_address(ptr noundef %29) #14
  %30 = ptrtoint ptr %cur.0 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %cur.0, align 8
  %conv.i178 = trunc i64 %31 to i32
  %and.i179 = and i32 %conv.i178, 4095
  %add.ptr.i180 = getelementptr i8, ptr %call.i177, i32 %and.i179
  %level.i181 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i180, i32 0, i32 8
  %32 = ptrtoint ptr %level.i181 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %level.i181, align 1
  %conv34 = zext i8 %33 to i32
  %call.i182 = call fastcc i32 @generic_bin_search(ptr noundef %cur.0, i32 noundef 0, ptr noundef %min_key, ptr noundef nonnull %slot) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp36 = icmp slt i32 %call.i182, 0
  br i1 %cmp36, label %while.cond.out.thread_crit_edge, label %if.end39

while.cond.out.thread_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

if.end39:                                         ; preds = %while.cond
  %34 = ptrtoint ptr %lowest_level to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %lowest_level, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp41 = icmp eq i8 %33, %35
  br i1 %cmp41, label %if.then43, label %if.end49

if.then43:                                        ; preds = %if.end39
  %36 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %slot, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %27)
  %cmp44.not = icmp ult i32 %37, %27
  br i1 %cmp44.not, label %if.end47, label %if.then43.find_next_key_crit_edge

if.then43.find_next_key_crit_edge:                ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_next_key

if.end47:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  %conv34.le289 = zext i8 %33 to i32
  %arrayidx48 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %conv34.le289
  %38 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx48, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %39 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %40 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %37, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %41 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %cur.0, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #14
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %40, align 1
  %44 = call i64 @llvm.bswap.i64(i64 %43) #14
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %39, align 8
  %47 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %disk_key.i, align 8
  %49 = call i64 @llvm.bswap.i64(i64 %48) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  br label %out.thread199

if.end49:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool50.not = icmp eq i32 %call.i182, 0
  br i1 %tobool50.not, label %if.end49.if.end54_crit_edge, label %land.lhs.true

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

land.lhs.true:                                    ; preds = %if.end49
  %50 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp51 = icmp sgt i32 %51, 0
  br i1 %cmp51, label %if.then53, label %land.lhs.true.if.end54_crit_edge

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %dec = add nsw i32 %51, -1
  %52 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %dec, ptr %slot, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %land.lhs.true.if.end54_crit_edge, %if.end49.if.end54_crit_edge
  %53 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %53)
  %slot.promoted = load i32, ptr %slot, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.promoted, i32 %27)
  %cmp56235 = icmp ult i32 %slot.promoted, %27
  br i1 %cmp56235, label %if.end54.while.body58_crit_edge, label %if.end54.find_next_key.loopexit_crit_edge

if.end54.find_next_key.loopexit_crit_edge:        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_next_key.loopexit

if.end54.while.body58_crit_edge:                  ; preds = %if.end54
  br label %while.body58

while.body58:                                     ; preds = %cleanup.while.body58_crit_edge, %if.end54.while.body58_crit_edge
  %inc234236 = phi i32 [ %inc, %cleanup.while.body58_crit_edge ], [ %slot.promoted, %if.end54.while.body58_crit_edge ]
  %mul.i = mul i32 %inc234236, 33
  %add.i = add i32 %mul.i, 101
  %54 = inttoptr i32 %add.i to ptr
  %call.i.i = call i64 @btrfs_get_64(ptr noundef %cur.0, ptr noundef %54, i32 noundef 25) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %min_trans)
  %cmp60 = icmp ult i64 %call.i.i, %min_trans
  br i1 %cmp60, label %cleanup, label %while.body58.find_next_key.loopexit_crit_edge

while.body58.find_next_key.loopexit_crit_edge:    ; preds = %while.body58
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_next_key.loopexit

cleanup:                                          ; preds = %while.body58
  %inc = add nuw i32 %inc234236, 1
  %exitcond.not = icmp eq i32 %inc, %27
  br i1 %exitcond.not, label %cleanup.find_next_key.loopexit_crit_edge, label %cleanup.while.body58_crit_edge

cleanup.while.body58_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body58

cleanup.find_next_key.loopexit_crit_edge:         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_next_key.loopexit

find_next_key.loopexit:                           ; preds = %cleanup.find_next_key.loopexit_crit_edge, %while.body58.find_next_key.loopexit_crit_edge, %if.end54.find_next_key.loopexit_crit_edge
  %inc234.lcssa = phi i32 [ %slot.promoted, %if.end54.find_next_key.loopexit_crit_edge ], [ %27, %cleanup.find_next_key.loopexit_crit_edge ], [ %inc234236, %while.body58.find_next_key.loopexit_crit_edge ]
  %55 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %inc234.lcssa, ptr %slot, align 4
  br label %find_next_key

find_next_key:                                    ; preds = %find_next_key.loopexit, %if.then43.find_next_key_crit_edge
  %56 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %slot, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %27)
  %cmp64.not = icmp ult i32 %57, %27
  br i1 %cmp64.not, label %if.end73, label %if.then66

if.then66:                                        ; preds = %find_next_key
  %conv34.le = zext i8 %33 to i32
  %arrayidx68 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %conv34.le
  %58 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx68, align 4
  %call69 = call i32 @btrfs_find_next_key(ptr noundef %root, ptr noundef %path, ptr noundef %min_key, i32 noundef %conv34.le, i64 noundef %min_trans)
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.then66.out.thread_crit_edge

if.then66.out.thread_crit_edge:                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

if.then72:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_release_path(ptr noundef %path)
  br label %again

if.end73:                                         ; preds = %find_next_key
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i183) #14
  %59 = call ptr @memset(ptr %disk_key.i183, i32 255, i32 17)
  call void @btrfs_node_key(ptr noundef %cur.0, ptr noundef nonnull %disk_key.i183, i32 noundef %57) #14
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %3, align 1
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %2, align 8
  %64 = ptrtoint ptr %disk_key.i183 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %disk_key.i183, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i183) #14
  %arrayidx75 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %conv34
  %66 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %57, ptr %arrayidx75, align 4
  %67 = ptrtoint ptr %lowest_level to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %lowest_level, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %68)
  %cmp78 = icmp eq i8 %33, %68
  br i1 %cmp78, label %out.thread199.loopexit, label %if.end81

if.end81:                                         ; preds = %if.end73
  %call82 = call ptr @btrfs_read_node_slot(ptr noundef %cur.0, i32 noundef %57)
  %cmp.i = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out, label %if.end86

if.end86:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_read_lock(ptr noundef %call82) #14
  %sub = add nsw i32 %conv34, -1
  %arrayidx88 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 2, i32 %sub
  %69 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 2, ptr %arrayidx88, align 1
  %arrayidx91 = getelementptr [8 x ptr], ptr %path, i32 0, i32 %sub
  %70 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call82, ptr %arrayidx91, align 4
  call fastcc void @unlock_up(ptr noundef %path, i32 noundef %conv34, i32 noundef 1, i32 noundef 0, ptr noundef null)
  br label %while.cond

out.thread:                                       ; preds = %if.then66.out.thread_crit_edge, %while.cond.out.thread_crit_edge, %if.end.out.thread_crit_edge
  %ret.0.ph = phi i32 [ %call.i182, %while.cond.out.thread_crit_edge ], [ 1, %if.end.out.thread_crit_edge ], [ 1, %if.then66.out.thread_crit_edge ]
  %71 = ptrtoint ptr %keep_locks1 to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load93193 = load i8, ptr %keep_locks1, align 2
  %bf.clear94194 = and i8 %bf.load93193, -65
  %bf.set95195 = or i8 %bf.clear94194, %bf.clear
  store i8 %bf.set95195, ptr %keep_locks1, align 2
  br label %if.end101

out.thread199.loopexit:                           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  %72 = call i64 @llvm.bswap.i64(i64 %61) #14
  %73 = call i64 @llvm.bswap.i64(i64 %65) #14
  br label %out.thread199

out.thread199:                                    ; preds = %out.thread199.loopexit, %if.end47
  %found_key.sroa.9.2.ph = phi i64 [ %44, %if.end47 ], [ %72, %out.thread199.loopexit ]
  %found_key.sroa.6.2.ph = phi i8 [ %46, %if.end47 ], [ %63, %out.thread199.loopexit ]
  %found_key.sroa.0.2.ph = phi i64 [ %49, %if.end47 ], [ %73, %out.thread199.loopexit ]
  %74 = ptrtoint ptr %keep_locks1 to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load93204 = load i8, ptr %keep_locks1, align 2
  %bf.clear94205 = and i8 %bf.load93204, -65
  %bf.set95206 = or i8 %bf.clear94205, %bf.clear
  store i8 %bf.set95206, ptr %keep_locks1, align 2
  %75 = ptrtoint ptr %lowest_level to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %lowest_level, align 1
  %conv100 = zext i8 %76 to i32
  %add = add nuw nsw i32 %conv100, 1
  call void @btrfs_unlock_up_safe(ptr noundef %path, i32 noundef %add) #14
  %77 = ptrtoint ptr %min_key to i32
  call void @__asan_storeN_noabort(i32 %77, i32 8)
  store i64 %found_key.sroa.0.2.ph, ptr %min_key, align 1
  %found_key.sroa.6.0.min_key.sroa_idx = getelementptr inbounds i8, ptr %min_key, i32 8
  %78 = ptrtoint ptr %found_key.sroa.6.0.min_key.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %found_key.sroa.6.2.ph, ptr %found_key.sroa.6.0.min_key.sroa_idx, align 1
  %found_key.sroa.9.0.min_key.sroa_idx = getelementptr inbounds i8, ptr %min_key, i32 9
  %79 = ptrtoint ptr %found_key.sroa.9.0.min_key.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %79, i32 8)
  store i64 %found_key.sroa.9.2.ph, ptr %found_key.sroa.9.0.min_key.sroa_idx, align 1
  br label %if.end101

out:                                              ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  %80 = ptrtoint ptr %call82 to i32
  %81 = ptrtoint ptr %keep_locks1 to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load93 = load i8, ptr %keep_locks1, align 2
  %bf.clear94 = and i8 %bf.load93, -65
  %bf.set95 = or i8 %bf.clear94, %bf.clear
  store i8 %bf.set95, ptr %keep_locks1, align 2
  br label %if.end101

if.end101:                                        ; preds = %out, %out.thread199, %out.thread
  %ret.0197 = phi i32 [ %ret.0.ph, %out.thread ], [ 0, %out.thread199 ], [ %80, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slot) #14
  ret i32 %ret.0197
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_read_lock_root_node(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_find_next_key(ptr noundef %root, ptr noundef %path, ptr nocapture noundef writeonly %key, i32 noundef %level, i64 noundef %min_trans) local_unnamed_addr #3 align 64 {
entry:
  %disk_key.i154 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i149 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i146 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %cur_key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %keep_locks = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 5
  %0 = ptrtoint ptr %keep_locks to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %keep_locks, align 2
  %1 = and i8 %bf.load, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %do.end, label %entry.if.end_crit_edge, !prof !121

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4463, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %level)
  %cmp181 = icmp slt i32 %level, 8
  br i1 %cmp181, label %while.body.lr.ph, label %if.end.cleanup94_crit_edge

if.end.cleanup94_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup94

while.body.lr.ph:                                 ; preds = %if.end
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %cur_key, i32 0, i32 1
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %cur_key, i32 0, i32 2
  %5 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i146, i32 0, i32 1
  %6 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i146, i32 0, i32 2
  %7 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %lowest_level = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 4
  %arrayidx211 = getelementptr [8 x ptr], ptr %path, i32 0, i32 %level
  %9 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx211, align 4
  %tobool26.not212 = icmp eq ptr %10, null
  br i1 %tobool26.not212, label %while.body.lr.ph.cleanup94_crit_edge, label %while.body.lr.ph.if.end28_crit_edge

while.body.lr.ph.if.end28_crit_edge:              ; preds = %while.body.lr.ph
  br label %if.end28

while.body.lr.ph.cleanup94_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup94

while.cond.loopexit:                              ; preds = %lor.lhs.false45.while.cond.loopexit_crit_edge, %if.end41.while.cond.loopexit_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %cur_key) #14
  %arrayidx = getelementptr [8 x ptr], ptr %path, i32 0, i32 %add34
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool26.not = icmp eq ptr %12, null
  br i1 %tobool26.not, label %while.cond.loopexit.cleanup94_crit_edge, label %while.cond.loopexit.if.end28_crit_edge

while.cond.loopexit.if.end28_crit_edge:           ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

while.cond.loopexit.cleanup94_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup94

if.end28:                                         ; preds = %while.cond.loopexit.if.end28_crit_edge, %while.body.lr.ph.if.end28_crit_edge
  %13 = phi ptr [ %12, %while.cond.loopexit.if.end28_crit_edge ], [ %10, %while.body.lr.ph.if.end28_crit_edge ]
  %level.addr.0182213 = phi i32 [ %add34, %while.cond.loopexit.if.end28_crit_edge ], [ %level, %while.body.lr.ph.if.end28_crit_edge ]
  %arrayidx29 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %level.addr.0182213
  %14 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx29, align 4
  %add = add i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.addr.0182213)
  %cmp81 = icmp eq i32 %level.addr.0182213, 0
  %add34 = add i32 %level.addr.0182213, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add34)
  %cmp35 = icmp sgt i32 %add34, 7
  %arrayidx38 = getelementptr [8 x ptr], ptr %path, i32 0, i32 %add34
  %arrayidx43 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 2, i32 %add34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.addr.0182213)
  %cmp55 = icmp eq i32 %level.addr.0182213, 0
  %conv60 = trunc i32 %level.addr.0182213 to i8
  %arrayidx70 = getelementptr [8 x ptr], ptr %path, i32 0, i32 %level.addr.0182213
  %arrayidx72 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %level.addr.0182213
  br label %next.outer

next.outer:                                       ; preds = %cleanup, %if.end28
  %slot.0.ph = phi i32 [ %spec.select, %cleanup ], [ %add, %if.end28 ]
  %c.0.ph = phi ptr [ %66, %cleanup ], [ %13, %if.end28 ]
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %c.0.ph, i32 0, i32 12
  %16 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages.i, align 4
  %call.i173 = call ptr @page_address(ptr noundef %17) #14
  %18 = ptrtoint ptr %c.0.ph to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %c.0.ph, align 8
  %conv.i174 = trunc i64 %19 to i32
  %and.i175 = and i32 %conv.i174, 4095
  %add.ptr.i176 = getelementptr i8, ptr %call.i173, i32 %and.i175
  %nritems.i177 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i176, i32 0, i32 7
  %20 = ptrtoint ptr %nritems.i177 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %nritems.i177, align 1
  %22 = call i32 @llvm.bswap.i32(i32 %21) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.0.ph, i32 %22)
  %cmp32.not178 = icmp ult i32 %slot.0.ph, %22
  br i1 %cmp32.not178, label %next.outer.if.end80_crit_edge, label %next.outer.if.then33_crit_edge

next.outer.if.then33_crit_edge:                   ; preds = %next.outer
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then33

next.outer.if.end80_crit_edge:                    ; preds = %next.outer
  br label %if.end80

if.then33:                                        ; preds = %cleanup91.if.then33_crit_edge, %next.outer.if.then33_crit_edge
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %cur_key) #14
  %23 = call ptr @memset(ptr %cur_key, i32 255, i32 17)
  br i1 %cmp35, label %if.then33.cleanup.thread_crit_edge, label %lor.lhs.false

if.then33.cleanup.thread_crit_edge:               ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

lor.lhs.false:                                    ; preds = %if.then33
  %24 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %25, null
  br i1 %tobool39.not, label %lor.lhs.false.cleanup.thread_crit_edge, label %if.end41

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end41:                                         ; preds = %lor.lhs.false
  %26 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool44.not = icmp eq i8 %27, 0
  br i1 %tobool44.not, label %lor.lhs.false45, label %if.end41.while.cond.loopexit_crit_edge

if.end41.while.cond.loopexit_crit_edge:           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.loopexit

lor.lhs.false45:                                  ; preds = %if.end41
  %28 = ptrtoint ptr %keep_locks to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load47 = load i8, ptr %keep_locks, align 2
  %29 = and i8 %bf.load47, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool51.not = icmp eq i8 %29, 0
  br i1 %tobool51.not, label %if.end53, label %lor.lhs.false45.while.cond.loopexit_crit_edge

lor.lhs.false45.while.cond.loopexit_crit_edge:    ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.loopexit

if.end53:                                         ; preds = %lor.lhs.false45
  %30 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pages.i, align 4
  %call.i141 = call ptr @page_address(ptr noundef %31) #14
  %32 = ptrtoint ptr %c.0.ph to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %c.0.ph, align 8
  %conv.i142 = trunc i64 %33 to i32
  %and.i143 = and i32 %conv.i142, 4095
  %add.ptr.i144 = getelementptr i8, ptr %call.i141, i32 %and.i143
  %nritems.i145 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i144, i32 0, i32 7
  %34 = ptrtoint ptr %nritems.i145 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %nritems.i145, align 1
  %36 = call i32 @llvm.bswap.i32(i32 %35) #14
  %sub = add i32 %36, -1
  br i1 %cmp55, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %mul.i.i.i.i = mul i32 %sub, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %37 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %c.0.ph, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #14
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %8, align 1
  %40 = call i64 @llvm.bswap.i64(i64 %39) #14
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %4, align 1
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %7, align 8
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %3, align 8
  %45 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %disk_key.i, align 8
  %47 = call i64 @llvm.bswap.i64(i64 %46) #14
  %48 = ptrtoint ptr %cur_key to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %cur_key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  br label %if.end58

if.else:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i146) #14
  %49 = call ptr @memset(ptr %disk_key.i146, i32 255, i32 17)
  call void @btrfs_node_key(ptr noundef %c.0.ph, ptr noundef nonnull %disk_key.i146, i32 noundef %sub) #14
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %6, align 1
  %52 = call i64 @llvm.bswap.i64(i64 %51) #14
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %52, ptr %4, align 1
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %5, align 8
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %3, align 8
  %57 = ptrtoint ptr %disk_key.i146 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %disk_key.i146, align 8
  %59 = call i64 @llvm.bswap.i64(i64 %58) #14
  %60 = ptrtoint ptr %cur_key to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %cur_key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i146) #14
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then57
  %61 = ptrtoint ptr %lowest_level to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %lowest_level, align 1
  call void @btrfs_release_path(ptr noundef %path)
  %63 = ptrtoint ptr %lowest_level to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv60, ptr %lowest_level, align 1
  %call62 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %root, ptr noundef nonnull %cur_key, ptr noundef %path, i32 noundef 0, i32 noundef 0)
  %64 = ptrtoint ptr %lowest_level to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %62, ptr %lowest_level, align 1
  %cmp65 = icmp slt i32 %call62, 0
  br i1 %cmp65, label %if.end58.cleanup.thread_crit_edge, label %cleanup

if.end58.cleanup.thread_crit_edge:                ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end58.cleanup.thread_crit_edge, %lor.lhs.false.cleanup.thread_crit_edge, %if.then33.cleanup.thread_crit_edge
  %retval.2.ph = phi i32 [ %call62, %if.end58.cleanup.thread_crit_edge ], [ 1, %if.then33.cleanup.thread_crit_edge ], [ 1, %lor.lhs.false.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %cur_key) #14
  br label %cleanup94

cleanup:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx70, align 4
  %67 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp73 = icmp eq i32 %call62, 0
  %inc76 = zext i1 %cmp73 to i32
  %spec.select = add i32 %68, %inc76
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %cur_key) #14
  br label %next.outer

if.end80:                                         ; preds = %cleanup91.if.end80_crit_edge, %next.outer.if.end80_crit_edge
  %slot.0179 = phi i32 [ %inc89, %cleanup91.if.end80_crit_edge ], [ %slot.0.ph, %next.outer.if.end80_crit_edge ]
  br i1 %cmp81, label %if.then83, label %if.else84

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i149) #14
  %69 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i149, i32 0, i32 1
  %70 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i149, i32 0, i32 2
  %mul.i.i.i.i150 = mul i32 %slot.0.ph, 25
  %add.i.i.i.i151 = add i32 %mul.i.i.i.i150, 101
  %71 = call ptr @memset(ptr %disk_key.i149, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %c.0.ph, ptr noundef nonnull %disk_key.i149, i32 noundef %add.i.i.i.i151, i32 noundef 17) #14
  %72 = ptrtoint ptr %70 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %73 = load i64, ptr %70, align 1
  %74 = call i64 @llvm.bswap.i64(i64 %73) #14
  %offset1.i.i152 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %75 = ptrtoint ptr %offset1.i.i152 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 8)
  store i64 %74, ptr %offset1.i.i152, align 1
  %76 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %69, align 8
  %type2.i.i153 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %78 = ptrtoint ptr %type2.i.i153 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %type2.i.i153, align 1
  %79 = ptrtoint ptr %disk_key.i149 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %disk_key.i149, align 8
  %81 = call i64 @llvm.bswap.i64(i64 %80) #14
  %82 = ptrtoint ptr %key to i32
  call void @__asan_storeN_noabort(i32 %82, i32 8)
  store i64 %81, ptr %key, align 1
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i149) #14
  br label %cleanup94

if.else84:                                        ; preds = %if.end80
  %mul.i = mul i32 %slot.0179, 33
  %add.i = add i32 %mul.i, 101
  %83 = inttoptr i32 %add.i to ptr
  %call.i.i = call i64 @btrfs_get_64(ptr noundef %c.0.ph, ptr noundef %83, i32 noundef 25) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %min_trans)
  %cmp86 = icmp ult i64 %call.i.i, %min_trans
  br i1 %cmp86, label %cleanup91, label %cleanup91.thread

cleanup91.thread:                                 ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i154) #14
  %84 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i154, i32 0, i32 1
  %85 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i154, i32 0, i32 2
  %86 = call ptr @memset(ptr %disk_key.i154, i32 255, i32 17)
  call void @btrfs_node_key(ptr noundef %c.0.ph, ptr noundef nonnull %disk_key.i154, i32 noundef %slot.0179) #14
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 8)
  %88 = load i64, ptr %85, align 1
  %89 = call i64 @llvm.bswap.i64(i64 %88) #14
  %offset1.i.i155 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %90 = ptrtoint ptr %offset1.i.i155 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 8)
  store i64 %89, ptr %offset1.i.i155, align 1
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %84, align 8
  %type2.i.i156 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %93 = ptrtoint ptr %type2.i.i156 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %type2.i.i156, align 1
  %94 = ptrtoint ptr %disk_key.i154 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %disk_key.i154, align 8
  %96 = call i64 @llvm.bswap.i64(i64 %95) #14
  %97 = ptrtoint ptr %key to i32
  call void @__asan_storeN_noabort(i32 %97, i32 8)
  store i64 %96, ptr %key, align 1
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i154) #14
  br label %cleanup94

cleanup91:                                        ; preds = %if.else84
  %inc89 = add nuw i32 %slot.0179, 1
  %98 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %99) #14
  %100 = ptrtoint ptr %c.0.ph to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %c.0.ph, align 8
  %conv.i = trunc i64 %101 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %102 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %nritems.i, align 1
  %104 = call i32 @llvm.bswap.i32(i32 %103) #14
  %cmp32.not = icmp ult i32 %inc89, %104
  br i1 %cmp32.not, label %cleanup91.if.end80_crit_edge, label %cleanup91.if.then33_crit_edge

cleanup91.if.then33_crit_edge:                    ; preds = %cleanup91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then33

cleanup91.if.end80_crit_edge:                     ; preds = %cleanup91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

cleanup94:                                        ; preds = %cleanup91.thread, %if.then83, %cleanup.thread, %while.cond.loopexit.cleanup94_crit_edge, %while.body.lr.ph.cleanup94_crit_edge, %if.end.cleanup94_crit_edge
  %retval.3 = phi i32 [ 0, %if.then83 ], [ %retval.2.ph, %cleanup.thread ], [ 0, %cleanup91.thread ], [ 1, %if.end.cleanup94_crit_edge ], [ 1, %while.body.lr.ph.cleanup94_crit_edge ], [ 1, %while.cond.loopexit.cleanup94_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_next_old_leaf(ptr noundef %root, ptr noundef %path, i64 noundef %time_seq) local_unnamed_addr #3 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %next = alloca ptr, align 4
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next) #14
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #14
  %2 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %5) #14
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %3, align 8
  %conv.i = trunc i64 %7 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %8 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %nritems.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %11 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %9) #14
  %13 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %15 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %17 = mul i32 %12, 25
  %add.i.i.i.i = add i32 %17, 76
  %18 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %14, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #14
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %16, align 1
  %21 = call i64 @llvm.bswap.i64(i64 %20) #14
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %10, align 1
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %15, align 8
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %11, align 8
  %26 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %disk_key.i, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27) #14
  %29 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  %keep_locks = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %time_seq)
  %tobool.not = icmp eq i64 %time_seq, 0
  %commit_root_sem = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 54
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %arrayidx51 = getelementptr [8 x ptr], ptr %path, i32 0, i32 1
  %arrayidx56 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 1
  %arrayidx51.1 = getelementptr [8 x ptr], ptr %path, i32 0, i32 2
  %arrayidx56.1 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 2
  %arrayidx51.2 = getelementptr [8 x ptr], ptr %path, i32 0, i32 3
  %arrayidx56.2 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 3
  %arrayidx51.3 = getelementptr [8 x ptr], ptr %path, i32 0, i32 4
  %arrayidx56.3 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 4
  %arrayidx51.4 = getelementptr [8 x ptr], ptr %path, i32 0, i32 5
  %arrayidx56.4 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 5
  %arrayidx51.5 = getelementptr [8 x ptr], ptr %path, i32 0, i32 6
  %arrayidx56.5 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 6
  %arrayidx51.6 = getelementptr [8 x ptr], ptr %path, i32 0, i32 7
  %arrayidx56.6 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 7
  %arrayidx74 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 2, i32 0
  %arrayidx72.1 = getelementptr [8 x ptr], ptr %path, i32 0, i32 1
  %arrayidx74.1 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 2, i32 1
  %arrayidx77.1 = getelementptr [8 x ptr], ptr %path, i32 0, i32 1
  %arrayidx72.2 = getelementptr [8 x ptr], ptr %path, i32 0, i32 2
  %arrayidx74.2 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 2, i32 2
  %arrayidx77.2 = getelementptr [8 x ptr], ptr %path, i32 0, i32 2
  %arrayidx72.3 = getelementptr [8 x ptr], ptr %path, i32 0, i32 3
  %arrayidx74.3 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 2, i32 3
  %arrayidx77.3 = getelementptr [8 x ptr], ptr %path, i32 0, i32 3
  %arrayidx72.4 = getelementptr [8 x ptr], ptr %path, i32 0, i32 4
  %arrayidx74.4 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 2, i32 4
  %arrayidx77.4 = getelementptr [8 x ptr], ptr %path, i32 0, i32 4
  %arrayidx72.5 = getelementptr [8 x ptr], ptr %path, i32 0, i32 5
  %arrayidx74.5 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 2, i32 5
  %arrayidx77.5 = getelementptr [8 x ptr], ptr %path, i32 0, i32 5
  %arrayidx72.6 = getelementptr [8 x ptr], ptr %path, i32 0, i32 6
  %arrayidx74.6 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 2, i32 6
  %arrayidx77.6 = getelementptr [8 x ptr], ptr %path, i32 0, i32 6
  br label %again

again:                                            ; preds = %again.backedge, %if.end
  %need_commit_sem.0.off0 = phi i1 [ false, %if.end ], [ %need_commit_sem.2.off0, %again.backedge ]
  %30 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %next, align 4
  call void @btrfs_release_path(ptr noundef %path)
  %31 = ptrtoint ptr %keep_locks to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %keep_locks, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %keep_locks, align 2
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = call i32 @btrfs_search_old_slot(ptr noundef %root, ptr noundef nonnull %key, ptr noundef %path, i64 noundef %time_seq)
  br label %if.end17

if.else:                                          ; preds = %again
  %32 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool9.not = icmp eq i8 %32, 0
  br i1 %tobool9.not, label %if.else.if.end15_crit_edge, label %if.then10

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %bf.clear13 = and i8 %bf.set, -9
  %33 = ptrtoint ptr %keep_locks to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %bf.clear13, ptr %keep_locks, align 2
  call void @down_read(ptr noundef %commit_root_sem) #14
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.else.if.end15_crit_edge
  %need_commit_sem.1.off0 = phi i1 [ true, %if.then10 ], [ %need_commit_sem.0.off0, %if.else.if.end15_crit_edge ]
  %call16 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %root, ptr noundef nonnull %key, ptr noundef %path, i32 noundef 0, i32 noundef 0)
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.then4
  %need_commit_sem.2.off0 = phi i1 [ %need_commit_sem.0.off0, %if.then4 ], [ %need_commit_sem.1.off0, %if.end15 ]
  %ret.0 = phi i32 [ %call5, %if.then4 ], [ %call16, %if.end15 ]
  %34 = ptrtoint ptr %keep_locks to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load19 = load i8, ptr %keep_locks, align 2
  %bf.clear20 = and i8 %bf.load19, -65
  store i8 %bf.clear20, ptr %keep_locks, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp22 = icmp slt i32 %ret.0, 0
  br i1 %cmp22, label %if.end17.done_crit_edge, label %if.end24

if.end17.done_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end24:                                         ; preds = %if.end17
  %35 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %path, align 4
  %pages.i249 = getelementptr inbounds %struct.extent_buffer, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %pages.i249 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pages.i249, align 4
  %call.i250 = call ptr @page_address(ptr noundef %38) #14
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %36, align 8
  %conv.i251 = trunc i64 %40 to i32
  %and.i252 = and i32 %conv.i251, 4095
  %add.ptr.i253 = getelementptr i8, ptr %call.i250, i32 %and.i252
  %nritems.i254 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i253, i32 0, i32 7
  %41 = ptrtoint ptr %nritems.i254 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %nritems.i254, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp28.not = icmp eq i32 %42, 0
  br i1 %cmp28.not, label %if.end24.if.end48_crit_edge, label %land.lhs.true

if.end24.if.end48_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end24
  %43 = call i32 @llvm.bswap.i32(i32 %42) #14
  %44 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %slots, align 4
  %sub30 = add i32 %43, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %sub30)
  %cmp31 = icmp ult i32 %45, %sub30
  br i1 %cmp31, label %if.then32, label %land.lhs.true40.critedge

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp33 = icmp eq i32 %ret.0, 0
  br i1 %cmp33, label %if.then34, label %if.then32.done_crit_edge

if.then32.done_crit_edge:                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add nuw i32 %45, 1
  %46 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %inc, ptr %slots, align 4
  br label %done

land.lhs.true40.critedge:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp41 = icmp ne i32 %ret.0, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %sub30)
  %cmp46 = icmp eq i32 %45, %sub30
  %or.cond = select i1 %cmp41, i1 %cmp46, i1 false
  br i1 %or.cond, label %land.lhs.true40.critedge.done_crit_edge, label %land.lhs.true40.critedge.if.end48_crit_edge

land.lhs.true40.critedge.if.end48_crit_edge:      ; preds = %land.lhs.true40.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

land.lhs.true40.critedge.done_crit_edge:          ; preds = %land.lhs.true40.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end48:                                         ; preds = %land.lhs.true40.critedge.if.end48_crit_edge, %if.end24.if.end48_crit_edge
  %47 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx51, align 4
  %tobool52.not = icmp eq ptr %48, null
  br i1 %tobool52.not, label %if.end48.done_crit_edge, label %if.end54

if.end48.done_crit_edge:                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end54:                                         ; preds = %if.end48
  %49 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx56, align 4
  %add = add i32 %50, 1
  %pages.i255 = getelementptr inbounds %struct.extent_buffer, ptr %48, i32 0, i32 12
  %51 = ptrtoint ptr %pages.i255 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pages.i255, align 4
  %call.i256 = call ptr @page_address(ptr noundef %52) #14
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %48, align 8
  %conv.i257 = trunc i64 %54 to i32
  %and.i258 = and i32 %conv.i257, 4095
  %add.ptr.i259 = getelementptr i8, ptr %call.i256, i32 %and.i258
  %nritems.i260 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i259, i32 0, i32 7
  %55 = ptrtoint ptr %nritems.i260 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %nritems.i260, align 1
  %57 = call i32 @llvm.bswap.i32(i32 %56) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %57)
  %cmp60.not = icmp ult i32 %add, %57
  br i1 %cmp60.not, label %if.end54.for.cond.preheader_crit_edge, label %if.then61

if.end54.for.cond.preheader_crit_edge:            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end54.6.for.cond.preheader_crit_edge, %if.end54.5.for.cond.preheader_crit_edge, %if.end54.4.for.cond.preheader_crit_edge, %if.end54.3.for.cond.preheader_crit_edge, %if.end54.2.for.cond.preheader_crit_edge, %if.end54.1.for.cond.preheader_crit_edge, %if.end54.for.cond.preheader_crit_edge
  %exitcond.not.1 = phi i1 [ false, %if.end54.6.for.cond.preheader_crit_edge ], [ false, %if.end54.5.for.cond.preheader_crit_edge ], [ false, %if.end54.4.for.cond.preheader_crit_edge ], [ false, %if.end54.3.for.cond.preheader_crit_edge ], [ false, %if.end54.2.for.cond.preheader_crit_edge ], [ true, %if.end54.1.for.cond.preheader_crit_edge ], [ false, %if.end54.for.cond.preheader_crit_edge ]
  %exitcond.not.2 = phi i1 [ false, %if.end54.6.for.cond.preheader_crit_edge ], [ false, %if.end54.5.for.cond.preheader_crit_edge ], [ false, %if.end54.4.for.cond.preheader_crit_edge ], [ false, %if.end54.3.for.cond.preheader_crit_edge ], [ true, %if.end54.2.for.cond.preheader_crit_edge ], [ false, %if.end54.1.for.cond.preheader_crit_edge ], [ false, %if.end54.for.cond.preheader_crit_edge ]
  %exitcond.not.3 = phi i1 [ false, %if.end54.6.for.cond.preheader_crit_edge ], [ false, %if.end54.5.for.cond.preheader_crit_edge ], [ false, %if.end54.4.for.cond.preheader_crit_edge ], [ true, %if.end54.3.for.cond.preheader_crit_edge ], [ false, %if.end54.2.for.cond.preheader_crit_edge ], [ false, %if.end54.1.for.cond.preheader_crit_edge ], [ false, %if.end54.for.cond.preheader_crit_edge ]
  %exitcond.not.4 = phi i1 [ false, %if.end54.6.for.cond.preheader_crit_edge ], [ false, %if.end54.5.for.cond.preheader_crit_edge ], [ true, %if.end54.4.for.cond.preheader_crit_edge ], [ false, %if.end54.3.for.cond.preheader_crit_edge ], [ false, %if.end54.2.for.cond.preheader_crit_edge ], [ false, %if.end54.1.for.cond.preheader_crit_edge ], [ false, %if.end54.for.cond.preheader_crit_edge ]
  %exitcond.not.5 = phi i1 [ false, %if.end54.6.for.cond.preheader_crit_edge ], [ true, %if.end54.5.for.cond.preheader_crit_edge ], [ false, %if.end54.4.for.cond.preheader_crit_edge ], [ false, %if.end54.3.for.cond.preheader_crit_edge ], [ false, %if.end54.2.for.cond.preheader_crit_edge ], [ false, %if.end54.1.for.cond.preheader_crit_edge ], [ false, %if.end54.for.cond.preheader_crit_edge ]
  %level.0.lcssa291 = phi i32 [ 7, %if.end54.6.for.cond.preheader_crit_edge ], [ 6, %if.end54.5.for.cond.preheader_crit_edge ], [ 5, %if.end54.4.for.cond.preheader_crit_edge ], [ 4, %if.end54.3.for.cond.preheader_crit_edge ], [ 3, %if.end54.2.for.cond.preheader_crit_edge ], [ 2, %if.end54.1.for.cond.preheader_crit_edge ], [ 1, %if.end54.for.cond.preheader_crit_edge ]
  %.lcssa290 = phi ptr [ %116, %if.end54.6.for.cond.preheader_crit_edge ], [ %105, %if.end54.5.for.cond.preheader_crit_edge ], [ %94, %if.end54.4.for.cond.preheader_crit_edge ], [ %83, %if.end54.3.for.cond.preheader_crit_edge ], [ %72, %if.end54.2.for.cond.preheader_crit_edge ], [ %61, %if.end54.1.for.cond.preheader_crit_edge ], [ %48, %if.end54.for.cond.preheader_crit_edge ]
  %add.lcssa = phi i32 [ %add.6, %if.end54.6.for.cond.preheader_crit_edge ], [ %add.5, %if.end54.5.for.cond.preheader_crit_edge ], [ %add.4, %if.end54.4.for.cond.preheader_crit_edge ], [ %add.3, %if.end54.3.for.cond.preheader_crit_edge ], [ %add.2, %if.end54.2.for.cond.preheader_crit_edge ], [ %add.1, %if.end54.1.for.cond.preheader_crit_edge ], [ %add, %if.end54.for.cond.preheader_crit_edge ]
  %arrayidx68 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 2, i32 %level.0.lcssa291
  %58 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool69.not = icmp eq i8 %59, 0
  br i1 %tobool69.not, label %for.cond.preheader.if.end75_crit_edge, label %if.then70

for.cond.preheader.if.end75_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.then61:                                        ; preds = %if.end54
  %60 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx51.1, align 4
  %tobool52.not.1 = icmp eq ptr %61, null
  br i1 %tobool52.not.1, label %if.then61.done_crit_edge, label %if.end54.1

if.then61.done_crit_edge:                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end54.1:                                       ; preds = %if.then61
  %62 = ptrtoint ptr %arrayidx56.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx56.1, align 4
  %add.1 = add i32 %63, 1
  %pages.i255.1 = getelementptr inbounds %struct.extent_buffer, ptr %61, i32 0, i32 12
  %64 = ptrtoint ptr %pages.i255.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pages.i255.1, align 4
  %call.i256.1 = call ptr @page_address(ptr noundef %65) #14
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %61, align 8
  %conv.i257.1 = trunc i64 %67 to i32
  %and.i258.1 = and i32 %conv.i257.1, 4095
  %add.ptr.i259.1 = getelementptr i8, ptr %call.i256.1, i32 %and.i258.1
  %nritems.i260.1 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i259.1, i32 0, i32 7
  %68 = ptrtoint ptr %nritems.i260.1 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %nritems.i260.1, align 1
  %70 = call i32 @llvm.bswap.i32(i32 %69) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1, i32 %70)
  %cmp60.not.1 = icmp ult i32 %add.1, %70
  br i1 %cmp60.not.1, label %if.end54.1.for.cond.preheader_crit_edge, label %if.then61.1

if.end54.1.for.cond.preheader_crit_edge:          ; preds = %if.end54.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

if.then61.1:                                      ; preds = %if.end54.1
  %71 = ptrtoint ptr %arrayidx51.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx51.2, align 4
  %tobool52.not.2 = icmp eq ptr %72, null
  br i1 %tobool52.not.2, label %if.then61.1.done_crit_edge, label %if.end54.2

if.then61.1.done_crit_edge:                       ; preds = %if.then61.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end54.2:                                       ; preds = %if.then61.1
  %73 = ptrtoint ptr %arrayidx56.2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx56.2, align 4
  %add.2 = add i32 %74, 1
  %pages.i255.2 = getelementptr inbounds %struct.extent_buffer, ptr %72, i32 0, i32 12
  %75 = ptrtoint ptr %pages.i255.2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pages.i255.2, align 4
  %call.i256.2 = call ptr @page_address(ptr noundef %76) #14
  %77 = ptrtoint ptr %72 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %72, align 8
  %conv.i257.2 = trunc i64 %78 to i32
  %and.i258.2 = and i32 %conv.i257.2, 4095
  %add.ptr.i259.2 = getelementptr i8, ptr %call.i256.2, i32 %and.i258.2
  %nritems.i260.2 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i259.2, i32 0, i32 7
  %79 = ptrtoint ptr %nritems.i260.2 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %nritems.i260.2, align 1
  %81 = call i32 @llvm.bswap.i32(i32 %80) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2, i32 %81)
  %cmp60.not.2 = icmp ult i32 %add.2, %81
  br i1 %cmp60.not.2, label %if.end54.2.for.cond.preheader_crit_edge, label %if.then61.2

if.end54.2.for.cond.preheader_crit_edge:          ; preds = %if.end54.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

if.then61.2:                                      ; preds = %if.end54.2
  %82 = ptrtoint ptr %arrayidx51.3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx51.3, align 4
  %tobool52.not.3 = icmp eq ptr %83, null
  br i1 %tobool52.not.3, label %if.then61.2.done_crit_edge, label %if.end54.3

if.then61.2.done_crit_edge:                       ; preds = %if.then61.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end54.3:                                       ; preds = %if.then61.2
  %84 = ptrtoint ptr %arrayidx56.3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx56.3, align 4
  %add.3 = add i32 %85, 1
  %pages.i255.3 = getelementptr inbounds %struct.extent_buffer, ptr %83, i32 0, i32 12
  %86 = ptrtoint ptr %pages.i255.3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pages.i255.3, align 4
  %call.i256.3 = call ptr @page_address(ptr noundef %87) #14
  %88 = ptrtoint ptr %83 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %83, align 8
  %conv.i257.3 = trunc i64 %89 to i32
  %and.i258.3 = and i32 %conv.i257.3, 4095
  %add.ptr.i259.3 = getelementptr i8, ptr %call.i256.3, i32 %and.i258.3
  %nritems.i260.3 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i259.3, i32 0, i32 7
  %90 = ptrtoint ptr %nritems.i260.3 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %nritems.i260.3, align 1
  %92 = call i32 @llvm.bswap.i32(i32 %91) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3, i32 %92)
  %cmp60.not.3 = icmp ult i32 %add.3, %92
  br i1 %cmp60.not.3, label %if.end54.3.for.cond.preheader_crit_edge, label %if.then61.3

if.end54.3.for.cond.preheader_crit_edge:          ; preds = %if.end54.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

if.then61.3:                                      ; preds = %if.end54.3
  %93 = ptrtoint ptr %arrayidx51.4 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx51.4, align 4
  %tobool52.not.4 = icmp eq ptr %94, null
  br i1 %tobool52.not.4, label %if.then61.3.done_crit_edge, label %if.end54.4

if.then61.3.done_crit_edge:                       ; preds = %if.then61.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end54.4:                                       ; preds = %if.then61.3
  %95 = ptrtoint ptr %arrayidx56.4 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx56.4, align 4
  %add.4 = add i32 %96, 1
  %pages.i255.4 = getelementptr inbounds %struct.extent_buffer, ptr %94, i32 0, i32 12
  %97 = ptrtoint ptr %pages.i255.4 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pages.i255.4, align 4
  %call.i256.4 = call ptr @page_address(ptr noundef %98) #14
  %99 = ptrtoint ptr %94 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %94, align 8
  %conv.i257.4 = trunc i64 %100 to i32
  %and.i258.4 = and i32 %conv.i257.4, 4095
  %add.ptr.i259.4 = getelementptr i8, ptr %call.i256.4, i32 %and.i258.4
  %nritems.i260.4 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i259.4, i32 0, i32 7
  %101 = ptrtoint ptr %nritems.i260.4 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %nritems.i260.4, align 1
  %103 = call i32 @llvm.bswap.i32(i32 %102) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %add.4, i32 %103)
  %cmp60.not.4 = icmp ult i32 %add.4, %103
  br i1 %cmp60.not.4, label %if.end54.4.for.cond.preheader_crit_edge, label %if.then61.4

if.end54.4.for.cond.preheader_crit_edge:          ; preds = %if.end54.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

if.then61.4:                                      ; preds = %if.end54.4
  %104 = ptrtoint ptr %arrayidx51.5 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx51.5, align 4
  %tobool52.not.5 = icmp eq ptr %105, null
  br i1 %tobool52.not.5, label %if.then61.4.done_crit_edge, label %if.end54.5

if.then61.4.done_crit_edge:                       ; preds = %if.then61.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end54.5:                                       ; preds = %if.then61.4
  %106 = ptrtoint ptr %arrayidx56.5 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx56.5, align 4
  %add.5 = add i32 %107, 1
  %pages.i255.5 = getelementptr inbounds %struct.extent_buffer, ptr %105, i32 0, i32 12
  %108 = ptrtoint ptr %pages.i255.5 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pages.i255.5, align 4
  %call.i256.5 = call ptr @page_address(ptr noundef %109) #14
  %110 = ptrtoint ptr %105 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %105, align 8
  %conv.i257.5 = trunc i64 %111 to i32
  %and.i258.5 = and i32 %conv.i257.5, 4095
  %add.ptr.i259.5 = getelementptr i8, ptr %call.i256.5, i32 %and.i258.5
  %nritems.i260.5 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i259.5, i32 0, i32 7
  %112 = ptrtoint ptr %nritems.i260.5 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %nritems.i260.5, align 1
  %114 = call i32 @llvm.bswap.i32(i32 %113) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %add.5, i32 %114)
  %cmp60.not.5 = icmp ult i32 %add.5, %114
  br i1 %cmp60.not.5, label %if.end54.5.for.cond.preheader_crit_edge, label %if.then61.5

if.end54.5.for.cond.preheader_crit_edge:          ; preds = %if.end54.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

if.then61.5:                                      ; preds = %if.end54.5
  %115 = ptrtoint ptr %arrayidx51.6 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx51.6, align 4
  %tobool52.not.6 = icmp eq ptr %116, null
  br i1 %tobool52.not.6, label %if.then61.5.done_crit_edge, label %if.end54.6

if.then61.5.done_crit_edge:                       ; preds = %if.then61.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end54.6:                                       ; preds = %if.then61.5
  %117 = ptrtoint ptr %arrayidx56.6 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx56.6, align 4
  %add.6 = add i32 %118, 1
  %pages.i255.6 = getelementptr inbounds %struct.extent_buffer, ptr %116, i32 0, i32 12
  %119 = ptrtoint ptr %pages.i255.6 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pages.i255.6, align 4
  %call.i256.6 = call ptr @page_address(ptr noundef %120) #14
  %121 = ptrtoint ptr %116 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %116, align 8
  %conv.i257.6 = trunc i64 %122 to i32
  %and.i258.6 = and i32 %conv.i257.6, 4095
  %add.ptr.i259.6 = getelementptr i8, ptr %call.i256.6, i32 %and.i258.6
  %nritems.i260.6 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i259.6, i32 0, i32 7
  %123 = ptrtoint ptr %nritems.i260.6 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %nritems.i260.6, align 1
  %125 = call i32 @llvm.bswap.i32(i32 %124) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %add.6, i32 %125)
  %cmp60.not.6 = icmp ult i32 %add.6, %125
  br i1 %cmp60.not.6, label %if.end54.6.for.cond.preheader_crit_edge, label %if.end54.6.done_crit_edge

if.end54.6.done_crit_edge:                        ; preds = %if.end54.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end54.6.for.cond.preheader_crit_edge:          ; preds = %if.end54.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.preheader

if.then70:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  %126 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %path, align 4
  call void @btrfs_tree_read_unlock(ptr noundef %127) #14
  %128 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %arrayidx74, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %for.cond.preheader.if.end75_crit_edge
  %129 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %path, align 4
  call void @free_extent_buffer(ptr noundef %130) #14
  %131 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %path, align 4
  br i1 %cmp60.not, label %if.end75.for.end_crit_edge, label %for.body.1

if.end75.for.end_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.1:                                       ; preds = %if.end75
  %132 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool69.not.1 = icmp eq i8 %133, 0
  br i1 %tobool69.not.1, label %for.body.1.if.end75.1_crit_edge, label %if.then70.1

for.body.1.if.end75.1_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75.1

if.then70.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #16
  %134 = ptrtoint ptr %arrayidx72.1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx72.1, align 4
  call void @btrfs_tree_read_unlock(ptr noundef %135) #14
  %136 = ptrtoint ptr %arrayidx74.1 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %arrayidx74.1, align 1
  br label %if.end75.1

if.end75.1:                                       ; preds = %if.then70.1, %for.body.1.if.end75.1_crit_edge
  %137 = ptrtoint ptr %arrayidx77.1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx77.1, align 4
  call void @free_extent_buffer(ptr noundef %138) #14
  %139 = ptrtoint ptr %arrayidx77.1 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %arrayidx77.1, align 4
  br i1 %exitcond.not.1, label %if.end75.1.for.end_crit_edge, label %for.body.2

if.end75.1.for.end_crit_edge:                     ; preds = %if.end75.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.2:                                       ; preds = %if.end75.1
  %140 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool69.not.2 = icmp eq i8 %141, 0
  br i1 %tobool69.not.2, label %for.body.2.if.end75.2_crit_edge, label %if.then70.2

for.body.2.if.end75.2_crit_edge:                  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75.2

if.then70.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #16
  %142 = ptrtoint ptr %arrayidx72.2 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx72.2, align 4
  call void @btrfs_tree_read_unlock(ptr noundef %143) #14
  %144 = ptrtoint ptr %arrayidx74.2 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %arrayidx74.2, align 1
  br label %if.end75.2

if.end75.2:                                       ; preds = %if.then70.2, %for.body.2.if.end75.2_crit_edge
  %145 = ptrtoint ptr %arrayidx77.2 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx77.2, align 4
  call void @free_extent_buffer(ptr noundef %146) #14
  %147 = ptrtoint ptr %arrayidx77.2 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %arrayidx77.2, align 4
  br i1 %exitcond.not.2, label %if.end75.2.for.end_crit_edge, label %for.body.3

if.end75.2.for.end_crit_edge:                     ; preds = %if.end75.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.3:                                       ; preds = %if.end75.2
  %148 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool69.not.3 = icmp eq i8 %149, 0
  br i1 %tobool69.not.3, label %for.body.3.if.end75.3_crit_edge, label %if.then70.3

for.body.3.if.end75.3_crit_edge:                  ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75.3

if.then70.3:                                      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #16
  %150 = ptrtoint ptr %arrayidx72.3 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx72.3, align 4
  call void @btrfs_tree_read_unlock(ptr noundef %151) #14
  %152 = ptrtoint ptr %arrayidx74.3 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %arrayidx74.3, align 1
  br label %if.end75.3

if.end75.3:                                       ; preds = %if.then70.3, %for.body.3.if.end75.3_crit_edge
  %153 = ptrtoint ptr %arrayidx77.3 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx77.3, align 4
  call void @free_extent_buffer(ptr noundef %154) #14
  %155 = ptrtoint ptr %arrayidx77.3 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %arrayidx77.3, align 4
  br i1 %exitcond.not.3, label %if.end75.3.for.end_crit_edge, label %for.body.4

if.end75.3.for.end_crit_edge:                     ; preds = %if.end75.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.4:                                       ; preds = %if.end75.3
  %156 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool69.not.4 = icmp eq i8 %157, 0
  br i1 %tobool69.not.4, label %for.body.4.if.end75.4_crit_edge, label %if.then70.4

for.body.4.if.end75.4_crit_edge:                  ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75.4

if.then70.4:                                      ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #16
  %158 = ptrtoint ptr %arrayidx72.4 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx72.4, align 4
  call void @btrfs_tree_read_unlock(ptr noundef %159) #14
  %160 = ptrtoint ptr %arrayidx74.4 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %arrayidx74.4, align 1
  br label %if.end75.4

if.end75.4:                                       ; preds = %if.then70.4, %for.body.4.if.end75.4_crit_edge
  %161 = ptrtoint ptr %arrayidx77.4 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx77.4, align 4
  call void @free_extent_buffer(ptr noundef %162) #14
  %163 = ptrtoint ptr %arrayidx77.4 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %arrayidx77.4, align 4
  br i1 %exitcond.not.4, label %if.end75.4.for.end_crit_edge, label %for.body.5

if.end75.4.for.end_crit_edge:                     ; preds = %if.end75.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.5:                                       ; preds = %if.end75.4
  %164 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool69.not.5 = icmp eq i8 %165, 0
  br i1 %tobool69.not.5, label %for.body.5.if.end75.5_crit_edge, label %if.then70.5

for.body.5.if.end75.5_crit_edge:                  ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75.5

if.then70.5:                                      ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #16
  %166 = ptrtoint ptr %arrayidx72.5 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx72.5, align 4
  call void @btrfs_tree_read_unlock(ptr noundef %167) #14
  %168 = ptrtoint ptr %arrayidx74.5 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %arrayidx74.5, align 1
  br label %if.end75.5

if.end75.5:                                       ; preds = %if.then70.5, %for.body.5.if.end75.5_crit_edge
  %169 = ptrtoint ptr %arrayidx77.5 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx77.5, align 4
  call void @free_extent_buffer(ptr noundef %170) #14
  %171 = ptrtoint ptr %arrayidx77.5 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr null, ptr %arrayidx77.5, align 4
  br i1 %exitcond.not.5, label %if.end75.5.for.end_crit_edge, label %for.body.6

if.end75.5.for.end_crit_edge:                     ; preds = %if.end75.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.6:                                       ; preds = %if.end75.5
  %172 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool69.not.6 = icmp eq i8 %173, 0
  br i1 %tobool69.not.6, label %for.body.6.if.end75.6_crit_edge, label %if.then70.6

for.body.6.if.end75.6_crit_edge:                  ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75.6

if.then70.6:                                      ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #16
  %174 = ptrtoint ptr %arrayidx72.6 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx72.6, align 4
  call void @btrfs_tree_read_unlock(ptr noundef %175) #14
  %176 = ptrtoint ptr %arrayidx74.6 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %arrayidx74.6, align 1
  br label %if.end75.6

if.end75.6:                                       ; preds = %if.then70.6, %for.body.6.if.end75.6_crit_edge
  %177 = ptrtoint ptr %arrayidx77.6 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx77.6, align 4
  call void @free_extent_buffer(ptr noundef %178) #14
  %179 = ptrtoint ptr %arrayidx77.6 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr null, ptr %arrayidx77.6, align 4
  br label %for.end

for.end:                                          ; preds = %if.end75.6, %if.end75.5.for.end_crit_edge, %if.end75.4.for.end_crit_edge, %if.end75.3.for.end_crit_edge, %if.end75.2.for.end_crit_edge, %if.end75.1.for.end_crit_edge, %if.end75.for.end_crit_edge
  %180 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %.lcssa290, ptr %next, align 4
  %call81 = call fastcc i32 @read_block_for_search(ptr noundef %root, ptr noundef %path, ptr noundef nonnull %next, i32 noundef %level.0.lcssa291, i32 noundef %add.lcssa, ptr noundef nonnull %key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call81)
  %cmp82 = icmp eq i32 %call81, -11
  br i1 %cmp82, label %for.end.again.backedge_crit_edge, label %if.end84

for.end.again.backedge_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.backedge

if.end84:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp85 = icmp slt i32 %call81, 0
  br i1 %cmp85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_release_path(ptr noundef %path)
  br label %done

if.end87:                                         ; preds = %if.end84
  %181 = ptrtoint ptr %keep_locks to i32
  call void @__asan_load1_noabort(i32 %181)
  %bf.load88 = load i8, ptr %keep_locks, align 2
  %182 = and i8 %bf.load88, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool92.not = icmp eq i8 %182, 0
  br i1 %tobool92.not, label %if.then93, label %if.end87.while.end_crit_edge

if.end87.while.end_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then93:                                        ; preds = %if.end87
  %183 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %next, align 4
  %call94 = call i32 @btrfs_try_tree_read_lock(ptr noundef %184) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  %tobool95.not.not = xor i1 %tobool95.not, true
  %brmerge = or i1 %tobool.not, %tobool95.not.not
  br i1 %brmerge, label %if.end100, label %if.then98

if.then98:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #16
  call void @free_extent_buffer(ptr noundef %184) #14
  call void @btrfs_release_path(ptr noundef %path)
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 4650, i32 noundef 0) #14
  %call.i261 = call i32 @__cond_resched() #14
  br label %again.backedge

again.backedge:                                   ; preds = %if.end125.again.backedge_crit_edge, %if.then98, %for.end.again.backedge_crit_edge
  br label %again

if.end100:                                        ; preds = %if.then93
  br i1 %tobool95.not, label %if.then102, label %if.end100.while.end_crit_edge

if.end100.while.end_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then102:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_read_lock(ptr noundef %184) #14
  br label %while.end

while.end:                                        ; preds = %if.then102, %if.end100.while.end_crit_edge, %if.end87.while.end_crit_edge
  %arrayidx106 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %level.0.lcssa291
  %185 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %add.lcssa, ptr %arrayidx106, align 4
  br label %while.cond107

while.cond107:                                    ; preds = %while.cond107.backedge, %while.end
  %level.1 = phi i32 [ %level.0.lcssa291, %while.end ], [ %dec, %while.cond107.backedge ]
  %dec = add nsw i32 %level.1, -1
  %186 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %next, align 4
  %arrayidx110 = getelementptr [8 x ptr], ptr %path, i32 0, i32 %dec
  %188 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %187, ptr %arrayidx110, align 4
  %arrayidx112 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %dec
  %189 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %arrayidx112, align 4
  %190 = ptrtoint ptr %keep_locks to i32
  call void @__asan_load1_noabort(i32 %190)
  %bf.load114 = load i8, ptr %keep_locks, align 2
  %191 = and i8 %bf.load114, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool118.not = icmp eq i8 %191, 0
  br i1 %tobool118.not, label %if.then119, label %while.cond107.if.end122_crit_edge

while.cond107.if.end122_crit_edge:                ; preds = %while.cond107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end122

if.then119:                                       ; preds = %while.cond107
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx121 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 2, i32 %dec
  %192 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 2, ptr %arrayidx121, align 1
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %while.cond107.if.end122_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool123.not = icmp eq i32 %dec, 0
  br i1 %tobool123.not, label %if.end122.done_crit_edge, label %if.end125

if.end122.done_crit_edge:                         ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %done

if.end125:                                        ; preds = %if.end122
  %call126 = call fastcc i32 @read_block_for_search(ptr noundef %root, ptr noundef %path, ptr noundef nonnull %next, i32 noundef %dec, i32 noundef 0, ptr noundef nonnull %key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call126)
  %cmp127 = icmp eq i32 %call126, -11
  br i1 %cmp127, label %if.end125.again.backedge_crit_edge, label %if.end129

if.end125.again.backedge_crit_edge:               ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.backedge

if.end129:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp130 = icmp slt i32 %call126, 0
  br i1 %cmp130, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_release_path(ptr noundef %path)
  br label %done

if.end132:                                        ; preds = %if.end129
  %193 = ptrtoint ptr %keep_locks to i32
  call void @__asan_load1_noabort(i32 %193)
  %bf.load134 = load i8, ptr %keep_locks, align 2
  %194 = and i8 %bf.load134, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool138.not = icmp eq i8 %194, 0
  br i1 %tobool138.not, label %if.then139, label %if.end132.while.cond107.backedge_crit_edge

if.end132.while.cond107.backedge_crit_edge:       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond107.backedge

if.then139:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #16
  %195 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %next, align 4
  call void @btrfs_tree_read_lock(ptr noundef %196) #14
  br label %while.cond107.backedge

while.cond107.backedge:                           ; preds = %if.then139, %if.end132.while.cond107.backedge_crit_edge
  br label %while.cond107

done:                                             ; preds = %if.then131, %if.end122.done_crit_edge, %if.then86, %if.end54.6.done_crit_edge, %if.then61.5.done_crit_edge, %if.then61.4.done_crit_edge, %if.then61.3.done_crit_edge, %if.then61.2.done_crit_edge, %if.then61.1.done_crit_edge, %if.then61.done_crit_edge, %if.end48.done_crit_edge, %land.lhs.true40.critedge.done_crit_edge, %if.then34, %if.then32.done_crit_edge, %if.end17.done_crit_edge
  %ret.1 = phi i32 [ %call81, %if.then86 ], [ %call126, %if.then131 ], [ 0, %if.then34 ], [ 0, %if.then32.done_crit_edge ], [ 0, %if.end122.done_crit_edge ], [ 1, %if.then61.5.done_crit_edge ], [ 1, %if.then61.4.done_crit_edge ], [ 1, %if.then61.3.done_crit_edge ], [ 1, %if.then61.2.done_crit_edge ], [ 1, %if.then61.1.done_crit_edge ], [ 1, %if.then61.done_crit_edge ], [ 1, %if.end48.done_crit_edge ], [ 1, %if.end54.6.done_crit_edge ], [ %ret.0, %if.end17.done_crit_edge ], [ 0, %land.lhs.true40.critedge.done_crit_edge ]
  call fastcc void @unlock_up(ptr noundef %path, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null)
  br i1 %need_commit_sem.2.off0, label %if.then143, label %done.cleanup_crit_edge

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then143:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #16
  %197 = ptrtoint ptr %keep_locks to i32
  call void @__asan_load1_noabort(i32 %197)
  %bf.load145 = load i8, ptr %keep_locks, align 2
  %bf.set147 = or i8 %bf.load145, 8
  store i8 %bf.set147, ptr %keep_locks, align 2
  %call148 = call fastcc i32 @finish_need_commit_sem_search(ptr noundef %path)
  call void @up_read(ptr noundef %commit_root_sem) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool150.not = icmp eq i32 %call148, 0
  %spec.select = select i1 %tobool150.not, i32 %ret.1, i32 %call148
  br label %cleanup

cleanup:                                          ; preds = %if.then143, %done.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %spec.select, %if.then143 ], [ %ret.1, %done.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_tree_read_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_try_tree_read_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_previous_extent_item(ptr noundef %root, ptr noundef %path, i64 noundef %min_objectid) local_unnamed_addr #3 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %0 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end31.while.cond_crit_edge, %entry
  %1 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.cond
  %call = call i32 @btrfs_prev_leaf(ptr noundef %root, ptr noundef %path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.else:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  %dec = add i32 %2, -1
  %3 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dec, ptr %slots, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then.if.end5_crit_edge
  %4 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %7) #14
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %5, align 8
  %conv.i = trunc i64 %9 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %10 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %nritems.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8 = icmp eq i32 %11, 0
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %12 = call i32 @llvm.bswap.i32(i32 %11) #14
  %13 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp13 = icmp eq i32 %14, %12
  br i1 %cmp13, label %if.then14, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %dec17 = add i32 %12, -1
  %15 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dec17, ptr %slots, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end10.if.end18_crit_edge
  %16 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %mul.i.i.i.i = mul i32 %17, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %18 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %5, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #14
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %0, align 8
  %21 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %disk_key.i, align 8
  %23 = call i64 @llvm.bswap.i64(i64 %22) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %min_objectid)
  %cmp21 = icmp ult i64 %23, %min_objectid
  br i1 %cmp21, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %24 = and i8 %20, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -88, i8 %24)
  %switch = icmp eq i8 %24, -88
  br i1 %switch, label %if.end23.cleanup_crit_edge, label %if.end31

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %min_objectid)
  %cmp33 = icmp eq i64 %23, %min_objectid
  call void @__sanitizer_cov_trace_const_cmp1(i8 -88, i8 %20)
  %cmp37 = icmp ult i8 %20, -88
  %or.cond = select i1 %cmp33, i1 %cmp37, i1 false
  br i1 %or.cond, label %if.end31.cleanup_crit_edge, label %if.end31.while.cond_crit_edge

if.end31.while.cond_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end31.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 1, %if.end31.cleanup_crit_edge ], [ 1, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_ref_for_cow(ptr noundef %trans, ptr noundef %root, ptr noundef %buf, ptr noundef %cow, ptr nocapture noundef writeonly %last_ref) unnamed_addr #4 align 64 {
entry:
  %refs = alloca i64, align 8
  %flags = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %refs) #14
  %2 = ptrtoint ptr %refs to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %refs, align 8, !annotation !133
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flags) #14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %flags, align 8, !annotation !133
  %state.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 5
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %land.lhs.true.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true.i:                                  ; preds = %entry
  %node.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 1
  %7 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %node.i, align 4
  %cmp.not.i = icmp eq ptr %8, %buf
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else_crit_edge, label %land.lhs.true1.i

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %commit_root.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 2
  %9 = ptrtoint ptr %commit_root.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %commit_root.i, align 8
  %cmp2.not.i = icmp eq ptr %10, %buf
  br i1 %cmp2.not.i, label %land.lhs.true1.i.if.else_crit_edge, label %land.lhs.true3.i

land.lhs.true1.i.if.else_crit_edge:               ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true3.i:                                 ; preds = %land.lhs.true1.i
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %buf, i32 0, i32 12
  %11 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages.i.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %12) #14
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %buf, align 8
  %conv.i.i = trunc i64 %14 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %generation.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %generation.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %generation.i.i, align 1
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #14
  %last_snapshot.i.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 6, i32 6
  %18 = ptrtoint ptr %last_snapshot.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %last_snapshot.i.i, align 1
  %20 = tail call i64 @llvm.bswap.i64(i64 %19) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %20)
  %cmp6.not.i = icmp ugt i64 %17, %20
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %land.lhs.true3.i.if.then_crit_edge

land.lhs.true3.i.if.then_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false.i:                                  ; preds = %land.lhs.true3.i
  %21 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pages.i.i, align 4
  %call.i.i.i = tail call ptr @page_address(ptr noundef %22) #14
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %buf, align 8
  %conv.i.i.i = trunc i64 %24 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 4095
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %flags.i.i.i, align 1
  %27 = and i64 %26, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool8.not.i = icmp eq i64 %27, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.if.else_crit_edge, label %lor.lhs.false.i.if.then_crit_edge

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then:                                          ; preds = %lor.lhs.false.i.if.then_crit_edge, %land.lhs.true3.i.if.then_crit_edge
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %buf, align 8
  %30 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pages.i.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %31) #14
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %buf, align 8
  %conv.i = trunc i64 %33 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %34 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %level.i, align 1
  %conv = zext i8 %35 to i64
  %call3 = call i32 @btrfs_lookup_extent_info(ptr noundef %trans, ptr noundef %1, i64 noundef %29, i64 noundef %conv, i32 noundef 1, ptr noundef nonnull %refs, ptr noundef nonnull %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup115_crit_edge

if.then.cleanup115_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115

if.end:                                           ; preds = %if.then
  %36 = ptrtoint ptr %refs to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %refs, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %cmp = icmp eq i64 %37, 0
  br i1 %cmp, label %if.then7, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, i32, ptr, ...) @__btrfs_handle_fs_error(ptr noundef %1, ptr noundef nonnull @__func__.update_ref_for_cow, i32 noundef 297, i32 noundef -30, ptr noundef null) #17
  br label %cleanup115

if.else:                                          ; preds = %lor.lhs.false.i.if.else_crit_edge, %land.lhs.true1.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %entry.if.else_crit_edge
  %38 = ptrtoint ptr %refs to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1, ptr %refs, align 8
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %39 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %root_key, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8, i64 %40)
  %cmp9 = icmp eq i64 %40, -8
  br i1 %cmp9, label %if.else.if.then14_crit_edge, label %lor.lhs.false

if.else.if.then14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.else
  %pages.i.i180 = getelementptr inbounds %struct.extent_buffer, ptr %buf, i32 0, i32 12
  %41 = ptrtoint ptr %pages.i.i180 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pages.i.i180, align 4
  %call.i.i181 = tail call ptr @page_address(ptr noundef %42) #14
  %43 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %buf, align 8
  %conv.i.i182 = trunc i64 %44 to i32
  %and.i.i183 = and i32 %conv.i.i182, 4095
  %add.ptr.i.i184 = getelementptr i8, ptr %call.i.i181, i32 %and.i.i183
  %flags.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i184, i32 0, i32 3
  %45 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %flags.i.i, align 1
  %conv.i185202 = and i64 %46, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv.i185202)
  %cmp12 = icmp eq i64 %conv.i185202, 0
  br i1 %cmp12, label %lor.lhs.false.if.then14_crit_edge, label %if.else15

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.else.if.then14_crit_edge
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 256, ptr %flags, align 8
  br label %if.end17

if.else15:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 0, ptr %flags, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then14, %if.end.if.end17_crit_edge
  %pages.i186 = getelementptr inbounds %struct.extent_buffer, ptr %buf, i32 0, i32 12
  %49 = ptrtoint ptr %pages.i186 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pages.i186, align 4
  %call.i187 = call ptr @page_address(ptr noundef %50) #14
  %51 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %buf, align 8
  %conv.i188 = trunc i64 %52 to i32
  %and.i189 = and i32 %conv.i188, 4095
  %add.ptr.i190 = getelementptr i8, ptr %call.i187, i32 %and.i189
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i190, i32 0, i32 6
  %53 = ptrtoint ptr %owner.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %owner.i, align 1
  %55 = call i64 @llvm.bswap.i64(i64 %54) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 -504403158265495553, i64 %54)
  %cmp20 = icmp eq i64 %54, -504403158265495553
  br i1 %cmp20, label %land.rhs, label %if.end17.do.end35_crit_edge

if.end17.do.end35_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end35

land.rhs:                                         ; preds = %if.end17
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %flags, align 8
  %and = and i64 %57, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool22.not = icmp eq i64 %and, 0
  br i1 %tobool22.not, label %do.body27, label %land.rhs.do.end35_crit_edge, !prof !121

land.rhs.do.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end35

do.body27:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 311, 0\0A.popsection", ""() #14, !srcloc !155
  unreachable

do.end35:                                         ; preds = %land.rhs.do.end35_crit_edge, %if.end17.do.end35_crit_edge
  %58 = ptrtoint ptr %refs to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %refs, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %59)
  %cmp36 = icmp ugt i64 %59, 1
  br i1 %cmp36, label %if.then38, label %if.else93

if.then38:                                        ; preds = %do.end35
  %root_key39 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %60 = ptrtoint ptr %root_key39 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %root_key39, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %61)
  %cmp41 = icmp eq i64 %55, %61
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8, i64 %61)
  %cmp46 = icmp eq i64 %61, -8
  %or.cond = or i1 %cmp41, %cmp46
  br i1 %or.cond, label %land.lhs.true, label %if.then38.if.else69_crit_edge

if.then38.if.else69_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else69

land.lhs.true:                                    ; preds = %if.then38
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %flags, align 8
  %and48 = and i64 %63, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and48)
  %tobool49.not = icmp eq i64 %and48, 0
  br i1 %tobool49.not, label %if.then50, label %land.lhs.true.if.else69_crit_edge

land.lhs.true.if.else69_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else69

if.then50:                                        ; preds = %land.lhs.true
  %call51 = call i32 @btrfs_inc_ref(ptr noundef %trans, ptr noundef %root, ptr noundef %buf, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.then50.cleanup115_crit_edge

if.then50.cleanup115_crit_edge:                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115

if.end54:                                         ; preds = %if.then50
  %64 = ptrtoint ptr %root_key39 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 8)
  %65 = load i64, ptr %root_key39, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8, i64 %65)
  %cmp57 = icmp eq i64 %65, -8
  br i1 %cmp57, label %if.then59, label %if.end54.if.then85_crit_edge

if.end54.if.then85_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then85

if.then59:                                        ; preds = %if.end54
  %call60 = call i32 @btrfs_dec_ref(ptr noundef %trans, ptr noundef %root, ptr noundef %buf, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.then59.cleanup115_crit_edge

if.then59.cleanup115_crit_edge:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115

if.end63:                                         ; preds = %if.then59
  %call64 = call i32 @btrfs_inc_ref(ptr noundef %trans, ptr noundef %root, ptr noundef %cow, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end63.if.then85_crit_edge, label %if.end63.cleanup115_crit_edge

if.end63.cleanup115_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115

if.end63.if.then85_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then85

if.else69:                                        ; preds = %land.lhs.true.if.else69_crit_edge, %if.then38.if.else69_crit_edge
  %. = zext i1 %cmp46 to i32
  %call77 = call i32 @btrfs_inc_ref(ptr noundef %trans, ptr noundef %root, ptr noundef %cow, i32 noundef %.) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool79.not = icmp eq i32 %call77, 0
  br i1 %tobool79.not, label %if.else69.if.end114_crit_edge, label %if.else69.cleanup115_crit_edge

if.else69.cleanup115_crit_edge:                   ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115

if.else69.if.end114_crit_edge:                    ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

if.then85:                                        ; preds = %if.end63.if.then85_crit_edge, %if.end54.if.then85_crit_edge
  %66 = ptrtoint ptr %pages.i186 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pages.i186, align 4
  %call.i192 = call ptr @page_address(ptr noundef %67) #14
  %68 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %buf, align 8
  %conv.i193 = trunc i64 %69 to i32
  %and.i194 = and i32 %conv.i193, 4095
  %add.ptr.i195 = getelementptr i8, ptr %call.i192, i32 %and.i194
  %level.i196 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i195, i32 0, i32 8
  %70 = ptrtoint ptr %level.i196 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %level.i196, align 1
  %conv87 = zext i8 %71 to i32
  %call88 = call i32 @btrfs_set_disk_extent_flags(ptr noundef %trans, ptr noundef %buf, i64 noundef 256, i32 noundef %conv87, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then85.if.end114_crit_edge, label %if.then85.cleanup115_crit_edge

if.then85.cleanup115_crit_edge:                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115

if.then85.if.end114_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end114

if.else93:                                        ; preds = %do.end35
  %72 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %flags, align 8
  %and94 = and i64 %73, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and94)
  %tobool95.not = icmp eq i64 %and94, 0
  br i1 %tobool95.not, label %if.else93.if.end113_crit_edge, label %if.then96

if.else93.if.end113_crit_edge:                    ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.then96:                                        ; preds = %if.else93
  %root_key97 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %74 = ptrtoint ptr %root_key97 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %75 = load i64, ptr %root_key97, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8, i64 %75)
  %cmp99 = icmp eq i64 %75, -8
  %.204 = zext i1 %cmp99 to i32
  %call104 = call i32 @btrfs_inc_ref(ptr noundef %trans, ptr noundef %root, ptr noundef %cow, i32 noundef %.204) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool106.not = icmp eq i32 %call104, 0
  br i1 %tobool106.not, label %if.end108, label %if.then96.cleanup115_crit_edge

if.then96.cleanup115_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115

if.end108:                                        ; preds = %if.then96
  %call109 = call i32 @btrfs_dec_ref(ptr noundef %trans, ptr noundef %root, ptr noundef %buf, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end108.if.end113_crit_edge, label %if.end108.cleanup115_crit_edge

if.end108.cleanup115_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115

if.end108.if.end113_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.end113:                                        ; preds = %if.end108.if.end113_crit_edge, %if.else93.if.end113_crit_edge
  call void @btrfs_clean_tree_block(ptr noundef %buf) #14
  %76 = ptrtoint ptr %last_ref to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %last_ref, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.then85.if.end114_crit_edge, %if.else69.if.end114_crit_edge
  br label %cleanup115

cleanup115:                                       ; preds = %if.end114, %if.end108.cleanup115_crit_edge, %if.then96.cleanup115_crit_edge, %if.then85.cleanup115_crit_edge, %if.else69.cleanup115_crit_edge, %if.end63.cleanup115_crit_edge, %if.then59.cleanup115_crit_edge, %if.then50.cleanup115_crit_edge, %if.then7, %if.then.cleanup115_crit_edge
  %retval.1 = phi i32 [ -30, %if.then7 ], [ 0, %if.end114 ], [ %call88, %if.then85.cleanup115_crit_edge ], [ %call3, %if.then.cleanup115_crit_edge ], [ %call51, %if.then50.cleanup115_crit_edge ], [ %call60, %if.then59.cleanup115_crit_edge ], [ %call64, %if.end63.cleanup115_crit_edge ], [ %call77, %if.else69.cleanup115_crit_edge ], [ %call104, %if.then96.cleanup115_crit_edge ], [ %call109, %if.end108.cleanup115_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flags) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %refs) #14
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_reloc_cow_block(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_tree_mod_log_insert_root(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_tree_block(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_root_to_dirty_list(ptr noundef %root) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %state = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %trans_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 57
  tail call void @_raw_spin_lock(ptr noundef %trans_lock) #14
  %call6 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %state) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then8:                                         ; preds = %if.end
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %8 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %root_key, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %9)
  %cmp = icmp eq i64 %9, 2
  %dirty_list = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 29
  %dirty_cowonly_roots = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 99
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dirty_list) #14
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then8
  br i1 %call.i.i, label %if.end.i.i, label %if.then9.__list_del_entry.exit.i_crit_edge

if.then9.__list_del_entry.exit.i_crit_edge:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 29, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %dirty_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dirty_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then9.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 99, i32 1
  %16 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dirty_list, ptr noundef %17, ptr noundef %dirty_cowonly_roots) #14
  br i1 %call.i.i.i, label %__list_del_entry.exit.i.if.end13.sink.split_crit_edge, label %__list_del_entry.exit.i.if.end13_crit_edge

__list_del_entry.exit.i.if.end13_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

__list_del_entry.exit.i.if.end13.sink.split_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.sink.split

if.else:                                          ; preds = %if.then8
  br i1 %call.i.i, label %if.end.i.i29, label %if.else.__list_del_entry.exit.i31_crit_edge

if.else.__list_del_entry.exit.i31_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i31

if.end.i.i29:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i27 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 29, i32 1
  %18 = ptrtoint ptr %prev.i.i27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i27, align 4
  %20 = ptrtoint ptr %dirty_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dirty_list, align 4
  %prev1.i.i.i28 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i28, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %__list_del_entry.exit.i31

__list_del_entry.exit.i31:                        ; preds = %if.end.i.i29, %if.else.__list_del_entry.exit.i31_crit_edge
  %24 = ptrtoint ptr %dirty_cowonly_roots to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dirty_cowonly_roots, align 4
  %call.i.i.i30 = tail call zeroext i1 @__list_add_valid(ptr noundef %dirty_list, ptr noundef %dirty_cowonly_roots, ptr noundef %25) #14
  br i1 %call.i.i.i30, label %if.end.i.i.i33, label %__list_del_entry.exit.i31.if.end13_crit_edge

__list_del_entry.exit.i31.if.end13_crit_edge:     ; preds = %__list_del_entry.exit.i31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.end.i.i.i33:                                   ; preds = %__list_del_entry.exit.i31
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.end.i.i.i33, %__list_del_entry.exit.i.if.end13.sink.split_crit_edge
  %prev1.i.i2.i.sink = phi ptr [ %prev1.i.i2.i, %if.end.i.i.i33 ], [ %prev.i2.i, %__list_del_entry.exit.i.if.end13.sink.split_crit_edge ]
  %.sink = phi ptr [ %25, %if.end.i.i.i33 ], [ %dirty_cowonly_roots, %__list_del_entry.exit.i.if.end13.sink.split_crit_edge ]
  %dirty_cowonly_roots.sink34 = phi ptr [ %dirty_cowonly_roots, %if.end.i.i.i33 ], [ %17, %__list_del_entry.exit.i.if.end13.sink.split_crit_edge ]
  %26 = ptrtoint ptr %prev1.i.i2.i.sink to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dirty_list, ptr %prev1.i.i2.i.sink, align 4
  %27 = ptrtoint ptr %dirty_list to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %.sink, ptr %dirty_list, align 4
  %prev3.i.i.i32 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 29, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dirty_cowonly_roots.sink34, ptr %prev3.i.i.i32, align 4
  %29 = ptrtoint ptr %dirty_cowonly_roots.sink34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %dirty_list, ptr %dirty_cowonly_roots.sink34, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %__list_del_entry.exit.i31.if.end13_crit_edge, %__list_del_entry.exit.i.if.end13_crit_edge, %if.end.if.end13_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %trans_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_tree_mod_log_insert_key(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_tree_mod_log_free_eb(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_buffer_stale(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_lookup_extent_info(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_handle_fs_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_dec_ref(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_set_disk_extent_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_64(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_cow_block(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_lock_root_node(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @split_leaf(ptr noundef %trans, ptr noundef %root, ptr nocapture noundef readonly %ins_key, ptr noundef %path, i32 noundef %data_size, i32 noundef %extend) unnamed_addr #4 align 64 {
entry:
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #14
  %0 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 2
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %2 = call ptr @memset(ptr %disk_key, i32 255, i32 17)
  %3 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fs_info1, align 8
  %5 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %7 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extend)
  %tobool.not = icmp eq i32 %extend, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mul.i.i.i = mul i32 %8, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %9 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = tail call i32 @btrfs_get_32(ptr noundef %6, ptr noundef %9, i32 noundef 21) #14
  %add = add i32 %data_size, 25
  %add3 = add i32 %add, %call.i.i
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %4, i32 0, i32 166
  %10 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nodesize.i, align 8
  %sub.i = add i32 %11, -101
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %sub.i)
  %cmp = icmp ugt i32 %add3, %sub.i
  br i1 %cmp, label %land.lhs.true.cleanup188_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.cleanup188_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup188

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_size)
  %tobool5.not = icmp eq i32 %data_size, 0
  br i1 %tobool5.not, label %if.end.if.end38_crit_edge, label %land.lhs.true6

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

land.lhs.true6:                                   ; preds = %if.end
  %arrayidx8 = getelementptr [8 x ptr], ptr %path, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %land.lhs.true6.if.end38_crit_edge, label %if.then10

land.lhs.true6.if.end38_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then10:                                        ; preds = %land.lhs.true6
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %6, i32 0, i32 12
  %14 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %15) #14
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %6, align 8
  %conv.i = trunc i64 %17 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %18 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %nritems.i, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %20)
  %cmp12 = icmp ult i32 %8, %20
  br i1 %cmp12, label %if.then13, label %if.then10.if.end15_crit_edge

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  %call14 = tail call i32 @btrfs_leaf_free_space(ptr noundef %6)
  %sub = sub i32 %data_size, %call14
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then10.if.end15_crit_edge
  %space_needed.0 = phi i32 [ %sub, %if.then13 ], [ %data_size, %if.then10.if.end15_crit_edge ]
  %call16 = tail call fastcc i32 @push_leaf_right(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i32 noundef %space_needed.0, i32 noundef %space_needed.0, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.cleanup188_crit_edge, label %if.end19

if.end15.cleanup188_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup188

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool20.not = icmp eq i32 %call16, 0
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.then21

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp22 = icmp sgt i32 %8, 0
  br i1 %cmp22, label %if.then23, label %if.then21.if.end26_crit_edge

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  %call24 = tail call i32 @btrfs_leaf_free_space(ptr noundef %6)
  %sub25 = sub i32 %data_size, %call24
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.then21.if.end26_crit_edge
  %space_needed.1 = phi i32 [ %sub25, %if.then23 ], [ %data_size, %if.then21.if.end26_crit_edge ]
  %call27 = tail call fastcc i32 @push_leaf_left(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i32 noundef %space_needed.1, i32 noundef %space_needed.1, i32 noundef 0, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.cleanup188_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26.cleanup188_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup188

cleanup:                                          ; preds = %if.end26.cleanup_crit_edge, %if.end19.cleanup_crit_edge
  %21 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %path, align 4
  %call34 = tail call i32 @btrfs_leaf_free_space(ptr noundef %22)
  call void @__sanitizer_cov_trace_cmp4(i32 %call34, i32 %data_size)
  %cmp35.not = icmp slt i32 %call34, %data_size
  br i1 %cmp35.not, label %cleanup.if.end38_crit_edge, label %cleanup.cleanup188_crit_edge

cleanup.cleanup188_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup188

cleanup.if.end38_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.end38:                                         ; preds = %cleanup.if.end38_crit_edge, %land.lhs.true6.if.end38_crit_edge, %if.end.if.end38_crit_edge
  %arrayidx40 = getelementptr [8 x ptr], ptr %path, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx40, align 4
  %tobool41.not = icmp eq ptr %24, null
  br i1 %tobool41.not, label %if.then42, label %if.end38.if.end47_crit_edge

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then42:                                        ; preds = %if.end38
  %call43 = tail call fastcc i32 @insert_new_root(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then42.if.end47_crit_edge, label %if.then42.cleanup188_crit_edge

if.then42.cleanup188_crit_edge:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup188

if.then42.if.end47_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.end47:                                         ; preds = %if.then42.if.end47_crit_edge, %if.end38.if.end47_crit_edge
  %nodesize.i343 = getelementptr inbounds %struct.btrfs_fs_info, ptr %4, i32 0, i32 166
  %tobool5.not.not = xor i1 %tobool5.not, true
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = or i1 %tobool5.not, %tobool.not.not
  %brmerge.not = xor i1 %brmerge, true
  %offset.i = getelementptr inbounds %struct.btrfs_key, ptr %ins_key, i32 0, i32 2
  %type.i = getelementptr inbounds %struct.btrfs_key, ptr %ins_key, i32 0, i32 1
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %accounting_lock.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 11
  %bytes_used.i.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 6, i32 5
  br label %again.outer

again.outer:                                      ; preds = %do.body.again.outer_crit_edge, %if.end47
  %tobool123.not = phi i1 [ false, %do.body.again.outer_crit_edge ], [ true, %if.end47 ]
  %tried_avoid_double.0.ph = phi i32 [ %tried_avoid_double.0, %do.body.again.outer_crit_edge ], [ 0, %if.end47 ]
  br label %again

again:                                            ; preds = %push_for_double.again_crit_edge, %again.outer
  %tried_avoid_double.0 = phi i32 [ 1, %push_for_double.again_crit_edge ], [ %tried_avoid_double.0.ph, %again.outer ]
  %25 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %path, align 4
  %27 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %slots, align 4
  %pages.i337 = getelementptr inbounds %struct.extent_buffer, ptr %26, i32 0, i32 12
  %29 = ptrtoint ptr %pages.i337 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pages.i337, align 4
  %call.i338 = call ptr @page_address(ptr noundef %30) #14
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %26, align 8
  %conv.i339 = trunc i64 %32 to i32
  %and.i340 = and i32 %conv.i339, 4095
  %add.ptr.i341 = getelementptr i8, ptr %call.i338, i32 %and.i340
  %nritems.i342 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i341, i32 0, i32 7
  %33 = ptrtoint ptr %nritems.i342 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %nritems.i342, align 1
  %35 = call i32 @llvm.bswap.i32(i32 %34) #14
  %add53 = add i32 %35, 1
  %div329 = lshr i32 %add53, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div329, i32 %28)
  %cmp54.not = icmp sgt i32 %div329, %28
  br i1 %cmp54.not, label %if.else81, label %if.then55

if.then55:                                        ; preds = %again
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %34)
  %cmp56 = icmp eq i32 %34, 16777216
  br i1 %cmp56, label %if.then55.if.then62_crit_edge, label %lor.lhs.false

if.then55.if.then62_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then62

lor.lhs.false:                                    ; preds = %if.then55
  %sub57 = sub i32 %35, %div329
  %call58 = call fastcc i32 @leaf_space_used(ptr noundef %26, i32 noundef %div329, i32 noundef %sub57)
  %add59 = add i32 %call58, %data_size
  %36 = ptrtoint ptr %nodesize.i343 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nodesize.i343, align 8
  %sub.i344 = add i32 %37, -101
  call void @__sanitizer_cov_trace_cmp4(i32 %add59, i32 %sub.i344)
  %cmp61 = icmp ugt i32 %add59, %sub.i344
  br i1 %cmp61, label %lor.lhs.false.if.then62_crit_edge, label %lor.lhs.false.if.else121_crit_edge

lor.lhs.false.if.else121_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else121

lor.lhs.false.if.then62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false.if.then62_crit_edge, %if.then55.if.then62_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %28)
  %cmp63.not = icmp ugt i32 %35, %28
  br i1 %cmp63.not, label %land.lhs.true66, label %if.then62.if.then120_crit_edge

if.then62.if.then120_crit_edge:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then120

land.lhs.true66:                                  ; preds = %if.then62
  %sub67 = sub i32 %35, %28
  %call68 = call fastcc i32 @leaf_space_used(ptr noundef %26, i32 noundef %28, i32 noundef %sub67)
  %add69 = add i32 %call68, %data_size
  %38 = ptrtoint ptr %nodesize.i343 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nodesize.i343, align 8
  %sub.i346 = add i32 %39, -101
  call void @__sanitizer_cov_trace_cmp4(i32 %add69, i32 %sub.i346)
  %cmp71 = icmp ugt i32 %add69, %sub.i346
  br i1 %cmp71, label %if.then72, label %land.lhs.true66.if.else121_crit_edge

land.lhs.true66.if.else121_crit_edge:             ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else121

if.then72:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tried_avoid_double.0)
  %tobool75.not = icmp eq i32 %tried_avoid_double.0, 0
  %or.cond = select i1 %tobool5.not.not, i1 %tobool75.not, i1 false
  br i1 %or.cond, label %if.then72.push_for_double_crit_edge, label %if.then72.if.else121_crit_edge

if.then72.if.else121_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else121

if.then72.push_for_double_crit_edge:              ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #16
  br label %push_for_double

if.else81:                                        ; preds = %again
  %call82 = call fastcc i32 @leaf_space_used(ptr noundef %26, i32 noundef 0, i32 noundef %div329)
  %add83 = add i32 %call82, %data_size
  %40 = ptrtoint ptr %nodesize.i343 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nodesize.i343, align 8
  %sub.i348 = add i32 %41, -101
  call void @__sanitizer_cov_trace_cmp4(i32 %add83, i32 %sub.i348)
  %cmp85 = icmp ugt i32 %add83, %sub.i348
  br i1 %cmp85, label %if.then86, label %if.else81.if.else121_crit_edge

if.else81.if.else121_crit_edge:                   ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else121

if.then86:                                        ; preds = %if.else81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp91 = icmp eq i32 %28, 0
  %or.cond331 = select i1 %brmerge.not, i1 %cmp91, i1 false
  br i1 %or.cond331, label %if.then86.if.then120_crit_edge, label %if.else93

if.then86.if.then120_crit_edge:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then120

if.else93:                                        ; preds = %if.then86
  %or.cond334 = select i1 %brmerge, i1 %cmp91, i1 false
  br i1 %or.cond334, label %if.else93.if.else121_crit_edge, label %if.else100

if.else93.if.else121_crit_edge:                   ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else121

if.else100:                                       ; preds = %if.else93
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %28)
  %cmp101.not = icmp eq i32 %35, %28
  br i1 %cmp101.not, label %if.else100.if.else121_crit_edge, label %land.lhs.true102

if.else100.if.else121_crit_edge:                  ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else121

land.lhs.true102:                                 ; preds = %if.else100
  %sub103 = sub i32 %35, %28
  %call104 = call fastcc i32 @leaf_space_used(ptr noundef %26, i32 noundef %28, i32 noundef %sub103)
  %add105 = add i32 %call104, %data_size
  %42 = ptrtoint ptr %nodesize.i343 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nodesize.i343, align 8
  %sub.i350 = add i32 %43, -101
  call void @__sanitizer_cov_trace_cmp4(i32 %add105, i32 %sub.i350)
  %cmp107 = icmp ugt i32 %add105, %sub.i350
  br i1 %cmp107, label %if.then108, label %land.lhs.true102.if.else121_crit_edge

land.lhs.true102.if.else121_crit_edge:            ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else121

if.then108:                                       ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tried_avoid_double.0)
  %tobool111.not = icmp eq i32 %tried_avoid_double.0, 0
  %or.cond336 = select i1 %tobool5.not.not, i1 %tobool111.not, i1 false
  br i1 %or.cond336, label %if.then108.push_for_double_crit_edge, label %if.then108.if.else121_crit_edge

if.then108.if.else121_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else121

if.then108.push_for_double_crit_edge:             ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #16
  br label %push_for_double

if.then120:                                       ; preds = %if.then86.if.then120_crit_edge, %if.then62.if.then120_crit_edge
  %44 = ptrtoint ptr %offset.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %offset.i, align 1
  %46 = call i64 @llvm.bswap.i64(i64 %45) #14
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %46, ptr %1, align 1
  %48 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %type.i, align 1
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %0, align 8
  %51 = ptrtoint ptr %ins_key to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %ins_key, align 1
  %53 = call i64 @llvm.bswap.i64(i64 %52) #14
  %54 = ptrtoint ptr %disk_key to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %disk_key, align 8
  br label %if.end122

if.else121:                                       ; preds = %if.then108.if.else121_crit_edge, %land.lhs.true102.if.else121_crit_edge, %if.else100.if.else121_crit_edge, %if.else93.if.else121_crit_edge, %if.else81.if.else121_crit_edge, %if.then72.if.else121_crit_edge, %land.lhs.true66.if.else121_crit_edge, %lor.lhs.false.if.else121_crit_edge
  %.lcssa = phi i32 [ %35, %land.lhs.true66.if.else121_crit_edge ], [ %35, %lor.lhs.false.if.else121_crit_edge ], [ %35, %land.lhs.true102.if.else121_crit_edge ], [ %28, %if.else100.if.else121_crit_edge ], [ %35, %if.else81.if.else121_crit_edge ], [ %35, %if.then72.if.else121_crit_edge ], [ %35, %if.else93.if.else121_crit_edge ], [ %35, %if.then108.if.else121_crit_edge ]
  %mid.0.ph = phi i32 [ %28, %land.lhs.true66.if.else121_crit_edge ], [ %div329, %lor.lhs.false.if.else121_crit_edge ], [ %28, %land.lhs.true102.if.else121_crit_edge ], [ %28, %if.else100.if.else121_crit_edge ], [ %div329, %if.else81.if.else121_crit_edge ], [ %28, %if.then72.if.else121_crit_edge ], [ 1, %if.else93.if.else121_crit_edge ], [ %28, %if.then108.if.else121_crit_edge ]
  %cmp167.ph = phi i1 [ false, %land.lhs.true66.if.else121_crit_edge ], [ false, %lor.lhs.false.if.else121_crit_edge ], [ false, %land.lhs.true102.if.else121_crit_edge ], [ false, %if.else100.if.else121_crit_edge ], [ false, %if.else81.if.else121_crit_edge ], [ true, %if.then72.if.else121_crit_edge ], [ false, %if.else93.if.else121_crit_edge ], [ true, %if.then108.if.else121_crit_edge ]
  %mul.i.i.i351 = mul i32 %mid.0.ph, 25
  %add.i.i.i352 = add i32 %mul.i.i.i351, 101
  call void @read_extent_buffer(ptr noundef %26, ptr noundef nonnull %disk_key, i32 noundef %add.i.i.i352, i32 noundef 17) #14
  br label %if.end122

if.end122:                                        ; preds = %if.else121, %if.then120
  %55 = phi i32 [ %.lcssa, %if.else121 ], [ %35, %if.then120 ]
  %cmp167378 = phi i1 [ %cmp167.ph, %if.else121 ], [ false, %if.then120 ]
  %cmp119376 = phi i1 [ false, %if.else121 ], [ true, %if.then120 ]
  %mid.0374 = phi i32 [ %mid.0.ph, %if.else121 ], [ %div329, %if.then120 ]
  %56 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %root_key, align 1
  %58 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %26, align 8
  %cond = select i1 %tobool123.not, i32 6, i32 7
  %call124 = call ptr @btrfs_alloc_tree_block(ptr noundef %trans, ptr noundef %root, i64 noundef 0, i64 noundef %57, ptr noundef nonnull %disk_key, i32 noundef 0, i64 noundef %59, i64 noundef 0, i32 noundef %cond) #14
  %cmp.i = icmp ugt ptr %call124, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then126, label %if.end128

if.then126:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %call124 to i32
  br label %cleanup188

if.end128:                                        ; preds = %if.end122
  %61 = ptrtoint ptr %nodesize.i343 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nodesize.i343, align 8
  call void @_raw_spin_lock(ptr noundef %accounting_lock.i) #14
  %63 = ptrtoint ptr %bytes_used.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %bytes_used.i.i, align 1
  %65 = call i64 @llvm.bswap.i64(i64 %64) #14
  %conv.i353 = zext i32 %62 to i64
  %add.i = add i64 %65, %conv.i353
  %66 = call i64 @llvm.bswap.i64(i64 %add.i) #14
  %67 = ptrtoint ptr %bytes_used.i.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 8)
  store i64 %66, ptr %bytes_used.i.i, align 1
  call void @_raw_spin_unlock(ptr noundef %accounting_lock.i) #14
  br i1 %cmp119376, label %if.then130, label %if.end166

if.then130:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_cmp4(i32 %mid.0374, i32 %28)
  %cmp131.not = icmp sgt i32 %mid.0374, %28
  %pages.i360 = getelementptr inbounds %struct.extent_buffer, ptr %call124, i32 0, i32 12
  %68 = ptrtoint ptr %pages.i360 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pages.i360, align 4
  %call.i361 = call ptr @page_address(ptr noundef %69) #14
  %70 = ptrtoint ptr %call124 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %call124, align 8
  %conv.i362 = trunc i64 %71 to i32
  %and.i363 = and i32 %conv.i362, 4095
  %add.ptr.i364 = getelementptr i8, ptr %call.i361, i32 %and.i363
  %nritems.i365 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i364, i32 0, i32 7
  %72 = ptrtoint ptr %nritems.i365 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 0, ptr %nritems.i365, align 1
  %73 = load i64, ptr %call124, align 8
  %arrayidx151 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 1
  %74 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx151, align 4
  br i1 %cmp131.not, label %if.else148, label %if.then132

if.then132:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #16
  %add136 = add i32 %75, 1
  call fastcc void @insert_ptr(ptr noundef %trans, ptr noundef %path, ptr noundef nonnull %disk_key, i64 noundef %73, i32 noundef %add136, i32 noundef 1)
  %76 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %path, align 4
  call void @btrfs_tree_unlock(ptr noundef %77) #14
  %78 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %path, align 4
  call void @free_extent_buffer(ptr noundef %79) #14
  %80 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call124, ptr %path, align 4
  %81 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %slots, align 4
  %82 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx151, align 4
  %add147 = add i32 %83, 1
  store i32 %add147, ptr %arrayidx151, align 4
  br label %cleanup188

if.else148:                                       ; preds = %if.then130
  call fastcc void @insert_ptr(ptr noundef %trans, ptr noundef %path, ptr noundef nonnull %disk_key, i64 noundef %73, i32 noundef %75, i32 noundef 1)
  %84 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %path, align 4
  call void @btrfs_tree_unlock(ptr noundef %85) #14
  %86 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %path, align 4
  call void @free_extent_buffer(ptr noundef %87) #14
  %88 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call124, ptr %path, align 4
  %89 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %slots, align 4
  %90 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp162 = icmp eq i32 %91, 0
  br i1 %cmp162, label %if.else148.for.body.i_crit_edge, label %if.else148.cleanup188_crit_edge

if.else148.cleanup188_crit_edge:                  ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup188

if.else148.for.body.i_crit_edge:                  ; preds = %if.else148
  br label %for.body.i

for.body.i:                                       ; preds = %do.end14.i.for.body.i_crit_edge, %if.else148.for.body.i_crit_edge
  %i.034.i = phi i32 [ %inc.i, %do.end14.i.for.body.i_crit_edge ], [ 1, %if.else148.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %i.034.i
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [8 x ptr], ptr %path, i32 0, i32 %i.034.i
  %94 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i = icmp eq ptr %95, null
  br i1 %tobool.not.i, label %for.body.i.cleanup188_crit_edge, label %if.end.i

for.body.i.cleanup188_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup188

if.end.i:                                         ; preds = %for.body.i
  %call.i366 = call i32 @btrfs_tree_mod_log_insert_key(ptr noundef nonnull %95, i32 noundef %93, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i366)
  %cmp4.i = icmp slt i32 %call.i366, 0
  br i1 %cmp4.i, label %do.body8.i, label %do.end14.i, !prof !121

do.body8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2303, 0\0A.popsection", ""() #14, !srcloc !140
  unreachable

do.end14.i:                                       ; preds = %if.end.i
  %mul.i.i.i367 = mul i32 %93, 33
  %add.i.i.i368 = add i32 %mul.i.i.i367, 101
  call void @write_extent_buffer(ptr noundef nonnull %95, ptr noundef nonnull %disk_key, i32 noundef %add.i.i.i368, i32 noundef 17) #14
  %96 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx1.i, align 4
  call void @btrfs_mark_buffer_dirty(ptr noundef %97) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp17.not.i = icmp ne i32 %93, 0
  %inc.i = add nuw nsw i32 %i.034.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  %or.cond.i = select i1 %cmp17.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %do.end14.i.cleanup188_crit_edge, label %do.end14.i.for.body.i_crit_edge

do.end14.i.for.body.i_crit_edge:                  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.end14.i.cleanup188_crit_edge:                  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup188

if.end166:                                        ; preds = %if.end128
  call fastcc void @copy_for_split(ptr noundef %trans, ptr noundef %path, ptr noundef %26, ptr noundef %call124, i32 noundef %28, i32 noundef %mid.0374, i32 noundef %55)
  br i1 %cmp167378, label %do.body, label %if.end166.cleanup188_crit_edge

if.end166.cleanup188_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup188

do.body:                                          ; preds = %if.end166
  br i1 %tobool123.not, label %do.body.again.outer_crit_edge, label %do.body173, !prof !120

do.body.again.outer_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %again.outer

do.body173:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3544, 0\0A.popsection", ""() #14, !srcloc !156
  unreachable

push_for_double:                                  ; preds = %if.then108.push_for_double_crit_edge, %if.then72.push_for_double_crit_edge
  call fastcc void @push_for_double_split(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i32 noundef %data_size)
  %98 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %path, align 4
  %call184 = call i32 @btrfs_leaf_free_space(ptr noundef %99)
  %cmp185.not = icmp slt i32 %call184, %data_size
  br i1 %cmp185.not, label %push_for_double.again_crit_edge, label %push_for_double.cleanup188_crit_edge

push_for_double.cleanup188_crit_edge:             ; preds = %push_for_double
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup188

push_for_double.again_crit_edge:                  ; preds = %push_for_double
  call void @__sanitizer_cov_trace_pc() #16
  br label %again

cleanup188:                                       ; preds = %push_for_double.cleanup188_crit_edge, %if.end166.cleanup188_crit_edge, %do.end14.i.cleanup188_crit_edge, %for.body.i.cleanup188_crit_edge, %if.else148.cleanup188_crit_edge, %if.then132, %if.then126, %if.then42.cleanup188_crit_edge, %cleanup.cleanup188_crit_edge, %if.end26.cleanup188_crit_edge, %if.end15.cleanup188_crit_edge, %land.lhs.true.cleanup188_crit_edge
  %retval.1 = phi i32 [ %60, %if.then126 ], [ 0, %cleanup.cleanup188_crit_edge ], [ -75, %land.lhs.true.cleanup188_crit_edge ], [ %call43, %if.then42.cleanup188_crit_edge ], [ 0, %if.else148.cleanup188_crit_edge ], [ 0, %if.then132 ], [ %call27, %if.end26.cleanup188_crit_edge ], [ %call16, %if.end15.cleanup188_crit_edge ], [ 0, %for.body.i.cleanup188_crit_edge ], [ 0, %do.end14.i.cleanup188_crit_edge ], [ 0, %push_for_double.cleanup188_crit_edge ], [ 0, %if.end166.cleanup188_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #14
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @insert_new_root(ptr noundef %trans, ptr noundef %root, ptr nocapture noundef %path, i32 noundef %level) unnamed_addr #4 align 64 {
entry:
  %lower_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %lower_key) #14
  %arrayidx = getelementptr [8 x ptr], ptr %path, i32 0, i32 %level
  %2 = call ptr @memset(ptr %lower_key, i32 255, i32 17)
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.body10, label %do.body4, !prof !120

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2585, 0\0A.popsection", ""() #14, !srcloc !157
  unreachable

do.body10:                                        ; preds = %entry
  %sub = add i32 %level, -1
  %arrayidx12 = getelementptr [8 x ptr], ptr %path, i32 0, i32 %sub
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx12, align 4
  %node = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 1
  %7 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %node, align 4
  %cmp.not = icmp eq ptr %6, %8
  br i1 %cmp.not, label %do.end28, label %do.body20, !prof !120

do.body20:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2586, 0\0A.popsection", ""() #14, !srcloc !158
  unreachable

do.end28:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level)
  %cmp32 = icmp eq i32 %level, 1
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #16
  call void @read_extent_buffer(ptr noundef %6, ptr noundef nonnull %lower_key, i32 noundef 101, i32 noundef 17) #14
  br label %if.end34

if.else:                                          ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_node_key(ptr noundef %6, ptr noundef nonnull %lower_key, i32 noundef 0) #14
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then33
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %9 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %root_key, align 1
  %11 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %12, align 8
  %call = call ptr @btrfs_alloc_tree_block(ptr noundef %trans, ptr noundef %root, i64 noundef 0, i64 noundef %10, ptr noundef nonnull %lower_key, i32 noundef %level, i64 noundef %14, i64 noundef 0, i32 noundef 7) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %call to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %nodesize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %16 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nodesize, align 8
  %accounting_lock.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 11
  call void @_raw_spin_lock(ptr noundef %accounting_lock.i) #14
  %bytes_used.i.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 6, i32 5
  %18 = ptrtoint ptr %bytes_used.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %bytes_used.i.i, align 1
  %20 = call i64 @llvm.bswap.i64(i64 %19) #14
  %conv.i = zext i32 %17 to i64
  %add.i = add i64 %20, %conv.i
  %21 = call i64 @llvm.bswap.i64(i64 %add.i) #14
  %22 = ptrtoint ptr %bytes_used.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %bytes_used.i.i, align 1
  call void @_raw_spin_unlock(ptr noundef %accounting_lock.i) #14
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %call, i32 0, i32 12
  %23 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %24) #14
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %call, align 8
  %conv.i178 = trunc i64 %26 to i32
  %and.i = and i32 %conv.i178, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %27 = ptrtoint ptr %nritems.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 16777216, ptr %nritems.i, align 1
  call void @write_extent_buffer(ptr noundef %call, ptr noundef nonnull %lower_key, i32 noundef 101, i32 noundef 17) #14
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %6, align 8
  call void @btrfs_set_64(ptr noundef %call, ptr noundef nonnull inttoptr (i32 101 to ptr), i32 noundef 17, i64 noundef %29) #14
  %pages.i179 = getelementptr inbounds %struct.extent_buffer, ptr %6, i32 0, i32 12
  %30 = ptrtoint ptr %pages.i179 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pages.i179, align 4
  %call.i180 = call ptr @page_address(ptr noundef %31) #14
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %6, align 8
  %conv.i181 = trunc i64 %33 to i32
  %and.i182 = and i32 %conv.i181, 4095
  %add.ptr.i183 = getelementptr i8, ptr %call.i180, i32 %and.i182
  %generation.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i183, i32 0, i32 5
  %34 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %generation.i, align 1
  %36 = call i64 @llvm.bswap.i64(i64 %35) #14
  %37 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %38)
  %cmp42.not = icmp eq i64 %36, %38
  br i1 %cmp42.not, label %if.end39.if.end64_crit_edge, label %do.end58, !prof !120

if.end39.if.end64_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

do.end58:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2606, i32 noundef 9, ptr noundef null) #14
  br label %if.end64

if.end64:                                         ; preds = %do.end58, %if.end39.if.end64_crit_edge
  call void @btrfs_set_64(ptr noundef %call, ptr noundef nonnull inttoptr (i32 101 to ptr), i32 noundef 25, i64 noundef %36) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef %call) #14
  %39 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %node, align 4
  %call73 = call i32 @btrfs_tree_mod_log_insert_root(ptr noundef %40, ptr noundef %call, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp75 = icmp slt i32 %call73, 0
  br i1 %cmp75, label %do.body83, label %do.body92, !prof !121

do.body83:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2614, 0\0A.popsection", ""() #14, !srcloc !159
  unreachable

do.body92:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !160
  %41 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call, ptr %node, align 4
  call void @free_extent_buffer(ptr noundef %40) #14
  call fastcc void @add_root_to_dirty_list(ptr noundef %root)
  %refs = getelementptr inbounds %struct.extent_buffer, ptr %call, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  %42 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #14, !srcloc !124
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call, ptr %arrayidx, align 4
  %arrayidx133 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 2, i32 %level
  %44 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %arrayidx133, align 1
  %arrayidx134 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %level
  %45 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx134, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body92, %if.then37
  %retval.0 = phi i32 [ %15, %if.then37 ], [ 0, %do.body92 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %lower_key) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @insert_ptr(ptr nocapture noundef readonly %trans, ptr nocapture noundef readonly %path, ptr noundef %key, i64 noundef %bytenr, i32 noundef %slot, i32 noundef %level) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [8 x ptr], ptr %path, i32 0, i32 %level
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !121

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2644, 0\0A.popsection", ""() #14, !srcloc !161
  unreachable

do.end9:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %do.end9.btrfs_assert_tree_write_locked.exit_crit_edge, label %land.rhs.i

do.end9.btrfs_assert_tree_write_locked.exit_crit_edge: ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_assert_tree_write_locked.exit

land.rhs.i:                                       ; preds = %do.end9
  %dep_map.i = getelementptr inbounds %struct.extent_buffer, ptr %1, i32 0, i32 11, i32 6
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %do.end.i, label %land.rhs.i.btrfs_assert_tree_write_locked.exit_crit_edge, !prof !121

land.rhs.i.btrfs_assert_tree_write_locked.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %btrfs_assert_tree_write_locked.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 101, i32 noundef 9, ptr noundef null) #14
  br label %btrfs_assert_tree_write_locked.exit

btrfs_assert_tree_write_locked.exit:              ; preds = %do.end.i, %land.rhs.i.btrfs_assert_tree_write_locked.exit_crit_edge, %do.end9.btrfs_assert_tree_write_locked.exit_crit_edge
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pages.i, align 4
  %call.i166 = tail call ptr @page_address(ptr noundef %6) #14
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %4, align 8
  %conv.i = trunc i64 %8 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i166, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %9 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %nritems.i, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %slot)
  %cmp = icmp slt i32 %11, %slot
  br i1 %cmp, label %do.body22, label %do.body31, !prof !121

do.body22:                                        ; preds = %btrfs_assert_tree_write_locked.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2648, 0\0A.popsection", ""() #14, !srcloc !162
  unreachable

do.body31:                                        ; preds = %btrfs_assert_tree_write_locked.exit
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %12 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fs_info, align 4
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %13, i32 0, i32 166
  %14 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nodesize.i.i, align 8
  %sub.i.i = add i32 %15, -101
  %div.i = udiv i32 %sub.i.i, 33
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %div.i)
  %cmp33 = icmp eq i32 %11, %div.i
  br i1 %cmp33, label %do.body41, label %do.end49, !prof !121

do.body41:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2649, 0\0A.popsection", ""() #14, !srcloc !163
  unreachable

do.end49:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %slot)
  %cmp50.not = icmp eq i32 %11, %slot
  br i1 %cmp50.not, label %do.end49.if.then80_crit_edge, label %if.then53

do.end49.if.then80_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then80

if.then53:                                        ; preds = %do.end49
  %add = add i32 %slot, 1
  %sub = sub i32 %11, %slot
  %call54 = tail call i32 @btrfs_tree_mod_log_insert_move(ptr noundef %4, i32 noundef %add, i32 noundef %slot, i32 noundef %sub) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp56 = icmp slt i32 %call54, 0
  br i1 %cmp56, label %do.body64, label %if.end73, !prof !121

do.body64:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2654, 0\0A.popsection", ""() #14, !srcloc !164
  unreachable

if.end73:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i = mul i32 %add, 33
  %add.i = add i32 %mul.i, 101
  %mul.i167 = mul i32 %slot, 33
  %add.i168 = add i32 %mul.i167, 101
  %mul = mul i32 %sub, 33
  tail call void @memmove_extent_buffer(ptr noundef %4, i32 noundef %add.i, i32 noundef %add.i168, i32 noundef %mul) #14
  br label %if.then80

if.then80:                                        ; preds = %if.end73, %do.end49.if.then80_crit_edge
  %call81 = tail call i32 @btrfs_tree_mod_log_insert_key(ptr noundef %4, i32 noundef %slot, i32 noundef 1, i32 noundef 3136) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp83 = icmp slt i32 %call81, 0
  br i1 %cmp83, label %do.body91, label %if.end100, !prof !121

do.body91:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2664, 0\0A.popsection", ""() #14, !srcloc !165
  unreachable

if.end100:                                        ; preds = %if.then80
  %mul.i.i = mul i32 %slot, 33
  %add.i.i = add i32 %mul.i.i, 101
  tail call void @write_extent_buffer(ptr noundef %4, ptr noundef %key, i32 noundef %add.i.i, i32 noundef 17) #14
  %16 = inttoptr i32 %add.i.i to ptr
  tail call void @btrfs_set_64(ptr noundef %4, ptr noundef %16, i32 noundef 17, i64 noundef %bytenr) #14
  %17 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %trans, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %cmp101 = icmp eq i64 %18, 0
  br i1 %cmp101, label %do.end117, label %if.end100.if.end123_crit_edge, !prof !121

if.end100.if.end123_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123

do.end117:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2668, i32 noundef 9, ptr noundef null) #14
  br label %if.end123

if.end123:                                        ; preds = %do.end117, %if.end100.if.end123_crit_edge
  %19 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %trans, align 8
  tail call void @btrfs_set_64(ptr noundef %4, ptr noundef %16, i32 noundef 25, i64 noundef %20) #14
  %add131 = add i32 %11, 1
  %21 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pages.i, align 4
  %call.i174 = tail call ptr @page_address(ptr noundef %22) #14
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %4, align 8
  %conv.i175 = trunc i64 %24 to i32
  %and.i176 = and i32 %conv.i175, 4095
  %add.ptr.i177 = getelementptr i8, ptr %call.i174, i32 %and.i176
  %nritems.i178 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i177, i32 0, i32 7
  %25 = tail call i32 @llvm.bswap.i32(i32 %add131) #14
  %26 = ptrtoint ptr %nritems.i178 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %nritems.i178, align 1
  tail call void @btrfs_mark_buffer_dirty(ptr noundef %4) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @copy_for_split(ptr nocapture noundef readonly %trans, ptr nocapture noundef %path, ptr noundef %l, ptr noundef %right, i32 noundef %slot, i32 noundef %mid, i32 noundef %nritems) unnamed_addr #4 align 64 {
entry:
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  %token = alloca %struct.btrfs_map_token, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #14
  %2 = call ptr @memset(ptr %disk_key, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %token) #14
  %3 = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 1
  %4 = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 2
  %sub = sub i32 %nritems, %mid
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %right, i32 0, i32 12
  %5 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %6) #14
  %7 = ptrtoint ptr %right to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %right, align 8
  %conv.i = trunc i64 %8 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %9 = tail call i32 @llvm.bswap.i32(i32 %sub) #14
  %10 = ptrtoint ptr %nritems.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %nritems.i, align 1
  %mul.i.i.i.i = mul i32 %mid, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %11 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i.i = tail call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %11, i32 noundef 17) #14
  %call.i.i6.i = tail call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %11, i32 noundef 21) #14
  %add.i = add i32 %call.i.i6.i, %call.i.i.i
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %l, i32 0, i32 12
  %12 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pages.i.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %13) #14
  %14 = ptrtoint ptr %l to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %l, align 8
  %conv.i.i = trunc i64 %15 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %nritems.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %nritems.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %nritems.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr inbounds %struct.extent_buffer, ptr %l, i32 0, i32 3
  %18 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fs_info.i, align 8
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %19, i32 0, i32 166
  %20 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nodesize.i.i, align 8
  %sub.i.i = add i32 %21, -101
  br label %leaf_data_end.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %22 = tail call i32 @llvm.bswap.i32(i32 %17) #14
  %23 = mul i32 %22, 25
  %add.i.i.i.i100 = add i32 %23, 76
  %24 = inttoptr i32 %add.i.i.i.i100 to ptr
  %call.i.i.i101 = tail call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %24, i32 noundef 17) #14
  br label %leaf_data_end.exit

leaf_data_end.exit:                               ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i.i, %if.then.i ], [ %call.i.i.i101, %if.end.i ]
  %sub3 = sub i32 %add.i, %retval.0.i
  %mul = mul i32 %sub, 25
  tail call void @copy_extent_buffer(ptr noundef %right, ptr noundef %l, i32 noundef 101, i32 noundef %add.i.i.i.i, i32 noundef %mul) #14
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %25 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nodesize.i, align 8
  %sub7 = sub i32 %26, %sub3
  %27 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages.i.i, align 4
  %call.i.i104 = tail call ptr @page_address(ptr noundef %28) #14
  %29 = ptrtoint ptr %l to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %l, align 8
  %conv.i.i105 = trunc i64 %30 to i32
  %and.i.i106 = and i32 %conv.i.i105, 4095
  %add.ptr.i.i107 = getelementptr i8, ptr %call.i.i104, i32 %and.i.i106
  %nritems.i.i108 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i107, i32 0, i32 7
  %31 = ptrtoint ptr %nritems.i.i108 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %nritems.i.i108, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i109 = icmp eq i32 %32, 0
  br i1 %cmp.i109, label %if.then.i113, label %if.end.i116

if.then.i113:                                     ; preds = %leaf_data_end.exit
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i110 = getelementptr inbounds %struct.extent_buffer, ptr %l, i32 0, i32 3
  %33 = ptrtoint ptr %fs_info.i110 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fs_info.i110, align 8
  %nodesize.i.i111 = getelementptr inbounds %struct.btrfs_fs_info, ptr %34, i32 0, i32 166
  %35 = ptrtoint ptr %nodesize.i.i111 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nodesize.i.i111, align 8
  %sub.i.i112 = add i32 %36, -101
  br label %leaf_data_end.exit118

if.end.i116:                                      ; preds = %leaf_data_end.exit
  call void @__sanitizer_cov_trace_pc() #16
  %37 = tail call i32 @llvm.bswap.i32(i32 %32) #14
  %38 = mul i32 %37, 25
  %add.i.i.i.i114 = add i32 %38, 76
  %39 = inttoptr i32 %add.i.i.i.i114 to ptr
  %call.i.i.i115 = tail call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %39, i32 noundef 17) #14
  br label %leaf_data_end.exit118

leaf_data_end.exit118:                            ; preds = %if.end.i116, %if.then.i113
  %retval.0.i117 = phi i32 [ %sub.i.i112, %if.then.i113 ], [ %call.i.i.i115, %if.end.i116 ]
  %add9 = add i32 %retval.0.i117, 101
  tail call void @copy_extent_buffer(ptr noundef %right, ptr noundef %l, i32 noundef %sub7, i32 noundef %add9, i32 noundef %sub3) #14
  %40 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nodesize.i, align 8
  %call.i.i.i123 = tail call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %11, i32 noundef 17) #14
  %call.i.i6.i124 = tail call i32 @btrfs_get_32(ptr noundef %l, ptr noundef %11, i32 noundef 21) #14
  %42 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %right, ptr %token, align 4
  %43 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pages.i, align 4
  %call.i127 = tail call ptr @page_address(ptr noundef %44) #14
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i127, ptr %3, align 4
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp137 = icmp sgt i32 %sub, 0
  br i1 %cmp137, label %for.body.lr.ph, label %leaf_data_end.exit118.for.end_crit_edge

leaf_data_end.exit118.for.end_crit_edge:          ; preds = %leaf_data_end.exit118
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %leaf_data_end.exit118
  %add.i125.neg = add i32 %41, -101
  %47 = add i32 %call.i.i.i123, %call.i.i6.i124
  %sub12 = sub i32 %add.i125.neg, %47
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul.i.i.i = mul i32 %i.0138, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %48 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i128 = call i32 @btrfs_get_token_32(ptr noundef nonnull %token, ptr noundef %48, i32 noundef 17) #14
  %add14 = add i32 %sub12, %call.i.i128
  call void @btrfs_set_token_32(ptr noundef nonnull %token, ptr noundef %48, i32 noundef 17, i32 noundef %add14) #14
  %inc = add nuw nsw i32 %i.0138, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %leaf_data_end.exit118.for.end_crit_edge
  %49 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pages.i.i, align 4
  %call.i132 = call ptr @page_address(ptr noundef %50) #14
  %51 = ptrtoint ptr %l to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %l, align 8
  %conv.i133 = trunc i64 %52 to i32
  %and.i134 = and i32 %conv.i133, 4095
  %add.ptr.i135 = getelementptr i8, ptr %call.i132, i32 %and.i134
  %nritems.i136 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i135, i32 0, i32 7
  %53 = call i32 @llvm.bswap.i32(i32 %mid) #14
  %54 = ptrtoint ptr %nritems.i136 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %nritems.i136, align 1
  call void @read_extent_buffer(ptr noundef %right, ptr noundef nonnull %disk_key, i32 noundef 101, i32 noundef 17) #14
  %55 = ptrtoint ptr %right to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %right, align 8
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %arrayidx = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx, align 4
  %add15 = add i32 %58, 1
  call fastcc void @insert_ptr(ptr noundef %trans, ptr noundef %path, ptr noundef nonnull %disk_key, i64 noundef %56, i32 noundef %add15, i32 noundef 1)
  call void @btrfs_mark_buffer_dirty(ptr noundef %right) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef %l) #14
  %59 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %slot)
  %cmp18.not = icmp eq i32 %60, %slot
  br i1 %cmp18.not, label %do.end25, label %do.body20, !prof !120

do.body20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3303, 0\0A.popsection", ""() #14, !srcloc !166
  unreachable

do.end25:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %mid, i32 %slot)
  %cmp26.not = icmp sgt i32 %mid, %slot
  br i1 %cmp26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %path, align 4
  call void @btrfs_tree_unlock(ptr noundef %62) #14
  %63 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %path, align 4
  call void @free_extent_buffer(ptr noundef %64) #14
  %65 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %right, ptr %path, align 4
  %66 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %slots, align 4
  %sub35 = sub i32 %67, %mid
  store i32 %sub35, ptr %slots, align 4
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx, align 4
  %add38 = add i32 %69, 1
  store i32 %add38, ptr %arrayidx, align 4
  br label %do.body40

if.else:                                          ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_unlock(ptr noundef %right) #14
  call void @free_extent_buffer(ptr noundef %right) #14
  %70 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr = load i32, ptr %slots, align 4
  br label %do.body40

do.body40:                                        ; preds = %if.else, %if.then27
  %71 = phi i32 [ %sub35, %if.then27 ], [ %.pr, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp43 = icmp slt i32 %71, 0
  br i1 %cmp43, label %do.body51, label %do.end59, !prof !121

do.body51:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3316, 0\0A.popsection", ""() #14, !srcloc !167
  unreachable

do.end59:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %token) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @push_for_double_split(ptr noundef %trans, ptr noundef %root, ptr nocapture noundef %path, i32 noundef %data_size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slots, align 4
  %2 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %5) #14
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %3, align 8
  %conv.i = trunc i64 %7 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %8 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %nritems.i, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %10)
  %cmp = icmp ult i32 %1, %10
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %path, align 4
  %call4 = tail call i32 @btrfs_leaf_free_space(ptr noundef %12)
  %sub = sub i32 %data_size, %call4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %space_needed.0 = phi i32 [ %sub, %if.then ], [ %data_size, %entry.if.end_crit_edge ]
  %call5 = tail call fastcc i32 @push_leaf_right(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i32 noundef 1, i32 noundef %space_needed.0, i32 noundef 0, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %13 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %path, align 4
  %pages.i2 = getelementptr inbounds %struct.extent_buffer, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %pages.i2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pages.i2, align 4
  %call.i3 = tail call ptr @page_address(ptr noundef %16) #14
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %14, align 8
  %conv.i4 = trunc i64 %18 to i32
  %and.i5 = and i32 %conv.i4, 4095
  %add.ptr.i6 = getelementptr i8, ptr %call.i3, i32 %and.i5
  %nritems.i7 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i6, i32 0, i32 7
  %19 = ptrtoint ptr %nritems.i7 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %nritems.i7, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #14
  %22 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp17 = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp20 = icmp eq i32 %23, %21
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp20
  br i1 %or.cond, label %if.end8.cleanup_crit_edge, label %if.end22

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end22:                                         ; preds = %if.end8
  %24 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %path, align 4
  %call25 = tail call i32 @btrfs_leaf_free_space(ptr noundef %25)
  call void @__sanitizer_cov_trace_cmp4(i32 %call25, i32 %data_size)
  %cmp26.not = icmp slt i32 %call25, %data_size
  br i1 %cmp26.not, label %if.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %26 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp31 = icmp sgt i32 %27, 0
  br i1 %cmp31, label %if.then32, label %if.end28.if.end37_crit_edge

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %path, align 4
  %call35 = tail call i32 @btrfs_leaf_free_space(ptr noundef %29)
  %sub36 = sub i32 %data_size, %call35
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.end28.if.end37_crit_edge
  %space_needed.1 = phi i32 [ %sub36, %if.then32 ], [ %data_size, %if.end28.if.end37_crit_edge ]
  %call38 = tail call fastcc i32 @push_leaf_left(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i32 noundef 1, i32 noundef %space_needed.1, i32 noundef 0, i32 noundef %27)
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end22.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_tree_mod_log_insert_move(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reada_for_balance(ptr nocapture noundef readonly %path, i32 noundef %level) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %level, 1
  %arrayidx = getelementptr [8 x ptr], ptr %path, i32 0, i32 %add
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %3) #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %1, align 8
  %conv.i = trunc i64 %5 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %6 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %nritems.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #14
  %arrayidx2 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %add
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub = add nsw i32 %10, -1
  tail call void @btrfs_readahead_node_child(ptr noundef nonnull %1, i32 noundef %sub) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %add5 = add i32 %10, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %8)
  %cmp6 = icmp slt i32 %add5, %8
  br i1 %cmp6, label %if.then7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_readahead_node_child(ptr noundef nonnull %1, i32 noundef %add5) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @split_node(ptr noundef %trans, ptr noundef %root, ptr nocapture noundef %path, i32 noundef %level) unnamed_addr #4 align 64 {
entry:
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #14
  %arrayidx = getelementptr [8 x ptr], ptr %path, i32 0, i32 %level
  %2 = call ptr @memset(ptr %disk_key, i32 255, i32 17)
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %6) #14
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %4, align 8
  %conv.i = trunc i64 %8 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %generation.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %generation.i, align 1
  %11 = tail call i64 @llvm.bswap.i64(i64 %10) #14
  %12 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp.not = icmp eq i64 %11, %13
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !120

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2696, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %node = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 1
  %14 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %node, align 4
  %cmp20 = icmp eq ptr %4, %15
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end
  %add = add i32 %level, 1
  %call22 = tail call fastcc i32 @insert_new_root(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.if.end38_crit_edge, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then21.if.end38_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.else:                                          ; preds = %if.end
  %call26 = tail call fastcc i32 @push_nodes_for_insert(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i32 noundef %level)
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool29.not = icmp eq i32 %call26, 0
  br i1 %tobool29.not, label %land.lhs.true, label %if.else.if.end38_crit_edge

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

land.lhs.true:                                    ; preds = %if.else
  %pages.i229 = getelementptr inbounds %struct.extent_buffer, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %pages.i229 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pages.i229, align 4
  %call.i230 = tail call ptr @page_address(ptr noundef %19) #14
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %17, align 8
  %conv.i231 = trunc i64 %21 to i32
  %and.i232 = and i32 %conv.i231, 4095
  %add.ptr.i233 = getelementptr i8, ptr %call.i230, i32 %and.i232
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i233, i32 0, i32 7
  %22 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %nritems.i, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #14
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %25 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nodesize.i.i, align 8
  %sub.i.i = add i32 %26, -101
  %div.i = udiv i32 %sub.i.i, 33
  %sub = add nsw i32 %div.i, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %sub)
  %cmp32 = icmp ult i32 %24, %sub
  br i1 %cmp32, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true.if.end38_crit_edge, %if.else.if.end38_crit_edge, %if.then21.if.end38_crit_edge
  %c.0 = phi ptr [ %4, %if.then21.if.end38_crit_edge ], [ %17, %land.lhs.true.if.end38_crit_edge ], [ %17, %if.else.if.end38_crit_edge ]
  %pages.i234 = getelementptr inbounds %struct.extent_buffer, ptr %c.0, i32 0, i32 12
  %27 = ptrtoint ptr %pages.i234 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages.i234, align 4
  %call.i235 = tail call ptr @page_address(ptr noundef %28) #14
  %29 = ptrtoint ptr %c.0 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %c.0, align 8
  %conv.i236 = trunc i64 %30 to i32
  %and.i237 = and i32 %conv.i236, 4095
  %add.ptr.i238 = getelementptr i8, ptr %call.i235, i32 %and.i237
  %nritems.i239 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i238, i32 0, i32 7
  %31 = ptrtoint ptr %nritems.i239 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %nritems.i239, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #14
  %add40 = add i32 %33, 1
  %div228 = lshr i32 %add40, 1
  call void @btrfs_node_key(ptr noundef %c.0, ptr noundef nonnull %disk_key, i32 noundef %div228) #14
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %34 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %root_key, align 1
  %36 = ptrtoint ptr %c.0 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %c.0, align 8
  %call41 = call ptr @btrfs_alloc_tree_block(ptr noundef %trans, ptr noundef %root, i64 noundef 0, i64 noundef %35, ptr noundef nonnull %disk_key, i32 noundef %level, i64 noundef %37, i64 noundef 0, i32 noundef 6) #14
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %call41 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %nodesize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %39 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nodesize, align 8
  %accounting_lock.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 11
  call void @_raw_spin_lock(ptr noundef %accounting_lock.i) #14
  %bytes_used.i.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 6, i32 5
  %41 = ptrtoint ptr %bytes_used.i.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %bytes_used.i.i, align 1
  %43 = call i64 @llvm.bswap.i64(i64 %42) #14
  %conv.i240 = zext i32 %40 to i64
  %add.i = add i64 %43, %conv.i240
  %44 = call i64 @llvm.bswap.i64(i64 %add.i) #14
  %45 = ptrtoint ptr %bytes_used.i.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %bytes_used.i.i, align 1
  call void @_raw_spin_unlock(ptr noundef %accounting_lock.i) #14
  %46 = ptrtoint ptr %pages.i234 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pages.i234, align 4
  %call.i242 = call ptr @page_address(ptr noundef %47) #14
  %48 = ptrtoint ptr %c.0 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %c.0, align 8
  %conv.i243 = trunc i64 %49 to i32
  %and.i244 = and i32 %conv.i243, 4095
  %add.ptr.i245 = getelementptr i8, ptr %call.i242, i32 %and.i244
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i245, i32 0, i32 8
  %50 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %level.i, align 1
  %conv = zext i8 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %level)
  %cmp47 = icmp eq i32 %conv, %level
  br i1 %cmp47, label %cond.end, label %cond.false, !prof !120

cond.false:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.32, i32 noundef 2732) #18
  unreachable

cond.end:                                         ; preds = %if.end45
  %sub55 = sub i32 %33, %div228
  %call56 = call i32 @btrfs_tree_mod_log_eb_copy(ptr noundef %call41, ptr noundef %c.0, i32 noundef 0, i32 noundef %div228, i32 noundef %sub55) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end116, label %do.body59

do.body59:                                        ; preds = %cond.end
  %fs_info60 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %52 = ptrtoint ptr %fs_info60 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fs_info60, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %53, i32 0, i32 149
  %call61 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then63, label %do.body59.if.end113_crit_edge

do.body59.if.end113_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.then63:                                        ; preds = %do.body59
  %54 = zext i32 %call56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %call56, label %do.end82 [
    i32 -5, label %if.then63.do.body97_crit_edge
    i32 -30, label %if.then63.do.body97_crit_edge260
  ]

if.then63.do.body97_crit_edge260:                 ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body97

if.then63.do.body97_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body97

do.end82:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2736, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %call56) #14
  br label %if.end113

do.body97:                                        ; preds = %if.then63.do.body97_crit_edge, %if.then63.do.body97_crit_edge260
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @split_node.__UNIQUE_ID_ddebug949, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@split_node, %if.then107)) #14
          to label %if.end113 [label %if.then107], !srcloc !122

if.then107:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %fs_info60 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fs_info60, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %56, ptr noundef nonnull @.str.6, i32 noundef %call56) #17
  br label %if.end113

if.end113:                                        ; preds = %if.then107, %do.body97, %do.end82, %do.body59.if.end113_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.33, i32 noundef 2736, i32 noundef %call56) #17
  br label %cleanup

if.end116:                                        ; preds = %cond.end
  %mul.i = mul i32 %div228, 33
  %add.i246 = add i32 %mul.i, 101
  %mul = mul i32 %sub55, 33
  call void @copy_extent_buffer(ptr noundef %call41, ptr noundef %c.0, i32 noundef 101, i32 noundef %add.i246, i32 noundef %mul) #14
  %pages.i247 = getelementptr inbounds %struct.extent_buffer, ptr %call41, i32 0, i32 12
  %57 = ptrtoint ptr %pages.i247 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pages.i247, align 4
  %call.i248 = call ptr @page_address(ptr noundef %58) #14
  %59 = ptrtoint ptr %call41 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %call41, align 8
  %conv.i249 = trunc i64 %60 to i32
  %and.i250 = and i32 %conv.i249, 4095
  %add.ptr.i251 = getelementptr i8, ptr %call.i248, i32 %and.i250
  %nritems.i252 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i251, i32 0, i32 7
  %61 = call i32 @llvm.bswap.i32(i32 %sub55) #14
  %62 = ptrtoint ptr %nritems.i252 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %nritems.i252, align 1
  %63 = ptrtoint ptr %pages.i234 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pages.i234, align 4
  %call.i254 = call ptr @page_address(ptr noundef %64) #14
  %65 = ptrtoint ptr %c.0 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %c.0, align 8
  %conv.i255 = trunc i64 %66 to i32
  %and.i256 = and i32 %conv.i255, 4095
  %add.ptr.i257 = getelementptr i8, ptr %call.i254, i32 %and.i256
  %nritems.i258 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i257, i32 0, i32 7
  %67 = call i32 @llvm.bswap.i32(i32 %div228) #14
  %68 = ptrtoint ptr %nritems.i258 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %67, ptr %nritems.i258, align 1
  call void @btrfs_mark_buffer_dirty(ptr noundef %c.0) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef %call41) #14
  %69 = ptrtoint ptr %call41 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %call41, align 8
  %add122 = add i32 %level, 1
  %arrayidx123 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %add122
  %71 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx123, align 4
  %add124 = add i32 %72, 1
  call fastcc void @insert_ptr(ptr noundef %trans, ptr noundef %path, ptr noundef nonnull %disk_key, i64 noundef %70, i32 noundef %add124, i32 noundef %add122)
  %arrayidx127 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %level
  %73 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx127, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %div228)
  %cmp128.not = icmp slt i32 %74, %div228
  br i1 %cmp128.not, label %if.else140, label %if.then130

if.then130:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #16
  %sub133 = sub i32 %74, %div228
  %75 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub133, ptr %arrayidx127, align 4
  call void @btrfs_tree_unlock(ptr noundef %c.0) #14
  call void @free_extent_buffer(ptr noundef %c.0) #14
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call41, ptr %arrayidx, align 4
  %77 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx123, align 4
  %add139 = add i32 %78, 1
  store i32 %add139, ptr %arrayidx123, align 4
  br label %cleanup

if.else140:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_unlock(ptr noundef %call41) #14
  call void @free_extent_buffer(ptr noundef %call41) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else140, %if.then130, %if.end113, %if.then43, %land.lhs.true.cleanup_crit_edge, %if.then21.cleanup_crit_edge
  %retval.0 = phi i32 [ %38, %if.then43 ], [ %call56, %if.end113 ], [ %call22, %if.then21.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.else140 ], [ 0, %if.then130 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @balance_level(ptr noundef %trans, ptr noundef %root, ptr nocapture noundef %path, i32 noundef %level) unnamed_addr #4 align 64 {
entry:
  %right = alloca ptr, align 4
  %left = alloca ptr, align 4
  %child = alloca ptr, align 4
  %right_key = alloca %struct.btrfs_disk_key, align 8
  %mid_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %right) #14
  %2 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %right, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %left) #14
  %3 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %left, align 4
  %arrayidx = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %level
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr [8 x ptr], ptr %path, i32 0, i32 %level
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 2, i32 %level
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp5.not = icmp eq i8 %9, 1
  br i1 %cmp5.not, label %entry.if.end_crit_edge, label %do.end, !prof !120

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 881, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %7, i32 0, i32 12
  %10 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %11) #14
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %7, align 8
  %conv.i = trunc i64 %13 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %generation.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 5
  %14 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %generation.i, align 1
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #14
  %17 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp31.not = icmp eq i64 %16, %18
  br i1 %cmp31.not, label %if.end.if.end54_crit_edge, label %do.end48, !prof !120

if.end.if.end54_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

do.end48:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 882, i32 noundef 9, ptr noundef null) #14
  br label %if.end54

if.end54:                                         ; preds = %do.end48, %if.end.if.end54_crit_edge
  %mul.i = mul i32 %5, 33
  %add.i = add i32 %mul.i, 101
  %19 = inttoptr i32 %add.i to ptr
  %call.i.i513 = tail call i64 @btrfs_get_64(ptr noundef %7, ptr noundef %19, i32 noundef 17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %level)
  %cmp63 = icmp slt i32 %level, 7
  br i1 %cmp63, label %if.end71, label %if.end54.if.then73_crit_edge

if.end54.if.then73_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then73

if.end71:                                         ; preds = %if.end54
  %add = add nsw i32 %level, 1
  %arrayidx67 = getelementptr [8 x ptr], ptr %path, i32 0, i32 %add
  %20 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx67, align 4
  %arrayidx70 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %add
  %22 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx70, align 4
  %tobool72.not = icmp eq ptr %21, null
  br i1 %tobool72.not, label %if.end71.if.then73_crit_edge, label %if.end155

if.end71.if.then73_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then73

if.then73:                                        ; preds = %if.end71.if.then73_crit_edge, %if.end54.if.then73_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %child) #14
  %24 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pages.i, align 4
  %call.i515 = tail call ptr @page_address(ptr noundef %25) #14
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %7, align 8
  %conv.i516 = trunc i64 %27 to i32
  %and.i517 = and i32 %conv.i516, 4095
  %add.ptr.i518 = getelementptr i8, ptr %call.i515, i32 %and.i517
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i518, i32 0, i32 7
  %28 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %nritems.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %29)
  %cmp75.not = icmp eq i32 %29, 16777216
  br i1 %cmp75.not, label %if.end78, label %if.then73.cleanup_crit_edge

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end78:                                         ; preds = %if.then73
  %call79 = tail call ptr @btrfs_read_node_slot(ptr noundef %7, i32 noundef 0)
  %30 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call79, ptr %child, align 4
  %cmp.i = icmp ugt ptr %call79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then81, label %if.end86

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %call79 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ...) @__btrfs_handle_fs_error(ptr noundef %1, ptr noundef nonnull @__func__.balance_level, i32 noundef 905, i32 noundef %31, ptr noundef null) #17
  br label %cleanup.thread

if.end86:                                         ; preds = %if.end78
  tail call void @btrfs_tree_lock(ptr noundef %call79) #14
  %call87 = call i32 @btrfs_cow_block(ptr noundef %trans, ptr noundef %root, ptr noundef %call79, ptr noundef %7, i32 noundef 0, ptr noundef nonnull %child, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.then89

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %child, align 4
  tail call void @btrfs_tree_unlock(ptr noundef %33) #14
  tail call void @free_extent_buffer(ptr noundef %33) #14
  br label %cleanup.thread

if.end90:                                         ; preds = %if.end86
  %node = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 1
  %34 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %node, align 4
  %36 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %child, align 4
  %call91 = tail call i32 @btrfs_tree_mod_log_insert_root(ptr noundef %35, ptr noundef %37, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp93 = icmp slt i32 %call91, 0
  br i1 %cmp93, label %do.body102, label %do.body111, !prof !121

do.body102:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 919, 0\0A.popsection", ""() #14, !srcloc !168
  unreachable

do.body111:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !169
  %38 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %37, ptr %node, align 4
  tail call fastcc void @add_root_to_dirty_list(ptr noundef %root)
  tail call void @btrfs_tree_unlock(ptr noundef %37) #14
  %39 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx4, align 1
  %40 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx3, align 4
  tail call void @btrfs_clean_tree_block(ptr noundef %7) #14
  tail call void @btrfs_tree_unlock(ptr noundef %7) #14
  tail call void @free_extent_buffer(ptr noundef %7) #14
  %len = getelementptr inbounds %struct.extent_buffer, ptr %7, i32 0, i32 1
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len, align 8
  %accounting_lock.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %accounting_lock.i) #14
  %bytes_used.i.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 6, i32 5
  %43 = ptrtoint ptr %bytes_used.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %bytes_used.i.i, align 1
  %45 = tail call i64 @llvm.bswap.i64(i64 %44) #14
  %conv.i519 = zext i32 %42 to i64
  %sub.i = sub i64 %45, %conv.i519
  %46 = tail call i64 @llvm.bswap.i64(i64 %sub.i) #14
  %47 = ptrtoint ptr %bytes_used.i.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %46, ptr %bytes_used.i.i, align 1
  tail call void @_raw_spin_unlock(ptr noundef %accounting_lock.i) #14
  %root_key.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %48 = ptrtoint ptr %root_key.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %root_key.i, align 1
  tail call void @btrfs_free_tree_block(ptr noundef %trans, i64 noundef %49, ptr noundef %7, i64 noundef 0, i32 noundef 1) #14
  tail call void @free_extent_buffer_stale(ptr noundef %7) #14
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then89, %if.then81
  %ret.0.ph = phi i32 [ %call87, %if.then89 ], [ %31, %if.then81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %child) #14
  br label %enospc

cleanup:                                          ; preds = %do.body111, %if.then73.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %child) #14
  br label %cleanup364

if.end155:                                        ; preds = %if.end71
  %50 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pages.i, align 4
  %call.i521 = tail call ptr @page_address(ptr noundef %51) #14
  %52 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %7, align 8
  %conv.i522 = trunc i64 %53 to i32
  %and.i523 = and i32 %conv.i522, 4095
  %add.ptr.i524 = getelementptr i8, ptr %call.i521, i32 %and.i523
  %nritems.i525 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i524, i32 0, i32 7
  %54 = ptrtoint ptr %nritems.i525 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %nritems.i525, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #14
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %57 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nodesize.i.i, align 8
  %sub.i.i = add i32 %58, -101
  %div.i = udiv i32 %sub.i.i, 33
  %div511 = lshr i32 %div.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %div511)
  %cmp158 = icmp ugt i32 %56, %div511
  br i1 %cmp158, label %if.end155.cleanup364_crit_edge, label %if.end161

if.end155.cleanup364_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup364

if.end161:                                        ; preds = %if.end155
  %sub = add i32 %23, -1
  %call162 = tail call ptr @btrfs_read_node_slot(ptr noundef nonnull %21, i32 noundef %sub)
  %59 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call162, ptr %left, align 4
  %cmp.i526 = icmp ugt ptr %call162, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i526, label %if.end165.thread, label %if.end165

if.end165.thread:                                 ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %left, align 4
  br label %if.end173

if.end165:                                        ; preds = %if.end161
  %tobool166.not = icmp eq ptr %call162, null
  br i1 %tobool166.not, label %if.end165.if.end173_crit_edge, label %if.then167

if.end165.if.end173_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173

if.then167:                                       ; preds = %if.end165
  tail call void @__btrfs_tree_lock(ptr noundef nonnull %call162, i32 noundef 2) #14
  %call169 = call i32 @btrfs_cow_block(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %call162, ptr noundef nonnull %21, i32 noundef %sub, ptr noundef nonnull %left, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.then167.if.end173_crit_edge, label %if.then167.enospc_crit_edge

if.then167.enospc_crit_edge:                      ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #16
  br label %enospc

if.then167.if.end173_crit_edge:                   ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173

if.end173:                                        ; preds = %if.then167.if.end173_crit_edge, %if.end165.if.end173_crit_edge, %if.end165.thread
  %add174 = add i32 %23, 1
  %call175 = tail call ptr @btrfs_read_node_slot(ptr noundef nonnull %21, i32 noundef %add174)
  %61 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call175, ptr %right, align 4
  %cmp.i527 = icmp ugt ptr %call175, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i527, label %if.end178.thread, label %if.end178

if.end178.thread:                                 ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %right, align 4
  br label %if.end186

if.end178:                                        ; preds = %if.end173
  %tobool179.not = icmp eq ptr %call175, null
  br i1 %tobool179.not, label %if.end178.if.end186_crit_edge, label %if.then180

if.end178.if.end186_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end186

if.then180:                                       ; preds = %if.end178
  tail call void @__btrfs_tree_lock(ptr noundef nonnull %call175, i32 noundef 3) #14
  %call182 = call i32 @btrfs_cow_block(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %call175, ptr noundef nonnull %21, i32 noundef %add174, ptr noundef nonnull %right, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.then180.if.end186_crit_edge, label %if.then180.enospc_crit_edge

if.then180.enospc_crit_edge:                      ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #16
  br label %enospc

if.then180.if.end186_crit_edge:                   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end186

if.end186:                                        ; preds = %if.then180.if.end186_crit_edge, %if.end178.if.end186_crit_edge, %if.end178.thread
  %63 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %left, align 4
  %tobool187.not = icmp eq ptr %64, null
  br i1 %tobool187.not, label %if.end186.if.end196_crit_edge, label %if.then188

if.end186.if.end196_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end196

if.then188:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #16
  %pages.i528 = getelementptr inbounds %struct.extent_buffer, ptr %64, i32 0, i32 12
  %65 = ptrtoint ptr %pages.i528 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pages.i528, align 4
  %call.i529 = tail call ptr @page_address(ptr noundef %66) #14
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %64, align 8
  %conv.i530 = trunc i64 %68 to i32
  %and.i531 = and i32 %conv.i530, 4095
  %add.ptr.i532 = getelementptr i8, ptr %call.i529, i32 %and.i531
  %nritems.i533 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i532, i32 0, i32 7
  %69 = ptrtoint ptr %nritems.i533 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %nritems.i533, align 1
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #14
  %add190 = add i32 %71, %5
  %call191 = tail call fastcc i32 @push_node_left(ptr noundef %trans, ptr noundef nonnull %64, ptr noundef %7, i32 noundef 1)
  %72 = tail call i32 @llvm.smin.i32(i32 %call191, i32 0)
  br label %if.end196

if.end196:                                        ; preds = %if.then188, %if.end186.if.end196_crit_edge
  %ret.1 = phi i32 [ 0, %if.end186.if.end196_crit_edge ], [ %72, %if.then188 ]
  %orig_slot.0 = phi i32 [ %5, %if.end186.if.end196_crit_edge ], [ %add190, %if.then188 ]
  %73 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %right, align 4
  %tobool197.not = icmp eq ptr %74, null
  br i1 %tobool197.not, label %if.end196.if.end239_crit_edge, label %if.then198

if.end196.if.end239_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end239

if.then198:                                       ; preds = %if.end196
  %call199 = tail call fastcc i32 @push_node_left(ptr noundef %trans, ptr noundef %7, ptr noundef nonnull %74, i32 noundef 1)
  %pages.i534 = getelementptr inbounds %struct.extent_buffer, ptr %74, i32 0, i32 12
  %75 = ptrtoint ptr %pages.i534 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pages.i534, align 4
  %call.i535 = tail call ptr @page_address(ptr noundef %76) #14
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %74, align 8
  %conv.i536 = trunc i64 %78 to i32
  %and.i537 = and i32 %conv.i536, 4095
  %add.ptr.i538 = getelementptr i8, ptr %call.i535, i32 %and.i537
  %nritems.i539 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i538, i32 0, i32 7
  %79 = ptrtoint ptr %nritems.i539 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %nritems.i539, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp208 = icmp eq i32 %80, 0
  br i1 %cmp208, label %if.then210, label %if.else215

if.then210:                                       ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call199)
  %cmp200 = icmp sgt i32 %call199, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call199)
  %cmp203.not = icmp eq i32 %call199, -28
  %or.cond = or i1 %cmp200, %cmp203.not
  %ret.2 = select i1 %or.cond, i32 %ret.1, i32 %call199
  tail call void @btrfs_clean_tree_block(ptr noundef nonnull %74) #14
  tail call void @btrfs_tree_unlock(ptr noundef nonnull %74) #14
  tail call fastcc void @del_ptr(ptr noundef %root, ptr noundef %path, i32 noundef %add, i32 noundef %add174)
  %len213 = getelementptr inbounds %struct.extent_buffer, ptr %74, i32 0, i32 1
  %81 = ptrtoint ptr %len213 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len213, align 8
  %accounting_lock.i540 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %accounting_lock.i540) #14
  %bytes_used.i.i541 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 6, i32 5
  %83 = ptrtoint ptr %bytes_used.i.i541 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 8)
  %84 = load i64, ptr %bytes_used.i.i541, align 1
  %85 = tail call i64 @llvm.bswap.i64(i64 %84) #14
  %conv.i542 = zext i32 %82 to i64
  %sub.i543 = sub i64 %85, %conv.i542
  %86 = tail call i64 @llvm.bswap.i64(i64 %sub.i543) #14
  %87 = ptrtoint ptr %bytes_used.i.i541 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 8)
  store i64 %86, ptr %bytes_used.i.i541, align 1
  tail call void @_raw_spin_unlock(ptr noundef %accounting_lock.i540) #14
  %root_key.i544 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %88 = ptrtoint ptr %root_key.i544 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 8)
  %89 = load i64, ptr %root_key.i544, align 1
  tail call void @btrfs_free_tree_block(ptr noundef %trans, i64 noundef %89, ptr noundef nonnull %74, i64 noundef 0, i32 noundef 1) #14
  tail call void @free_extent_buffer_stale(ptr noundef nonnull %74) #14
  %90 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %right, align 4
  br label %if.end239

if.else215:                                       ; preds = %if.then198
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %right_key) #14
  %91 = call ptr @memset(ptr %right_key, i32 255, i32 17)
  call void @btrfs_node_key(ptr noundef nonnull %74, ptr noundef nonnull %right_key, i32 noundef 0) #14
  %call217 = call i32 @btrfs_tree_mod_log_insert_key(ptr noundef nonnull %21, i32 noundef %add174, i32 noundef 0, i32 noundef 3136) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %cmp219 = icmp slt i32 %call217, 0
  br i1 %cmp219, label %do.body228, label %do.end236, !prof !121

do.body228:                                       ; preds = %if.else215
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1001, 0\0A.popsection", ""() #14, !srcloc !170
  unreachable

do.end236:                                        ; preds = %if.else215
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i.i = mul i32 %add174, 33
  %add.i.i = add i32 %mul.i.i, 101
  call void @write_extent_buffer(ptr noundef nonnull %21, ptr noundef nonnull %right_key, i32 noundef %add.i.i, i32 noundef 17) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef nonnull %21) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %right_key) #14
  br label %if.end239

if.end239:                                        ; preds = %do.end236, %if.then210, %if.end196.if.end239_crit_edge
  %ret.3 = phi i32 [ %ret.2, %if.then210 ], [ %call217, %do.end236 ], [ %ret.1, %if.end196.if.end239_crit_edge ]
  %92 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pages.i, align 4
  %call.i546 = call ptr @page_address(ptr noundef %93) #14
  %94 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %7, align 8
  %conv.i547 = trunc i64 %95 to i32
  %and.i548 = and i32 %conv.i547, 4095
  %add.ptr.i549 = getelementptr i8, ptr %call.i546, i32 %and.i548
  %nritems.i550 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i549, i32 0, i32 7
  %96 = ptrtoint ptr %nritems.i550 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %nritems.i550, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %97)
  %cmp241 = icmp eq i32 %97, 16777216
  br i1 %cmp241, label %if.then243, label %if.end239.if.end283_crit_edge

if.end239.if.end283_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end283

if.then243:                                       ; preds = %if.end239
  br i1 %tobool187.not, label %if.then245, label %if.end249

if.then245:                                       ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, i32, i32, ptr, ...) @__btrfs_handle_fs_error(ptr noundef %1, ptr noundef nonnull @__func__.balance_level, i32 noundef 1018, i32 noundef -30, ptr noundef null) #17
  br label %enospc

if.end249:                                        ; preds = %if.then243
  %call250 = call fastcc i32 @balance_node_right(ptr noundef %trans, ptr noundef %7, ptr noundef nonnull %64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %cmp251 = icmp slt i32 %call250, 0
  br i1 %cmp251, label %if.end249.enospc_crit_edge, label %if.end254

if.end249.enospc_crit_edge:                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #16
  br label %enospc

if.end254:                                        ; preds = %if.end249
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call250)
  %cmp255 = icmp eq i32 %call250, 1
  br i1 %cmp255, label %if.then257, label %if.end254.do.body264_crit_edge

if.end254.do.body264_crit_edge:                   ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body264

if.then257:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #16
  %call258 = call fastcc i32 @push_node_left(ptr noundef %trans, ptr noundef nonnull %64, ptr noundef %7, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %cmp259 = icmp slt i32 %call258, 0
  %spec.select512 = select i1 %cmp259, i32 %call258, i32 %ret.3
  br label %do.body264

do.body264:                                       ; preds = %if.then257, %if.end254.do.body264_crit_edge
  %ret.4 = phi i32 [ %ret.3, %if.end254.do.body264_crit_edge ], [ %spec.select512, %if.then257 ]
  %wret.0 = phi i32 [ %call250, %if.end254.do.body264_crit_edge ], [ %call258, %if.then257 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %wret.0)
  %cmp265 = icmp eq i32 %wret.0, 1
  br i1 %cmp265, label %do.body274, label %do.body264.if.end283_crit_edge, !prof !121

do.body264.if.end283_crit_edge:                   ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end283

do.body274:                                       ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1031, 0\0A.popsection", ""() #14, !srcloc !171
  unreachable

if.end283:                                        ; preds = %do.body264.if.end283_crit_edge, %if.end239.if.end283_crit_edge
  %ret.5 = phi i32 [ %ret.4, %do.body264.if.end283_crit_edge ], [ %ret.3, %if.end239.if.end283_crit_edge ]
  %98 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pages.i, align 4
  %call.i552 = call ptr @page_address(ptr noundef %99) #14
  %100 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %7, align 8
  %conv.i553 = trunc i64 %101 to i32
  %and.i554 = and i32 %conv.i553, 4095
  %add.ptr.i555 = getelementptr i8, ptr %call.i552, i32 %and.i554
  %nritems.i556 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i555, i32 0, i32 7
  %102 = ptrtoint ptr %nritems.i556 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %nritems.i556, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp285 = icmp eq i32 %103, 0
  br i1 %cmp285, label %if.then287, label %if.else291

if.then287:                                       ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_clean_tree_block(ptr noundef %7) #14
  call void @btrfs_tree_unlock(ptr noundef %7) #14
  call fastcc void @del_ptr(ptr noundef %root, ptr noundef %path, i32 noundef %add, i32 noundef %23)
  %len289 = getelementptr inbounds %struct.extent_buffer, ptr %7, i32 0, i32 1
  %104 = ptrtoint ptr %len289 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %len289, align 8
  %accounting_lock.i557 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 11
  call void @_raw_spin_lock(ptr noundef %accounting_lock.i557) #14
  %bytes_used.i.i558 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 6, i32 5
  %106 = ptrtoint ptr %bytes_used.i.i558 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 8)
  %107 = load i64, ptr %bytes_used.i.i558, align 1
  %108 = call i64 @llvm.bswap.i64(i64 %107) #14
  %conv.i559 = zext i32 %105 to i64
  %sub.i560 = sub i64 %108, %conv.i559
  %109 = call i64 @llvm.bswap.i64(i64 %sub.i560) #14
  %110 = ptrtoint ptr %bytes_used.i.i558 to i32
  call void @__asan_storeN_noabort(i32 %110, i32 8)
  store i64 %109, ptr %bytes_used.i.i558, align 1
  call void @_raw_spin_unlock(ptr noundef %accounting_lock.i557) #14
  %root_key.i561 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %111 = ptrtoint ptr %root_key.i561 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 8)
  %112 = load i64, ptr %root_key.i561, align 1
  call void @btrfs_free_tree_block(ptr noundef %trans, i64 noundef %112, ptr noundef %7, i64 noundef 0, i32 noundef 1) #14
  call void @free_extent_buffer_stale(ptr noundef %7) #14
  br label %if.end312

if.else291:                                       ; preds = %if.end283
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %mid_key) #14
  %113 = call ptr @memset(ptr %mid_key, i32 255, i32 17)
  call void @btrfs_node_key(ptr noundef %7, ptr noundef nonnull %mid_key, i32 noundef 0) #14
  %call292 = call i32 @btrfs_tree_mod_log_insert_key(ptr noundef nonnull %21, i32 noundef %23, i32 noundef 0, i32 noundef 3136) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292)
  %cmp294 = icmp slt i32 %call292, 0
  br i1 %cmp294, label %do.body303, label %do.end311, !prof !121

do.body303:                                       ; preds = %if.else291
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1047, 0\0A.popsection", ""() #14, !srcloc !172
  unreachable

do.end311:                                        ; preds = %if.else291
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i.i562 = mul i32 %23, 33
  %add.i.i563 = add i32 %mul.i.i562, 101
  call void @write_extent_buffer(ptr noundef nonnull %21, ptr noundef nonnull %mid_key, i32 noundef %add.i.i563, i32 noundef 17) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef nonnull %21) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %mid_key) #14
  br label %if.end312

if.end312:                                        ; preds = %do.end311, %if.then287
  %ret.6 = phi i32 [ %ret.5, %if.then287 ], [ %call292, %do.end311 ]
  %mid.0 = phi ptr [ null, %if.then287 ], [ %7, %do.end311 ]
  br i1 %tobool187.not, label %if.end312.if.end336_crit_edge, label %if.then314

if.end312.if.end336_crit_edge:                    ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end336

if.then314:                                       ; preds = %if.end312
  %pages.i564 = getelementptr inbounds %struct.extent_buffer, ptr %64, i32 0, i32 12
  %114 = ptrtoint ptr %pages.i564 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pages.i564, align 4
  %call.i565 = call ptr @page_address(ptr noundef %115) #14
  %116 = ptrtoint ptr %64 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %64, align 8
  %conv.i566 = trunc i64 %117 to i32
  %and.i567 = and i32 %conv.i566, 4095
  %add.ptr.i568 = getelementptr i8, ptr %call.i565, i32 %and.i567
  %nritems.i569 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i568, i32 0, i32 7
  %118 = ptrtoint ptr %nritems.i569 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %nritems.i569, align 1
  %120 = call i32 @llvm.bswap.i32(i32 %119) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %orig_slot.0)
  %cmp316 = icmp ugt i32 %120, %orig_slot.0
  br i1 %cmp316, label %if.then318, label %if.else330

if.then318:                                       ; preds = %if.then314
  %refs = getelementptr inbounds %struct.extent_buffer, ptr %64, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #14
  %121 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #14, !srcloc !124
  %122 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %64, ptr %arrayidx3, align 4
  %123 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx70, align 4
  %sub324 = add i32 %124, -1
  store i32 %sub324, ptr %arrayidx70, align 4
  %125 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %orig_slot.0, ptr %arrayidx, align 4
  %tobool327.not = icmp eq ptr %mid.0, null
  br i1 %tobool327.not, label %if.then318.if.end336_crit_edge, label %if.then328

if.then318.if.end336_crit_edge:                   ; preds = %if.then318
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end336

if.then328:                                       ; preds = %if.then318
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_unlock(ptr noundef nonnull %mid.0) #14
  call void @free_extent_buffer(ptr noundef nonnull %mid.0) #14
  br label %if.end336

if.else330:                                       ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #16
  %126 = ptrtoint ptr %pages.i564 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pages.i564, align 4
  %call.i571 = call ptr @page_address(ptr noundef %127) #14
  %128 = ptrtoint ptr %64 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %64, align 8
  %conv.i572 = trunc i64 %129 to i32
  %and.i573 = and i32 %conv.i572, 4095
  %add.ptr.i574 = getelementptr i8, ptr %call.i571, i32 %and.i573
  %nritems.i575 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i574, i32 0, i32 7
  %130 = ptrtoint ptr %nritems.i575 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %nritems.i575, align 1
  %132 = call i32 @llvm.bswap.i32(i32 %131) #14
  %sub332 = sub i32 %orig_slot.0, %132
  %133 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %sub332, ptr %arrayidx, align 4
  br label %if.end336

if.end336:                                        ; preds = %if.else330, %if.then328, %if.then318.if.end336_crit_edge, %if.end312.if.end336_crit_edge
  %134 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx3, align 4
  %136 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx, align 4
  %mul.i576 = mul i32 %137, 33
  %add.i577 = add i32 %mul.i576, 101
  %138 = inttoptr i32 %add.i577 to ptr
  %call.i.i578 = call i64 @btrfs_get_64(ptr noundef %135, ptr noundef %138, i32 noundef 17) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i513, i64 %call.i.i578)
  %cmp342.not = icmp eq i64 %call.i.i513, %call.i.i578
  br i1 %cmp342.not, label %if.end336.enospc_crit_edge, label %do.body345

if.end336.enospc_crit_edge:                       ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #16
  br label %enospc

do.body345:                                       ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1072, 0\0A.popsection", ""() #14, !srcloc !173
  unreachable

enospc:                                           ; preds = %if.end336.enospc_crit_edge, %if.end249.enospc_crit_edge, %if.then245, %if.then180.enospc_crit_edge, %if.then167.enospc_crit_edge, %cleanup.thread
  %ret.7 = phi i32 [ %ret.6, %if.end336.enospc_crit_edge ], [ -30, %if.then245 ], [ %call169, %if.then167.enospc_crit_edge ], [ %call182, %if.then180.enospc_crit_edge ], [ %call250, %if.end249.enospc_crit_edge ], [ %ret.0.ph, %cleanup.thread ]
  %139 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %right, align 4
  %tobool352.not = icmp eq ptr %140, null
  br i1 %tobool352.not, label %enospc.if.end354_crit_edge, label %if.then353

enospc.if.end354_crit_edge:                       ; preds = %enospc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end354

if.then353:                                       ; preds = %enospc
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_unlock(ptr noundef nonnull %140) #14
  call void @free_extent_buffer(ptr noundef nonnull %140) #14
  br label %if.end354

if.end354:                                        ; preds = %if.then353, %enospc.if.end354_crit_edge
  %141 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %left, align 4
  %tobool355.not = icmp eq ptr %142, null
  br i1 %tobool355.not, label %if.end354.cleanup364_crit_edge, label %if.then356

if.end354.cleanup364_crit_edge:                   ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup364

if.then356:                                       ; preds = %if.end354
  %143 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx3, align 4
  %cmp359.not = icmp eq ptr %144, %142
  br i1 %cmp359.not, label %if.then356.if.end362_crit_edge, label %if.then361

if.then356.if.end362_crit_edge:                   ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end362

if.then361:                                       ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_unlock(ptr noundef nonnull %142) #14
  br label %if.end362

if.end362:                                        ; preds = %if.then361, %if.then356.if.end362_crit_edge
  call void @free_extent_buffer(ptr noundef nonnull %142) #14
  br label %cleanup364

cleanup364:                                       ; preds = %if.end362, %if.end354.cleanup364_crit_edge, %if.end155.cleanup364_crit_edge, %cleanup
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %if.end155.cleanup364_crit_edge ], [ %ret.7, %if.end362 ], [ %ret.7, %if.end354.cleanup364_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %right) #14
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_readahead_node_child(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @push_nodes_for_insert(ptr noundef %trans, ptr noundef %root, ptr nocapture noundef %path, i32 noundef %level) unnamed_addr #4 align 64 {
entry:
  %right = alloca ptr, align 4
  %left = alloca ptr, align 4
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  %disk_key124 = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %right) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %left) #14
  %arrayidx = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %level
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [8 x ptr], ptr %path, i32 0, i32 %level
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %7) #14
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %5, align 8
  %conv.i = trunc i64 %9 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %generation.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 5
  %10 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %generation.i, align 1
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #14
  %13 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp3.not = icmp eq i64 %12, %14
  br i1 %cmp3.not, label %entry.if.end17_crit_edge, label %do.end, !prof !120

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1108, i32 noundef 9, ptr noundef null) #14
  br label %if.end17

if.end17:                                         ; preds = %do.end, %entry.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %level)
  %cmp24 = icmp slt i32 %level, 7
  br i1 %cmp24, label %if.end31, label %if.end17.cleanup167_crit_edge

if.end17.cleanup167_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup167

if.end31:                                         ; preds = %if.end17
  %add = add nsw i32 %level, 1
  %arrayidx27 = getelementptr [8 x ptr], ptr %path, i32 0, i32 %add
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx27, align 4
  %arrayidx30 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %add
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx30, align 4
  %tobool32.not = icmp eq ptr %16, null
  br i1 %tobool32.not, label %if.end31.cleanup167_crit_edge, label %if.end34

if.end31.cleanup167_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup167

if.end34:                                         ; preds = %if.end31
  %sub = add i32 %18, -1
  %call35 = tail call ptr @btrfs_read_node_slot(ptr noundef nonnull %16, i32 noundef %sub)
  %19 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call35, ptr %left, align 4
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end38.thread, label %if.end38

if.end38.thread:                                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %left, align 4
  br label %if.end97

if.end38:                                         ; preds = %if.end34
  %tobool39.not = icmp eq ptr %call35, null
  br i1 %tobool39.not, label %if.end38.if.end97_crit_edge, label %if.then40

if.end38.if.end97_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97

if.then40:                                        ; preds = %if.end38
  tail call void @__btrfs_tree_lock(ptr noundef nonnull %call35, i32 noundef 2) #14
  %pages.i250 = getelementptr inbounds %struct.extent_buffer, ptr %call35, i32 0, i32 12
  %21 = ptrtoint ptr %pages.i250 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pages.i250, align 4
  %call.i251 = tail call ptr @page_address(ptr noundef %22) #14
  %23 = ptrtoint ptr %call35 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %call35, align 8
  %conv.i252 = trunc i64 %24 to i32
  %and.i253 = and i32 %conv.i252, 4095
  %add.ptr.i254 = getelementptr i8, ptr %call.i251, i32 %and.i253
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i254, i32 0, i32 7
  %25 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %nritems.i, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #14
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %28 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nodesize.i.i, align 8
  %sub.i.i = add i32 %29, -101
  %div.i = udiv i32 %sub.i.i, 33
  %sub43 = add nsw i32 %div.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %sub43)
  %cmp44.not = icmp ult i32 %27, %sub43
  br i1 %cmp44.not, label %if.else, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %if.then40
  %call47 = call i32 @btrfs_cow_block(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %call35, ptr noundef nonnull %16, i32 noundef %sub, ptr noundef nonnull %left, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end53, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end53:                                         ; preds = %if.else
  %30 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %left, align 4
  %call51 = tail call fastcc i32 @push_node_left(ptr noundef %trans, ptr noundef %31, ptr noundef %5, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp57 = icmp eq i32 %call51, 0
  br i1 %cmp57, label %if.then58, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then58:                                        ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #14
  %add59 = add i32 %27, %3
  %32 = call ptr @memset(ptr %disk_key, i32 255, i32 17)
  call void @btrfs_node_key(ptr noundef %5, ptr noundef nonnull %disk_key, i32 noundef 0) #14
  %call60 = call i32 @btrfs_tree_mod_log_insert_key(ptr noundef nonnull %16, i32 noundef %18, i32 noundef 0, i32 noundef 3136) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp62 = icmp slt i32 %call60, 0
  br i1 %cmp62, label %do.body70, label %do.end78, !prof !121

do.body70:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1149, 0\0A.popsection", ""() #14, !srcloc !174
  unreachable

do.end78:                                         ; preds = %if.then58
  %mul.i.i = mul i32 %18, 33
  %add.i.i = add i32 %mul.i.i, 101
  call void @write_extent_buffer(ptr noundef nonnull %16, ptr noundef nonnull %disk_key, i32 noundef %add.i.i, i32 noundef 17) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef nonnull %16) #14
  %33 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %left, align 4
  %pages.i255 = getelementptr inbounds %struct.extent_buffer, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %pages.i255 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pages.i255, align 4
  %call.i256 = call ptr @page_address(ptr noundef %36) #14
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %34, align 8
  %conv.i257 = trunc i64 %38 to i32
  %and.i258 = and i32 %conv.i257, 4095
  %add.ptr.i259 = getelementptr i8, ptr %call.i256, i32 %and.i258
  %nritems.i260 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i259, i32 0, i32 7
  %39 = ptrtoint ptr %nritems.i260 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %nritems.i260, align 1
  %41 = call i32 @llvm.bswap.i32(i32 %40) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %add59)
  %cmp80 = icmp ugt i32 %41, %add59
  br i1 %cmp80, label %if.then81, label %if.else90

if.then81:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %34, ptr %arrayidx2, align 4
  %43 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx30, align 4
  %sub87 = add i32 %44, -1
  store i32 %sub87, ptr %arrayidx30, align 4
  br label %cleanup.thread

if.else90:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %pages.i255 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pages.i255, align 4
  %call.i262 = call ptr @page_address(ptr noundef %46) #14
  %47 = ptrtoint ptr %34 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %34, align 8
  %conv.i263 = trunc i64 %48 to i32
  %and.i264 = and i32 %conv.i263, 4095
  %add.ptr.i265 = getelementptr i8, ptr %call.i262, i32 %and.i264
  %nritems.i266 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i265, i32 0, i32 7
  %49 = ptrtoint ptr %nritems.i266 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %nritems.i266, align 1
  %51 = call i32 @llvm.bswap.i32(i32 %50) #14
  %sub92 = sub i32 %add59, %51
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else90, %if.then81
  %add59.sink = phi i32 [ %add59, %if.then81 ], [ %sub92, %if.else90 ]
  %.sink309 = phi ptr [ %5, %if.then81 ], [ %34, %if.else90 ]
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add59.sink, ptr %arrayidx, align 4
  call void @btrfs_tree_unlock(ptr noundef %.sink309) #14
  call void @free_extent_buffer(ptr noundef %.sink309) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #14
  br label %cleanup167

cleanup:                                          ; preds = %if.end53.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then40.cleanup_crit_edge
  %53 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %left, align 4
  tail call void @btrfs_tree_unlock(ptr noundef %54) #14
  tail call void @free_extent_buffer(ptr noundef %54) #14
  br label %if.end97

if.end97:                                         ; preds = %cleanup, %if.end38.if.end97_crit_edge, %if.end38.thread
  %add98 = add i32 %18, 1
  %call99 = tail call ptr @btrfs_read_node_slot(ptr noundef nonnull %16, i32 noundef %add98)
  %55 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call99, ptr %right, align 4
  %cmp.i267 = icmp ugt ptr %call99, inttoptr (i32 -4096 to ptr)
  %tobool103.not = icmp eq ptr %call99, null
  %or.cond = or i1 %cmp.i267, %tobool103.not
  br i1 %or.cond, label %if.end97.cleanup167_crit_edge, label %if.then104

if.end97.cleanup167_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup167

if.then104:                                       ; preds = %if.end97
  tail call void @__btrfs_tree_lock(ptr noundef nonnull %call99, i32 noundef 3) #14
  %pages.i268 = getelementptr inbounds %struct.extent_buffer, ptr %call99, i32 0, i32 12
  %56 = ptrtoint ptr %pages.i268 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pages.i268, align 4
  %call.i269 = tail call ptr @page_address(ptr noundef %57) #14
  %58 = ptrtoint ptr %call99 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %call99, align 8
  %conv.i270 = trunc i64 %59 to i32
  %and.i271 = and i32 %conv.i270, 4095
  %add.ptr.i272 = getelementptr i8, ptr %call.i269, i32 %and.i271
  %nritems.i273 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i272, i32 0, i32 7
  %60 = ptrtoint ptr %nritems.i273 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %nritems.i273, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #14
  %nodesize.i.i274 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %63 = ptrtoint ptr %nodesize.i.i274 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nodesize.i.i274, align 8
  %sub.i.i275 = add i32 %64, -101
  %div.i276 = udiv i32 %sub.i.i275, 33
  %sub107 = add nsw i32 %div.i276, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %sub107)
  %cmp108.not = icmp ult i32 %62, %sub107
  br i1 %cmp108.not, label %if.else110, label %if.then104.if.end162_crit_edge

if.then104.if.end162_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end162

if.else110:                                       ; preds = %if.then104
  %call112 = call i32 @btrfs_cow_block(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %call99, ptr noundef nonnull %16, i32 noundef %add98, ptr noundef nonnull %right, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end118, label %if.else110.if.end162_crit_edge

if.else110.if.end162_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end162

if.end118:                                        ; preds = %if.else110
  %65 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %right, align 4
  %call116 = tail call fastcc i32 @balance_node_right(ptr noundef %trans, ptr noundef %66, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp122 = icmp eq i32 %call116, 0
  br i1 %cmp122, label %if.then123, label %if.end118.if.end162_crit_edge

if.end118.if.end162_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end162

if.then123:                                       ; preds = %if.end118
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key124) #14
  %67 = call ptr @memset(ptr %disk_key124, i32 255, i32 17)
  %68 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %right, align 4
  call void @btrfs_node_key(ptr noundef %69, ptr noundef nonnull %disk_key124, i32 noundef 0) #14
  %call126 = call i32 @btrfs_tree_mod_log_insert_key(ptr noundef nonnull %16, i32 noundef %add98, i32 noundef 0, i32 noundef 3136) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp128 = icmp slt i32 %call126, 0
  br i1 %cmp128, label %do.body136, label %do.end144, !prof !121

do.body136:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1203, 0\0A.popsection", ""() #14, !srcloc !175
  unreachable

do.end144:                                        ; preds = %if.then123
  %mul.i.i277 = mul i32 %add98, 33
  %add.i.i278 = add i32 %mul.i.i277, 101
  call void @write_extent_buffer(ptr noundef nonnull %16, ptr noundef nonnull %disk_key124, i32 noundef %add.i.i278, i32 noundef 17) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef nonnull %16) #14
  %70 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pages.i, align 4
  %call.i280 = call ptr @page_address(ptr noundef %71) #14
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %5, align 8
  %conv.i281 = trunc i64 %73 to i32
  %and.i282 = and i32 %conv.i281, 4095
  %add.ptr.i283 = getelementptr i8, ptr %call.i280, i32 %and.i282
  %nritems.i284 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i283, i32 0, i32 7
  %74 = ptrtoint ptr %nritems.i284 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %nritems.i284, align 1
  %76 = call i32 @llvm.bswap.i32(i32 %75) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %3)
  %cmp147.not = icmp ugt i32 %76, %3
  br i1 %cmp147.not, label %do.end144.if.end160_crit_edge, label %if.then148

do.end144.if.end160_crit_edge:                    ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end160

if.then148:                                       ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %69, ptr %arrayidx2, align 4
  %78 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx30, align 4
  %add154 = add i32 %79, 1
  store i32 %add154, ptr %arrayidx30, align 4
  %80 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pages.i, align 4
  %call.i286 = call ptr @page_address(ptr noundef %81) #14
  %82 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %5, align 8
  %conv.i287 = trunc i64 %83 to i32
  %and.i288 = and i32 %conv.i287, 4095
  %add.ptr.i289 = getelementptr i8, ptr %call.i286, i32 %and.i288
  %nritems.i290 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i289, i32 0, i32 7
  %84 = ptrtoint ptr %nritems.i290 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %nritems.i290, align 1
  %86 = call i32 @llvm.bswap.i32(i32 %85) #14
  %sub156 = sub i32 %3, %86
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %sub156, ptr %arrayidx, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.then148, %do.end144.if.end160_crit_edge
  %.sink311 = phi ptr [ %5, %if.then148 ], [ %69, %do.end144.if.end160_crit_edge ]
  call void @btrfs_tree_unlock(ptr noundef %.sink311) #14
  call void @free_extent_buffer(ptr noundef %.sink311) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key124) #14
  br label %cleanup167

if.end162:                                        ; preds = %if.end118.if.end162_crit_edge, %if.else110.if.end162_crit_edge, %if.then104.if.end162_crit_edge
  %88 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %right, align 4
  tail call void @btrfs_tree_unlock(ptr noundef %89) #14
  tail call void @free_extent_buffer(ptr noundef %89) #14
  br label %cleanup167

cleanup167:                                       ; preds = %if.end162, %if.end160, %if.end97.cleanup167_crit_edge, %cleanup.thread, %if.end31.cleanup167_crit_edge, %if.end17.cleanup167_crit_edge
  %retval.3 = phi i32 [ 1, %if.end31.cleanup167_crit_edge ], [ 0, %if.end160 ], [ 1, %if.end162 ], [ 0, %cleanup.thread ], [ 1, %if.end17.cleanup167_crit_edge ], [ 1, %if.end97.cleanup167_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %right) #14
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_tree_mod_log_eb_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__btrfs_tree_lock(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @push_node_left(ptr noundef %trans, ptr noundef %dst, ptr noundef %src, i32 noundef %empty) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %src, i32 0, i32 12
  %2 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %3) #14
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %src, align 8
  %conv.i = trunc i64 %5 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %6 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %nritems.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #14
  %pages.i288 = getelementptr inbounds %struct.extent_buffer, ptr %dst, i32 0, i32 12
  %9 = ptrtoint ptr %pages.i288 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pages.i288, align 4
  %call.i289 = tail call ptr @page_address(ptr noundef %10) #14
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %dst, align 8
  %conv.i290 = trunc i64 %12 to i32
  %and.i291 = and i32 %conv.i290, 4095
  %add.ptr.i292 = getelementptr i8, ptr %call.i289, i32 %and.i291
  %nritems.i293 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i292, i32 0, i32 7
  %13 = ptrtoint ptr %nritems.i293 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %nritems.i293, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %16 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nodesize.i.i, align 8
  %sub.i.i = add i32 %17, -101
  %div.i = udiv i32 %sub.i.i, 33
  %sub = sub i32 %div.i, %15
  %18 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pages.i, align 4
  %call.i295 = tail call ptr @page_address(ptr noundef %19) #14
  %20 = ptrtoint ptr %src to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %src, align 8
  %conv.i296 = trunc i64 %21 to i32
  %and.i297 = and i32 %conv.i296, 4095
  %add.ptr.i298 = getelementptr i8, ptr %call.i295, i32 %and.i297
  %generation.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i298, i32 0, i32 5
  %22 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %generation.i, align 1
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #14
  %25 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %26)
  %cmp.not = icmp eq i64 %24, %26
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !120

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2435, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %27 = ptrtoint ptr %pages.i288 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages.i288, align 4
  %call.i300 = tail call ptr @page_address(ptr noundef %28) #14
  %29 = ptrtoint ptr %dst to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %dst, align 8
  %conv.i301 = trunc i64 %30 to i32
  %and.i302 = and i32 %conv.i301, 4095
  %add.ptr.i303 = getelementptr i8, ptr %call.i300, i32 %and.i302
  %generation.i304 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i303, i32 0, i32 5
  %31 = ptrtoint ptr %generation.i304 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %generation.i304, align 1
  %33 = tail call i64 @llvm.bswap.i64(i64 %32) #14
  %34 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %35)
  %cmp26.not = icmp eq i64 %33, %35
  br i1 %cmp26.not, label %if.end.if.end48_crit_edge, label %do.end42, !prof !120

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

do.end42:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2436, i32 noundef 9, ptr noundef null) #14
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %if.end.if.end48_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %empty)
  %tobool56.not = icmp eq i32 %empty, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %8)
  %cmp57 = icmp slt i32 %8, 9
  %or.cond = select i1 %tobool56.not, i1 %cmp57, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp60 = icmp slt i32 %sub, 1
  %or.cond287 = select i1 %or.cond, i1 true, i1 %cmp60
  br i1 %or.cond287, label %if.end48.cleanup_crit_edge, label %if.end62

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end62:                                         ; preds = %if.end48
  br i1 %tobool56.not, label %if.else, label %if.then64

if.then64:                                        ; preds = %if.end62
  %36 = tail call i32 @llvm.smin.i32(i32 %8, i32 %sub)
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sub)
  %cmp67 = icmp sgt i32 %8, %sub
  %sub69 = sub i32 %8, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub69)
  %cmp70 = icmp slt i32 %sub69, 8
  %or.cond286 = and i1 %cmp67, %cmp70
  br i1 %or.cond286, label %if.then71, label %if.then64.if.end85_crit_edge

if.then64.if.end85_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.then71:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %36)
  %cmp72 = icmp slt i32 %36, 9
  br i1 %cmp72, label %if.then71.cleanup_crit_edge, label %if.end74

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end74:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #16
  %sub75 = add nsw i32 %36, -8
  br label %if.end85

if.else:                                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  %sub78 = add i32 %8, -8
  %37 = tail call i32 @llvm.smin.i32(i32 %sub78, i32 %sub)
  br label %if.end85

if.end85:                                         ; preds = %if.else, %if.end74, %if.then64.if.end85_crit_edge
  %push_items.0 = phi i32 [ %sub75, %if.end74 ], [ %36, %if.then64.if.end85_crit_edge ], [ %37, %if.else ]
  %call86 = tail call fastcc zeroext i1 @check_sibling_keys(ptr noundef %dst, ptr noundef %src)
  br i1 %call86, label %if.then87, label %if.end143

if.then87:                                        ; preds = %if.end85
  %38 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fs_info1, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %39, i32 0, i32 149
  %call90 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %do.end109, label %if.then87.if.end140_crit_edge

if.then87.if.end140_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end140

do.end109:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2462, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef -117) #14
  br label %if.end140

if.end140:                                        ; preds = %do.end109, %if.then87.if.end140_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.34, i32 noundef 2462, i32 noundef -117) #17
  br label %cleanup

if.end143:                                        ; preds = %if.end85
  %call144 = tail call i32 @btrfs_tree_mod_log_eb_copy(ptr noundef %dst, ptr noundef %src, i32 noundef %15, i32 noundef 0, i32 noundef %push_items.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end205, label %do.body147

do.body147:                                       ; preds = %if.end143
  %40 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fs_info1, align 4
  %fs_state149 = getelementptr inbounds %struct.btrfs_fs_info, ptr %41, i32 0, i32 149
  %call150 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state149) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.then152, label %do.body147.if.end202_crit_edge

do.body147.if.end202_crit_edge:                   ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end202

if.then152:                                       ; preds = %do.body147
  %42 = zext i32 %call144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call144, label %do.end169 [
    i32 -5, label %if.then152.do.body184_crit_edge
    i32 -30, label %if.then152.do.body184_crit_edge320
  ]

if.then152.do.body184_crit_edge320:               ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body184

if.then152.do.body184_crit_edge:                  ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body184

do.end169:                                        ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2467, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %call144) #14
  br label %if.end202

do.body184:                                       ; preds = %if.then152.do.body184_crit_edge, %if.then152.do.body184_crit_edge320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @push_node_left.__UNIQUE_ID_ddebug943, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@push_node_left, %if.then196)) #14
          to label %if.end202 [label %if.then196], !srcloc !122

if.then196:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fs_info1, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %44, ptr noundef nonnull @.str.6, i32 noundef %call144) #17
  br label %if.end202

if.end202:                                        ; preds = %if.then196, %do.body184, %do.end169, %do.body147.if.end202_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.34, i32 noundef 2467, i32 noundef %call144) #17
  br label %cleanup

if.end205:                                        ; preds = %if.end143
  %mul.i = mul i32 %15, 33
  %add.i = add i32 %mul.i, 101
  %mul = mul i32 %push_items.0, 33
  tail call void @copy_extent_buffer(ptr noundef %dst, ptr noundef %src, i32 noundef %add.i, i32 noundef 101, i32 noundef %mul) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %push_items.0)
  %cmp208 = icmp sgt i32 %8, %push_items.0
  br i1 %cmp208, label %if.then209, label %if.end205.if.end214_crit_edge

if.end205.if.end214_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #16
  %.pre = sub i32 %8, %push_items.0
  br label %if.end214

if.then209:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #16
  %add.i306 = add i32 %mul, 101
  %sub212 = sub i32 %8, %push_items.0
  %mul213 = mul i32 %sub212, 33
  tail call void @memmove_extent_buffer(ptr noundef %src, i32 noundef 101, i32 noundef %add.i306, i32 noundef %mul213) #14
  br label %if.end214

if.end214:                                        ; preds = %if.then209, %if.end205.if.end214_crit_edge
  %sub215.pre-phi = phi i32 [ %.pre, %if.end205.if.end214_crit_edge ], [ %sub212, %if.then209 ]
  %45 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pages.i, align 4
  %call.i308 = tail call ptr @page_address(ptr noundef %46) #14
  %47 = ptrtoint ptr %src to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %src, align 8
  %conv.i309 = trunc i64 %48 to i32
  %and.i310 = and i32 %conv.i309, 4095
  %add.ptr.i311 = getelementptr i8, ptr %call.i308, i32 %and.i310
  %nritems.i312 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i311, i32 0, i32 7
  %49 = tail call i32 @llvm.bswap.i32(i32 %sub215.pre-phi) #14
  %50 = ptrtoint ptr %nritems.i312 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %nritems.i312, align 1
  %add = add i32 %push_items.0, %15
  %51 = ptrtoint ptr %pages.i288 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pages.i288, align 4
  %call.i314 = tail call ptr @page_address(ptr noundef %52) #14
  %53 = ptrtoint ptr %dst to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %dst, align 8
  %conv.i315 = trunc i64 %54 to i32
  %and.i316 = and i32 %conv.i315, 4095
  %add.ptr.i317 = getelementptr i8, ptr %call.i314, i32 %and.i316
  %nritems.i318 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i317, i32 0, i32 7
  %55 = tail call i32 @llvm.bswap.i32(i32 %add) #14
  %56 = ptrtoint ptr %nritems.i318 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %nritems.i318, align 1
  tail call void @btrfs_mark_buffer_dirty(ptr noundef %src) #14
  tail call void @btrfs_mark_buffer_dirty(ptr noundef %dst) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end214, %if.end202, %if.end140, %if.then71.cleanup_crit_edge, %if.end48.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %if.end140 ], [ %call144, %if.end202 ], [ 0, %if.end214 ], [ 1, %if.end48.cleanup_crit_edge ], [ 1, %if.then71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @balance_node_right(ptr noundef %trans, ptr noundef %dst, ptr noundef %src) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %src, i32 0, i32 12
  %2 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %3) #14
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %src, align 8
  %conv.i = trunc i64 %5 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %generation.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 5
  %6 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %generation.i, align 1
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #14
  %9 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp.not = icmp eq i64 %8, %10
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !120

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2513, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %pages.i278 = getelementptr inbounds %struct.extent_buffer, ptr %dst, i32 0, i32 12
  %11 = ptrtoint ptr %pages.i278 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages.i278, align 4
  %call.i279 = tail call ptr @page_address(ptr noundef %12) #14
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dst, align 8
  %conv.i280 = trunc i64 %14 to i32
  %and.i281 = and i32 %conv.i280, 4095
  %add.ptr.i282 = getelementptr i8, ptr %call.i279, i32 %and.i281
  %generation.i283 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i282, i32 0, i32 5
  %15 = ptrtoint ptr %generation.i283 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %generation.i283, align 1
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #14
  %18 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %trans, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp23.not = icmp eq i64 %17, %19
  br i1 %cmp23.not, label %if.end.if.end45_crit_edge, label %do.end39, !prof !120

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

do.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2514, i32 noundef 9, ptr noundef null) #14
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end.if.end45_crit_edge
  %20 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pages.i, align 4
  %call.i285 = tail call ptr @page_address(ptr noundef %21) #14
  %22 = ptrtoint ptr %src to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %src, align 8
  %conv.i286 = trunc i64 %23 to i32
  %and.i287 = and i32 %conv.i286, 4095
  %add.ptr.i288 = getelementptr i8, ptr %call.i285, i32 %and.i287
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i288, i32 0, i32 7
  %24 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %nritems.i, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #14
  %27 = ptrtoint ptr %pages.i278 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages.i278, align 4
  %call.i290 = tail call ptr @page_address(ptr noundef %28) #14
  %29 = ptrtoint ptr %dst to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %dst, align 8
  %conv.i291 = trunc i64 %30 to i32
  %and.i292 = and i32 %conv.i291, 4095
  %add.ptr.i293 = getelementptr i8, ptr %call.i290, i32 %and.i292
  %nritems.i294 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i293, i32 0, i32 7
  %31 = ptrtoint ptr %nritems.i294 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %nritems.i294, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #14
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %34 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nodesize.i.i, align 8
  %sub.i.i = add i32 %35, -101
  %div.i = udiv i32 %sub.i.i, 33
  %sub = sub i32 %div.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp56 = icmp slt i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp59 = icmp slt i32 %26, 4
  %or.cond = select i1 %cmp56, i1 true, i1 %cmp59
  br i1 %or.cond, label %if.end45.cleanup_crit_edge, label %if.end61

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end61:                                         ; preds = %if.end45
  %div310311 = lshr i32 %26, 1
  %add = add nuw nsw i32 %div310311, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %26)
  %cmp62.not = icmp ult i32 %add, %26
  br i1 %cmp62.not, label %if.end64, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end64:                                         ; preds = %if.end61
  %36 = tail call i32 @llvm.umin.i32(i32 %add, i32 %sub)
  %call68 = tail call fastcc zeroext i1 @check_sibling_keys(ptr noundef %src, ptr noundef %dst)
  br i1 %call68, label %if.then69, label %if.end123

if.then69:                                        ; preds = %if.end64
  %37 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fs_info1, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %38, i32 0, i32 149
  %call72 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %do.end90, label %if.then69.if.end120_crit_edge

if.then69.if.end120_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120

do.end90:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2536, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef -117) #14
  br label %if.end120

if.end120:                                        ; preds = %do.end90, %if.then69.if.end120_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.36, i32 noundef 2536, i32 noundef -117) #17
  br label %cleanup

if.end123:                                        ; preds = %if.end64
  %call124 = tail call i32 @btrfs_tree_mod_log_insert_move(ptr noundef %dst, i32 noundef %36, i32 noundef 0, i32 noundef %33) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp126 = icmp slt i32 %call124, 0
  br i1 %cmp126, label %do.body134, label %do.end142, !prof !121

do.body134:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2540, 0\0A.popsection", ""() #14, !srcloc !176
  unreachable

do.end142:                                        ; preds = %if.end123
  %mul.i = mul i32 %36, 33
  %add.i = add i32 %mul.i, 101
  %mul = mul i32 %33, 33
  tail call void @memmove_extent_buffer(ptr noundef %dst, i32 noundef %add.i, i32 noundef 101, i32 noundef %mul) #14
  %sub145 = sub nsw i32 %26, %36
  %call146 = tail call i32 @btrfs_tree_mod_log_eb_copy(ptr noundef %dst, ptr noundef %src, i32 noundef 0, i32 noundef %sub145, i32 noundef %36) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end207, label %do.body149

do.body149:                                       ; preds = %do.end142
  %39 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fs_info1, align 4
  %fs_state151 = getelementptr inbounds %struct.btrfs_fs_info, ptr %40, i32 0, i32 149
  %call152 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state151) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.then154, label %do.body149.if.end204_crit_edge

do.body149.if.end204_crit_edge:                   ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end204

if.then154:                                       ; preds = %do.body149
  %41 = zext i32 %call146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %call146, label %do.end171 [
    i32 -5, label %if.then154.do.body186_crit_edge
    i32 -30, label %if.then154.do.body186_crit_edge312
  ]

if.then154.do.body186_crit_edge312:               ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body186

if.then154.do.body186_crit_edge:                  ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body186

do.end171:                                        ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2549, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %call146) #14
  br label %if.end204

do.body186:                                       ; preds = %if.then154.do.body186_crit_edge, %if.then154.do.body186_crit_edge312
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @balance_node_right.__UNIQUE_ID_ddebug945, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@balance_node_right, %if.then198)) #14
          to label %if.end204 [label %if.then198], !srcloc !122

if.then198:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fs_info1, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %43, ptr noundef nonnull @.str.6, i32 noundef %call146) #17
  br label %if.end204

if.end204:                                        ; preds = %if.then198, %do.body186, %do.end171, %do.body149.if.end204_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.36, i32 noundef 2549, i32 noundef %call146) #17
  br label %cleanup

if.end207:                                        ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i295 = mul i32 %sub145, 33
  %add.i296 = add i32 %mul.i295, 101
  tail call void @copy_extent_buffer(ptr noundef %dst, ptr noundef %src, i32 noundef 101, i32 noundef %add.i296, i32 noundef %mul.i) #14
  %44 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pages.i, align 4
  %call.i298 = tail call ptr @page_address(ptr noundef %45) #14
  %46 = ptrtoint ptr %src to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %src, align 8
  %conv.i299 = trunc i64 %47 to i32
  %and.i300 = and i32 %conv.i299, 4095
  %add.ptr.i301 = getelementptr i8, ptr %call.i298, i32 %and.i300
  %nritems.i302 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i301, i32 0, i32 7
  %48 = tail call i32 @llvm.bswap.i32(i32 %sub145) #14
  %49 = ptrtoint ptr %nritems.i302 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %nritems.i302, align 1
  %add213 = add i32 %36, %33
  %50 = ptrtoint ptr %pages.i278 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pages.i278, align 4
  %call.i304 = tail call ptr @page_address(ptr noundef %51) #14
  %52 = ptrtoint ptr %dst to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %dst, align 8
  %conv.i305 = trunc i64 %53 to i32
  %and.i306 = and i32 %conv.i305, 4095
  %add.ptr.i307 = getelementptr i8, ptr %call.i304, i32 %and.i306
  %nritems.i308 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i307, i32 0, i32 7
  %54 = tail call i32 @llvm.bswap.i32(i32 %add213) #14
  %55 = ptrtoint ptr %nritems.i308 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %nritems.i308, align 1
  tail call void @btrfs_mark_buffer_dirty(ptr noundef %src) #14
  tail call void @btrfs_mark_buffer_dirty(ptr noundef %dst) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end207, %if.end204, %if.end120, %if.end61.cleanup_crit_edge, %if.end45.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %if.end120 ], [ %call146, %if.end204 ], [ 0, %if.end207 ], [ 1, %if.end45.cleanup_crit_edge ], [ 1, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_sibling_keys(ptr noundef %left, ptr noundef %right) unnamed_addr #3 align 64 {
entry:
  %disk_key.i46 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i43 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i40 = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %left, i32 0, i32 12
  %0 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #14
  %2 = ptrtoint ptr %left to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %left, align 8
  %conv.i = trunc i64 %3 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %4 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %level.i, align 1
  %6 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages.i, align 4
  %call.i30 = tail call ptr @page_address(ptr noundef %7) #14
  %8 = ptrtoint ptr %left to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %left, align 8
  %conv.i31 = trunc i64 %9 to i32
  %and.i32 = and i32 %conv.i31, 4095
  %add.ptr.i33 = getelementptr i8, ptr %call.i30, i32 %and.i32
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i33, i32 0, i32 7
  %10 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %nritems.i, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #14
  %pages.i34 = getelementptr inbounds %struct.extent_buffer, ptr %right, i32 0, i32 12
  %13 = ptrtoint ptr %pages.i34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pages.i34, align 4
  %call.i35 = tail call ptr @page_address(ptr noundef %14) #14
  %15 = ptrtoint ptr %right to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %right, align 8
  %conv.i36 = trunc i64 %16 to i32
  %and.i37 = and i32 %conv.i36, 4095
  %add.ptr.i38 = getelementptr i8, ptr %call.i35, i32 %and.i37
  %nritems.i39 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i38, i32 0, i32 7
  %17 = ptrtoint ptr %nritems.i39 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %nritems.i39, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool3.not = icmp eq i32 %18, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %sub = add i32 %12, -1
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #14
  %19 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %21 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @btrfs_node_key(ptr noundef %left, ptr noundef nonnull %disk_key.i, i32 noundef %sub) #14
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %20, align 1
  %24 = call i64 @llvm.bswap.i64(i64 %23) #14
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %19, align 8
  %27 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %disk_key.i, align 8
  %29 = call i64 @llvm.bswap.i64(i64 %28) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #14
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i40) #14
  %30 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i40, i32 0, i32 1
  %31 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i40, i32 0, i32 2
  %32 = call ptr @memset(ptr %disk_key.i40, i32 255, i32 17)
  call void @btrfs_node_key(ptr noundef %right, ptr noundef nonnull %disk_key.i40, i32 noundef 0) #14
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %31, align 1
  %35 = call i64 @llvm.bswap.i64(i64 %34) #14
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %30, align 8
  %38 = ptrtoint ptr %disk_key.i40 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %disk_key.i40, align 8
  %40 = call i64 @llvm.bswap.i64(i64 %39) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i40) #14
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i43) #14
  %41 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i43, i32 0, i32 1
  %42 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i43, i32 0, i32 2
  %43 = mul i32 %12, 25
  %add.i.i.i.i = add i32 %43, 76
  %44 = call ptr @memset(ptr %disk_key.i43, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %left, ptr noundef nonnull %disk_key.i43, i32 noundef %add.i.i.i.i, i32 noundef 17) #14
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %42, align 1
  %47 = call i64 @llvm.bswap.i64(i64 %46) #14
  %48 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %41, align 8
  %50 = ptrtoint ptr %disk_key.i43 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %disk_key.i43, align 8
  %52 = call i64 @llvm.bswap.i64(i64 %51) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i43) #14
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i46) #14
  %53 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i46, i32 0, i32 1
  %54 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i46, i32 0, i32 2
  %55 = call ptr @memset(ptr %disk_key.i46, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %right, ptr noundef nonnull %disk_key.i46, i32 noundef 101, i32 noundef 17) #14
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %54, align 1
  %58 = call i64 @llvm.bswap.i64(i64 %57) #14
  %59 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %53, align 8
  %61 = ptrtoint ptr %disk_key.i46 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %disk_key.i46, align 8
  %63 = call i64 @llvm.bswap.i64(i64 %62) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i46) #14
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %left_last.sroa.12.0 = phi i64 [ %47, %if.else ], [ %24, %if.then5 ]
  %left_last.sroa.7.0 = phi i8 [ %49, %if.else ], [ %26, %if.then5 ]
  %left_last.sroa.0.0 = phi i64 [ %52, %if.else ], [ %29, %if.then5 ]
  %right_first.sroa.12.0 = phi i64 [ %58, %if.else ], [ %35, %if.then5 ]
  %right_first.sroa.7.0 = phi i8 [ %60, %if.else ], [ %37, %if.then5 ]
  %right_first.sroa.0.0 = phi i64 [ %63, %if.else ], [ %40, %if.then5 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %left_last.sroa.0.0, i64 %right_first.sroa.0.0)
  %cmp.i = icmp ugt i64 %left_last.sroa.0.0, %right_first.sroa.0.0
  br i1 %cmp.i, label %if.end7.if.then10_crit_edge, label %if.end.i

if.end7.if.then10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp8(i64 %left_last.sroa.0.0, i64 %right_first.sroa.0.0)
  %cmp4.i = icmp ult i64 %left_last.sroa.0.0, %right_first.sroa.0.0
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp1(i8 %left_last.sroa.7.0, i8 %right_first.sroa.7.0)
  %cmp9.i = icmp ugt i8 %left_last.sroa.7.0, %right_first.sroa.7.0
  br i1 %cmp9.i, label %if.end6.i.if.then10_crit_edge, label %if.end12.i

if.end6.i.if.then10_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_cmp1(i8 %left_last.sroa.7.0, i8 %right_first.sroa.7.0)
  %cmp17.i = icmp ult i8 %left_last.sroa.7.0, %right_first.sroa.7.0
  call void @__sanitizer_cov_trace_cmp8(i64 %left_last.sroa.12.0, i64 %right_first.sroa.12.0)
  %cmp28.i.not = icmp ult i64 %left_last.sroa.12.0, %right_first.sroa.12.0
  %or.cond62 = select i1 %cmp17.i, i1 true, i1 %cmp28.i.not
  br i1 %or.cond62, label %if.end12.i.cleanup_crit_edge, label %if.end12.i.if.then10_crit_edge

if.end12.i.if.then10_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10:                                        ; preds = %if.end12.i.if.then10_crit_edge, %if.end6.i.if.then10_crit_edge, %if.end7.if.then10_crit_edge
  %fs_info = getelementptr inbounds %struct.extent_buffer, ptr %left, i32 0, i32 3
  %64 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fs_info, align 8
  %conv11 = zext i8 %left_last.sroa.7.0 to i32
  %conv14 = zext i8 %right_first.sroa.7.0 to i32
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %65, ptr noundef nonnull @.str.35, i64 noundef %left_last.sroa.0.0, i32 noundef %conv11, i64 noundef %left_last.sroa.12.0, i64 noundef %right_first.sroa.0.0, i32 noundef %conv14, i64 noundef %right_first.sroa.12.0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end12.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then10 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end12.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @del_ptr(ptr nocapture noundef readonly %root, ptr nocapture noundef readonly %path, i32 noundef %level, i32 noundef %slot) unnamed_addr #3 align 64 {
entry:
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [8 x ptr], ptr %path, i32 0, i32 %level
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %3) #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %1, align 8
  %conv.i = trunc i64 %5 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %6 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %nritems.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #14
  %sub = add i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %slot)
  %cmp.not = icmp eq i32 %sub, %slot
  br i1 %cmp.not, label %if.then22, label %if.then1

if.then1:                                         ; preds = %entry
  %add = add i32 %slot, 1
  %9 = xor i32 %slot, -1
  %sub3 = add i32 %8, %9
  %call4 = tail call i32 @btrfs_tree_mod_log_insert_move(ptr noundef %1, i32 noundef %slot, i32 noundef %add, i32 noundef %sub3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.body9, label %if.end15, !prof !121

do.body9:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4106, 0\0A.popsection", ""() #14, !srcloc !177
  unreachable

if.end15:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  %mul.i = mul i32 %slot, 33
  %add.i = add i32 %mul.i, 101
  %mul.i103 = mul i32 %add, 33
  %add.i104 = add i32 %mul.i103, 101
  %mul = mul i32 %sub3, 33
  tail call void @memmove_extent_buffer(ptr noundef %1, i32 noundef %add.i, i32 noundef %add.i104, i32 noundef %mul) #14
  br label %if.end43

if.then22:                                        ; preds = %entry
  %call23 = tail call i32 @btrfs_tree_mod_log_insert_key(ptr noundef %1, i32 noundef %slot, i32 noundef 2, i32 noundef 3136) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp25 = icmp slt i32 %call23, 0
  br i1 %cmp25, label %do.body33, label %if.then22.if.end43_crit_edge, !prof !121

if.then22.if.end43_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

do.body33:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4116, 0\0A.popsection", ""() #14, !srcloc !178
  unreachable

if.end43:                                         ; preds = %if.then22.if.end43_crit_edge, %if.end15
  %10 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages.i, align 4
  %call.i106 = tail call ptr @page_address(ptr noundef %11) #14
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %1, align 8
  %conv.i107 = trunc i64 %13 to i32
  %and.i108 = and i32 %conv.i107, 4095
  %add.ptr.i109 = getelementptr i8, ptr %call.i106, i32 %and.i108
  %nritems.i110 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i109, i32 0, i32 7
  %14 = tail call i32 @llvm.bswap.i32(i32 %sub) #14
  %15 = ptrtoint ptr %nritems.i110 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %nritems.i110, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp44 = icmp eq i32 %sub, 0
  br i1 %cmp44, label %land.lhs.true, label %if.end43.if.else69_crit_edge

if.end43.if.else69_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else69

land.lhs.true:                                    ; preds = %if.end43
  %node = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 1
  %16 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %node, align 4
  %cmp45 = icmp eq ptr %1, %17
  br i1 %cmp45, label %do.body47, label %land.lhs.true.if.else69_crit_edge

land.lhs.true.if.else69_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else69

do.body47:                                        ; preds = %land.lhs.true
  %18 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pages.i, align 4
  %call.i112 = tail call ptr @page_address(ptr noundef %19) #14
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %1, align 8
  %conv.i113 = trunc i64 %21 to i32
  %and.i114 = and i32 %conv.i113, 4095
  %add.ptr.i115 = getelementptr i8, ptr %call.i112, i32 %and.i114
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i115, i32 0, i32 8
  %22 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp50.not = icmp eq i8 %23, 1
  br i1 %cmp50.not, label %do.end67, label %do.body59, !prof !120

do.body59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4122, 0\0A.popsection", ""() #14, !srcloc !179
  unreachable

do.end67:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %node, align 4
  %pages.i116 = getelementptr inbounds %struct.extent_buffer, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %pages.i116 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pages.i116, align 4
  %call.i117 = tail call ptr @page_address(ptr noundef %27) #14
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %25, align 8
  %conv.i118 = trunc i64 %29 to i32
  %and.i119 = and i32 %conv.i118, 4095
  %add.ptr.i120 = getelementptr i8, ptr %call.i117, i32 %and.i119
  %level.i121 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i120, i32 0, i32 8
  %30 = ptrtoint ptr %level.i121 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %level.i121, align 1
  br label %if.end75

if.else69:                                        ; preds = %land.lhs.true.if.else69_crit_edge, %if.end43.if.else69_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp70 = icmp eq i32 %slot, 0
  br i1 %cmp70, label %if.then72, label %if.else69.if.end75_crit_edge

if.else69.if.end75_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75

if.then72:                                        ; preds = %if.else69
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #14
  %31 = call ptr @memset(ptr %disk_key, i32 255, i32 17)
  call void @btrfs_node_key(ptr noundef %1, ptr noundef nonnull %disk_key, i32 noundef 0) #14
  %add73 = add i32 %level, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add73)
  %cmp33.i = icmp slt i32 %add73, 8
  br i1 %cmp33.i, label %if.then72.for.body.i_crit_edge, label %if.then72.fixup_low_keys.exit_crit_edge

if.then72.fixup_low_keys.exit_crit_edge:          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #16
  br label %fixup_low_keys.exit

if.then72.for.body.i_crit_edge:                   ; preds = %if.then72
  br label %for.body.i

for.body.i:                                       ; preds = %do.end14.i.for.body.i_crit_edge, %if.then72.for.body.i_crit_edge
  %i.034.i = phi i32 [ %inc.i, %do.end14.i.for.body.i_crit_edge ], [ %add73, %if.then72.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %i.034.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [8 x ptr], ptr %path, i32 0, i32 %i.034.i
  %34 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %for.body.i.fixup_low_keys.exit_crit_edge, label %if.end.i

for.body.i.fixup_low_keys.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fixup_low_keys.exit

if.end.i:                                         ; preds = %for.body.i
  %call.i122 = call i32 @btrfs_tree_mod_log_insert_key(ptr noundef nonnull %35, i32 noundef %33, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %cmp4.i = icmp slt i32 %call.i122, 0
  br i1 %cmp4.i, label %do.body8.i, label %do.end14.i, !prof !121

do.body8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2303, 0\0A.popsection", ""() #14, !srcloc !140
  unreachable

do.end14.i:                                       ; preds = %if.end.i
  %mul.i.i.i = mul i32 %33, 33
  %add.i.i.i = add i32 %mul.i.i.i, 101
  call void @write_extent_buffer(ptr noundef nonnull %35, ptr noundef nonnull %disk_key, i32 noundef %add.i.i.i, i32 noundef 17) #14
  %36 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx1.i, align 4
  call void @btrfs_mark_buffer_dirty(ptr noundef %37) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp17.not.i = icmp ne i32 %33, 0
  %inc.i = add i32 %i.034.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  %or.cond.i = select i1 %cmp17.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %do.end14.i.fixup_low_keys.exit_crit_edge, label %do.end14.i.for.body.i_crit_edge

do.end14.i.for.body.i_crit_edge:                  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.end14.i.fixup_low_keys.exit_crit_edge:         ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fixup_low_keys.exit

fixup_low_keys.exit:                              ; preds = %do.end14.i.fixup_low_keys.exit_crit_edge, %for.body.i.fixup_low_keys.exit_crit_edge, %if.then72.fixup_low_keys.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #14
  br label %if.end75

if.end75:                                         ; preds = %fixup_low_keys.exit, %if.else69.if.end75_crit_edge, %do.end67
  call void @btrfs_mark_buffer_dirty(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_extent_buffer(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reada_for_search(ptr noundef %fs_info, ptr nocapture noundef readonly %path, i32 noundef %level, i32 noundef %slot, i64 noundef %objectid) unnamed_addr #3 align 64 {
entry:
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level)
  %cmp.not = icmp eq i32 %level, 1
  %0 = call ptr @memset(ptr %disk_key, i32 255, i32 17)
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %reada = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 3
  %1 = ptrtoint ptr %reada to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %reada, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp1.not = icmp eq i8 %2, 3
  br i1 %cmp1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup99_crit_edge

land.lhs.true.cleanup99_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup99

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx = getelementptr [8 x ptr], ptr %path, i32 0, i32 %level
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.cleanup99_crit_edge, label %if.end4

if.end.cleanup99_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup99

if.end4:                                          ; preds = %if.end
  %reada7 = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 3
  %5 = ptrtoint ptr %reada7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reada7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp9 = icmp eq i8 %6, 3
  br i1 %cmp9, label %if.then11, label %if.end4.if.end19_crit_edge

if.end4.if.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level)
  %cmp12 = icmp sgt i32 %level, 1
  br i1 %cmp12, label %if.then14, label %if.then11.if.end19_crit_edge

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info15 = getelementptr inbounds %struct.extent_buffer, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %fs_info15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fs_info15, align 8
  %nodesize = getelementptr inbounds %struct.btrfs_fs_info, ptr %8, i32 0, i32 166
  %9 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nodesize, align 8
  %conv16 = zext i32 %10 to i64
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.then11.if.end19_crit_edge, %if.end4.if.end19_crit_edge
  %nread_max.0 = phi i64 [ %conv16, %if.then14 ], [ 131072, %if.then11.if.end19_crit_edge ], [ 65536, %if.end4.if.end19_crit_edge ]
  %mul.i = mul i32 %slot, 33
  %add.i = add i32 %mul.i, 101
  %11 = inttoptr i32 %add.i to ptr
  %call.i.i = tail call i64 @btrfs_get_64(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 17) #14
  %nodesize20 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 166
  %12 = ptrtoint ptr %nodesize20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nodesize20, align 8
  %14 = ptrtoint ptr %reada7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reada7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp23.not = icmp eq i8 %15, 3
  br i1 %cmp23.not, label %if.end19.if.end30_crit_edge, label %if.then25

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then25:                                        ; preds = %if.end19
  %call26 = tail call ptr @find_extent_buffer(ptr noundef %fs_info, i64 noundef %call.i.i) #14
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.then25.if.end30_crit_edge, label %if.then28

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @free_extent_buffer(ptr noundef nonnull %call26) #14
  br label %cleanup99

if.end30:                                         ; preds = %if.then25.if.end30_crit_edge, %if.end19.if.end30_crit_edge
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %4, i32 0, i32 12
  %16 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %17) #14
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %4, align 8
  %conv.i = trunc i64 %19 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %20 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %nritems.i, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %objectid)
  %tobool62.not = icmp eq i64 %objectid, 0
  %conv89 = zext i32 %13 to i64
  br label %while.cond

while.cond:                                       ; preds = %if.end90.while.cond_crit_edge, %if.end30
  %nread.0 = phi i64 [ 0, %if.end30 ], [ %nread.1, %if.end90.while.cond_crit_edge ]
  %nr.0 = phi i32 [ %slot, %if.end30 ], [ %nr.1158, %if.end90.while.cond_crit_edge ]
  %nscan.0 = phi i32 [ 0, %if.end30 ], [ %inc91, %if.end90.while.cond_crit_edge ]
  %23 = ptrtoint ptr %reada7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %reada7, align 4
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %24, label %while.cond.if.end69_crit_edge [
    i8 1, label %if.then36
    i8 2, label %while.cond.if.then50_crit_edge
    i8 3, label %while.cond.if.then50_crit_edge160
  ]

while.cond.if.then50_crit_edge160:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then50

while.cond.if.then50_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then50

while.cond.if.end69_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then36:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.0)
  %cmp37 = icmp eq i32 %nr.0, 0
  br i1 %cmp37, label %if.then36.cleanup99_crit_edge, label %if.end56

if.then36.cleanup99_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup99

if.then50:                                        ; preds = %while.cond.if.then50_crit_edge, %while.cond.if.then50_crit_edge160
  %inc = add i32 %nr.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %22)
  %cmp51.not = icmp ult i32 %inc, %22
  br i1 %cmp51.not, label %if.then50.if.end69_crit_edge, label %if.then50.cleanup99_crit_edge

if.then50.cleanup99_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup99

if.then50.if.end69_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end56:                                         ; preds = %if.then36
  %dec = add i32 %nr.0, -1
  br i1 %tobool62.not, label %if.end56.if.end69_crit_edge, label %if.then63

if.end56.if.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then63:                                        ; preds = %if.end56
  call void @btrfs_node_key(ptr noundef nonnull %4, ptr noundef nonnull %disk_key, i32 noundef %dec) #14
  %26 = ptrtoint ptr %disk_key to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %disk_key, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %objectid)
  %cmp65.not = icmp eq i64 %28, %objectid
  br i1 %cmp65.not, label %if.then63.if.end69_crit_edge, label %if.then63.cleanup99_crit_edge

if.then63.cleanup99_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup99

if.then63.if.end69_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end69:                                         ; preds = %if.then63.if.end69_crit_edge, %if.end56.if.end69_crit_edge, %if.then50.if.end69_crit_edge, %while.cond.if.end69_crit_edge
  %nr.1158 = phi i32 [ %dec, %if.then63.if.end69_crit_edge ], [ %dec, %if.end56.if.end69_crit_edge ], [ %nr.0, %while.cond.if.end69_crit_edge ], [ %inc, %if.then50.if.end69_crit_edge ]
  %mul.i151 = mul i32 %nr.1158, 33
  %add.i152 = add i32 %mul.i151, 101
  %29 = inttoptr i32 %add.i152 to ptr
  %call.i.i153 = call i64 @btrfs_get_64(ptr noundef nonnull %4, ptr noundef %29, i32 noundef 17) #14
  %30 = ptrtoint ptr %reada7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %reada7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %31)
  %cmp73 = icmp eq i8 %31, 3
  br i1 %cmp73, label %if.end69.if.then88_crit_edge, label %lor.lhs.false75

if.end69.if.then88_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then88

lor.lhs.false75:                                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i153, i64 %call.i.i)
  %cmp76.not = icmp ule i64 %call.i.i153, %call.i.i
  %sub = sub i64 %call.i.i, %call.i.i153
  call void @__sanitizer_cov_trace_const_cmp8(i64 65537, i64 %sub)
  %cmp79 = icmp ult i64 %sub, 65537
  %or.cond148 = and i1 %cmp76.not, %cmp79
  br i1 %or.cond148, label %lor.lhs.false75.if.then88_crit_edge, label %lor.lhs.false81

lor.lhs.false75.if.then88_crit_edge:              ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then88

lor.lhs.false81:                                  ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i153, i64 %call.i.i)
  %cmp82 = icmp ugt i64 %call.i.i153, %call.i.i
  %sub85 = sub i64 %call.i.i153, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 65537, i64 %sub85)
  %cmp86 = icmp ult i64 %sub85, 65537
  %or.cond149 = and i1 %cmp82, %cmp86
  br i1 %or.cond149, label %lor.lhs.false81.if.then88_crit_edge, label %lor.lhs.false81.if.end90_crit_edge

lor.lhs.false81.if.end90_crit_edge:               ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90

lor.lhs.false81.if.then88_crit_edge:              ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then88

if.then88:                                        ; preds = %lor.lhs.false81.if.then88_crit_edge, %lor.lhs.false75.if.then88_crit_edge, %if.end69.if.then88_crit_edge
  call void @btrfs_readahead_node_child(ptr noundef nonnull %4, i32 noundef %nr.1158) #14
  %add = add i64 %nread.0, %conv89
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %lor.lhs.false81.if.end90_crit_edge
  %nread.1 = phi i64 [ %add, %if.then88 ], [ %nread.0, %lor.lhs.false81.if.end90_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %nread.1, i64 %nread_max.0)
  %cmp92 = icmp ugt i64 %nread.1, %nread_max.0
  %inc91 = add nuw nsw i32 %nscan.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %nscan.0)
  %cmp95 = icmp ugt i32 %nscan.0, 31
  %or.cond150 = select i1 %cmp92, i1 true, i1 %cmp95
  br i1 %or.cond150, label %if.end90.cleanup99_crit_edge, label %if.end90.while.cond_crit_edge

if.end90.while.cond_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.end90.cleanup99_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup99

cleanup99:                                        ; preds = %if.end90.cleanup99_crit_edge, %if.then63.cleanup99_crit_edge, %if.then50.cleanup99_crit_edge, %if.then36.cleanup99_crit_edge, %if.then28, %if.end.cleanup99_crit_edge, %land.lhs.true.cleanup99_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_buffer_uptodate(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_verify_level_key(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_read_buffer(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_clone_extent_buffer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_token_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_token_32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @btrfs_get_8(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__push_leaf_left(ptr nocapture noundef %path, i32 noundef %data_size, i32 noundef %empty, ptr noundef %left, i32 noundef %free_space, i32 noundef %right_nritems, i32 noundef %max_slot) unnamed_addr #4 align 64 {
entry:
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  %token = alloca %struct.btrfs_map_token, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.extent_buffer, ptr %left, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #14
  %2 = call ptr @memset(ptr %disk_key, i32 255, i32 17)
  %3 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %token) #14
  %5 = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 1
  %6 = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %empty)
  %tobool.not = icmp eq i32 %empty, 0
  %sub = sext i1 %tobool.not to i32
  %sub.sink = add i32 %sub, %right_nritems
  %7 = tail call i32 @llvm.umin.i32(i32 %sub.sink, i32 %max_slot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8445.not = icmp eq i32 %7, 0
  br i1 %cmp8445.not, label %entry.if.then41_crit_edge, label %for.body.lr.ph

entry.if.then41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then41

for.body.lr.ph:                                   ; preds = %entry
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end36.for.body_crit_edge, %for.body.lr.ph
  %i.0449 = phi i32 [ 0, %for.body.lr.ph ], [ %inc39, %if.end36.for.body_crit_edge ]
  %push_space.0447 = phi i32 [ 0, %for.body.lr.ph ], [ %add33, %if.end36.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0449)
  %cmp10 = icmp sgt i32 %i.0449, 0
  %or.cond = select i1 %tobool.not, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.then11, label %for.body.if.end24_crit_edge

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then11:                                        ; preds = %for.body
  %8 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %i.0449)
  %cmp13 = icmp slt i32 %9, %i.0449
  br i1 %cmp13, label %if.then11.if.end42_crit_edge, label %if.end15

if.then11.if.end42_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.end15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %i.0449)
  %cmp18 = icmp eq i32 %9, %i.0449
  br i1 %cmp18, label %if.then19, label %if.end15.if.end24_crit_edge

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then19:                                        ; preds = %if.end15
  %call = tail call i32 @btrfs_leaf_free_space(ptr noundef %4)
  %mul = shl i32 %push_space.0447, 1
  %add = add i32 %call, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %free_space)
  %cmp20 = icmp sgt i32 %add, %free_space
  br i1 %cmp20, label %if.then19.if.end42_crit_edge, label %if.then19.if.end24_crit_edge

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then19.if.end42_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %if.end15.if.end24_crit_edge, %for.body.if.end24_crit_edge
  %10 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %i.0449)
  %cmp27 = icmp eq i32 %11, %i.0449
  %add29 = select i1 %cmp27, i32 %data_size, i32 0
  %mul.i.i.i = mul i32 %i.0449, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %12 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = tail call i32 @btrfs_get_32(ptr noundef %4, ptr noundef %12, i32 noundef 21) #14
  %spec.select = add i32 %push_space.0447, 25
  %add32 = add i32 %spec.select, %call.i.i
  %add33 = add i32 %add32, %add29
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %free_space)
  %cmp34 = icmp ugt i32 %add33, %free_space
  br i1 %cmp34, label %if.end24.for.end_crit_edge, label %if.end36

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end36:                                         ; preds = %if.end24
  %inc39 = add nuw i32 %i.0449, 1
  %exitcond.not = icmp eq i32 %inc39, %7
  br i1 %exitcond.not, label %if.end36.for.end_crit_edge, label %if.end36.for.body_crit_edge

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end36.for.end_crit_edge, %if.end24.for.end_crit_edge
  %push_items.0.lcssa = phi i32 [ %7, %if.end36.for.end_crit_edge ], [ %i.0449, %if.end24.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %push_items.0.lcssa)
  %cmp40 = icmp eq i32 %push_items.0.lcssa, 0
  br i1 %cmp40, label %for.end.if.then41_crit_edge, label %for.end.if.end42_crit_edge

for.end.if.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

for.end.if.then41_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then41

if.then41:                                        ; preds = %for.end.if.then41_crit_edge, %entry.if.then41_crit_edge
  tail call void @btrfs_tree_unlock(ptr noundef %left) #14
  tail call void @free_extent_buffer(ptr noundef %left) #14
  br label %cleanup216

if.end42:                                         ; preds = %for.end.if.end42_crit_edge, %if.then19.if.end42_crit_edge, %if.then11.if.end42_crit_edge
  %push_items.0444 = phi i32 [ %push_items.0.lcssa, %for.end.if.end42_crit_edge ], [ %i.0449, %if.then19.if.end42_crit_edge ], [ %i.0449, %if.then11.if.end42_crit_edge ]
  br i1 %tobool.not, label %land.rhs, label %if.end42.if.end60_crit_edge

if.end42.if.end60_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

land.rhs:                                         ; preds = %if.end42
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %4, i32 0, i32 12
  %13 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %14) #14
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %4, align 8
  %conv.i = trunc i64 %16 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %17 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %nritems.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %push_items.0444, i32 %19)
  %cmp45 = icmp eq i32 %push_items.0444, %19
  br i1 %cmp45, label %do.end, label %land.rhs.if.end60_crit_edge, !prof !121

land.rhs.if.end60_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3093, i32 noundef 9, ptr noundef null) #14
  br label %if.end60

if.end60:                                         ; preds = %do.end, %land.rhs.if.end60_crit_edge, %if.end42.if.end60_crit_edge
  %pages.i339 = getelementptr inbounds %struct.extent_buffer, ptr %left, i32 0, i32 12
  %20 = ptrtoint ptr %pages.i339 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pages.i339, align 4
  %call.i340 = tail call ptr @page_address(ptr noundef %21) #14
  %22 = ptrtoint ptr %left to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %left, align 8
  %conv.i341 = trunc i64 %23 to i32
  %and.i342 = and i32 %conv.i341, 4095
  %add.ptr.i343 = getelementptr i8, ptr %call.i340, i32 %and.i342
  %nritems.i344 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i343, i32 0, i32 7
  %24 = ptrtoint ptr %nritems.i344 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %nritems.i344, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #14
  %mul.i = mul i32 %26, 25
  %add.i = add i32 %mul.i, 101
  %mul71 = mul i32 %push_items.0444, 25
  tail call void @copy_extent_buffer(ptr noundef %left, ptr noundef %4, i32 noundef %add.i, i32 noundef 101, i32 noundef %mul71) #14
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %27 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nodesize.i, align 8
  %sub.i = add i32 %28, -101
  %add.i.i.i346 = add i32 %mul71, 76
  %29 = inttoptr i32 %add.i.i.i346 to ptr
  %call.i.i347 = tail call i32 @btrfs_get_32(ptr noundef %4, ptr noundef %29, i32 noundef 17) #14
  %sub75 = sub i32 %sub.i, %call.i.i347
  %30 = ptrtoint ptr %pages.i339 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pages.i339, align 4
  %call.i.i348 = tail call ptr @page_address(ptr noundef %31) #14
  %32 = ptrtoint ptr %left to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %left, align 8
  %conv.i.i = trunc i64 %33 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i348, i32 %and.i.i
  %nritems.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %nritems.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %nritems.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i = icmp eq i32 %35, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fs_info1, align 8
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %37, i32 0, i32 166
  %38 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nodesize.i.i, align 8
  %sub.i.i = add i32 %39, -101
  br label %leaf_data_end.exit

if.end.i:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  %40 = tail call i32 @llvm.bswap.i32(i32 %35) #14
  %41 = mul i32 %40, 25
  %add.i.i.i.i = add i32 %41, 76
  %42 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i.i = tail call i32 @btrfs_get_32(ptr noundef %left, ptr noundef %42, i32 noundef 17) #14
  br label %leaf_data_end.exit

leaf_data_end.exit:                               ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i.i, %if.then.i ], [ %call.i.i.i, %if.end.i ]
  %add77 = sub i32 101, %sub75
  %sub78 = add i32 %add77, %retval.0.i
  %call.i.i351 = tail call i32 @btrfs_get_32(ptr noundef %4, ptr noundef %29, i32 noundef 17) #14
  %add81 = add i32 %call.i.i351, 101
  tail call void @copy_extent_buffer(ptr noundef %left, ptr noundef %4, i32 noundef %sub78, i32 noundef %add81, i32 noundef %sub75) #14
  %43 = ptrtoint ptr %pages.i339 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pages.i339, align 4
  %call.i353 = tail call ptr @page_address(ptr noundef %44) #14
  %45 = ptrtoint ptr %left to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %left, align 8
  %conv.i354 = trunc i64 %46 to i32
  %and.i355 = and i32 %conv.i354, 4095
  %add.ptr.i356 = getelementptr i8, ptr %call.i353, i32 %and.i355
  %nritems.i357 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i356, i32 0, i32 7
  %47 = ptrtoint ptr %nritems.i357 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %nritems.i357, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp84 = icmp eq i32 %48, 0
  br i1 %cmp84, label %do.body92, label %do.end100, !prof !121

do.body92:                                        ; preds = %leaf_data_end.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3110, 0\0A.popsection", ""() #14, !srcloc !180
  unreachable

do.end100:                                        ; preds = %leaf_data_end.exit
  %50 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %left, ptr %token, align 4
  %51 = ptrtoint ptr %pages.i339 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pages.i339, align 4
  %call.i359 = tail call ptr @page_address(ptr noundef %52) #14
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i359, ptr %5, align 4
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %6, align 4
  %55 = mul i32 %49, 25
  %add.i.i.i361 = add i32 %55, 76
  %56 = inttoptr i32 %add.i.i.i361 to ptr
  %call.i.i362 = tail call i32 @btrfs_get_32(ptr noundef %left, ptr noundef %56, i32 noundef 17) #14
  %add104 = add i32 %49, %push_items.0444
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %add104)
  %cmp105451 = icmp ult i32 %49, %add104
  br i1 %cmp105451, label %for.body106.lr.ph, label %do.end100.for.end113_crit_edge

do.end100.for.end113_crit_edge:                   ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end113

for.body106.lr.ph:                                ; preds = %do.end100
  %sub.i367.neg = add i32 %call.i.i362, 101
  br label %for.body106

for.body106:                                      ; preds = %for.body106.for.body106_crit_edge, %for.body106.lr.ph
  %i.1452 = phi i32 [ %49, %for.body106.lr.ph ], [ %inc112, %for.body106.for.body106_crit_edge ]
  %mul.i.i.i363 = mul i32 %i.1452, 25
  %add.i.i.i364 = add i32 %mul.i.i.i363, 101
  %57 = inttoptr i32 %add.i.i.i364 to ptr
  %call.i.i365 = call i32 @btrfs_get_token_32(ptr noundef nonnull %token, ptr noundef %57, i32 noundef 17) #14
  %58 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nodesize.i, align 8
  %sub109.neg = add i32 %sub.i367.neg, %call.i.i365
  %sub110 = sub i32 %sub109.neg, %59
  call void @btrfs_set_token_32(ptr noundef nonnull %token, ptr noundef %57, i32 noundef 17, i32 noundef %sub110) #14
  %inc112 = add i32 %i.1452, 1
  %exitcond458.not = icmp eq i32 %inc112, %add104
  br i1 %exitcond458.not, label %for.body106.for.end113_crit_edge, label %for.body106.for.body106_crit_edge

for.body106.for.body106_crit_edge:                ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body106

for.body106.for.end113_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end113

for.end113:                                       ; preds = %for.body106.for.end113_crit_edge, %do.end100.for.end113_crit_edge
  %60 = ptrtoint ptr %pages.i339 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pages.i339, align 4
  %call.i371 = call ptr @page_address(ptr noundef %61) #14
  %62 = ptrtoint ptr %left to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %left, align 8
  %conv.i372 = trunc i64 %63 to i32
  %and.i373 = and i32 %conv.i372, 4095
  %add.ptr.i374 = getelementptr i8, ptr %call.i371, i32 %and.i373
  %nritems.i375 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i374, i32 0, i32 7
  %64 = call i32 @llvm.bswap.i32(i32 %add104) #14
  %65 = ptrtoint ptr %nritems.i375 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %nritems.i375, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %push_items.0444, i32 %right_nritems)
  %cmp115 = icmp ugt i32 %push_items.0444, %right_nritems
  br i1 %cmp115, label %do.end129, label %for.end113.if.end143_crit_edge

for.end113.if.end143_crit_edge:                   ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143

do.end129:                                        ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3126, i32 noundef 9, ptr noundef nonnull @.str.41, i32 noundef %push_items.0444, i32 noundef %right_nritems) #14
  br label %if.end143

if.end143:                                        ; preds = %do.end129, %for.end113.if.end143_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %push_items.0444, i32 %right_nritems)
  %cmp144 = icmp ult i32 %push_items.0444, %right_nritems
  br i1 %cmp144, label %if.then145, label %if.end143.if.end160_crit_edge

if.end143.if.end160_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end160

if.then145:                                       ; preds = %if.end143
  %call.i.i378 = call i32 @btrfs_get_32(ptr noundef %4, ptr noundef %29, i32 noundef 17) #14
  %pages.i.i379 = getelementptr inbounds %struct.extent_buffer, ptr %4, i32 0, i32 12
  %66 = ptrtoint ptr %pages.i.i379 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pages.i.i379, align 4
  %call.i.i380 = call ptr @page_address(ptr noundef %67) #14
  %68 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %4, align 8
  %conv.i.i381 = trunc i64 %69 to i32
  %and.i.i382 = and i32 %conv.i.i381, 4095
  %add.ptr.i.i383 = getelementptr i8, ptr %call.i.i380, i32 %and.i.i382
  %nritems.i.i384 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i383, i32 0, i32 7
  %70 = ptrtoint ptr %nritems.i.i384 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %nritems.i.i384, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i385 = icmp eq i32 %71, 0
  br i1 %cmp.i385, label %if.then.i389, label %if.end.i392

if.then.i389:                                     ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i386 = getelementptr inbounds %struct.extent_buffer, ptr %4, i32 0, i32 3
  %72 = ptrtoint ptr %fs_info.i386 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fs_info.i386, align 8
  %nodesize.i.i387 = getelementptr inbounds %struct.btrfs_fs_info, ptr %73, i32 0, i32 166
  %74 = ptrtoint ptr %nodesize.i.i387 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nodesize.i.i387, align 8
  %sub.i.i388 = add i32 %75, -101
  br label %leaf_data_end.exit394

if.end.i392:                                      ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #16
  %76 = call i32 @llvm.bswap.i32(i32 %71) #14
  %77 = mul i32 %76, 25
  %add.i.i.i.i390 = add i32 %77, 76
  %78 = inttoptr i32 %add.i.i.i.i390 to ptr
  %call.i.i.i391 = call i32 @btrfs_get_32(ptr noundef %4, ptr noundef %78, i32 noundef 17) #14
  br label %leaf_data_end.exit394

leaf_data_end.exit394:                            ; preds = %if.end.i392, %if.then.i389
  %retval.0.i393 = phi i32 [ %sub.i.i388, %if.then.i389 ], [ %call.i.i.i391, %if.end.i392 ]
  %sub149 = sub i32 %call.i.i378, %retval.0.i393
  %79 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nodesize.i, align 8
  %sub152 = sub i32 %80, %sub149
  %81 = ptrtoint ptr %pages.i.i379 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pages.i.i379, align 4
  %call.i.i398 = call ptr @page_address(ptr noundef %82) #14
  %83 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %4, align 8
  %conv.i.i399 = trunc i64 %84 to i32
  %and.i.i400 = and i32 %conv.i.i399, 4095
  %add.ptr.i.i401 = getelementptr i8, ptr %call.i.i398, i32 %and.i.i400
  %nritems.i.i402 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i401, i32 0, i32 7
  %85 = ptrtoint ptr %nritems.i.i402 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %nritems.i.i402, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp.i403 = icmp eq i32 %86, 0
  br i1 %cmp.i403, label %if.then.i407, label %if.end.i410

if.then.i407:                                     ; preds = %leaf_data_end.exit394
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i404 = getelementptr inbounds %struct.extent_buffer, ptr %4, i32 0, i32 3
  %87 = ptrtoint ptr %fs_info.i404 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fs_info.i404, align 8
  %nodesize.i.i405 = getelementptr inbounds %struct.btrfs_fs_info, ptr %88, i32 0, i32 166
  %89 = ptrtoint ptr %nodesize.i.i405 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nodesize.i.i405, align 8
  %sub.i.i406 = add i32 %90, -101
  br label %leaf_data_end.exit412

if.end.i410:                                      ; preds = %leaf_data_end.exit394
  call void @__sanitizer_cov_trace_pc() #16
  %91 = call i32 @llvm.bswap.i32(i32 %86) #14
  %92 = mul i32 %91, 25
  %add.i.i.i.i408 = add i32 %92, 76
  %93 = inttoptr i32 %add.i.i.i.i408 to ptr
  %call.i.i.i409 = call i32 @btrfs_get_32(ptr noundef %4, ptr noundef %93, i32 noundef 17) #14
  br label %leaf_data_end.exit412

leaf_data_end.exit412:                            ; preds = %if.end.i410, %if.then.i407
  %retval.0.i411 = phi i32 [ %sub.i.i406, %if.then.i407 ], [ %call.i.i.i409, %if.end.i410 ]
  %add154 = add i32 %retval.0.i411, 101
  call void @memmove_extent_buffer(ptr noundef %4, i32 noundef %sub152, i32 noundef %add154, i32 noundef %sub149) #14
  %add.i414 = add i32 %mul71, 101
  %94 = ptrtoint ptr %pages.i.i379 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pages.i.i379, align 4
  %call.i416 = call ptr @page_address(ptr noundef %95) #14
  %96 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %4, align 8
  %conv.i417 = trunc i64 %97 to i32
  %and.i418 = and i32 %conv.i417, 4095
  %add.ptr.i419 = getelementptr i8, ptr %call.i416, i32 %and.i418
  %nritems.i420 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i419, i32 0, i32 7
  %98 = ptrtoint ptr %nritems.i420 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %nritems.i420, align 1
  %100 = call i32 @llvm.bswap.i32(i32 %99) #14
  %sub158 = sub i32 %100, %push_items.0444
  %mul159 = mul i32 %sub158, 25
  call void @memmove_extent_buffer(ptr noundef %4, i32 noundef 101, i32 noundef %add.i414, i32 noundef %mul159) #14
  br label %if.end160

if.end160:                                        ; preds = %leaf_data_end.exit412, %if.end143.if.end160_crit_edge
  %101 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %4, ptr %token, align 4
  %pages.i421 = getelementptr inbounds %struct.extent_buffer, ptr %4, i32 0, i32 12
  %102 = ptrtoint ptr %pages.i421 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pages.i421, align 4
  %call.i422 = call ptr @page_address(ptr noundef %103) #14
  %104 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i422, ptr %5, align 4
  %105 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %6, align 4
  %sub161 = sub i32 %right_nritems, %push_items.0444
  %106 = ptrtoint ptr %pages.i421 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pages.i421, align 4
  %call.i426 = call ptr @page_address(ptr noundef %107) #14
  %108 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %4, align 8
  %conv.i427 = trunc i64 %109 to i32
  %and.i428 = and i32 %conv.i427, 4095
  %add.ptr.i429 = getelementptr i8, ptr %call.i426, i32 %and.i428
  %nritems.i430 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i429, i32 0, i32 7
  %110 = call i32 @llvm.bswap.i32(i32 %sub161) #14
  %111 = ptrtoint ptr %nritems.i430 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 4)
  store i32 %110, ptr %nritems.i430, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %push_items.0444, i32 %right_nritems)
  %cmp164454.not = icmp eq i32 %push_items.0444, %right_nritems
  br i1 %cmp164454.not, label %for.end170.thread, label %for.body165.preheader

for.end170.thread:                                ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_mark_buffer_dirty(ptr noundef %left) #14
  br label %if.else173

for.body165.preheader:                            ; preds = %if.end160
  %112 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nodesize.i, align 8
  %sub.i432 = add i32 %113, -101
  br label %for.body165

for.body165:                                      ; preds = %for.body165.for.body165_crit_edge, %for.body165.preheader
  %i.2456 = phi i32 [ %inc169, %for.body165.for.body165_crit_edge ], [ 0, %for.body165.preheader ]
  %push_space.2455 = phi i32 [ %sub167, %for.body165.for.body165_crit_edge ], [ %sub.i432, %for.body165.preheader ]
  %mul.i.i.i433 = mul i32 %i.2456, 25
  %add.i.i.i434 = add i32 %mul.i.i.i433, 101
  %114 = inttoptr i32 %add.i.i.i434 to ptr
  %call.i.i435 = call i32 @btrfs_get_token_32(ptr noundef nonnull %token, ptr noundef %114, i32 noundef 21) #14
  %sub167 = sub i32 %push_space.2455, %call.i.i435
  call void @btrfs_set_token_32(ptr noundef nonnull %token, ptr noundef %114, i32 noundef 17, i32 noundef %sub167) #14
  %inc169 = add nuw i32 %i.2456, 1
  %exitcond459.not = icmp eq i32 %inc169, %sub161
  br i1 %exitcond459.not, label %for.end170, label %for.body165.for.body165_crit_edge

for.body165.for.body165_crit_edge:                ; preds = %for.body165
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body165

for.end170:                                       ; preds = %for.body165
  call void @btrfs_mark_buffer_dirty(ptr noundef %left) #14
  br i1 %cmp164454.not, label %for.end170.if.else173_crit_edge, label %if.then172

for.end170.if.else173_crit_edge:                  ; preds = %for.end170
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else173

if.then172:                                       ; preds = %for.end170
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_mark_buffer_dirty(ptr noundef %4) #14
  br label %if.end174

if.else173:                                       ; preds = %for.end170.if.else173_crit_edge, %for.end170.thread
  call void @btrfs_clean_tree_block(ptr noundef %4) #14
  br label %if.end174

if.end174:                                        ; preds = %if.else173, %if.then172
  call void @read_extent_buffer(ptr noundef %4, ptr noundef nonnull %disk_key, i32 noundef 101, i32 noundef 17) #14
  br label %for.body.i

for.body.i:                                       ; preds = %do.end14.i.for.body.i_crit_edge, %if.end174
  %i.034.i = phi i32 [ 1, %if.end174 ], [ %inc.i, %do.end14.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 %i.034.i
  %115 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [8 x ptr], ptr %path, i32 0, i32 %i.034.i
  %117 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i = icmp eq ptr %118, null
  br i1 %tobool.not.i, label %for.body.i.fixup_low_keys.exit_crit_edge, label %if.end.i439

for.body.i.fixup_low_keys.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fixup_low_keys.exit

if.end.i439:                                      ; preds = %for.body.i
  %call.i438 = call i32 @btrfs_tree_mod_log_insert_key(ptr noundef nonnull %118, i32 noundef %116, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i438)
  %cmp4.i = icmp slt i32 %call.i438, 0
  br i1 %cmp4.i, label %do.body8.i, label %do.end14.i, !prof !121

do.body8.i:                                       ; preds = %if.end.i439
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2303, 0\0A.popsection", ""() #14, !srcloc !140
  unreachable

do.end14.i:                                       ; preds = %if.end.i439
  %mul.i.i.i440 = mul i32 %116, 33
  %add.i.i.i441 = add i32 %mul.i.i.i440, 101
  call void @write_extent_buffer(ptr noundef nonnull %118, ptr noundef nonnull %disk_key, i32 noundef %add.i.i.i441, i32 noundef 17) #14
  %119 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx1.i, align 4
  call void @btrfs_mark_buffer_dirty(ptr noundef %120) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp17.not.i = icmp ne i32 %116, 0
  %inc.i = add nuw nsw i32 %i.034.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  %or.cond.i = select i1 %cmp17.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %do.end14.i.fixup_low_keys.exit_crit_edge, label %do.end14.i.for.body.i_crit_edge

do.end14.i.for.body.i_crit_edge:                  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.end14.i.fixup_low_keys.exit_crit_edge:         ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fixup_low_keys.exit

fixup_low_keys.exit:                              ; preds = %do.end14.i.fixup_low_keys.exit_crit_edge, %for.body.i.fixup_low_keys.exit_crit_edge
  %slots175 = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %121 = ptrtoint ptr %slots175 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %slots175, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %push_items.0444)
  %cmp177 = icmp slt i32 %122, %push_items.0444
  br i1 %cmp177, label %if.then178, label %if.else191

if.then178:                                       ; preds = %fixup_low_keys.exit
  call void @__sanitizer_cov_trace_pc() #16
  %add181 = add i32 %122, %49
  %123 = ptrtoint ptr %slots175 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %add181, ptr %slots175, align 4
  %124 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %path, align 4
  call void @btrfs_tree_unlock(ptr noundef %125) #14
  %126 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %path, align 4
  call void @free_extent_buffer(ptr noundef %127) #14
  %128 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %left, ptr %path, align 4
  %arrayidx189 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 1
  %129 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx189, align 4
  %sub190 = add i32 %130, -1
  store i32 %sub190, ptr %arrayidx189, align 4
  %131 = ptrtoint ptr %slots175 to i32
  call void @__asan_load4_noabort(i32 %131)
  %.pr = load i32, ptr %slots175, align 4
  br label %do.body196

if.else191:                                       ; preds = %fixup_low_keys.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_unlock(ptr noundef %left) #14
  call void @free_extent_buffer(ptr noundef %left) #14
  %132 = ptrtoint ptr %slots175 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %slots175, align 4
  %sub194 = sub i32 %133, %push_items.0444
  store i32 %sub194, ptr %slots175, align 4
  br label %do.body196

do.body196:                                       ; preds = %if.else191, %if.then178
  %134 = phi i32 [ %.pr, %if.then178 ], [ %sub194, %if.else191 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp199 = icmp slt i32 %134, 0
  br i1 %cmp199, label %do.body207, label %do.body196.cleanup216_crit_edge, !prof !121

do.body196.cleanup216_crit_edge:                  ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup216

do.body207:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3172, 0\0A.popsection", ""() #14, !srcloc !181
  unreachable

cleanup216:                                       ; preds = %do.body196.cleanup216_crit_edge, %if.then41
  %retval.0 = phi i32 [ 1, %if.then41 ], [ 0, %do.body196.cleanup216_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %token) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__push_leaf_right(ptr nocapture noundef %path, i32 noundef %data_size, i32 noundef %empty, ptr noundef %right, i32 noundef %free_space, i32 noundef %left_nritems, i32 noundef %min_slot) unnamed_addr #4 align 64 {
entry:
  %token = alloca %struct.btrfs_map_token, align 4
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.extent_buffer, ptr %right, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %2 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path, align 4
  %arrayidx3 = getelementptr [8 x ptr], ptr %path, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %token) #14
  %6 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %token, align 4, !annotation !133
  %7 = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 1
  %8 = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %empty)
  %tobool.not = icmp eq i32 %empty, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_slot)
  %cmp = icmp eq i32 %min_slot, 0
  %.min_slot = select i1 %cmp, i32 1, i32 %min_slot
  %nr.0 = select i1 %tobool.not, i32 %.min_slot, i32 0
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %9 = call ptr @memset(ptr %disk_key, i32 255, i32 17)
  %10 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %left_nritems)
  %cmp5.not = icmp ult i32 %11, %left_nritems
  %push_space.0 = select i1 %cmp5.not, i32 0, i32 %data_size
  %arrayidx9 = getelementptr %struct.btrfs_path, ptr %path, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end40.while.cond_crit_edge, %entry
  %i.0.in = phi i32 [ %left_nritems, %entry ], [ %i.0, %if.end40.while.cond_crit_edge ]
  %push_space.1 = phi i32 [ %push_space.0, %entry ], [ %add37, %if.end40.while.cond_crit_edge ]
  %push_items.0 = phi i32 [ 0, %entry ], [ %inc, %if.end40.while.cond_crit_edge ]
  %i.0 = add i32 %i.0.in, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %nr.0)
  %cmp10.not = icmp ult i32 %i.0, %nr.0
  br i1 %cmp10.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %push_items.0)
  %cmp12 = icmp sgt i32 %push_items.0, 0
  %or.cond = select i1 %tobool.not, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.then13, label %while.body.if.end28_crit_edge

while.body.if.end28_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then13:                                        ; preds = %while.body
  %14 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %i.0)
  %cmp16 = icmp ugt i32 %15, %i.0
  br i1 %cmp16, label %if.then13.if.end48_crit_edge, label %if.end18

if.then13.if.end48_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.end18:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %i.0)
  %cmp21 = icmp eq i32 %15, %i.0
  br i1 %cmp21, label %if.then22, label %if.end18.if.end28_crit_edge

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then22:                                        ; preds = %if.end18
  %call = tail call i32 @btrfs_leaf_free_space(ptr noundef %3)
  %mul = shl i32 %push_space.1, 1
  %add23 = add i32 %call, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %free_space)
  %cmp24 = icmp sgt i32 %add23, %free_space
  br i1 %cmp24, label %if.then22.if.end48_crit_edge, label %if.then22.if.end28_crit_edge

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then22.if.end48_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.end28:                                         ; preds = %if.then22.if.end28_crit_edge, %if.end18.if.end28_crit_edge, %while.body.if.end28_crit_edge
  %16 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %i.0)
  %cmp31 = icmp eq i32 %17, %i.0
  %add33 = select i1 %cmp31, i32 %data_size, i32 0
  %mul.i.i.i = mul i32 %i.0, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %18 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = tail call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %18, i32 noundef 21) #14
  %spec.select = add i32 %push_space.1, 25
  %add36 = add i32 %spec.select, %call.i.i
  %add37 = add i32 %add36, %add33
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %free_space)
  %cmp38 = icmp ugt i32 %add37, %free_space
  br i1 %cmp38, label %if.end28.while.end_crit_edge, label %if.end40

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end40:                                         ; preds = %if.end28
  %inc = add i32 %push_items.0, 1
  %cmp43 = icmp eq i32 %i.0, 0
  br i1 %cmp43, label %if.end40.while.end_crit_edge, label %if.end40.while.cond_crit_edge

if.end40.while.cond_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end40.while.end_crit_edge, %if.end28.while.end_crit_edge, %while.cond.while.end_crit_edge
  %push_items.1 = phi i32 [ %push_items.0, %if.end28.while.end_crit_edge ], [ %left_nritems, %if.end40.while.end_crit_edge ], [ %push_items.0, %while.cond.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %push_items.1)
  %cmp46 = icmp eq i32 %push_items.1, 0
  br i1 %cmp46, label %out_unlock, label %while.end.if.end48_crit_edge

while.end.if.end48_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.end48:                                         ; preds = %while.end.if.end48_crit_edge, %if.then22.if.end48_crit_edge, %if.then13.if.end48_crit_edge
  %push_items.1310 = phi i32 [ %push_items.1, %while.end.if.end48_crit_edge ], [ %push_items.0, %if.then13.if.end48_crit_edge ], [ %push_items.0, %if.then22.if.end48_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %push_items.1310, i32 %left_nritems)
  %cmp50 = icmp eq i32 %push_items.1310, %left_nritems
  %spec.select240 = select i1 %tobool.not, i1 %cmp50, i1 false
  br i1 %spec.select240, label %do.end, label %if.end48.if.end65_crit_edge, !prof !121

if.end48.if.end65_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

do.end:                                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2871, i32 noundef 9, ptr noundef null) #14
  br label %if.end65

if.end65:                                         ; preds = %do.end, %if.end48.if.end65_crit_edge
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %right, i32 0, i32 12
  %19 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %20) #14
  %21 = ptrtoint ptr %right to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %right, align 8
  %conv.i = trunc i64 %22 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %23 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %nritems.i, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #14
  %sub74 = sub i32 %left_nritems, %push_items.1310
  %mul.i.i.i.i = mul i32 %sub74, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %26 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i.i = tail call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %26, i32 noundef 17) #14
  %call.i.i6.i = tail call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %26, i32 noundef 21) #14
  %add.i = add i32 %call.i.i6.i, %call.i.i.i
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %3, i32 0, i32 12
  %27 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages.i.i, align 4
  %call.i.i241 = tail call ptr @page_address(ptr noundef %28) #14
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %3, align 8
  %conv.i.i = trunc i64 %30 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i241, i32 %and.i.i
  %nritems.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %nritems.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %nritems.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i = icmp eq i32 %32, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i = getelementptr inbounds %struct.extent_buffer, ptr %3, i32 0, i32 3
  %33 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fs_info.i, align 8
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %34, i32 0, i32 166
  %35 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nodesize.i.i, align 8
  %sub.i.i = add i32 %36, -101
  br label %leaf_data_end.exit

if.end.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  %37 = tail call i32 @llvm.bswap.i32(i32 %32) #14
  %38 = mul i32 %37, 25
  %add.i.i.i.i242 = add i32 %38, 76
  %39 = inttoptr i32 %add.i.i.i.i242 to ptr
  %call.i.i.i243 = tail call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %39, i32 noundef 17) #14
  br label %leaf_data_end.exit

leaf_data_end.exit:                               ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i.i, %if.then.i ], [ %call.i.i.i243, %if.end.i ]
  %sub77 = sub i32 %add.i, %retval.0.i
  %40 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pages.i, align 4
  %call.i.i245 = tail call ptr @page_address(ptr noundef %41) #14
  %42 = ptrtoint ptr %right to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %right, align 8
  %conv.i.i246 = trunc i64 %43 to i32
  %and.i.i247 = and i32 %conv.i.i246, 4095
  %add.ptr.i.i248 = getelementptr i8, ptr %call.i.i245, i32 %and.i.i247
  %nritems.i.i249 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i248, i32 0, i32 7
  %44 = ptrtoint ptr %nritems.i.i249 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %nritems.i.i249, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i250 = icmp eq i32 %45, 0
  br i1 %cmp.i250, label %if.then.i254, label %if.end.i257

if.then.i254:                                     ; preds = %leaf_data_end.exit
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fs_info1, align 8
  %nodesize.i.i252 = getelementptr inbounds %struct.btrfs_fs_info, ptr %47, i32 0, i32 166
  %48 = ptrtoint ptr %nodesize.i.i252 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nodesize.i.i252, align 8
  %sub.i.i253 = add i32 %49, -101
  br label %leaf_data_end.exit259

if.end.i257:                                      ; preds = %leaf_data_end.exit
  call void @__sanitizer_cov_trace_pc() #16
  %50 = tail call i32 @llvm.bswap.i32(i32 %45) #14
  %51 = mul i32 %50, 25
  %add.i.i.i.i255 = add i32 %51, 76
  %52 = inttoptr i32 %add.i.i.i.i255 to ptr
  %call.i.i.i256 = tail call i32 @btrfs_get_32(ptr noundef %right, ptr noundef %52, i32 noundef 17) #14
  br label %leaf_data_end.exit259

leaf_data_end.exit259:                            ; preds = %if.end.i257, %if.then.i254
  %retval.0.i258 = phi i32 [ %sub.i.i253, %if.then.i254 ], [ %call.i.i.i256, %if.end.i257 ]
  %add79 = add i32 %retval.0.i258, 101
  %sub80 = sub i32 %add79, %sub77
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %53 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nodesize.i, align 8
  %sub.i = sub i32 -101, %retval.0.i258
  %sub83 = add i32 %sub.i, %54
  tail call void @memmove_extent_buffer(ptr noundef %right, i32 noundef %sub80, i32 noundef %add79, i32 noundef %sub83) #14
  %55 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nodesize.i, align 8
  %sub86 = sub i32 %56, %sub77
  %57 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pages.i.i, align 4
  %call.i.i263 = tail call ptr @page_address(ptr noundef %58) #14
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %3, align 8
  %conv.i.i264 = trunc i64 %60 to i32
  %and.i.i265 = and i32 %conv.i.i264, 4095
  %add.ptr.i.i266 = getelementptr i8, ptr %call.i.i263, i32 %and.i.i265
  %nritems.i.i267 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i266, i32 0, i32 7
  %61 = ptrtoint ptr %nritems.i.i267 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %nritems.i.i267, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i268 = icmp eq i32 %62, 0
  br i1 %cmp.i268, label %if.then.i272, label %if.end.i275

if.then.i272:                                     ; preds = %leaf_data_end.exit259
  call void @__sanitizer_cov_trace_pc() #16
  %fs_info.i269 = getelementptr inbounds %struct.extent_buffer, ptr %3, i32 0, i32 3
  %63 = ptrtoint ptr %fs_info.i269 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fs_info.i269, align 8
  %nodesize.i.i270 = getelementptr inbounds %struct.btrfs_fs_info, ptr %64, i32 0, i32 166
  %65 = ptrtoint ptr %nodesize.i.i270 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nodesize.i.i270, align 8
  %sub.i.i271 = add i32 %66, -101
  br label %leaf_data_end.exit277

if.end.i275:                                      ; preds = %leaf_data_end.exit259
  call void @__sanitizer_cov_trace_pc() #16
  %67 = tail call i32 @llvm.bswap.i32(i32 %62) #14
  %68 = mul i32 %67, 25
  %add.i.i.i.i273 = add i32 %68, 76
  %69 = inttoptr i32 %add.i.i.i.i273 to ptr
  %call.i.i.i274 = tail call i32 @btrfs_get_32(ptr noundef %3, ptr noundef %69, i32 noundef 17) #14
  br label %leaf_data_end.exit277

leaf_data_end.exit277:                            ; preds = %if.end.i275, %if.then.i272
  %retval.0.i276 = phi i32 [ %sub.i.i271, %if.then.i272 ], [ %call.i.i.i274, %if.end.i275 ]
  %add88 = add i32 %retval.0.i276, 101
  tail call void @copy_extent_buffer(ptr noundef %right, ptr noundef %3, i32 noundef %sub86, i32 noundef %add88, i32 noundef %sub77) #14
  %mul.i = mul i32 %push_items.1310, 25
  %add.i278 = add i32 %mul.i, 101
  %mul91 = mul i32 %25, 25
  tail call void @memmove_extent_buffer(ptr noundef %right, i32 noundef %add.i278, i32 noundef 101, i32 noundef %mul91) #14
  tail call void @copy_extent_buffer(ptr noundef %right, ptr noundef %3, i32 noundef 101, i32 noundef %add.i.i.i.i, i32 noundef %mul.i) #14
  %70 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %right, ptr %token, align 4
  %71 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pages.i, align 4
  %call.i282 = tail call ptr @page_address(ptr noundef %72) #14
  %73 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i282, ptr %7, align 4
  %74 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %8, align 4
  %add96 = add i32 %25, %push_items.1310
  %75 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pages.i, align 4
  %call.i284 = tail call ptr @page_address(ptr noundef %76) #14
  %77 = ptrtoint ptr %right to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %right, align 8
  %conv.i285 = trunc i64 %78 to i32
  %and.i286 = and i32 %conv.i285, 4095
  %add.ptr.i287 = getelementptr i8, ptr %call.i284, i32 %and.i286
  %nritems.i288 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i287, i32 0, i32 7
  %79 = tail call i32 @llvm.bswap.i32(i32 %add96) #14
  %80 = ptrtoint ptr %nritems.i288 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %79, ptr %nritems.i288, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add96)
  %cmp98312.not = icmp eq i32 %add96, 0
  br i1 %cmp98312.not, label %leaf_data_end.exit277.for.end_crit_edge, label %for.body.preheader

leaf_data_end.exit277.for.end_crit_edge:          ; preds = %leaf_data_end.exit277
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %leaf_data_end.exit277
  %81 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nodesize.i, align 8
  %sub.i290 = add i32 %82, -101
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %push_space.3314 = phi i32 [ %sub100, %for.body.for.body_crit_edge ], [ %sub.i290, %for.body.preheader ]
  %i.1313 = phi i32 [ %inc101, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul.i.i.i291 = mul i32 %i.1313, 25
  %add.i.i.i292 = add i32 %mul.i.i.i291, 101
  %83 = inttoptr i32 %add.i.i.i292 to ptr
  %call.i.i293 = call i32 @btrfs_get_token_32(ptr noundef nonnull %token, ptr noundef %83, i32 noundef 21) #14
  %sub100 = sub i32 %push_space.3314, %call.i.i293
  call void @btrfs_set_token_32(ptr noundef nonnull %token, ptr noundef %83, i32 noundef 17, i32 noundef %sub100) #14
  %inc101 = add nuw i32 %i.1313, 1
  %exitcond.not = icmp eq i32 %inc101, %add96
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %leaf_data_end.exit277.for.end_crit_edge
  %84 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pages.i.i, align 4
  %call.i297 = call ptr @page_address(ptr noundef %85) #14
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %3, align 8
  %conv.i298 = trunc i64 %87 to i32
  %and.i299 = and i32 %conv.i298, 4095
  %add.ptr.i300 = getelementptr i8, ptr %call.i297, i32 %and.i299
  %nritems.i301 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i300, i32 0, i32 7
  %88 = call i32 @llvm.bswap.i32(i32 %sub74) #14
  %89 = ptrtoint ptr %nritems.i301 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %nritems.i301, align 1
  br i1 %cmp50, label %if.else105, label %if.then104

if.then104:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_mark_buffer_dirty(ptr noundef %3) #14
  br label %if.end106

if.else105:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_clean_tree_block(ptr noundef %3) #14
  br label %if.end106

if.end106:                                        ; preds = %if.else105, %if.then104
  call void @btrfs_mark_buffer_dirty(ptr noundef %right) #14
  call void @read_extent_buffer(ptr noundef %right, ptr noundef nonnull %disk_key, i32 noundef 101, i32 noundef 17) #14
  %90 = mul i32 %13, 33
  %add.i.i = add i32 %90, 134
  call void @write_extent_buffer(ptr noundef %5, ptr noundef nonnull %disk_key, i32 noundef %add.i.i, i32 noundef 17) #14
  call void @btrfs_mark_buffer_dirty(ptr noundef %5) #14
  %91 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %sub74)
  %cmp110.not = icmp ult i32 %92, %sub74
  br i1 %cmp110.not, label %if.else132, label %if.then111

if.then111:                                       ; preds = %if.end106
  %sub114 = sub i32 %92, %sub74
  %93 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %sub114, ptr %slots, align 4
  %94 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %path, align 4
  %pages.i302 = getelementptr inbounds %struct.extent_buffer, ptr %95, i32 0, i32 12
  %96 = ptrtoint ptr %pages.i302 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pages.i302, align 4
  %call.i303 = call ptr @page_address(ptr noundef %97) #14
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %95, align 8
  %conv.i304 = trunc i64 %99 to i32
  %and.i305 = and i32 %conv.i304, 4095
  %add.ptr.i306 = getelementptr i8, ptr %call.i303, i32 %and.i305
  %nritems.i307 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i306, i32 0, i32 7
  %100 = ptrtoint ptr %nritems.i307 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %nritems.i307, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp118 = icmp eq i32 %101, 0
  br i1 %cmp118, label %if.then119, label %if.then111.if.end122_crit_edge

if.then111.if.end122_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end122

if.then119:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #16
  %102 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %path, align 4
  call void @btrfs_clean_tree_block(ptr noundef %103) #14
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %if.then111.if.end122_crit_edge
  %104 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %path, align 4
  call void @btrfs_tree_unlock(ptr noundef %105) #14
  %106 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %path, align 4
  call void @free_extent_buffer(ptr noundef %107) #14
  %108 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %right, ptr %path, align 4
  %109 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx9, align 4
  %add131 = add i32 %110, 1
  store i32 %add131, ptr %arrayidx9, align 4
  br label %cleanup134

if.else132:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  call void @btrfs_tree_unlock(ptr noundef %right) #14
  call void @free_extent_buffer(ptr noundef %right) #14
  br label %cleanup134

out_unlock:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @btrfs_tree_unlock(ptr noundef %right) #14
  tail call void @free_extent_buffer(ptr noundef %right) #14
  br label %cleanup134

cleanup134:                                       ; preds = %out_unlock, %if.else132, %if.end122
  %retval.0 = phi i32 [ 1, %out_unlock ], [ 0, %if.else132 ], [ 0, %if.end122 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %token) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { cold noreturn }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !37, !38, !40, !41, !43, !45, !47, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !80, !82, !83, !85, !87, !89, !90, !92, !94, !96, !98, !100, !102}
!llvm.named.register.sp = !{!104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../fs/btrfs/ctree.c", i32 131, i32 8}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/btrfs/ctree.c", i32 229, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @btrfs_copy_root.__UNIQUE_ID_ddebug926, !5, !"__UNIQUE_ID_ddebug926", i1 false, i1 false}
!10 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/btrfs/ctree.c", i32 545, i32 3}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/btrfs/ctree.c", i32 549, i32 3}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/btrfs/ctree.c", i32 1544, i32 2}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/btrfs/ctree.c", i32 1545, i32 2}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/btrfs/ctree.c", i32 1911, i32 3}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/btrfs/ctree.c", i32 1991, i32 5}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/btrfs/ctree.c", i32 2330, i32 4}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/btrfs/ctree.c", i32 2798, i32 3}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/btrfs/ctree.c", i32 3844, i32 3}
!29 = !{ptr @btrfs_csums, !30, !"btrfs_csums", i1 false, i1 false}
!30 = !{!"../fs/btrfs/ctree.c", i32 38, i32 3}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/btrfs/ctree.c", i32 441, i32 3}
!40 = !{ptr @__btrfs_cow_block.__UNIQUE_ID_ddebug927, !39, !"__UNIQUE_ID_ddebug927", i1 false, i1 false}
!41 = !{ptr @__btrfs_cow_block.__UNIQUE_ID_ddebug928, !42, !"__UNIQUE_ID_ddebug928", i1 false, i1 false}
!42 = !{!"../fs/btrfs/ctree.c", i32 450, i32 4}
!43 = !{ptr @__btrfs_cow_block.__UNIQUE_ID_ddebug932, !44, !"__UNIQUE_ID_ddebug932", i1 false, i1 false}
!44 = !{!"../fs/btrfs/ctree.c", i32 484, i32 5}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/btrfs/locking.h", i32 101, i32 2}
!47 = !{ptr @__func__.update_ref_for_cow, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/btrfs/ctree.c", i32 297, i32 4}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/trace/events/btrfs.h", i32 1017, i32 1}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/btrfs/ctree.c", i32 751, i32 3}
!58 = !{ptr @__func__.generic_bin_search, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @assertfail._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @assertfail._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/btrfs/ctree.c", i32 1587, i32 3}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/btrfs/ctree.c", i32 1739, i32 4}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/btrfs/ctree.c", i32 1811, i32 4}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/btrfs/ctree.c", i32 1815, i32 3}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/btrfs/ctree.c", i32 1822, i32 4}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/btrfs/ctree.c", i32 2732, i32 2}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/btrfs/ctree.c", i32 2736, i32 3}
!79 = !{ptr @split_node.__UNIQUE_ID_ddebug949, !78, !"__UNIQUE_ID_ddebug949", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/btrfs/ctree.c", i32 2462, i32 3}
!82 = distinct !{null, !81, !"__UNIQUE_ID_ddebug942", i1 false, i1 false}
!83 = !{ptr @push_node_left.__UNIQUE_ID_ddebug943, !84, !"__UNIQUE_ID_ddebug943", i1 false, i1 false}
!84 = !{!"../fs/btrfs/ctree.c", i32 2467, i32 3}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/btrfs/ctree.c", i32 2405, i32 3}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/btrfs/ctree.c", i32 2536, i32 3}
!89 = distinct !{null, !88, !"__UNIQUE_ID_ddebug944", i1 false, i1 false}
!90 = !{ptr @balance_node_right.__UNIQUE_ID_ddebug945, !91, !"__UNIQUE_ID_ddebug945", i1 false, i1 false}
!91 = !{!"../fs/btrfs/ctree.c", i32 2549, i32 3}
!92 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/btrfs/ctree.c", i32 877, i32 2}
!94 = !{ptr @__func__.balance_level, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/btrfs/ctree.c", i32 905, i32 4}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/btrfs/ctree.c", i32 1666, i32 2}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/btrfs/ctree.c", i32 3919, i32 3}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/btrfs/ctree.c", i32 3930, i32 4}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/btrfs/ctree.c", i32 3125, i32 3}
!104 = !{!"sp"}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i64 2156947840, i64 2156948323, i64 2156947877, i64 2156947933, i64 2156947967, i64 2156947991, i64 2156948032, i64 2156948053, i64 2156948081, i64 2156948115}
!115 = !{i64 2149371967}
!116 = !{i64 2148543872}
!117 = !{i64 1030472, i64 1030497, i64 1030519, i64 1030535, i64 1030547, i64 1030567, i64 1030591, i64 1030607, i64 1030619}
!118 = !{i64 2148544060}
!119 = !{i64 2149372233}
!120 = !{!"branch_weights", i32 2000, i32 1}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{i64 2148357846, i64 2148357851, i64 2148357864, i64 2148357908, i64 2148357942, i64 2148357963}
!123 = !{i64 2158532532}
!124 = !{i64 2148544453, i64 2148544479, i64 2148544508, i64 2148544542, i64 2148544573, i64 2148544596}
!125 = !{i64 2158519350, i64 2158519831, i64 2158519387, i64 2158519443, i64 2158519477, i64 2158519501, i64 2158519542, i64 2158519563, i64 2158519591, i64 2158519625}
!126 = !{i64 2158525565}
!127 = !{i64 2155478690}
!128 = !{i64 2155478911}
!129 = !{i64 2149380526}
!130 = !{i64 2149381562}
!131 = !{i64 2158537768, i64 2158538249, i64 2158537805, i64 2158537861, i64 2158537895, i64 2158537919, i64 2158537960, i64 2158537981, i64 2158538009, i64 2158538043}
!132 = !{i64 2158305418, i64 2158305900, i64 2158305455, i64 2158305511, i64 2158305545, i64 2158305569, i64 2158305610, i64 2158305631, i64 2158305659, i64 2158305693}
!133 = !{!"auto-init"}
!134 = !{i64 2158570054, i64 2158570536, i64 2158570091, i64 2158570147, i64 2158570181, i64 2158570205, i64 2158570246, i64 2158570267, i64 2158570295, i64 2158570329}
!135 = !{i64 2158564499, i64 2158564981, i64 2158564536, i64 2158564592, i64 2158564626, i64 2158564650, i64 2158564691, i64 2158564712, i64 2158564740, i64 2158564774}
!136 = !{i64 2158572549, i64 2158573031, i64 2158572586, i64 2158572642, i64 2158572676, i64 2158572700, i64 2158572741, i64 2158572762, i64 2158572790, i64 2158572824}
!137 = !{!"branch_weights", i32 2000, i32 2002}
!138 = !{i64 2158576198, i64 2158576680, i64 2158576235, i64 2158576291, i64 2158576325, i64 2158576349, i64 2158576390, i64 2158576411, i64 2158576439, i64 2158576473}
!139 = !{i64 2158578043, i64 2158578525, i64 2158578080, i64 2158578136, i64 2158578170, i64 2158578194, i64 2158578235, i64 2158578256, i64 2158578284, i64 2158578318}
!140 = !{i64 2158574353, i64 2158574835, i64 2158574390, i64 2158574446, i64 2158574480, i64 2158574504, i64 2158574545, i64 2158574566, i64 2158574594, i64 2158574628}
!141 = !{i64 2158648665, i64 2158649147, i64 2158648702, i64 2158648758, i64 2158648792, i64 2158648816, i64 2158648857, i64 2158648878, i64 2158648906, i64 2158648940}
!142 = !{i64 2158650893, i64 2158651375, i64 2158650930, i64 2158650986, i64 2158651020, i64 2158651044, i64 2158651085, i64 2158651106, i64 2158651134, i64 2158651168}
!143 = !{i64 2158653352, i64 2158657895, i64 2158653389, i64 2158653445, i64 2158653479, i64 2158653503, i64 2158653544, i64 2158653565, i64 2158653593, i64 2158653627}
!144 = !{i64 2158658979, i64 2158659461, i64 2158659016, i64 2158659072, i64 2158659106, i64 2158659130, i64 2158659171, i64 2158659192, i64 2158659220, i64 2158659254}
!145 = !{i64 2158660559, i64 2158661041, i64 2158660596, i64 2158660652, i64 2158660686, i64 2158660710, i64 2158660751, i64 2158660772, i64 2158660800, i64 2158660834}
!146 = !{i64 2158663282, i64 2158663764, i64 2158663319, i64 2158663375, i64 2158663409, i64 2158663433, i64 2158663474, i64 2158663495, i64 2158663523, i64 2158663557}
!147 = !{i64 2158664754, i64 2158665236, i64 2158664791, i64 2158664847, i64 2158664881, i64 2158664905, i64 2158664946, i64 2158664967, i64 2158664995, i64 2158665029}
!148 = !{i64 2158666320, i64 2158666802, i64 2158666357, i64 2158666413, i64 2158666447, i64 2158666471, i64 2158666512, i64 2158666533, i64 2158666561, i64 2158666595}
!149 = !{i64 2158667917, i64 2158668399, i64 2158667954, i64 2158668010, i64 2158668044, i64 2158668068, i64 2158668109, i64 2158668130, i64 2158668158, i64 2158668192}
!150 = !{i64 2158669673, i64 2158670155, i64 2158669710, i64 2158669766, i64 2158669800, i64 2158669824, i64 2158669865, i64 2158669886, i64 2158669914, i64 2158669948}
!151 = !{i64 2158671297, i64 2158671779, i64 2158671334, i64 2158671390, i64 2158671424, i64 2158671448, i64 2158671489, i64 2158671510, i64 2158671538, i64 2158671572}
!152 = !{i64 2158672932, i64 2158673414, i64 2158672969, i64 2158673025, i64 2158673059, i64 2158673083, i64 2158673124, i64 2158673145, i64 2158673173, i64 2158673207}
!153 = !{i64 2158674688, i64 2158675170, i64 2158674725, i64 2158674781, i64 2158674815, i64 2158674839, i64 2158674880, i64 2158674901, i64 2158674929, i64 2158674963}
!154 = !{i64 2158676257, i64 2158676739, i64 2158676294, i64 2158676350, i64 2158676384, i64 2158676408, i64 2158676449, i64 2158676470, i64 2158676498, i64 2158676532}
!155 = !{i64 2158508687, i64 2158509168, i64 2158508724, i64 2158508780, i64 2158508814, i64 2158508838, i64 2158508879, i64 2158508900, i64 2158508928, i64 2158508962}
!156 = !{i64 2158646993, i64 2158647475, i64 2158647030, i64 2158647086, i64 2158647120, i64 2158647144, i64 2158647185, i64 2158647206, i64 2158647234, i64 2158647268}
!157 = !{i64 2158601086, i64 2158601568, i64 2158601123, i64 2158601179, i64 2158601213, i64 2158601237, i64 2158601278, i64 2158601299, i64 2158601327, i64 2158601361}
!158 = !{i64 2158606765, i64 2158607247, i64 2158606802, i64 2158606858, i64 2158606892, i64 2158606916, i64 2158606957, i64 2158606978, i64 2158607006, i64 2158607040}
!159 = !{i64 2158608837, i64 2158609319, i64 2158608874, i64 2158608930, i64 2158608964, i64 2158608988, i64 2158609029, i64 2158609050, i64 2158609078, i64 2158609112}
!160 = !{i64 2158615049}
!161 = !{i64 2158617727, i64 2158618209, i64 2158617764, i64 2158617820, i64 2158617854, i64 2158617878, i64 2158617919, i64 2158617940, i64 2158617968, i64 2158618002}
!162 = !{i64 2158619305, i64 2158619787, i64 2158619342, i64 2158619398, i64 2158619432, i64 2158619456, i64 2158619497, i64 2158619518, i64 2158619546, i64 2158619580}
!163 = !{i64 2158620957, i64 2158621439, i64 2158620994, i64 2158621050, i64 2158621084, i64 2158621108, i64 2158621149, i64 2158621170, i64 2158621198, i64 2158621232}
!164 = !{i64 2158622521, i64 2158623003, i64 2158622558, i64 2158622614, i64 2158622648, i64 2158622672, i64 2158622713, i64 2158622734, i64 2158622762, i64 2158622796}
!165 = !{i64 2158624222, i64 2158624704, i64 2158624259, i64 2158624315, i64 2158624349, i64 2158624373, i64 2158624414, i64 2158624435, i64 2158624463, i64 2158624497}
!166 = !{i64 2158643762, i64 2158644244, i64 2158643799, i64 2158643855, i64 2158643889, i64 2158643913, i64 2158643954, i64 2158643975, i64 2158644003, i64 2158644037}
!167 = !{i64 2158645348, i64 2158645830, i64 2158645385, i64 2158645441, i64 2158645475, i64 2158645499, i64 2158645540, i64 2158645561, i64 2158645589, i64 2158645623}
!168 = !{i64 2158540734, i64 2158541215, i64 2158540771, i64 2158540827, i64 2158540861, i64 2158540885, i64 2158540926, i64 2158540947, i64 2158540975, i64 2158541009}
!169 = !{i64 2158546953}
!170 = !{i64 2158549793, i64 2158550275, i64 2158549830, i64 2158549886, i64 2158549920, i64 2158549944, i64 2158549985, i64 2158550006, i64 2158550034, i64 2158550068}
!171 = !{i64 2158551522, i64 2158552004, i64 2158551559, i64 2158551615, i64 2158551649, i64 2158551673, i64 2158551714, i64 2158551735, i64 2158551763, i64 2158551797}
!172 = !{i64 2158557296, i64 2158557778, i64 2158557333, i64 2158557389, i64 2158557423, i64 2158557447, i64 2158557488, i64 2158557509, i64 2158557537, i64 2158557571}
!173 = !{i64 2158558768, i64 2158559250, i64 2158558805, i64 2158558861, i64 2158558895, i64 2158558919, i64 2158558960, i64 2158558981, i64 2158559009, i64 2158559043}
!174 = !{i64 2158561076, i64 2158561558, i64 2158561113, i64 2158561169, i64 2158561203, i64 2158561227, i64 2158561268, i64 2158561289, i64 2158561317, i64 2158561351}
!175 = !{i64 2158562789, i64 2158563271, i64 2158562826, i64 2158562882, i64 2158562916, i64 2158562940, i64 2158562981, i64 2158563002, i64 2158563030, i64 2158563064}
!176 = !{i64 2158595843, i64 2158596325, i64 2158595880, i64 2158595936, i64 2158595970, i64 2158595994, i64 2158596035, i64 2158596056, i64 2158596084, i64 2158596118}
!177 = !{i64 2158678545, i64 2158679027, i64 2158678582, i64 2158678638, i64 2158678672, i64 2158678696, i64 2158678737, i64 2158678758, i64 2158678786, i64 2158678820}
!178 = !{i64 2158680246, i64 2158680728, i64 2158680283, i64 2158680339, i64 2158680373, i64 2158680397, i64 2158680438, i64 2158680459, i64 2158680487, i64 2158680521}
!179 = !{i64 2158681866, i64 2158682348, i64 2158681903, i64 2158681959, i64 2158681993, i64 2158682017, i64 2158682058, i64 2158682079, i64 2158682107, i64 2158682141}
!180 = !{i64 2158639368, i64 2158639850, i64 2158639405, i64 2158639461, i64 2158639495, i64 2158639519, i64 2158639560, i64 2158639581, i64 2158639609, i64 2158639643}
!181 = !{i64 2158641847, i64 2158642329, i64 2158641884, i64 2158641940, i64 2158641974, i64 2158641998, i64 2158642039, i64 2158642060, i64 2158642088, i64 2158642122}
