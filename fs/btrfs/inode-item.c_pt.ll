; ModuleID = '/llk/IR_all_yes/fs/btrfs/inode-item.c_pt.bc'
source_filename = "../fs/btrfs/inode-item.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%union.anon.70 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.btrfs_inode_ref = type <{ i64, i16 }>
%struct.btrfs_inode_extref = type <{ i64, i64, i16, [0 x i8] }>
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.rb_root = type { ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_item_batch = type { ptr, ptr, i32, i32 }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.82, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
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
%union.anon.82 = type { i64 }
%struct.btrfs_super_block = type <{ [32 x i8], [16 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i8, i8, i8, %struct.btrfs_dev_item, [256 x i8], i64, i64, [16 x i8], [28 x i64], [2048 x i8], [4 x %struct.btrfs_root_backup], [565 x i8] }>
%struct.btrfs_dev_item = type <{ i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i8, i8, [16 x i8], [16 x i8] }>
%struct.btrfs_root_backup = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [10 x i8] }
%struct.btrfs_ref = type { i32, i32, i8, i64, i64, i64, i64, %union.anon.85 }
%union.anon.85 = type { %struct.btrfs_data_ref }
%struct.btrfs_data_ref = type { i64, i64, i64 }
%struct.btrfs_truncate_control = type { ptr, i64, i64, i64, i64, i64, i32, i8, i8 }
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"control->inode || !control->clear_extent_range\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/btrfs/inode-item.c\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"new_size == 0 || control->min_type == BTRFS_EXTENT_DATA_KEY\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017BTRFS: Transaction aborted (error %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@btrfs_truncate_inode_items.__UNIQUE_ID_ddebug924 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.1, ptr @.str.6, i8 0, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"btrfs_truncate_inode_items\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Transaction aborted (error %d)\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017Transaction aborted (error %d)\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"!pending_del_nr || ((path->slots[0] + 1) == pending_del_slot)\00", [34 x i8] zeroinitializer }, align 32
@btrfs_truncate_inode_items.__UNIQUE_ID_ddebug925 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.1, ptr @.str.6, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@btrfs_truncate_inode_items.__UNIQUE_ID_ddebug926 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.1, ptr @.str.6, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@btrfs_truncate_inode_items.__UNIQUE_ID_ddebug927 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.1, ptr @.str.6, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"control->last_size >= new_size\00", [33 x i8] zeroinitializer }, align 32
@__func__.btrfs_del_inode_extref = private unnamed_addr constant [23 x i8] c"btrfs_del_inode_extref\00", align 1
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@__tracepoint_btrfs_truncate_show_fi_inline = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/btrfs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_btrfs_truncate_show_fi_inline.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_truncate_show_fi_regular = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_truncate_show_fi_regular.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 477, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 478, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 644, i32 5 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 650, i32 4 }
@___asan_gen_.47 = private constant [25 x i8] c"../fs/btrfs/inode-item.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 743, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 3491, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [32 x i8] c"../include/trace/events/btrfs.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 492, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 108, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_find_name_in_backref(ptr noundef %leaf, i32 noundef %slot, ptr noundef %name, i32 noundef %name_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i.i.i = mul i32 %slot, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %0 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = tail call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %0, i32 noundef 21) #8
  %call.i.i30 = tail call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %0, i32 noundef 17) #8
  %add = add i32 %call.i.i30, 101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp33.not = icmp eq i32 %call.i.i, 0
  br i1 %cmp33.not, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %cur_offset.034 = phi i32 [ %add5, %while.cond.backedge.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %add2 = add i32 %add, %cur_offset.034
  %1 = inttoptr i32 %add2 to ptr
  %call.i = tail call zeroext i16 @btrfs_get_16(ptr noundef %leaf, ptr noundef %1, i32 noundef 8) #8
  %conv = zext i16 %call.i to i32
  %add4 = add i32 %cur_offset.034, 10
  %add5 = add i32 %add4, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %name_len)
  %cmp6.not = icmp eq i32 %conv, %name_len
  br i1 %cmp6.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %cmp = icmp ult i32 %add5, %call.i.i
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.cleanup_crit_edge

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end:                                           ; preds = %while.body
  %add.ptr = getelementptr %struct.btrfs_inode_ref, ptr %1, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  %call8 = tail call i32 @memcmp_extent_buffer(ptr noundef %leaf, ptr noundef %name, i32 noundef %2, i32 noundef %name_len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %cleanup.loopexit.split.loop.exit, label %if.end.while.cond.backedge_crit_edge

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

cleanup.loopexit.split.loop.exit:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = inttoptr i32 %add2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %while.cond.backedge.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %3, %cleanup.loopexit.split.loop.exit ], [ null, %while.cond.backedge.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_find_name_in_ext_backref(ptr noundef %leaf, i32 noundef %slot, i64 noundef %ref_objectid, ptr noundef %name, i32 noundef %name_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i.i.i = mul i32 %slot, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %0 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = tail call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %0, i32 noundef 21) #8
  %call.i.i35 = tail call i32 @btrfs_get_32(ptr noundef %leaf, ptr noundef %0, i32 noundef 17) #8
  %add = add i32 %call.i.i35, 101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp39.not = icmp eq i32 %call.i.i, 0
  br i1 %cmp39.not, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %cur_offset.040 = phi i32 [ %add15, %if.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %add2 = add i32 %add, %cur_offset.040
  %1 = inttoptr i32 %add2 to ptr
  %name3 = getelementptr inbounds %struct.btrfs_inode_extref, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %name3 to i32
  %call.i = tail call zeroext i16 @btrfs_get_16(ptr noundef %leaf, ptr noundef %1, i32 noundef 16) #8
  %conv = zext i16 %call.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %name_len)
  %cmp5 = icmp eq i32 %conv, %name_len
  br i1 %cmp5, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %call.i36 = tail call i64 @btrfs_get_64(ptr noundef %leaf, ptr noundef %1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i36, i64 %ref_objectid)
  %cmp8 = icmp eq i64 %call.i36, %ref_objectid
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %call11 = tail call i32 @memcmp_extent_buffer(ptr noundef %leaf, ptr noundef %name, i32 noundef %2, i32 noundef %name_len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %cleanup.loopexit.split.loop.exit, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %add14 = add i32 %cur_offset.040, 18
  %add15 = add i32 %add14, %conv
  %cmp = icmp ult i32 %add15, %call.i.i
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.loopexit.split.loop.exit:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  %3 = inttoptr i32 %add2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %3, %cleanup.loopexit.split.loop.exit ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_lookup_inode_extref(ptr noundef %trans, ptr noundef %root, ptr noundef %path, ptr noundef %name, i32 noundef %name_len, i64 noundef %inode_objectid, i64 noundef %ref_objectid, i32 noundef %ins_len, i32 noundef %cow) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #8
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %inode_objectid, ptr %key, align 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 13, ptr %0, align 8
  %conv.i = trunc i64 %ref_objectid to i32
  %call.i = tail call i32 @crc32c(i32 noundef %conv.i, ptr noundef %name, i32 noundef %name_len) #8
  %conv1.i = zext i32 %call.i to i64
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %conv1.i, ptr %1, align 1
  %call1 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %key, ptr noundef %path, i32 noundef %ins_len, i32 noundef %cow) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = inttoptr i32 %call1 to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp3.not = icmp eq i32 %call1, 0
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %8 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slots, align 4
  %call7 = call ptr @btrfs_find_name_in_ext_backref(ptr noundef %7, i32 noundef %9, i64 noundef %ref_objectid, ptr noundef %name, i32 noundef %name_len)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %5, %if.then ], [ %call7, %if.end5 ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_del_inode_ref(ptr noundef %trans, ptr noundef %root, ptr noundef %name, i32 noundef %name_len, i64 noundef %inode_objectid, i64 noundef %ref_objectid, ptr noundef writeonly %index) local_unnamed_addr #0 align 64 {
entry:
  %key.i = alloca %struct.btrfs_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #8
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %add = add i32 %name_len, 10
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %inode_objectid, ptr %key, align 8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %ref_objectid, ptr %1, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 12, ptr %0, align 8
  %call = tail call ptr @btrfs_alloc_path() #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %key, ptr noundef nonnull %call, i32 noundef -1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.end.if.then35_crit_edge, label %if.else

if.end.if.then35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp3 = icmp slt i32 %call1, 0
  br i1 %cmp3, label %if.else.out.thread_crit_edge, label %if.end6

if.else.out.thread_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end6:                                          ; preds = %if.else
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slots, align 4
  %mul.i.i.i.i = mul i32 %8, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %9 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i.i = call i32 @btrfs_get_32(ptr noundef %6, ptr noundef %9, i32 noundef 21) #8
  %call.i.i30.i = call i32 @btrfs_get_32(ptr noundef %6, ptr noundef %9, i32 noundef 17) #8
  %add.i = add i32 %call.i.i30.i, 101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp33.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp33.not.i, label %if.end6.if.then35_crit_edge, label %if.end6.while.body.i_crit_edge

if.end6.while.body.i_crit_edge:                   ; preds = %if.end6
  br label %while.body.i

if.end6.if.then35_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %if.end6.while.body.i_crit_edge
  %cur_offset.034.i = phi i32 [ %add5.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ 0, %if.end6.while.body.i_crit_edge ]
  %add2.i = add i32 %add.i, %cur_offset.034.i
  %10 = inttoptr i32 %add2.i to ptr
  %call.i.i = call zeroext i16 @btrfs_get_16(ptr noundef %6, ptr noundef %10, i32 noundef 8) #8
  %conv.i = zext i16 %call.i.i to i32
  %add4.i = add i32 %cur_offset.034.i, 10
  %add5.i = add i32 %add4.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %name_len)
  %cmp6.not.i = icmp eq i32 %conv.i, %name_len
  br i1 %cmp6.not.i, label %if.end.i, label %while.body.i.while.cond.backedge.i_crit_edge

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end.i.while.cond.backedge.i_crit_edge, %while.body.i.while.cond.backedge.i_crit_edge
  %cmp.i = icmp ult i32 %add5.i, %call.i.i.i
  br i1 %cmp.i, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.if.then35_crit_edge

while.cond.backedge.i.if.then35_crit_edge:        ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end.i:                                         ; preds = %while.body.i
  %add.ptr.i = getelementptr %struct.btrfs_inode_ref, ptr %10, i32 1
  %11 = ptrtoint ptr %add.ptr.i to i32
  %call8.i = call i32 @memcmp_extent_buffer(ptr noundef %6, ptr noundef %name, i32 noundef %11, i32 noundef %name_len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i, label %btrfs_find_name_in_backref.exit, label %if.end.i.while.cond.backedge.i_crit_edge

if.end.i.while.cond.backedge.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i

btrfs_find_name_in_backref.exit:                  ; preds = %if.end.i
  %12 = inttoptr i32 %add2.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add2.i)
  %tobool9.not = icmp eq i32 %add2.i, 0
  br i1 %tobool9.not, label %btrfs_find_name_in_backref.exit.if.then35_crit_edge, label %if.end11

btrfs_find_name_in_backref.exit.if.then35_crit_edge: ; preds = %btrfs_find_name_in_backref.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.end11:                                         ; preds = %btrfs_find_name_in_backref.exit
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  %15 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %16, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %17 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i82 = call i32 @btrfs_get_32(ptr noundef %14, ptr noundef %17, i32 noundef 21) #8
  %tobool17.not = icmp eq ptr %index, null
  br i1 %tobool17.not, label %if.end11.if.end20_crit_edge, label %if.then18

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i64 @btrfs_get_64(ptr noundef %14, ptr noundef nonnull %12, i32 noundef 0) #8
  %18 = ptrtoint ptr %index to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call.i, ptr %index, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end11.if.end20_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i82, i32 %add)
  %cmp21 = icmp eq i32 %call.i.i82, %add
  %19 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slots, align 4
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %call.i83 = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %call, i32 noundef %20, i32 noundef 1) #8
  br label %out.thread

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.i.i84 = mul i32 %20, 25
  %add.i.i.i85 = add i32 %mul.i.i.i84, 101
  %21 = inttoptr i32 %add.i.i.i85 to ptr
  %call.i.i86 = call i32 @btrfs_get_32(ptr noundef %14, ptr noundef %21, i32 noundef 17) #8
  %add30 = add i32 %add2.i, %add
  %add29 = sub i32 101, %add30
  %sub.neg = add i32 %add29, %call.i.i82
  %sub32 = add i32 %sub.neg, %call.i.i86
  call void @memmove_extent_buffer(ptr noundef %14, i32 noundef %add2.i, i32 noundef %add30, i32 noundef %sub32) #8
  %sub33 = sub i32 %call.i.i82, %add
  call void @btrfs_truncate_item(ptr noundef nonnull %call, i32 noundef %sub33, i32 noundef 1) #8
  br label %out.thread

out.thread:                                       ; preds = %if.end24, %if.then22, %if.else.out.thread_crit_edge
  %ret.0.ph = phi i32 [ 0, %if.end24 ], [ %call.i83, %if.then22 ], [ %call1, %if.else.out.thread_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call) #8
  br label %cleanup

if.then35:                                        ; preds = %btrfs_find_name_in_backref.exit.if.then35_crit_edge, %while.cond.backedge.i.if.then35_crit_edge, %if.end6.if.then35_crit_edge, %if.end.if.then35_crit_edge
  call void @btrfs_free_path(ptr noundef nonnull %call) #8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #8
  %22 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 2
  %add.i87 = add i32 %name_len, 18
  %24 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %inode_objectid, ptr %key.i, align 8
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 13, ptr %22, align 8
  %conv.i.i = trunc i64 %ref_objectid to i32
  %call.i.i88 = call i32 @crc32c(i32 noundef %conv.i.i, ptr noundef %name, i32 noundef %name_len) #8
  %conv1.i.i = zext i32 %call.i.i88 to i64
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %conv1.i.i, ptr %23, align 1
  %call1.i = call ptr @btrfs_alloc_path() #8
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then35.btrfs_del_inode_extref.exit_crit_edge, label %if.end.i90

if.then35.btrfs_del_inode_extref.exit_crit_edge:  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_del_inode_extref.exit

if.end.i90:                                       ; preds = %if.then35
  %call2.i = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %key.i, ptr noundef nonnull %call1.i, i32 noundef -1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i89 = icmp sgt i32 %call2.i, 0
  %spec.store.select.i = select i1 %cmp.i89, i32 -2, i32 %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp5.i = icmp slt i32 %spec.store.select.i, 0
  br i1 %cmp5.i, label %if.end.i90.out.i_crit_edge, label %if.end7.i

if.end.i90.out.i_crit_edge:                       ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end7.i:                                        ; preds = %if.end.i90
  %27 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call1.i, align 4
  %slots.i91 = getelementptr inbounds %struct.btrfs_path, ptr %call1.i, i32 0, i32 1
  %29 = ptrtoint ptr %slots.i91 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %slots.i91, align 4
  %call9.i = call ptr @btrfs_find_name_in_ext_backref(ptr noundef %28, i32 noundef %30, i64 noundef %ref_objectid, ptr noundef %name, i32 noundef %name_len) #8
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %fs_info.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %31 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fs_info.i, align 8
  call void (ptr, ptr, i32, i32, ptr, ...) @__btrfs_handle_fs_error(ptr noundef %32, ptr noundef nonnull @__func__.btrfs_del_inode_extref, i32 noundef 137, i32 noundef -2, ptr noundef null) #11
  br label %out.i

if.end12.i:                                       ; preds = %if.end7.i
  %33 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call1.i, align 4
  %35 = ptrtoint ptr %slots.i91 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %slots.i91, align 4
  %mul.i.i.i.i92 = mul i32 %36, 25
  %add.i.i.i.i93 = add i32 %mul.i.i.i.i92, 101
  %37 = inttoptr i32 %add.i.i.i.i93 to ptr
  %call.i.i.i94 = call i32 @btrfs_get_32(ptr noundef %34, ptr noundef %37, i32 noundef 21) #8
  %tobool18.not.i = icmp eq ptr %index, null
  br i1 %tobool18.not.i, label %if.end12.i.if.end21.i_crit_edge, label %if.then19.i

if.end12.i.if.end21.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i73.i = call i64 @btrfs_get_64(ptr noundef %34, ptr noundef nonnull %call9.i, i32 noundef 8) #8
  %38 = ptrtoint ptr %index to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %call.i73.i, ptr %index, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end12.i.if.end21.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i94, i32 %add.i87)
  %cmp22.i = icmp eq i32 %call.i.i.i94, %add.i87
  br i1 %cmp22.i, label %if.then23.i, label %if.end25.i

if.then23.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %slots.i91 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %slots.i91, align 4
  %call.i74.i = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %call1.i, i32 noundef %40, i32 noundef 1) #8
  br label %out.i

if.end25.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %call9.i to i32
  %42 = ptrtoint ptr %slots.i91 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %slots.i91, align 4
  %mul.i.i.i75.i = mul i32 %43, 25
  %add.i.i.i76.i = add i32 %mul.i.i.i75.i, 101
  %44 = inttoptr i32 %add.i.i.i76.i to ptr
  %call.i.i77.i = call i32 @btrfs_get_32(ptr noundef %34, ptr noundef %44, i32 noundef 17) #8
  %add30.i = add i32 %add.i87, %41
  %add29.i = sub i32 101, %add30.i
  %sub.neg.i = add i32 %add29.i, %call.i.i.i94
  %sub32.i = add i32 %sub.neg.i, %call.i.i77.i
  call void @memmove_extent_buffer(ptr noundef %34, i32 noundef %41, i32 noundef %add30.i, i32 noundef %sub32.i) #8
  %sub33.i = sub i32 %call.i.i.i94, %add.i87
  call void @btrfs_truncate_item(ptr noundef nonnull %call1.i, i32 noundef %sub33.i, i32 noundef 1) #8
  br label %out.i

out.i:                                            ; preds = %if.end25.i, %if.then23.i, %do.body.i, %if.end.i90.out.i_crit_edge
  %ret.0.i = phi i32 [ %spec.store.select.i, %if.end.i90.out.i_crit_edge ], [ %call.i74.i, %if.then23.i ], [ 0, %if.end25.i ], [ -30, %do.body.i ]
  call void @btrfs_free_path(ptr noundef nonnull %call1.i) #8
  br label %btrfs_del_inode_extref.exit

btrfs_del_inode_extref.exit:                      ; preds = %out.i, %if.then35.btrfs_del_inode_extref.exit_crit_edge
  %retval.0.i95 = phi i32 [ %ret.0.i, %out.i ], [ -12, %if.then35.btrfs_del_inode_extref.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #8
  br label %cleanup

cleanup:                                          ; preds = %btrfs_del_inode_extref.exit, %out.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i95, %btrfs_del_inode_extref.exit ], [ -12, %entry.cleanup_crit_edge ], [ %ret.0.ph, %out.thread ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memmove_extent_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_truncate_item(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_insert_inode_ref(ptr noundef %trans, ptr noundef %root, ptr noundef %name, i32 noundef %name_len, i64 noundef %inode_objectid, i64 noundef %ref_objectid, i64 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i.i = alloca i32, align 4
  %batch.i.i = alloca %struct.btrfs_item_batch, align 4
  %key.i = alloca %struct.btrfs_key, align 8
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #8
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %add = add i32 %name_len, 10
  %4 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %inode_objectid, ptr %key, align 8
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %ref_objectid, ptr %3, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 12, ptr %2, align 8
  %call = tail call ptr @btrfs_alloc_path() #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup69_crit_edge, label %if.end

entry.cleanup69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.end:                                           ; preds = %entry
  %skip_release_on_error = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %skip_release_on_error to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %skip_release_on_error, align 2
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %skip_release_on_error, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %8 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #8
  %9 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  %12 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %key, ptr %batch.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data_size.addr.i, ptr %9, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %10, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %11, align 4
  %call.i = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %call, ptr noundef nonnull %batch.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call.i)
  %cmp = icmp eq i32 %call.i, -17
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %18 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slots, align 4
  %mul.i.i.i.i = mul i32 %19, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %20 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i.i = call i32 @btrfs_get_32(ptr noundef %17, ptr noundef %20, i32 noundef 21) #8
  %call.i.i30.i = call i32 @btrfs_get_32(ptr noundef %17, ptr noundef %20, i32 noundef 17) #8
  %add.i = add i32 %call.i.i30.i, 101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp33.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp33.not.i, label %if.then3.cleanup.thread_crit_edge, label %if.then3.while.body.i_crit_edge

if.then3.while.body.i_crit_edge:                  ; preds = %if.then3
  br label %while.body.i

if.then3.cleanup.thread_crit_edge:                ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %if.then3.while.body.i_crit_edge
  %cur_offset.034.i = phi i32 [ %add5.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ 0, %if.then3.while.body.i_crit_edge ]
  %add2.i = add i32 %add.i, %cur_offset.034.i
  %21 = inttoptr i32 %add2.i to ptr
  %call.i.i = call zeroext i16 @btrfs_get_16(ptr noundef %17, ptr noundef %21, i32 noundef 8) #8
  %conv.i = zext i16 %call.i.i to i32
  %add4.i = add i32 %cur_offset.034.i, 10
  %add5.i = add i32 %add4.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %name_len)
  %cmp6.not.i = icmp eq i32 %conv.i, %name_len
  br i1 %cmp6.not.i, label %if.end.i, label %while.body.i.while.cond.backedge.i_crit_edge

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end.i.while.cond.backedge.i_crit_edge, %while.body.i.while.cond.backedge.i_crit_edge
  %cmp.i = icmp ult i32 %add5.i, %call.i.i.i
  br i1 %cmp.i, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.cleanup.thread_crit_edge

while.cond.backedge.i.cleanup.thread_crit_edge:   ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end.i:                                         ; preds = %while.body.i
  %add.ptr.i = getelementptr %struct.btrfs_inode_ref, ptr %21, i32 1
  %22 = ptrtoint ptr %add.ptr.i to i32
  %call8.i = call i32 @memcmp_extent_buffer(ptr noundef %17, ptr noundef %name, i32 noundef %22, i32 noundef %name_len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i, label %btrfs_find_name_in_backref.exit, label %if.end.i.while.cond.backedge.i_crit_edge

if.end.i.while.cond.backedge.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i

btrfs_find_name_in_backref.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add2.i)
  %tobool6.not = icmp eq i32 %add2.i, 0
  br i1 %tobool6.not, label %btrfs_find_name_in_backref.exit.cleanup.thread_crit_edge, label %btrfs_find_name_in_backref.exit.out.thread_crit_edge

btrfs_find_name_in_backref.exit.out.thread_crit_edge: ; preds = %btrfs_find_name_in_backref.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

btrfs_find_name_in_backref.exit.cleanup.thread_crit_edge: ; preds = %btrfs_find_name_in_backref.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %btrfs_find_name_in_backref.exit.cleanup.thread_crit_edge, %while.cond.backedge.i.cleanup.thread_crit_edge, %if.then3.cleanup.thread_crit_edge
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call, align 4
  %25 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %26, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %27 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i125 = call i32 @btrfs_get_32(ptr noundef %24, ptr noundef %27, i32 noundef 21) #8
  call void @btrfs_extend_item(ptr noundef nonnull %call, i32 noundef %add) #8
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call, align 4
  %30 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %slots, align 4
  %mul.i.i.i126 = mul i32 %31, 25
  %add.i.i.i127 = add i32 %mul.i.i.i126, 101
  %32 = inttoptr i32 %add.i.i.i127 to ptr
  %call.i.i128 = call i32 @btrfs_get_32(ptr noundef %29, ptr noundef %32, i32 noundef 17) #8
  %add19 = add i32 %call.i.i125, 101
  %add20 = add i32 %add19, %call.i.i128
  br label %if.end55

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp25 = icmp slt i32 %call.i, 0
  br i1 %cmp25, label %if.then27, label %if.else41

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -75, i32 %call.i)
  %cmp28 = icmp eq i32 %call.i, -75
  br i1 %cmp28, label %if.then30, label %out

if.then30:                                        ; preds = %if.then27
  %33 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call, align 4
  %slots33 = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %35 = ptrtoint ptr %slots33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %slots33, align 4
  %mul.i.i.i.i129 = mul i32 %36, 25
  %add.i.i.i.i130 = add i32 %mul.i.i.i.i129, 101
  %37 = inttoptr i32 %add.i.i.i.i130 to ptr
  %call.i.i.i131 = call i32 @btrfs_get_32(ptr noundef %34, ptr noundef %37, i32 noundef 21) #8
  %call.i.i30.i132 = call i32 @btrfs_get_32(ptr noundef %34, ptr noundef %37, i32 noundef 17) #8
  %add.i133 = add i32 %call.i.i30.i132, 101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i131)
  %cmp33.not.i134 = icmp eq i32 %call.i.i.i131, 0
  br i1 %cmp33.not.i134, label %if.then30.out.thread172_crit_edge, label %if.then30.while.body.i142_crit_edge

if.then30.while.body.i142_crit_edge:              ; preds = %if.then30
  br label %while.body.i142

if.then30.out.thread172_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread172

while.body.i142:                                  ; preds = %while.cond.backedge.i144.while.body.i142_crit_edge, %if.then30.while.body.i142_crit_edge
  %cur_offset.034.i135 = phi i32 [ %add5.i140, %while.cond.backedge.i144.while.body.i142_crit_edge ], [ 0, %if.then30.while.body.i142_crit_edge ]
  %add2.i136 = add i32 %add.i133, %cur_offset.034.i135
  %38 = inttoptr i32 %add2.i136 to ptr
  %call.i.i137 = call zeroext i16 @btrfs_get_16(ptr noundef %34, ptr noundef %38, i32 noundef 8) #8
  %conv.i138 = zext i16 %call.i.i137 to i32
  %add4.i139 = add i32 %cur_offset.034.i135, 10
  %add5.i140 = add i32 %add4.i139, %conv.i138
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i138, i32 %name_len)
  %cmp6.not.i141 = icmp eq i32 %conv.i138, %name_len
  br i1 %cmp6.not.i141, label %if.end.i148, label %while.body.i142.while.cond.backedge.i144_crit_edge

while.body.i142.while.cond.backedge.i144_crit_edge: ; preds = %while.body.i142
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i144

while.cond.backedge.i144:                         ; preds = %if.end.i148.while.cond.backedge.i144_crit_edge, %while.body.i142.while.cond.backedge.i144_crit_edge
  %cmp.i143 = icmp ult i32 %add5.i140, %call.i.i.i131
  br i1 %cmp.i143, label %while.cond.backedge.i144.while.body.i142_crit_edge, label %while.cond.backedge.i144.out.thread172_crit_edge

while.cond.backedge.i144.out.thread172_crit_edge: ; preds = %while.cond.backedge.i144
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread172

while.cond.backedge.i144.while.body.i142_crit_edge: ; preds = %while.cond.backedge.i144
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i142

if.end.i148:                                      ; preds = %while.body.i142
  %add.ptr.i145 = getelementptr %struct.btrfs_inode_ref, ptr %38, i32 1
  %39 = ptrtoint ptr %add.ptr.i145 to i32
  %call8.i146 = call i32 @memcmp_extent_buffer(ptr noundef %34, ptr noundef %name, i32 noundef %39, i32 noundef %name_len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i146)
  %cmp9.i147 = icmp eq i32 %call8.i146, 0
  br i1 %cmp9.i147, label %btrfs_find_name_in_backref.exit151, label %if.end.i148.while.cond.backedge.i144_crit_edge

if.end.i148.while.cond.backedge.i144_crit_edge:   ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i144

btrfs_find_name_in_backref.exit151:               ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add2.i136)
  %tobool36.not = icmp eq i32 %add2.i136, 0
  br i1 %tobool36.not, label %btrfs_find_name_in_backref.exit151.out.thread172_crit_edge, label %btrfs_find_name_in_backref.exit151.out.thread_crit_edge

btrfs_find_name_in_backref.exit151.out.thread_crit_edge: ; preds = %btrfs_find_name_in_backref.exit151
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

btrfs_find_name_in_backref.exit151.out.thread172_crit_edge: ; preds = %btrfs_find_name_in_backref.exit151
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread172

if.else41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call, align 4
  %slots44 = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %42 = ptrtoint ptr %slots44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %slots44, align 4
  %mul.i.i.i152 = mul i32 %43, 25
  %add.i.i.i153 = add i32 %mul.i.i.i152, 101
  %44 = inttoptr i32 %add.i.i.i153 to ptr
  %call.i.i154 = call i32 @btrfs_get_32(ptr noundef %41, ptr noundef %44, i32 noundef 17) #8
  %add47 = add i32 %call.i.i154, 101
  br label %if.end55

if.end55:                                         ; preds = %if.else41, %cleanup.thread
  %.sink184.in = phi i32 [ %add20, %cleanup.thread ], [ %add47, %if.else41 ]
  %ret.1 = phi i32 [ 0, %cleanup.thread ], [ %call.i, %if.else41 ]
  %.sink184 = inttoptr i32 %.sink184.in to ptr
  %45 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call, align 4
  %conv = trunc i32 %name_len to i16
  call void @btrfs_set_16(ptr noundef %46, ptr noundef %.sink184, i32 noundef 8, i16 noundef zeroext %conv) #8
  %47 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call, align 4
  call void @btrfs_set_64(ptr noundef %48, ptr noundef %.sink184, i32 noundef 0, i64 noundef %index) #8
  %ptr.1.in = getelementptr %struct.btrfs_inode_ref, ptr %.sink184, i32 1
  %ptr.1 = ptrtoint ptr %ptr.1.in to i32
  %49 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call, align 4
  call void @write_extent_buffer(ptr noundef %50, ptr noundef %name, i32 noundef %ptr.1, i32 noundef %name_len) #8
  %51 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call, align 4
  call void @btrfs_mark_buffer_dirty(ptr noundef %52) #8
  br label %out.thread

out.thread172:                                    ; preds = %btrfs_find_name_in_backref.exit151.out.thread172_crit_edge, %while.cond.backedge.i144.out.thread172_crit_edge, %if.then30.out.thread172_crit_edge
  call void @btrfs_free_path(ptr noundef nonnull %call) #8
  br label %if.then62

out.thread:                                       ; preds = %if.end55, %btrfs_find_name_in_backref.exit151.out.thread_crit_edge, %btrfs_find_name_in_backref.exit.out.thread_crit_edge
  %ret.2.ph = phi i32 [ -17, %btrfs_find_name_in_backref.exit.out.thread_crit_edge ], [ -17, %btrfs_find_name_in_backref.exit151.out.thread_crit_edge ], [ %ret.1, %if.end55 ]
  call void @btrfs_free_path(ptr noundef nonnull %call) #8
  br label %cleanup69

out:                                              ; preds = %if.then27
  call void @btrfs_free_path(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %call.i)
  %cmp60 = icmp eq i32 %call.i, -31
  br i1 %cmp60, label %out.if.then62_crit_edge, label %out.cleanup69_crit_edge

out.cleanup69_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

out.if.then62_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

if.then62:                                        ; preds = %out.if.then62_crit_edge, %out.thread172
  %super_copy = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 43
  %53 = ptrtoint ptr %super_copy to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %super_copy, align 8
  %incompat_flags.i = getelementptr inbounds %struct.btrfs_super_block, ptr %54, i32 0, i32 22
  %55 = ptrtoint ptr %incompat_flags.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %incompat_flags.i, align 1
  %57 = and i64 %56, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %57)
  %tobool64.not = icmp eq i64 %57, 0
  br i1 %tobool64.not, label %if.then62.cleanup69_crit_edge, label %if.then65

if.then62.cleanup69_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.then65:                                        ; preds = %if.then62
  %add.i155 = add i32 %name_len, 18
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #8
  %58 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 1
  %59 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 2
  %60 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %inode_objectid, ptr %key.i, align 8
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 13, ptr %58, align 8
  %conv.i.i = trunc i64 %ref_objectid to i32
  %call.i.i156 = call i32 @crc32c(i32 noundef %conv.i.i, ptr noundef %name, i32 noundef %name_len) #8
  %conv1.i.i = zext i32 %call.i.i156 to i64
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %conv1.i.i, ptr %59, align 1
  %call1.i = call ptr @btrfs_alloc_path() #8
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then65.btrfs_insert_inode_extref.exit_crit_edge, label %if.end.i158

if.then65.btrfs_insert_inode_extref.exit_crit_edge: ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_insert_inode_extref.exit

if.end.i158:                                      ; preds = %if.then65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i.i) #8
  %63 = ptrtoint ptr %data_size.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add.i155, ptr %data_size.addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i.i) #8
  %64 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 1
  %65 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 2
  %66 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i.i, i32 0, i32 3
  %67 = ptrtoint ptr %batch.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %key.i, ptr %batch.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %data_size.addr.i.i, ptr %64, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add.i155, ptr %65, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %66, align 4
  %call.i71.i = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %call1.i, ptr noundef nonnull %batch.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call.i71.i)
  %cmp.i157 = icmp eq i32 %call.i71.i, -17
  br i1 %cmp.i157, label %if.then3.i, label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i158
  %71 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call1.i, align 4
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %call1.i, i32 0, i32 1
  %73 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %slots.i, align 4
  %call5.i = call ptr @btrfs_find_name_in_ext_backref(ptr noundef %72, i32 noundef %74, i64 noundef %ref_objectid, ptr noundef %name, i32 noundef %name_len) #8
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end9.thread.i, label %if.then3.i.out.i_crit_edge

if.then3.i.out.i_crit_edge:                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end9.thread.i:                                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @btrfs_extend_item(ptr noundef nonnull %call1.i, i32 noundef %add.i155) #8
  br label %if.end12.i

if.end9.i:                                        ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71.i)
  %cmp10.i = icmp slt i32 %call.i71.i, 0
  br i1 %cmp10.i, label %if.end9.i.out.i_crit_edge, label %if.end9.i.if.end12.i_crit_edge

if.end9.i.if.end12.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.end9.i.out.i_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end12.i:                                       ; preds = %if.end9.i.if.end12.i_crit_edge, %if.end9.thread.i
  %ret.077.i = phi i32 [ 0, %if.end9.thread.i ], [ %call.i71.i, %if.end9.i.if.end12.i_crit_edge ]
  %75 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call1.i, align 4
  %slots15.i = getelementptr inbounds %struct.btrfs_path, ptr %call1.i, i32 0, i32 1
  %77 = ptrtoint ptr %slots15.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %slots15.i, align 4
  %mul.i.i.i.i159 = mul i32 %78, 25
  %add.i.i.i.i160 = add i32 %mul.i.i.i.i159, 101
  %79 = inttoptr i32 %add.i.i.i.i160 to ptr
  %call.i.i.i161 = call i32 @btrfs_get_32(ptr noundef %76, ptr noundef %79, i32 noundef 17) #8
  %80 = ptrtoint ptr %slots15.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %slots15.i, align 4
  %mul.i.i.i72.i = mul i32 %81, 25
  %add.i.i.i73.i = add i32 %mul.i.i.i72.i, 101
  %82 = inttoptr i32 %add.i.i.i73.i to ptr
  %call.i.i74.i = call i32 @btrfs_get_32(ptr noundef %76, ptr noundef %82, i32 noundef 21) #8
  %sub.i = sub i32 83, %name_len
  %add18.i = add i32 %sub.i, %call.i.i.i161
  %add22.i = add i32 %add18.i, %call.i.i74.i
  %83 = inttoptr i32 %add22.i to ptr
  %84 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call1.i, align 4
  %conv.i162 = trunc i32 %name_len to i16
  call void @btrfs_set_16(ptr noundef %85, ptr noundef %83, i32 noundef 16, i16 noundef zeroext %conv.i162) #8
  %86 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call1.i, align 4
  call void @btrfs_set_64(ptr noundef %87, ptr noundef %83, i32 noundef 8, i64 noundef %index) #8
  %88 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call1.i, align 4
  call void @btrfs_set_64(ptr noundef %89, ptr noundef %83, i32 noundef 0, i64 noundef %ref_objectid) #8
  %name29.i = getelementptr inbounds %struct.btrfs_inode_extref, ptr %83, i32 0, i32 3
  %90 = ptrtoint ptr %name29.i to i32
  %91 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %call1.i, align 4
  call void @write_extent_buffer(ptr noundef %92, ptr noundef %name, i32 noundef %90, i32 noundef %name_len) #8
  %93 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call1.i, align 4
  call void @btrfs_mark_buffer_dirty(ptr noundef %94) #8
  br label %out.i

out.i:                                            ; preds = %if.end12.i, %if.end9.i.out.i_crit_edge, %if.then3.i.out.i_crit_edge
  %ret.1.i = phi i32 [ -17, %if.then3.i.out.i_crit_edge ], [ %call.i71.i, %if.end9.i.out.i_crit_edge ], [ %ret.077.i, %if.end12.i ]
  call void @btrfs_free_path(ptr noundef nonnull %call1.i) #8
  br label %btrfs_insert_inode_extref.exit

btrfs_insert_inode_extref.exit:                   ; preds = %out.i, %if.then65.btrfs_insert_inode_extref.exit_crit_edge
  %retval.0.i163 = phi i32 [ %ret.1.i, %out.i ], [ -12, %if.then65.btrfs_insert_inode_extref.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #8
  br label %cleanup69

cleanup69:                                        ; preds = %btrfs_insert_inode_extref.exit, %if.then62.cleanup69_crit_edge, %out.cleanup69_crit_edge, %out.thread, %entry.cleanup69_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup69_crit_edge ], [ %call.i, %out.cleanup69_crit_edge ], [ %retval.0.i163, %btrfs_insert_inode_extref.exit ], [ -31, %if.then62.cleanup69_crit_edge ], [ %ret.2.ph, %out.thread ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_extend_item(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_insert_empty_inode(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i64 noundef %objectid) local_unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #8
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %objectid, ptr %key, align 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %0, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %5 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 160, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #8
  %6 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  %9 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %key, ptr %batch.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data_size.addr.i, ptr %6, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 160, ptr %7, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %8, align 4
  %call.i = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %root, ptr noundef %path, ptr noundef nonnull %batch.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_lookup_inode(ptr noundef %trans, ptr noundef %root, ptr noundef %path, ptr noundef %location, i32 noundef %mod) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mod.lobit = ashr i32 %mod, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mod)
  %cmp1 = icmp ne i32 %mod, 0
  %conv = zext i1 %cmp1 to i32
  %call = tail call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef %location, ptr noundef %path, i32 noundef %mod.lobit, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp sgt i32 %call, 0
  br i1 %cmp2, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.btrfs_key, ptr %location, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %1)
  %cmp5 = icmp eq i8 %1, -124
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true7:                                   ; preds = %land.lhs.true
  %offset = getelementptr inbounds %struct.btrfs_key, ptr %location, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %offset, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %3)
  %cmp8 = icmp eq i64 %3, -1
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true7.cleanup_crit_edge

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %4 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not = icmp eq i32 %5, 0
  br i1 %cmp11.not, label %land.lhs.true10.cleanup_crit_edge, label %if.then

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true10
  %6 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %path, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #8
  %8 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %9 = mul i32 %5, 25
  %add.i.i.i.i = add i32 %9, 76
  %10 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %7, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #8
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %8, align 8
  %13 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %disk_key.i, align 8
  %15 = call i64 @llvm.bswap.i64(i64 %14) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #8
  %16 = ptrtoint ptr %location to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %location, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %17)
  %cmp17 = icmp eq i64 %15, %17
  br i1 %cmp17, label %land.lhs.true19, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true19:                                  ; preds = %if.then
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %19)
  %cmp24 = icmp eq i8 %12, %19
  br i1 %cmp24, label %if.then26, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slots, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %slots, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %land.lhs.true19.cleanup_crit_edge, %if.then.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then26 ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %land.lhs.true19.cleanup_crit_edge ], [ %call, %land.lhs.true10.cleanup_crit_edge ], [ %call, %land.lhs.true7.cleanup_crit_edge ], [ %call, %land.lhs.true.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_truncate_inode_items(ptr noundef %trans, ptr noundef %root, ptr nocapture noundef %control) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  %ref = alloca %struct.btrfs_ref, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #8
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %new_size2 = getelementptr inbounds %struct.btrfs_truncate_control, ptr %control, i32 0, i32 1
  %4 = ptrtoint ptr %new_size2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %new_size2, align 8
  %6 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %control, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %lor.rhs, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

lor.rhs:                                          ; preds = %entry
  %clear_extent_range = getelementptr inbounds %struct.btrfs_truncate_control, ptr %control, i32 0, i32 8
  %8 = ptrtoint ptr %clear_extent_range to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %clear_extent_range, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %lor.rhs.cond.end_crit_edge, label %cond.false, !prof !52

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 477) #12
  unreachable

cond.end:                                         ; preds = %lor.rhs.cond.end_crit_edge, %entry.cond.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %cond.end.cond.end18_crit_edge, label %lor.rhs7

cond.end.cond.end18_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end18

lor.rhs7:                                         ; preds = %cond.end
  %min_type = getelementptr inbounds %struct.btrfs_truncate_control, ptr %control, i32 0, i32 6
  %10 = ptrtoint ptr %min_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %11)
  %cmp8 = icmp eq i32 %11, 108
  br i1 %cmp8, label %lor.rhs7.cond.end18_crit_edge, label %cond.false17, !prof !52

lor.rhs7.cond.end18_crit_edge:                    ; preds = %lor.rhs7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end18

cond.false17:                                     ; preds = %lor.rhs7
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 478) #12
  unreachable

cond.end18:                                       ; preds = %lor.rhs7.cond.end18_crit_edge, %cond.end.cond.end18_crit_edge
  %last_size = getelementptr inbounds %struct.btrfs_truncate_control, ptr %control, i32 0, i32 3
  %12 = ptrtoint ptr %last_size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %5, ptr %last_size, align 8
  %sub_bytes = getelementptr inbounds %struct.btrfs_truncate_control, ptr %control, i32 0, i32 4
  %13 = ptrtoint ptr %sub_bytes to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %sub_bytes, align 8
  %state = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 5
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool19.not = icmp eq i32 %16, 0
  %call20 = tail call ptr @btrfs_alloc_path() #8
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %cond.end18.cleanup565_crit_edge, label %if.end23

cond.end18.cleanup565_crit_edge:                  ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup565

if.end23:                                         ; preds = %cond.end18
  %reada = getelementptr inbounds %struct.btrfs_path, ptr %call20, i32 0, i32 3
  %17 = ptrtoint ptr %reada to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %reada, align 4
  %ino = getelementptr inbounds %struct.btrfs_truncate_control, ptr %control, i32 0, i32 5
  %18 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ino, align 8
  %20 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %key, align 8
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 -1, ptr %3, align 1
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %2, align 8
  %tobool19.not.not = xor i1 %tobool19.not, true
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call20, i32 0, i32 1
  %23 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %min_type52 = getelementptr inbounds %struct.btrfs_truncate_control, ptr %control, i32 0, i32 6
  %extents_found = getelementptr inbounds %struct.btrfs_truncate_control, ptr %control, i32 0, i32 2
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 167
  %add182 = sub i64 1, %5
  %clear_extent_range188 = getelementptr inbounds %struct.btrfs_truncate_control, ptr %control, i32 0, i32 8
  %skip_ref_updates = getelementptr inbounds %struct.btrfs_truncate_control, ptr %control, i32 0, i32 7
  %action1.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 1
  %bytenr2.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 4
  %len3.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 5
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %real_root.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 3
  %25 = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 7
  %ino1.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 7, i32 0, i32 1
  %offset2.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 7, i32 0, i32 2
  %skip_qgroup10.i = getelementptr inbounds %struct.btrfs_ref, ptr %ref, i32 0, i32 2
  br label %search_again

search_again:                                     ; preds = %search_again.backedge, %if.end23
  %bytes_deleted.0 = phi i64 [ 0, %if.end23 ], [ %bytes_deleted.2, %search_again.backedge ]
  %extent_type.0 = phi i32 [ -1, %if.end23 ], [ %extent_type.2, %search_again.backedge ]
  %pending_del_slot.0 = phi i32 [ 0, %if.end23 ], [ %pending_del_slot.2, %search_again.backedge ]
  %extent_offset.0 = phi i64 [ 0, %if.end23 ], [ %extent_offset.3, %search_again.backedge ]
  %extent_num_bytes.0 = phi i64 [ 0, %if.end23 ], [ %extent_num_bytes.3, %search_again.backedge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 33554432, i64 %bytes_deleted.0)
  %cmp25 = icmp ugt i64 %bytes_deleted.0, 33554432
  %or.cond = select i1 %tobool19.not.not, i1 %cmp25, i1 false
  br i1 %or.cond, label %land.lhs.true26, label %search_again.if.end29_crit_edge

search_again.if.end29_crit_edge:                  ; preds = %search_again
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true26:                                  ; preds = %search_again
  %call27 = call zeroext i1 @btrfs_should_end_transaction(ptr noundef %trans) #8
  br i1 %call27, label %land.lhs.true26.if.end544_crit_edge, label %land.lhs.true26.if.end29_crit_edge

land.lhs.true26.if.end29_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true26.if.end544_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end544

if.end29:                                         ; preds = %land.lhs.true26.if.end29_crit_edge, %search_again.if.end29_crit_edge
  %call30 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %key, ptr noundef nonnull %call20, i32 noundef -1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.if.end544_crit_edge, label %if.end33

if.end29.if.end544_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end544

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp34.not = icmp eq i32 %call30, 0
  br i1 %cmp34.not, label %if.end33.while.cond_crit_edge, label %if.then35

if.end33.while.cond_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then35:                                        ; preds = %if.end33
  %26 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp36 = icmp eq i32 %27, 0
  br i1 %cmp36, label %if.then35.if.end544_crit_edge, label %if.then35.while.cond.sink.split_crit_edge

if.then35.while.cond.sink.split_crit_edge:        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.sink.split

if.then35.if.end544_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end544

while.cond.sink.split:                            ; preds = %if.end377.while.cond.sink.split_crit_edge, %if.then35.while.cond.sink.split_crit_edge
  %.sink = phi i32 [ %pending_del_slot.2, %if.end377.while.cond.sink.split_crit_edge ], [ %27, %if.then35.while.cond.sink.split_crit_edge ]
  %bytes_deleted.1.ph = phi i64 [ %bytes_deleted.2, %if.end377.while.cond.sink.split_crit_edge ], [ %bytes_deleted.0, %if.then35.while.cond.sink.split_crit_edge ]
  %extent_type.1.ph = phi i32 [ %extent_type.2, %if.end377.while.cond.sink.split_crit_edge ], [ %extent_type.0, %if.then35.while.cond.sink.split_crit_edge ]
  %pending_del_slot.1.ph = phi i32 [ %pending_del_slot.2, %if.end377.while.cond.sink.split_crit_edge ], [ %pending_del_slot.0, %if.then35.while.cond.sink.split_crit_edge ]
  %pending_del_nr.1.ph = phi i32 [ %pending_del_nr.2, %if.end377.while.cond.sink.split_crit_edge ], [ 0, %if.then35.while.cond.sink.split_crit_edge ]
  %extent_offset.1.ph = phi i64 [ %extent_offset.3, %if.end377.while.cond.sink.split_crit_edge ], [ %extent_offset.0, %if.then35.while.cond.sink.split_crit_edge ]
  %extent_num_bytes.1.ph = phi i64 [ %extent_num_bytes.3, %if.end377.while.cond.sink.split_crit_edge ], [ %extent_num_bytes.0, %if.then35.while.cond.sink.split_crit_edge ]
  %dec = add i32 %.sink, -1
  %28 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %dec, ptr %slots, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.sink.split, %if.end33.while.cond_crit_edge
  %bytes_deleted.1 = phi i64 [ %bytes_deleted.0, %if.end33.while.cond_crit_edge ], [ %bytes_deleted.1.ph, %while.cond.sink.split ]
  %extent_type.1 = phi i32 [ %extent_type.0, %if.end33.while.cond_crit_edge ], [ %extent_type.1.ph, %while.cond.sink.split ]
  %pending_del_slot.1 = phi i32 [ %pending_del_slot.0, %if.end33.while.cond_crit_edge ], [ %pending_del_slot.1.ph, %while.cond.sink.split ]
  %pending_del_nr.1 = phi i32 [ 0, %if.end33.while.cond_crit_edge ], [ %pending_del_nr.1.ph, %while.cond.sink.split ]
  %extent_offset.1 = phi i64 [ %extent_offset.0, %if.end33.while.cond_crit_edge ], [ %extent_offset.1.ph, %while.cond.sink.split ]
  %extent_num_bytes.1 = phi i64 [ %extent_num_bytes.0, %if.end33.while.cond_crit_edge ], [ %extent_num_bytes.1.ph, %while.cond.sink.split ]
  %29 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call20, align 4
  %31 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #8
  %mul.i.i.i.i = mul i32 %32, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %33 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %30, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #8
  %34 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %24, align 1
  %36 = call i64 @llvm.bswap.i64(i64 %35) #8
  %37 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %23, align 8
  %39 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %disk_key.i, align 8
  %41 = call i64 @llvm.bswap.i64(i64 %40) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #8
  %conv = zext i8 %38 to i32
  %42 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %43)
  %cmp48.not = icmp eq i64 %41, %43
  br i1 %cmp48.not, label %if.end51, label %while.cond.out_crit_edge

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end51:                                         ; preds = %while.cond
  %44 = ptrtoint ptr %min_type52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %min_type52, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv)
  %cmp53 = icmp ugt i32 %45, %conv
  br i1 %cmp53, label %if.end51.out_crit_edge, label %if.end56

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end56:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %38)
  %cmp58 = icmp eq i8 %38, 108
  br i1 %cmp58, label %if.then60, label %if.end56.if.end83_crit_edge

if.end56.if.end83_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then60:                                        ; preds = %if.end56
  %46 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %47, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %48 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %30, ptr noundef %48, i32 noundef 17) #8
  %add = add i32 %call.i.i, 101
  %49 = inttoptr i32 %add to ptr
  %call.i = call zeroext i8 @btrfs_get_8(ptr noundef %30, ptr noundef %49, i32 noundef 20) #8
  %conv65 = zext i8 %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %cmp66.not = icmp eq i8 %call.i, 0
  br i1 %cmp66.not, label %if.end77.thread, label %if.end77

if.end77:                                         ; preds = %if.then60
  %call.i787 = call i64 @btrfs_get_64(ptr noundef %30, ptr noundef %49, i32 noundef 45) #8
  %50 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %control, align 8
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %if.end77.btrfs_trace_truncate.exit_crit_edge, label %if.else.i

if.end77.btrfs_trace_truncate.exit_crit_edge:     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_trace_truncate.exit

if.end77.thread:                                  ; preds = %if.then60
  %call.i788 = call i64 @btrfs_get_64(ptr noundef %30, ptr noundef %49, i32 noundef 8) #8
  %52 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %control, align 8
  %tobool.not.i811 = icmp eq ptr %53, null
  br i1 %tobool.not.i811, label %if.end77.thread.btrfs_trace_truncate.exit_crit_edge, label %if.then1.i

if.end77.thread.btrfs_trace_truncate.exit_crit_edge: ; preds = %if.end77.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_trace_truncate.exit

if.then1.i:                                       ; preds = %if.end77.thread
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %slots, align 4
  call fastcc void @trace_btrfs_truncate_show_fi_inline(ptr noundef nonnull %53, ptr noundef %30, ptr noundef %49, i32 noundef %55, i64 noundef %36) #8
  br label %btrfs_trace_truncate.exit

if.else.i:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_btrfs_truncate_show_fi_regular(ptr noundef nonnull %51, ptr noundef %30, ptr noundef %49, i64 noundef %36) #8
  br label %btrfs_trace_truncate.exit

btrfs_trace_truncate.exit:                        ; preds = %if.else.i, %if.then1.i, %if.end77.thread.btrfs_trace_truncate.exit_crit_edge, %if.end77.btrfs_trace_truncate.exit_crit_edge
  %call.i788.pn = phi i64 [ %call.i788, %if.end77.thread.btrfs_trace_truncate.exit_crit_edge ], [ %call.i787, %if.end77.btrfs_trace_truncate.exit_crit_edge ], [ %call.i788, %if.then1.i ], [ %call.i787, %if.else.i ]
  %item_end.0813 = add i64 %call.i788.pn, %36
  %dec82 = add i64 %item_end.0813, -1
  br label %if.end83

if.end83:                                         ; preds = %btrfs_trace_truncate.exit, %if.end56.if.end83_crit_edge
  %extent_type.2 = phi i32 [ %conv65, %btrfs_trace_truncate.exit ], [ %extent_type.1, %if.end56.if.end83_crit_edge ]
  %item_end.1 = phi i64 [ %dec82, %btrfs_trace_truncate.exit ], [ %36, %if.end56.if.end83_crit_edge ]
  %fi.0 = phi ptr [ %49, %btrfs_trace_truncate.exit ], [ null, %if.end56.if.end83_crit_edge ]
  %56 = ptrtoint ptr %min_type52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %min_type52, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv)
  %cmp85 = icmp ult i32 %57, %conv
  br i1 %cmp85, label %if.end83.if.end99_crit_edge, label %if.else88

if.end83.if.end99_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.else88:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_cmp8(i64 %item_end.1, i64 %5)
  %cmp89 = icmp ult i64 %item_end.1, %5
  br i1 %cmp89, label %if.else88.out_crit_edge, label %if.end92

if.else88.out_crit_edge:                          ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end92:                                         ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %36)
  %cmp94.not = icmp ugt i64 %5, %36
  br label %if.end99

if.end99:                                         ; preds = %if.end92, %if.end83.if.end99_crit_edge
  %tobool152.not = phi i1 [ false, %if.end83.if.end99_crit_edge ], [ %cmp94.not, %if.end92 ]
  br i1 %cmp58, label %if.end103, label %if.end99.delete_crit_edge

if.end99.delete_crit_edge:                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %delete

if.end103:                                        ; preds = %if.end99
  %58 = ptrtoint ptr %extents_found to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %extents_found, align 8
  %inc = add i64 %59, 1
  store i64 %inc, ptr %extents_found, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extent_type.2)
  %cmp104.not = icmp eq i32 %extent_type.2, 0
  br i1 %cmp104.not, label %if.then151, label %if.then106

if.then106:                                       ; preds = %if.end103
  %call.i789 = call i64 @btrfs_get_64(ptr noundef %30, ptr noundef %fi.0, i32 noundef 21) #8
  br i1 %tobool152.not, label %if.then110, label %if.else135

if.then110:                                       ; preds = %if.then106
  %call.i790 = call i64 @btrfs_get_64(ptr noundef %30, ptr noundef %fi.0, i32 noundef 45) #8
  %sub = sub i64 %5, %36
  %60 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sectorsize, align 4
  %conv113 = zext i32 %61 to i64
  %sub114 = add nsw i64 %conv113, -1
  %add115 = add i64 %sub, %sub114
  %neg = sub nsw i64 0, %conv113
  %and = and i64 %add115, %neg
  %add122 = add i64 %sub114, %5
  %and127 = and i64 %add122, %neg
  call void @btrfs_set_64(ptr noundef %30, ptr noundef %fi.0, i32 noundef 45, i64 noundef %and) #8
  %sub128 = sub i64 %call.i790, %and
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i789)
  %cmp129.not = icmp eq i64 %call.i789, 0
  br i1 %cmp129.not, label %if.then110.if.end134_crit_edge, label %if.then131

if.then110.if.end134_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then131:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %sub_bytes to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %sub_bytes, align 8
  %add133 = add i64 %63, %sub128
  store i64 %add133, ptr %sub_bytes, align 8
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %if.then110.if.end134_crit_edge
  call void @btrfs_mark_buffer_dirty(ptr noundef %30) #8
  br label %delete

if.else135:                                       ; preds = %if.then106
  %call.i791 = call i64 @btrfs_get_64(ptr noundef %30, ptr noundef %fi.0, i32 noundef 29) #8
  %call.i792 = call i64 @btrfs_get_64(ptr noundef %30, ptr noundef %fi.0, i32 noundef 37) #8
  %sub139 = sub i64 %36, %call.i792
  %call.i793 = call i64 @btrfs_get_64(ptr noundef %30, ptr noundef %fi.0, i32 noundef 45) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i789)
  %cmp141.not = icmp eq i64 %call.i789, 0
  br i1 %cmp141.not, label %if.else135.delete_crit_edge, label %if.then143

if.else135.delete_crit_edge:                      ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #10
  br label %delete

if.then143:                                       ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %sub_bytes to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %sub_bytes, align 8
  %add145 = add i64 %65, %call.i793
  store i64 %add145, ptr %sub_bytes, align 8
  br label %delete

if.then151:                                       ; preds = %if.end103
  br i1 %tobool152.not, label %land.lhs.true153, label %if.else177

land.lhs.true153:                                 ; preds = %if.then151
  %call.i794 = call zeroext i8 @btrfs_get_8(ptr noundef %30, ptr noundef %fi.0, i32 noundef 17) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i794)
  %cmp156 = icmp eq i8 %call.i794, 0
  br i1 %cmp156, label %land.lhs.true158, label %land.lhs.true153.out_crit_edge

land.lhs.true153.out_crit_edge:                   ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true158:                                 ; preds = %land.lhs.true153
  %call.i795 = call zeroext i16 @btrfs_get_16(ptr noundef %30, ptr noundef %fi.0, i32 noundef 18) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i795)
  %cmp161 = icmp eq i16 %call.i795, 0
  br i1 %cmp161, label %land.lhs.true163, label %land.lhs.true158.out_crit_edge

land.lhs.true158.out_crit_edge:                   ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true163:                                 ; preds = %land.lhs.true158
  %call.i796 = call zeroext i8 @btrfs_get_8(ptr noundef %30, ptr noundef %fi.0, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i796)
  %cmp166 = icmp eq i8 %call.i796, 0
  br i1 %cmp166, label %if.then168, label %land.lhs.true163.out_crit_edge

land.lhs.true163.out_crit_edge:                   ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then168:                                       ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #10
  %sub170 = sub i64 %5, %36
  %conv171 = trunc i64 %sub170 to i32
  %conv172 = and i64 %sub170, 4294967295
  call void @btrfs_set_64(ptr noundef %30, ptr noundef %fi.0, i32 noundef 8, i64 noundef %conv172) #8
  %add.i = add i32 %conv171, 21
  call void @btrfs_truncate_item(ptr noundef nonnull %call20, i32 noundef %add.i, i32 noundef 1) #8
  br label %if.end181

if.else177:                                       ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sectorsize, align 4
  %conv179 = zext i32 %67 to i64
  br label %if.end181

if.end181:                                        ; preds = %if.else177, %if.then168
  %clear_len.0 = phi i64 [ %conv179, %if.else177 ], [ 0, %if.then168 ]
  %68 = ptrtoint ptr %sub_bytes to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %sub_bytes, align 8
  %sub183 = add i64 %add182, %item_end.1
  %add185 = add i64 %sub183, %69
  store i64 %add185, ptr %sub_bytes, align 8
  br label %delete

delete:                                           ; preds = %if.end181, %if.then143, %if.else135.delete_crit_edge, %if.end134, %if.end99.delete_crit_edge
  %clear_start.1 = phi i64 [ 0, %if.end99.delete_crit_edge ], [ 0, %if.end181 ], [ %36, %if.then143 ], [ %36, %if.else135.delete_crit_edge ], [ %and127, %if.end134 ]
  %clear_len.1 = phi i64 [ 0, %if.end99.delete_crit_edge ], [ %clear_len.0, %if.end181 ], [ %call.i793, %if.then143 ], [ %call.i793, %if.else135.delete_crit_edge ], [ %sub128, %if.end134 ]
  %extent_start.0 = phi i64 [ 0, %if.end99.delete_crit_edge ], [ 0, %if.end181 ], [ %call.i789, %if.then143 ], [ 0, %if.else135.delete_crit_edge ], [ %call.i789, %if.end134 ]
  %extent_offset.3 = phi i64 [ %extent_offset.1, %if.end99.delete_crit_edge ], [ %extent_offset.1, %if.end181 ], [ %sub139, %if.then143 ], [ %sub139, %if.else135.delete_crit_edge ], [ %extent_offset.1, %if.end134 ]
  %extent_num_bytes.3 = phi i64 [ %extent_num_bytes.1, %if.end99.delete_crit_edge ], [ %extent_num_bytes.1, %if.end181 ], [ %call.i791, %if.then143 ], [ %call.i791, %if.else135.delete_crit_edge ], [ %and, %if.end134 ]
  %70 = ptrtoint ptr %clear_extent_range188 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %clear_extent_range188, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool189.not = icmp eq i8 %71, 0
  br i1 %tobool189.not, label %delete.if.end248_crit_edge, label %if.then190

delete.if.end248_crit_edge:                       ; preds = %delete
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

if.then190:                                       ; preds = %delete
  %72 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %control, align 8
  %call192 = call i32 @btrfs_inode_clear_file_extent_range(ptr noundef %73, i64 noundef %clear_start.1, i64 noundef %clear_len.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.then190.if.end248_crit_edge, label %do.body

if.then190.if.end248_crit_edge:                   ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

do.body:                                          ; preds = %if.then190
  %fs_info195 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %74 = ptrtoint ptr %fs_info195 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fs_info195, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %75, i32 0, i32 149
  %call196 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.then198, label %do.body.if.end244_crit_edge

do.body.if.end244_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end244

if.then198:                                       ; preds = %do.body
  %76 = zext i32 %call192 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call192, label %do.end [
    i32 -5, label %if.then198.do.body228_crit_edge
    i32 -30, label %if.then198.do.body228_crit_edge1042
  ]

if.then198.do.body228_crit_edge1042:              ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body228

if.then198.do.body228_crit_edge:                  ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body228

do.end:                                           ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 644, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %call192) #8
  br label %if.end244

do.body228:                                       ; preds = %if.then198.do.body228_crit_edge, %if.then198.do.body228_crit_edge1042
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_truncate_inode_items.__UNIQUE_ID_ddebug924, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_truncate_inode_items, %if.then238)) #8
          to label %if.end244 [label %if.then238], !srcloc !53

if.then238:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %fs_info195 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fs_info195, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %78, ptr noundef nonnull @.str.7, i32 noundef %call192) #11
  br label %if.end244

if.end244:                                        ; preds = %if.then238, %do.body228, %do.end, %do.body.if.end244_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.5, i32 noundef 644, i32 noundef %call192) #11
  br label %out

if.end248:                                        ; preds = %if.then190.if.end248_crit_edge, %delete.if.end248_crit_edge
  br i1 %tobool152.not, label %if.else288, label %if.then250

if.then250:                                       ; preds = %if.end248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pending_del_nr.1)
  %tobool251.not = icmp eq i32 %pending_del_nr.1, 0
  br i1 %tobool251.not, label %if.then271.critedge, label %lor.rhs252

lor.rhs252:                                       ; preds = %if.then250
  %79 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %slots, align 4
  %add255 = add i32 %80, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add255, i32 %pending_del_slot.1)
  %cmp256 = icmp eq i32 %add255, %pending_del_slot.1
  br i1 %cmp256, label %if.else274.critedge, label %cond.false266, !prof !52

cond.false266:                                    ; preds = %lor.rhs252
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.8, i32 noundef 651) #12
  unreachable

if.then271.critedge:                              ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %last_size to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %36, ptr %last_size, align 8
  %82 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %slots, align 4
  br label %land.lhs.true292

if.else274.critedge:                              ; preds = %lor.rhs252
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %last_size to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %36, ptr %last_size, align 8
  %85 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %slots, align 4
  %add279 = add i32 %86, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add279, i32 %pending_del_slot.1)
  %cmp280 = icmp eq i32 %add279, %pending_del_slot.1
  %spec.select776 = select i1 %cmp280, i32 %86, i32 %pending_del_slot.1
  %inc283 = zext i1 %cmp280 to i32
  %spec.select777 = add i32 %pending_del_nr.1, %inc283
  br label %land.lhs.true292

if.else288:                                       ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %last_size to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %5, ptr %last_size, align 8
  br label %out

land.lhs.true292:                                 ; preds = %if.else274.critedge, %if.then271.critedge
  %pending_del_slot.2 = phi i32 [ %83, %if.then271.critedge ], [ %spec.select776, %if.else274.critedge ]
  %pending_del_nr.2 = phi i32 [ 1, %if.then271.critedge ], [ %spec.select777, %if.else274.critedge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %extent_start.0)
  %cmp293.not = icmp eq i64 %extent_start.0, 0
  br i1 %cmp293.not, label %land.lhs.true292.if.end373_crit_edge, label %land.lhs.true295

land.lhs.true292.if.end373_crit_edge:             ; preds = %land.lhs.true292
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end373

land.lhs.true295:                                 ; preds = %land.lhs.true292
  %88 = ptrtoint ptr %skip_ref_updates to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %skip_ref_updates, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool296.not = icmp eq i8 %89, 0
  br i1 %tobool296.not, label %if.then297, label %land.lhs.true295.if.end373_crit_edge

land.lhs.true295.if.end373_crit_edge:             ; preds = %land.lhs.true295
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end373

if.then297:                                       ; preds = %land.lhs.true295
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ref) #8
  %90 = call ptr @memset(ptr %ref, i32 0, i32 72)
  %add298 = add i64 %extent_num_bytes.3, %bytes_deleted.1
  %91 = ptrtoint ptr %action1.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2, ptr %action1.i, align 4
  %92 = ptrtoint ptr %bytenr2.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %extent_start.0, ptr %bytenr2.i, align 8
  %93 = ptrtoint ptr %len3.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %extent_num_bytes.3, ptr %len3.i, align 8
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %30, i32 0, i32 12
  %94 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pages.i, align 4
  %call.i797 = call ptr @page_address(ptr noundef %95) #8
  %96 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %30, align 8
  %conv.i = trunc i64 %97 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i797, i32 %and.i
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 6
  %98 = ptrtoint ptr %owner.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 8)
  %99 = load i64, ptr %owner.i, align 1
  %100 = call i64 @llvm.bswap.i64(i64 %99) #8
  %101 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %ino, align 8
  %103 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %103, i32 8)
  %104 = load i64, ptr %root_key, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %104)
  %tobool.not.i798 = icmp eq i64 %104, 0
  %spec.select.i = select i1 %tobool.not.i798, i64 %100, i64 %104
  %105 = ptrtoint ptr %real_root.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %spec.select.i, ptr %real_root.i, align 8
  %106 = ptrtoint ptr %25 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %100, ptr %25, align 8
  %107 = ptrtoint ptr %ino1.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %102, ptr %ino1.i, align 8
  %108 = ptrtoint ptr %offset2.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %extent_offset.3, ptr %offset2.i, align 8
  %109 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %ref, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 360287970189639680, i64 %99)
  %cmp.i.i = icmp ne i64 %99, 360287970189639680
  %110 = add i64 %100, -281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 -281474976710400, i64 %110)
  %111 = icmp ult i64 %110, -281474976710400
  %tobool4.not.i = and i1 %cmp.i.i, %111
  br i1 %tobool4.not.i, label %if.then297.btrfs_init_data_ref.exit_crit_edge, label %land.lhs.true.i

if.then297.btrfs_init_data_ref.exit_crit_edge:    ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_init_data_ref.exit

land.lhs.true.i:                                  ; preds = %if.then297
  br i1 %tobool.not.i798, label %land.lhs.true.i.if.else.i799_crit_edge, label %lor.lhs.false6.i

land.lhs.true.i.if.else.i799_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i799

lor.lhs.false6.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %104)
  %cmp.i1.i = icmp ne i64 %104, 5
  %112 = add i64 %104, -281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 -281474976710400, i64 %112)
  %113 = icmp ult i64 %112, -281474976710400
  %tobool8.not.i = and i1 %cmp.i1.i, %113
  br i1 %tobool8.not.i, label %lor.lhs.false6.i.btrfs_init_data_ref.exit_crit_edge, label %lor.lhs.false6.i.if.else.i799_crit_edge

lor.lhs.false6.i.if.else.i799_crit_edge:          ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i799

lor.lhs.false6.i.btrfs_init_data_ref.exit_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %btrfs_init_data_ref.exit

if.else.i799:                                     ; preds = %lor.lhs.false6.i.if.else.i799_crit_edge, %land.lhs.true.i.if.else.i799_crit_edge
  br label %btrfs_init_data_ref.exit

btrfs_init_data_ref.exit:                         ; preds = %if.else.i799, %lor.lhs.false6.i.btrfs_init_data_ref.exit_crit_edge, %if.then297.btrfs_init_data_ref.exit_crit_edge
  %.sink.i = phi i8 [ 0, %if.else.i799 ], [ 1, %lor.lhs.false6.i.btrfs_init_data_ref.exit_crit_edge ], [ 1, %if.then297.btrfs_init_data_ref.exit_crit_edge ]
  %114 = ptrtoint ptr %skip_qgroup10.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %.sink.i, ptr %skip_qgroup10.i, align 8
  %call302 = call i32 @btrfs_free_extent(ptr noundef %trans, ptr noundef nonnull %ref) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call302)
  %tobool303.not = icmp eq i32 %call302, 0
  br i1 %tobool303.not, label %if.end365, label %do.body305

do.body305:                                       ; preds = %btrfs_init_data_ref.exit
  %fs_info306 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %115 = ptrtoint ptr %fs_info306 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %fs_info306, align 4
  %fs_state307 = getelementptr inbounds %struct.btrfs_fs_info, ptr %116, i32 0, i32 149
  %call308 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state307) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308)
  %tobool309.not = icmp eq i32 %call308, 0
  br i1 %tobool309.not, label %if.then310, label %do.body305.cleanup_crit_edge

do.body305.cleanup_crit_edge:                     ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then310:                                       ; preds = %do.body305
  %117 = zext i32 %call302 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call302, label %do.end329 [
    i32 -5, label %if.then310.do.body344_crit_edge
    i32 -30, label %if.then310.do.body344_crit_edge1043
  ]

if.then310.do.body344_crit_edge1043:              ; preds = %if.then310
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body344

if.then310.do.body344_crit_edge:                  ; preds = %if.then310
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body344

do.end329:                                        ; preds = %if.then310
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 681, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %call302) #8
  br label %cleanup

do.body344:                                       ; preds = %if.then310.do.body344_crit_edge, %if.then310.do.body344_crit_edge1043
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_truncate_inode_items.__UNIQUE_ID_ddebug925, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_truncate_inode_items, %if.then356)) #8
          to label %cleanup [label %if.then356], !srcloc !53

if.then356:                                       ; preds = %do.body344
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %fs_info306 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fs_info306, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %119, ptr noundef nonnull @.str.7, i32 noundef %call302) #11
  br label %cleanup

if.end365:                                        ; preds = %btrfs_init_data_ref.exit
  br i1 %tobool19.not, label %if.end365.cleanup.thread_crit_edge, label %if.then367

if.end365.cleanup.thread_crit_edge:               ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then367:                                       ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #10
  %call368 = call i32 @btrfs_should_throttle_delayed_refs(ptr noundef %trans) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call368)
  %tobool369.not = icmp ne i32 %call368, 0
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then367, %if.end365.cleanup.thread_crit_edge
  %should_throttle.1.ph = phi i1 [ %tobool369.not, %if.then367 ], [ false, %if.end365.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ref) #8
  br label %if.end373

cleanup:                                          ; preds = %if.then356, %do.body344, %do.end329, %do.body305.cleanup_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.5, i32 noundef 681, i32 noundef %call302) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ref) #8
  br label %out

if.end373:                                        ; preds = %cleanup.thread, %land.lhs.true295.if.end373_crit_edge, %land.lhs.true292.if.end373_crit_edge
  %bytes_deleted.2 = phi i64 [ %bytes_deleted.1, %land.lhs.true295.if.end373_crit_edge ], [ %bytes_deleted.1, %land.lhs.true292.if.end373_crit_edge ], [ %add298, %cleanup.thread ]
  %should_throttle.2.off0 = phi i1 [ false, %land.lhs.true295.if.end373_crit_edge ], [ false, %land.lhs.true292.if.end373_crit_edge ], [ %should_throttle.1.ph, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp374 = icmp eq i8 %38, 1
  br i1 %cmp374, label %if.end373.out_crit_edge, label %if.end377

if.end373.out_crit_edge:                          ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end377:                                        ; preds = %if.end373
  %120 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp380 = icmp eq i32 %121, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %pending_del_slot.2)
  %cmp384.not = icmp ne i32 %121, %pending_del_slot.2
  %or.cond773 = select i1 %cmp380, i1 true, i1 %cmp384.not
  %brmerge = select i1 %or.cond773, i1 true, i1 %should_throttle.2.off0
  br i1 %brmerge, label %if.then389, label %if.end377.while.cond.sink.split_crit_edge

if.end377.while.cond.sink.split_crit_edge:        ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.sink.split

if.then389:                                       ; preds = %if.end377
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pending_del_nr.2)
  %tobool390.not = icmp eq i32 %pending_del_nr.2, 0
  br i1 %tobool390.not, label %if.then389.if.end456_crit_edge, label %if.then391

if.then389.if.end456_crit_edge:                   ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end456

if.then391:                                       ; preds = %if.then389
  %call392 = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %call20, i32 noundef %pending_del_slot.2, i32 noundef %pending_del_nr.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call392)
  %tobool393.not = icmp eq i32 %call392, 0
  br i1 %tobool393.not, label %if.then391.if.end456_crit_edge, label %do.body395

if.then391.if.end456_crit_edge:                   ; preds = %if.then391
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end456

do.body395:                                       ; preds = %if.then391
  %fs_info396 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %122 = ptrtoint ptr %fs_info396 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %fs_info396, align 4
  %fs_state397 = getelementptr inbounds %struct.btrfs_fs_info, ptr %123, i32 0, i32 149
  %call398 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state397) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call398)
  %tobool399.not = icmp eq i32 %call398, 0
  br i1 %tobool399.not, label %if.then400, label %do.body395.if.end452_crit_edge

do.body395.if.end452_crit_edge:                   ; preds = %do.body395
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end452

if.then400:                                       ; preds = %do.body395
  %124 = zext i32 %call392 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call392, label %do.end419 [
    i32 -5, label %if.then400.do.body434_crit_edge
    i32 -30, label %if.then400.do.body434_crit_edge1044
  ]

if.then400.do.body434_crit_edge1044:              ; preds = %if.then400
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body434

if.then400.do.body434_crit_edge:                  ; preds = %if.then400
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body434

do.end419:                                        ; preds = %if.then400
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 701, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %call392) #8
  br label %if.end452

do.body434:                                       ; preds = %if.then400.do.body434_crit_edge, %if.then400.do.body434_crit_edge1044
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_truncate_inode_items.__UNIQUE_ID_ddebug926, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_truncate_inode_items, %if.then446)) #8
          to label %if.end452 [label %if.then446], !srcloc !53

if.then446:                                       ; preds = %do.body434
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %fs_info396 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %fs_info396, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %126, ptr noundef nonnull @.str.7, i32 noundef %call392) #11
  br label %if.end452

if.end452:                                        ; preds = %if.then446, %do.body434, %do.end419, %do.body395.if.end452_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.5, i32 noundef 701, i32 noundef %call392) #11
  br label %out

if.end456:                                        ; preds = %if.then391.if.end456_crit_edge, %if.then389.if.end456_crit_edge
  call void @btrfs_release_path(ptr noundef nonnull %call20) #8
  br i1 %should_throttle.2.off0, label %if.then458, label %if.end456.search_again.backedge_crit_edge

if.end456.search_again.backedge_crit_edge:        ; preds = %if.end456
  call void @__sanitizer_cov_trace_pc() #10
  br label %search_again.backedge

search_again.backedge:                            ; preds = %if.then458.search_again.backedge_crit_edge, %if.end456.search_again.backedge_crit_edge
  br label %search_again

if.then458:                                       ; preds = %if.end456
  %call459 = call i32 @btrfs_delayed_refs_rsv_refill(ptr noundef %1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call459)
  %tobool460.not = icmp eq i32 %call459, 0
  br i1 %tobool460.not, label %if.then458.search_again.backedge_crit_edge, label %if.then458.if.end544_crit_edge

if.then458.if.end544_crit_edge:                   ; preds = %if.then458
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end544

if.then458.search_again.backedge_crit_edge:       ; preds = %if.then458
  call void @__sanitizer_cov_trace_pc() #10
  br label %search_again.backedge

out:                                              ; preds = %if.end452, %if.end373.out_crit_edge, %cleanup, %if.else288, %if.end244, %land.lhs.true163.out_crit_edge, %land.lhs.true158.out_crit_edge, %land.lhs.true153.out_crit_edge, %if.else88.out_crit_edge, %if.end51.out_crit_edge, %while.cond.out_crit_edge
  %ret.7 = phi i32 [ 0, %if.else288 ], [ %call302, %cleanup ], [ %call392, %if.end452 ], [ %call192, %if.end244 ], [ 0, %while.cond.out_crit_edge ], [ 0, %if.end51.out_crit_edge ], [ 0, %if.else88.out_crit_edge ], [ 0, %if.end373.out_crit_edge ], [ 1, %land.lhs.true163.out_crit_edge ], [ 1, %land.lhs.true158.out_crit_edge ], [ 1, %land.lhs.true153.out_crit_edge ]
  %pending_del_slot.4 = phi i32 [ %pending_del_slot.1, %if.else288 ], [ %pending_del_slot.2, %cleanup ], [ %pending_del_slot.2, %if.end452 ], [ %pending_del_slot.1, %if.end244 ], [ %pending_del_slot.1, %while.cond.out_crit_edge ], [ %pending_del_slot.1, %if.end51.out_crit_edge ], [ %pending_del_slot.1, %if.else88.out_crit_edge ], [ %pending_del_slot.2, %if.end373.out_crit_edge ], [ %pending_del_slot.1, %land.lhs.true163.out_crit_edge ], [ %pending_del_slot.1, %land.lhs.true158.out_crit_edge ], [ %pending_del_slot.1, %land.lhs.true153.out_crit_edge ]
  %pending_del_nr.5 = phi i32 [ %pending_del_nr.1, %if.else288 ], [ %pending_del_nr.2, %cleanup ], [ %pending_del_nr.2, %if.end452 ], [ %pending_del_nr.1, %if.end244 ], [ %pending_del_nr.1, %while.cond.out_crit_edge ], [ %pending_del_nr.1, %if.end51.out_crit_edge ], [ %pending_del_nr.1, %if.else88.out_crit_edge ], [ %pending_del_nr.2, %if.end373.out_crit_edge ], [ %pending_del_nr.1, %land.lhs.true163.out_crit_edge ], [ %pending_del_nr.1, %land.lhs.true158.out_crit_edge ], [ %pending_del_nr.1, %land.lhs.true153.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.7)
  %cmp475 = icmp slt i32 %ret.7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pending_del_nr.5)
  %tobool478.not = icmp eq i32 %pending_del_nr.5, 0
  %or.cond774 = select i1 %cmp475, i1 true, i1 %tobool478.not
  br i1 %or.cond774, label %out.if.end544_crit_edge, label %if.then479

out.if.end544_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end544

if.then479:                                       ; preds = %out
  %call480 = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %call20, i32 noundef %pending_del_slot.4, i32 noundef %pending_del_nr.5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call480)
  %tobool481.not = icmp eq i32 %call480, 0
  br i1 %tobool481.not, label %if.then479.if.end544_crit_edge, label %do.body483

if.then479.if.end544_crit_edge:                   ; preds = %if.then479
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end544

do.body483:                                       ; preds = %if.then479
  %fs_info484 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %127 = ptrtoint ptr %fs_info484 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fs_info484, align 4
  %fs_state485 = getelementptr inbounds %struct.btrfs_fs_info, ptr %128, i32 0, i32 149
  %call486 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state485) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call486)
  %tobool487.not = icmp eq i32 %call486, 0
  br i1 %tobool487.not, label %if.then488, label %do.body483.if.end540_crit_edge

do.body483.if.end540_crit_edge:                   ; preds = %do.body483
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end540

if.then488:                                       ; preds = %do.body483
  %129 = zext i32 %call480 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call480, label %do.end507 [
    i32 -5, label %if.then488.do.body522_crit_edge
    i32 -30, label %if.then488.do.body522_crit_edge1045
  ]

if.then488.do.body522_crit_edge1045:              ; preds = %if.then488
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body522

if.then488.do.body522_crit_edge:                  ; preds = %if.then488
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body522

do.end507:                                        ; preds = %if.then488
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 738, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %call480) #8
  br label %if.end540

do.body522:                                       ; preds = %if.then488.do.body522_crit_edge, %if.then488.do.body522_crit_edge1045
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_truncate_inode_items.__UNIQUE_ID_ddebug927, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_truncate_inode_items, %if.then534)) #8
          to label %if.end540 [label %if.then534], !srcloc !53

if.then534:                                       ; preds = %do.body522
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %fs_info484 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %fs_info484, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %131, ptr noundef nonnull @.str.7, i32 noundef %call480) #11
  br label %if.end540

if.end540:                                        ; preds = %if.then534, %do.body522, %do.end507, %do.body483.if.end540_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.5, i32 noundef 738, i32 noundef %call480) #11
  br label %if.end544

if.end544:                                        ; preds = %if.end540, %if.then479.if.end544_crit_edge, %out.if.end544_crit_edge, %if.then458.if.end544_crit_edge, %if.then35.if.end544_crit_edge, %if.end29.if.end544_crit_edge, %land.lhs.true26.if.end544_crit_edge
  %ret.9 = phi i32 [ %ret.7, %out.if.end544_crit_edge ], [ %call480, %if.end540 ], [ %ret.7, %if.then479.if.end544_crit_edge ], [ 0, %if.then35.if.end544_crit_edge ], [ %call30, %if.end29.if.end544_crit_edge ], [ -11, %land.lhs.true26.if.end544_crit_edge ], [ -11, %if.then458.if.end544_crit_edge ]
  %132 = ptrtoint ptr %last_size to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %last_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %133, i64 %5)
  %cmp546.not = icmp ult i64 %133, %5
  br i1 %cmp546.not, label %cond.false555, label %cond.end556, !prof !54

cond.false555:                                    ; preds = %if.end544
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call fastcc void @assertfail(ptr noundef nonnull @.str.9, i32 noundef 743) #12
  unreachable

cond.end556:                                      ; preds = %if.end544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.9)
  %tobool557.not = icmp eq i32 %ret.9, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %133, i64 %5)
  %cmp560 = icmp ugt i64 %133, %5
  %or.cond775 = select i1 %tobool557.not, i1 %cmp560, i1 false
  br i1 %or.cond775, label %if.then562, label %cond.end556.if.end564_crit_edge

cond.end556.if.end564_crit_edge:                  ; preds = %cond.end556
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end564

if.then562:                                       ; preds = %cond.end556
  call void @__sanitizer_cov_trace_pc() #10
  %134 = ptrtoint ptr %last_size to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %5, ptr %last_size, align 8
  br label %if.end564

if.end564:                                        ; preds = %if.then562, %cond.end556.if.end564_crit_edge
  call void @btrfs_free_path(ptr noundef nonnull %call20) #8
  br label %cleanup565

cleanup565:                                       ; preds = %if.end564, %cond.end18.cleanup565_crit_edge
  %retval.0 = phi i32 [ %ret.9, %if.end564 ], [ -12, %cond.end18.cleanup565_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #8
  ret i32 %retval.0
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #3 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %expr, ptr noundef nonnull @.str.1, i32 noundef %line) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #8, !srcloc !55
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btrfs_should_end_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_inode_clear_file_extent_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_abort_transaction(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_free_extent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_should_throttle_delayed_refs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_del_items(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_delayed_refs_rsv_refill(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @btrfs_get_16(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_handle_fs_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_empty_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_16(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_64(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @btrfs_get_8(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_truncate_show_fi_inline(ptr noundef %bi, ptr noundef %l, ptr noundef %fi, i32 noundef %slot, i64 noundef %start) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_truncate_show_fi_inline, i32 0, i32 1), ptr blockaddress(@trace_btrfs_truncate_show_fi_inline, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !53

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !56
  %call42 = tail call i32 @__traceiter_btrfs_truncate_show_fi_inline(ptr noundef null, ptr noundef %bi, ptr noundef %l, ptr noundef %fi, i32 noundef %slot, i64 noundef %start) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  %13 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_truncate_show_fi_inline, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_truncate_show_fi_inline, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_truncate_show_fi_inline.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_btrfs_truncate_show_fi_inline.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 499, ptr noundef nonnull @.str.14) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
  %31 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
define internal fastcc void @trace_btrfs_truncate_show_fi_regular(ptr noundef %bi, ptr noundef %l, ptr noundef %fi, i64 noundef %start) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_truncate_show_fi_regular, i32 0, i32 1), ptr blockaddress(@trace_btrfs_truncate_show_fi_regular, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !53

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !52

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !60
  %call42 = tail call i32 @__traceiter_btrfs_truncate_show_fi_regular(ptr noundef null, ptr noundef %bi, ptr noundef %l, ptr noundef %fi, i64 noundef %start) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  %13 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !52

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !41) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_truncate_show_fi_regular, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_truncate_show_fi_regular, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_truncate_show_fi_regular.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_btrfs_truncate_show_fi_regular.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 481, ptr noundef nonnull @.str.14) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
  %31 = tail call i32 @llvm.read_register.i32(metadata !41) #8
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
declare dso_local i32 @__traceiter_btrfs_truncate_show_fi_inline(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_truncate_show_fi_regular(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { cold noreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !40}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/inode-item.c", i32 477, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/btrfs/inode-item.c", i32 478, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/btrfs/inode-item.c", i32 644, i32 5}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @btrfs_truncate_inode_items.__UNIQUE_ID_ddebug924, !6, !"__UNIQUE_ID_ddebug924", i1 false, i1 false}
!11 = !{ptr @.str.7, !6, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/inode-item.c", i32 650, i32 4}
!14 = !{ptr @btrfs_truncate_inode_items.__UNIQUE_ID_ddebug925, !15, !"__UNIQUE_ID_ddebug925", i1 false, i1 false}
!15 = !{!"../fs/btrfs/inode-item.c", i32 681, i32 5}
!16 = !{ptr @btrfs_truncate_inode_items.__UNIQUE_ID_ddebug926, !17, !"__UNIQUE_ID_ddebug926", i1 false, i1 false}
!17 = !{!"../fs/btrfs/inode-item.c", i32 701, i32 6}
!18 = !{ptr @btrfs_truncate_inode_items.__UNIQUE_ID_ddebug927, !19, !"__UNIQUE_ID_ddebug927", i1 false, i1 false}
!19 = !{!"../fs/btrfs/inode-item.c", i32 738, i32 4}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/btrfs/inode-item.c", i32 743, i32 2}
!22 = !{ptr @__func__.btrfs_del_inode_extref, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/btrfs/inode-item.c", i32 137, i32 3}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @assertfail._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @assertfail._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/trace/events/btrfs.h", i32 492, i32 1}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!34 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/trace/events/btrfs.h", i32 474, i32 1}
!40 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!41 = !{!"sp"}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i8 0, i8 2}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2148417646, i64 2148417651, i64 2148417664, i64 2148417708, i64 2148417742, i64 2148417763}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 2158194457, i64 2158194939, i64 2158194494, i64 2158194550, i64 2158194584, i64 2158194608, i64 2158194649, i64 2158194670, i64 2158194698, i64 2158194732}
!56 = !{i64 2155026764}
!57 = !{i64 2155027029}
!58 = !{i64 2150160861}
!59 = !{i64 2150161897}
!60 = !{i64 2154983977}
!61 = !{i64 2154984232}
