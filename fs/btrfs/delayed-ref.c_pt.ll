; ModuleID = '/llk/IR_all_yes/fs/btrfs/delayed-ref.c_pt.bc'
source_filename = "../fs/btrfs/delayed-ref.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%union.anon.57 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.80, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
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
%union.anon.80 = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.btrfs_transaction = type { i64, %struct.atomic_t, %struct.atomic_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.extent_io_tree, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.btrfs_delayed_ref_root, ptr, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.list_head }
%struct.btrfs_delayed_ref_root = type { %struct.rb_root_cached, %struct.rb_root, %struct.spinlock, %struct.atomic_t, i32, i32, i64, i32, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.btrfs_space_info = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i32, i8, i32, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, %struct.rw_semaphore, [9 x %struct.list_head], %struct.kobject, [9 x ptr] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.btrfs_delayed_ref_head = type { i64, i64, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.rb_root_cached, %struct.list_head, %struct.rb_node, ptr, i32, i32, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_delayed_ref_node = type { %struct.rb_node, %struct.list_head, i64, i64, i64, %struct.refcount_struct, i32, i24 }
%struct.btrfs_ref = type { i32, i32, i8, i64, i64, i64, i64, %union.anon.84 }
%union.anon.84 = type { %struct.btrfs_data_ref }
%struct.btrfs_data_ref = type { i64, i64, i64 }
%struct.btrfs_delayed_extent_op = type { %struct.btrfs_disk_key, i8, i8, i8, i8, i64 }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_delayed_tree_ref = type { %struct.btrfs_delayed_ref_node, i64, i64, i32 }
%struct.btrfs_qgroup_extent_record = type { %struct.rb_node, i64, i64, i32, i64, ptr }
%struct.btrfs_delayed_data_ref = type { %struct.btrfs_delayed_ref_node, i64, i64, i64, i64 }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"delayed_refs_rsv\00", [47 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/btrfs/delayed-ref.c\00", [41 x i8] zeroinitializer }, align 32
@btrfs_check_delayed_seq.__UNIQUE_ID_ddebug927 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.1, ptr @.str.4, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"btrfs_check_delayed_seq\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"holding back delayed_ref %llu, lowest is %llu\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017holding back delayed_ref %llu, lowest is %llu\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"generic_ref->type == BTRFS_REF_METADATA && generic_ref->action\00", [33 x i8] zeroinitializer }, align 32
@btrfs_delayed_tree_ref_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@btrfs_delayed_ref_head_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"generic_ref->type == BTRFS_REF_DATA && action\00", [50 x i8] zeroinitializer }, align 32
@btrfs_delayed_data_ref_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@btrfs_delayed_extent_op_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"btrfs_delayed_ref_head\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"btrfs_delayed_tree_ref\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"btrfs_delayed_data_ref\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"btrfs_delayed_extent_op\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_space_reservation = external dso_local global %struct.tracepoint, align 4
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/btrfs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_btrfs_space_reservation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/btrfs/space-info.h\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"space_info\00", [21 x i8] zeroinitializer }, align 32
@__tracepoint_update_bytes_may_use = external dso_local global %struct.tracepoint, align 4
@trace_update_bytes_may_use.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/btrfs/delayed-ref.h\00", [41 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_delayed_ref_head.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&head_ref->lock\00", [16 x i8] zeroinitializer }, align 32
@init_delayed_ref_head.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&head_ref->mutex\00", [47 x i8] zeroinitializer }, align 32
@__tracepoint_add_delayed_ref_head = external dso_local global %struct.tracepoint, align 4
@trace_add_delayed_ref_head.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"!list_empty(&exist->add_list)\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@__tracepoint_add_delayed_tree_ref = external dso_local global %struct.tracepoint, align 4
@trace_add_delayed_tree_ref.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_add_delayed_data_ref = external dso_local global %struct.tracepoint, align 4
@trace_add_delayed_data_ref.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 176, i64 182]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 176, i64 182]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 8, i64 176, i64 178, i64 182, i64 184]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 100, i32 42 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 421, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 537, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 932, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [30 x i8] c"btrfs_delayed_tree_ref_cachep\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 17, i32 20 }
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"btrfs_delayed_ref_head_cachep\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 16, i32 20 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1025, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [30 x i8] c"btrfs_delayed_data_ref_cachep\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 18, i32 20 }
@___asan_gen_.62 = private unnamed_addr constant [31 x i8] c"btrfs_delayed_extent_op_cachep\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 19, i32 20 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1149, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1156, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1163, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 1170, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant [32 x i8] c"../include/trace/events/btrfs.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1052, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 108, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [25 x i8] c"../fs/btrfs/space-info.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 110, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant [26 x i8] c"../fs/btrfs/delayed-ref.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 318, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 3491, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 785, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 786, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 631, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private constant [26 x i8] c"../fs/btrfs/delayed-ref.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 634, i32 5 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @btrfs_delayed_tree_ref_cachep, ptr @btrfs_delayed_ref_head_cachep, ptr @.str.7, ptr @btrfs_delayed_data_ref_cachep, ptr @btrfs_delayed_extent_op_cachep, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @init_delayed_ref_head.__key, ptr @.str.21, ptr @init_delayed_ref_head.__key.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_delayed_tree_ref_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_delayed_ref_head_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_delayed_data_ref_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_delayed_extent_op_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_delayed_ref_head.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_delayed_ref_head.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btrfs_check_space_for_delayed_refs(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %delayed_refs_rsv1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24
  %lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %reserved2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 1
  %0 = ptrtoint ptr %reserved2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %reserved2, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  %lock4 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock4) #13
  %reserved5 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24, i32 1
  %2 = ptrtoint ptr %reserved5 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %reserved5, align 8
  %add = add i64 %3, %1
  %4 = ptrtoint ptr %delayed_refs_rsv1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %delayed_refs_rsv1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %add)
  %cmp.not = icmp uge i64 %5, %add
  tail call void @_raw_spin_unlock(ptr noundef %lock4) #13
  ret i1 %cmp.not
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_should_throttle_delayed_refs(ptr nocapture noundef readonly %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %0 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transaction, align 4
  %num_entries1 = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 23, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_entries1, i32 noundef 4) #13
  %2 = ptrtoint ptr %num_entries1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %num_entries1, align 4
  %conv = sext i32 %3 to i64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !81
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %4 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info, align 4
  %avg_delayed_ref_runtime = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %avg_delayed_ref_runtime to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %avg_delayed_ref_runtime, align 8
  %mul = mul i64 %7, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %mul)
  %cmp = icmp ugt i64 %mul, 999999999
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 499999999, i64 %mul)
  %cmp6 = icmp ugt i64 %mul, 499999999
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %delayed_refs_rsv1.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 24
  %lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 20, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #13
  %reserved2.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %reserved2.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %reserved2.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  %lock4.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 24, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock4.i) #13
  %reserved5.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %5, i32 0, i32 24, i32 1
  %10 = ptrtoint ptr %reserved5.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %reserved5.i, align 8
  %add.i = add i64 %11, %9
  %12 = ptrtoint ptr %delayed_refs_rsv1.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %delayed_refs_rsv1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %add.i)
  %cmp.not.i = icmp uge i64 %13, %add.i
  tail call void @_raw_spin_unlock(ptr noundef %lock4.i) #13
  %conv12 = zext i1 %cmp.not.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv12, %if.end9 ], [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_delayed_refs_rsv_release(ptr noundef %fs_info, i32 noundef %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %delayed_refs_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 166
  %0 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nodesize.i, align 8
  %conv.i = zext i32 %1 to i64
  %conv2.i = zext i32 %nr to i64
  %mul1.i = shl nuw nsw i64 %conv2.i, 4
  %mul3.i = mul i64 %mul1.i, %conv.i
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 31
  %2 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mount_opt, align 8
  %and = lshr i32 %3, 25
  %and.lobit = and i32 %and, 1
  %4 = zext i32 %and.lobit to i64
  %spec.select = shl i64 %mul3.i, %4
  %call1 = tail call i64 @btrfs_block_rsv_release(ptr noundef %fs_info, ptr noundef %delayed_refs_rsv, i64 noundef %spec.select, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1)
  %tobool2.not = icmp eq i64 %call1, 0
  br i1 %tobool2.not, label %entry.if.end4_crit_edge, label %if.then3

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef %call1, i32 noundef 0)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_block_rsv_release(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, ptr noundef %type, i64 noundef %val, i64 noundef %bytes, i32 noundef %reserve) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 1), ptr blockaddress(@trace_btrfs_space_reservation, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !83

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !84
  %call42 = tail call i32 @__traceiter_btrfs_space_reservation(ptr noundef null, ptr noundef %fs_info, ptr noundef %type, i64 noundef %val, i64 noundef %bytes, i32 noundef %reserve) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !85
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !83

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_btrfs_space_reservation.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_btrfs_space_reservation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 1076, ptr noundef nonnull @.str.13) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !87
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
define dso_local void @btrfs_update_delayed_refs_rsv(ptr nocapture noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %delayed_ref_updates = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 3
  %0 = ptrtoint ptr %delayed_ref_updates to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delayed_ref_updates, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %2 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info1, align 4
  %delayed_refs_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 24
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 166
  %4 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nodesize.i, align 8
  %conv.i = zext i32 %5 to i64
  %conv2.i = zext i32 %1 to i64
  %mul1.i = shl nuw nsw i64 %conv2.i, 4
  %mul3.i = mul i64 %mul1.i, %conv.i
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mount_opt, align 8
  %and = lshr i32 %7, 25
  %and.lobit = and i32 %and, 1
  %8 = zext i32 %and.lobit to i64
  %spec.select = shl i64 %mul3.i, %8
  %lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 24, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %9 = ptrtoint ptr %delayed_refs_rsv to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %delayed_refs_rsv, align 8
  %add = add i64 %spec.select, %10
  store i64 %add, ptr %delayed_refs_rsv, align 8
  %full = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 24, i32 4
  %11 = ptrtoint ptr %full to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %full, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  %12 = ptrtoint ptr %delayed_ref_updates to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %delayed_ref_updates, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_migrate_to_delayed_refs_rsv(ptr noundef %fs_info, ptr noundef %src, i64 noundef %num_bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %delayed_refs_rsv1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24
  %lock = getelementptr inbounds %struct.btrfs_block_rsv, ptr %src, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %reserved = getelementptr inbounds %struct.btrfs_block_rsv, ptr %src, i32 0, i32 1
  %0 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %reserved, align 8
  %sub = sub i64 %1, %num_bytes
  store i64 %sub, ptr %reserved, align 8
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %src, align 8
  %sub2 = sub i64 %3, %num_bytes
  store i64 %sub2, ptr %src, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  %lock4 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock4) #13
  %4 = ptrtoint ptr %delayed_refs_rsv1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %delayed_refs_rsv1, align 8
  %reserved6 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24, i32 1
  %6 = ptrtoint ptr %reserved6 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %reserved6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp = icmp ugt i64 %5, %7
  br i1 %cmp, label %if.end13, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.end13:                                         ; preds = %entry
  %sub9 = sub i64 %5, %7
  %8 = tail call i64 @llvm.umin.i64(i64 %sub9, i64 %num_bytes)
  %9 = tail call i64 @llvm.usub.sat.i64(i64 %num_bytes, i64 %sub9)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %if.end13.if.end16_crit_edge, label %if.then14

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %add = add i64 %8, %7
  %10 = ptrtoint ptr %reserved6 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add, ptr %reserved6, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end13.if.end16_crit_edge, %entry.if.end16_crit_edge
  %tobool.not62 = phi i1 [ false, %if.then14 ], [ true, %if.end13.if.end16_crit_edge ], [ true, %entry.if.end16_crit_edge ]
  %to_free.161 = phi i64 [ %9, %if.then14 ], [ %9, %if.end13.if.end16_crit_edge ], [ %num_bytes, %entry.if.end16_crit_edge ]
  %num_bytes.addr.160 = phi i64 [ %8, %if.then14 ], [ 0, %if.end13.if.end16_crit_edge ], [ 0, %entry.if.end16_crit_edge ]
  %11 = ptrtoint ptr %reserved6 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %reserved6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %5)
  %cmp19.not = icmp ult i64 %12, %5
  br i1 %cmp19.not, label %if.end16.if.end21_crit_edge, label %if.then20

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %full = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24, i32 4
  %13 = ptrtoint ptr %full to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %full, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16.if.end21_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock4) #13
  br i1 %tobool.not62, label %if.end21.if.end25_crit_edge, label %if.then24

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef %num_bytes.addr.160, i32 noundef 1)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %to_free.161)
  %tobool26.not = icmp eq i64 %to_free.161, 0
  br i1 %tobool26.not, label %if.end25.if.end28_crit_edge, label %if.then27

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then27:                                        ; preds = %if.end25
  %space_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24, i32 2
  %14 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %space_info, align 8
  tail call void @_raw_spin_lock(ptr noundef %15) #13
  %sub.i = sub i64 0, %to_free.161
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp.i.i = icmp slt i64 %sub.i, 0
  %cond.i.i = select i1 %cmp.i.i, i64 %to_free.161, i64 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %16 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %if.then27.if.end.i.i_crit_edge, label %land.rhs.i.i

if.then27.if.end.i.i_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.then27
  %dep_map.i.i = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 1
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp1.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp1.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !88

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 110, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.then27.if.end.i.i_crit_edge
  %bytes_may_use.i.i = getelementptr inbounds %struct.btrfs_space_info, ptr %15, i32 0, i32 5
  %17 = ptrtoint ptr %bytes_may_use.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %bytes_may_use.i.i, align 8
  tail call fastcc void @trace_update_bytes_may_use(ptr noundef %fs_info, ptr noundef %15, i64 noundef %18, i64 noundef %sub.i) #13
  %flags.i.i = getelementptr inbounds %struct.btrfs_space_info, ptr %15, i32 0, i32 14
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %flags.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp25.i.i = icmp sgt i64 %sub.i, 0
  %conv.i.i = zext i1 %cmp25.i.i to i32
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, ptr noundef nonnull @.str.16, i64 noundef %20, i64 noundef %cond.i.i, i32 noundef %conv.i.i) #13
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.end60.i.i_crit_edge

if.end.i.i.if.end60.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %21 = ptrtoint ptr %bytes_may_use.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bytes_may_use.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %to_free.161)
  %cmp30.i.i = icmp ult i64 %22, %to_free.161
  br i1 %cmp30.i.i, label %do.end45.i.i, label %land.lhs.true.i.i.if.end60.i.i_crit_edge

land.lhs.true.i.i.if.end60.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60.i.i

do.end45.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 110, i32 noundef 9, ptr noundef null) #13
  br label %btrfs_space_info_free_bytes_may_use.exit

if.end60.i.i:                                     ; preds = %land.lhs.true.i.i.if.end60.i.i_crit_edge, %if.end.i.i.if.end60.i.i_crit_edge
  %23 = ptrtoint ptr %bytes_may_use.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %bytes_may_use.i.i, align 8
  %add.i.i = sub i64 %24, %to_free.161
  br label %btrfs_space_info_free_bytes_may_use.exit

btrfs_space_info_free_bytes_may_use.exit:         ; preds = %if.end60.i.i, %do.end45.i.i
  %storemerge.i.i = phi i64 [ %add.i.i, %if.end60.i.i ], [ 0, %do.end45.i.i ]
  %25 = ptrtoint ptr %bytes_may_use.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %storemerge.i.i, ptr %bytes_may_use.i.i, align 8
  tail call void @btrfs_try_granting_tickets(ptr noundef %fs_info, ptr noundef %15) #13
  tail call void @_raw_spin_unlock(ptr noundef %15) #13
  br label %if.end28

if.end28:                                         ; preds = %btrfs_space_info_free_bytes_may_use.exit, %if.end25.if.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_delayed_refs_rsv_refill(ptr noundef %fs_info, i32 noundef %flush) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %delayed_refs_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 166
  %0 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nodesize.i, align 8
  %conv.i = zext i32 %1 to i64
  %mul3.i = shl nuw nsw i64 %conv.i, 4
  %lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %reserved = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24, i32 1
  %2 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %reserved, align 8
  %4 = ptrtoint ptr %delayed_refs_rsv to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %delayed_refs_rsv, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %3)
  %cmp = icmp ule i64 %5, %3
  %sub = sub i64 %5, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %sub, i64 %mul3.i)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not32 = icmp eq i64 %6, 0
  %tobool.not = select i1 %cmp, i1 true, i1 %tobool.not32
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = tail call i32 @btrfs_reserve_metadata_bytes(ptr noundef %fs_info, ptr noundef %delayed_refs_rsv, i64 noundef %6, i32 noundef %flush) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @btrfs_block_rsv_add_bytes(ptr noundef %delayed_refs_rsv, i64 noundef %6, i1 noundef zeroext false) #13
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef %6, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_reserve_metadata_bytes(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_block_rsv_add_bytes(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_delayed_ref_lock(ptr noundef %delayed_refs, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.btrfs_delayed_ref_root, ptr %delayed_refs, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !88

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 421, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head, i32 0, i32 3
  %call24 = tail call i32 @mutex_trylock(ptr noundef %mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end27:                                         ; preds = %if.end
  %refs = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #13
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #13, !srcloc !89
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end27.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !88

if.end27.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end27
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !83

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end27.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end27.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #13
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %lock28 = getelementptr inbounds %struct.btrfs_delayed_ref_root, ptr %delayed_refs, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock28) #13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  tail call void @_raw_spin_lock(ptr noundef %lock28) #13
  %href_node = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head, i32 0, i32 7
  %3 = ptrtoint ptr %href_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %href_node, align 4
  %5 = ptrtoint ptr %href_node to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp32 = icmp eq i32 %4, %5
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %refcount_inc.exit
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #13, !srcloc !91
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !83

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #13
  br label %return

if.then.i:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !92
  %7 = load ptr, ptr @btrfs_delayed_ref_head_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef %head) #13
  br label %return

if.end35:                                         ; preds = %refcount_inc.exit
  %call.i.i.i.i.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #13, !srcloc !91
  %asmresult.i.i.i.i.i.i.i48 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i48)
  %cmp.i.i.i.i49 = icmp eq i32 %asmresult.i.i.i.i.i.i.i48, 1
  br i1 %cmp.i.i.i.i49, label %if.then.i53, label %if.end5.i.i.i.i51

if.end5.i.i.i.i51:                                ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i48)
  %.not.i.i.i.i50 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i48, 0
  br i1 %.not.i.i.i.i50, label %if.end5.i.i.i.i51.return_crit_edge, label %if.then10.i.i.i.i52, !prof !83

if.end5.i.i.i.i51.return_crit_edge:               ; preds = %if.end5.i.i.i.i51
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then10.i.i.i.i52:                              ; preds = %if.end5.i.i.i.i51
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #13
  br label %return

if.then.i53:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !92
  %9 = load ptr, ptr @btrfs_delayed_ref_head_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %9, ptr noundef %head) #13
  br label %return

return:                                           ; preds = %if.then.i53, %if.then10.i.i.i.i52, %if.end5.i.i.i.i51.return_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.return_crit_edge ], [ -11, %if.end5.i.i.i.i.return_crit_edge ], [ -11, %if.then10.i.i.i.i ], [ -11, %if.then.i ], [ 0, %if.end5.i.i.i.i51.return_crit_edge ], [ 0, %if.then10.i.i.i.i52 ], [ 0, %if.then.i53 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_merge_delayed_refs(ptr nocapture noundef readonly %trans, ptr noundef %delayed_refs, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !88

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 510, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ref_tree = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head, i32 0, i32 5
  %3 = ptrtoint ptr %ref_tree to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ref_tree, align 4
  %cmp29 = icmp eq ptr %4, null
  br i1 %cmp29, label %if.end.cleanup_crit_edge, label %if.end31

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %is_data = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head, i32 0, i32 11
  %5 = ptrtoint ptr %is_data to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %is_data, align 4
  %6 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool32.not = icmp eq i8 %6, 0
  br i1 %tobool32.not, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  %call35 = tail call i64 @btrfs_tree_mod_log_lowest_seq(ptr noundef %1) #13
  %rb_leftmost = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rb_leftmost, align 4
  %tobool37.not6669 = icmp eq ptr %8, null
  br i1 %tobool37.not6669, label %if.end34.cleanup_crit_edge, label %for.body.lr.ph.lr.ph

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.lr.ph:                             ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call35)
  %tobool39.not = icmp eq i64 %call35, 0
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.lr.ph.lr.ph
  %node.067 = phi ptr [ %8, %for.body.lr.ph.lr.ph ], [ %node.067.be, %for.body.backedge ]
  br i1 %tobool39.not, label %for.body.if.end43_crit_edge, label %land.lhs.true

for.body.if.end43_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

land.lhs.true:                                    ; preds = %for.body
  %seq40 = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %node.067, i32 0, i32 4
  %9 = ptrtoint ptr %seq40 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %seq40, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %call35)
  %cmp41.not = icmp ult i64 %10, %call35
  br i1 %cmp41.not, label %land.lhs.true.if.end43_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true.if.end43_crit_edge, %for.body.if.end43_crit_edge
  %call.i62 = tail call ptr @rb_next(ptr noundef nonnull %node.067) #13
  %tobool1.not15.i = icmp eq ptr %call.i62, null
  br i1 %tobool1.not15.i, label %if.end43.for.inc_crit_edge, label %if.end43.while.body.i_crit_edge

if.end43.while.body.i_crit_edge:                  ; preds = %if.end43
  br label %while.body.i

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end43.while.body.i_crit_edge
  %ref.addr.019.i = phi ptr [ %ref.addr.2.i, %cleanup.i.while.body.i_crit_edge ], [ %node.067, %if.end43.while.body.i_crit_edge ]
  %node.018.i = phi ptr [ %call2.i, %cleanup.i.while.body.i_crit_edge ], [ %call.i62, %if.end43.while.body.i_crit_edge ]
  %call2.i = tail call ptr @rb_next(ptr noundef nonnull %node.018.i) #13
  br i1 %tobool39.not, label %while.body.i.if.end.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %seq4.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %node.018.i, i32 0, i32 4
  %11 = ptrtoint ptr %seq4.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %seq4.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %call35)
  %cmp.not.i = icmp ult i64 %12, %call35
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %call5.i = tail call fastcc i32 @comp_refs(ptr noundef %ref.addr.019.i, ptr noundef nonnull %node.018.i, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end8.i:                                        ; preds = %if.end.i
  %action.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref.addr.019.i, i32 0, i32 7
  %13 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i = load i32, ptr %action.i, align 8
  %action9.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %node.018.i, i32 0, i32 7
  %14 = ptrtoint ptr %action9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load10.i = load i32, ptr %action9.i, align 8
  %cmp12.unshifted.i = xor i32 %bf.load10.i, %bf.load.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %cmp12.unshifted.i)
  %cmp12.i = icmp ult i32 %cmp12.unshifted.i, 16777216
  br i1 %cmp12.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %ref_mod.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %node.018.i, i32 0, i32 6
  %15 = ptrtoint ptr %ref_mod.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ref_mod.i, align 4
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %ref_mod14.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref.addr.019.i, i32 0, i32 6
  %17 = ptrtoint ptr %ref_mod14.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ref_mod14.i, align 4
  %ref_mod15.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %node.018.i, i32 0, i32 6
  %19 = ptrtoint ptr %ref_mod15.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ref_mod15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp16.i = icmp slt i32 %18, %20
  %next.0.i = select i1 %cmp16.i, ptr %ref.addr.019.i, ptr %node.018.i
  %ref.addr.1.i = select i1 %cmp16.i, ptr %node.018.i, ptr %ref.addr.019.i
  %ref_mod19.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %next.0.i, i32 0, i32 6
  %21 = ptrtoint ptr %ref_mod19.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ref_mod19.i, align 4
  %sub.i = sub i32 0, %22
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then13.i
  %mod.0.i = phi i32 [ %16, %if.then13.i ], [ %sub.i, %if.else.i ]
  %done.2.off0.i = phi i1 [ false, %if.then13.i ], [ %cmp16.i, %if.else.i ]
  %next.1.i = phi ptr [ %node.018.i, %if.then13.i ], [ %next.0.i, %if.else.i ]
  %ref.addr.2.i = phi ptr [ %ref.addr.019.i, %if.then13.i ], [ %ref.addr.1.i, %if.else.i ]
  tail call fastcc void @drop_delayed_ref(ptr noundef %delayed_refs, ptr noundef %head, ptr noundef %next.1.i) #13
  %ref_mod21.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref.addr.2.i, i32 0, i32 6
  %23 = ptrtoint ptr %ref_mod21.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ref_mod21.i, align 4
  %add.i = add i32 %24, %mod.0.i
  store i32 %add.i, ptr %ref_mod21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp23.i = icmp eq i32 %add.i, 0
  br i1 %cmp23.i, label %cleanup.thread.i, label %if.else25.i

cleanup.thread.i:                                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @drop_delayed_ref(ptr noundef %delayed_refs, ptr noundef %head, ptr noundef %ref.addr.2.i) #13
  br label %again.backedge

again.backedge:                                   ; preds = %merge_ref.exit.again.backedge_crit_edge, %cleanup.thread.i
  %25 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rb_leftmost, align 4
  %tobool37.not66 = icmp eq ptr %26, null
  br i1 %tobool37.not66, label %again.backedge.cleanup_crit_edge, label %again.backedge.for.body.backedge_crit_edge

again.backedge.for.body.backedge_crit_edge:       ; preds = %again.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.backedge

again.backedge.cleanup_crit_edge:                 ; preds = %again.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else25.i:                                      ; preds = %if.end20.i
  %type.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref.addr.2.i, i32 0, i32 7
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load26.i = load i32, ptr %type.i, align 8
  %bf.lshr27.i = lshr i32 %bf.load26.i, 16
  %trunc.i = trunc i32 %bf.lshr27.i to i8
  %28 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %if.else25.i.cleanup.i_crit_edge [
    i8 -74, label %if.else25.i.do.end45.i_crit_edge
    i8 -80, label %if.else25.i.do.end45.i_crit_edge83
  ]

if.else25.i.do.end45.i_crit_edge83:               ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end45.i

if.else25.i.do.end45.i_crit_edge:                 ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end45.i

if.else25.i.cleanup.i_crit_edge:                  ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

do.end45.i:                                       ; preds = %if.else25.i.do.end45.i_crit_edge, %if.else25.i.do.end45.i_crit_edge83
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 494, i32 noundef 9, ptr noundef null) #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end45.i, %if.else25.i.cleanup.i_crit_edge
  %tobool1.not.i = icmp eq ptr %call2.i, null
  %or.cond.i = select i1 %done.2.off0.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %merge_ref.exit, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

merge_ref.exit:                                   ; preds = %cleanup.i
  br i1 %done.2.off0.i, label %merge_ref.exit.again.backedge_crit_edge, label %merge_ref.exit.for.inc_crit_edge

merge_ref.exit.for.inc_crit_edge:                 ; preds = %merge_ref.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

merge_ref.exit.again.backedge_crit_edge:          ; preds = %merge_ref.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %again.backedge

for.inc:                                          ; preds = %merge_ref.exit.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end43.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %call47 = tail call ptr @rb_next(ptr noundef nonnull %node.067) #13
  %tobool37.not = icmp eq ptr %call47, null
  br i1 %tobool37.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.backedge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %again.backedge.for.body.backedge_crit_edge
  %node.067.be = phi ptr [ %call47, %for.inc.for.body.backedge_crit_edge ], [ %26, %again.backedge.for.body.backedge_crit_edge ]
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %again.backedge.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_tree_mod_log_lowest_seq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_check_delayed_seq(ptr noundef %fs_info, i64 noundef %seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @btrfs_tree_mod_log_lowest_seq(ptr noundef %fs_info) #13
  %0 = add i64 %call, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %0, i64 %seq)
  %.not = icmp ult i64 %0, %seq
  br i1 %.not, label %do.body, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_check_delayed_seq.__UNIQUE_ID_ddebug927, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_check_delayed_seq, %if.then5)) #13
          to label %if.end6 [label %if.then5], !srcloc !82

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.5, i64 noundef %seq, i64 noundef %call) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body, %entry.if.end6_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end6_crit_edge ], [ 1, %if.then5 ], [ 1, %do.body ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_select_ref_head(ptr nocapture noundef %delayed_refs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %run_delayed_start = getelementptr inbounds %struct.btrfs_delayed_ref_root, ptr %delayed_refs, i32 0, i32 8
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %delayed_refs, i32 0, i32 1
  br label %again

again.loopexit:                                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %run_delayed_start to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %run_delayed_start, align 8
  br label %again

again:                                            ; preds = %again.loopexit, %entry
  %1 = ptrtoint ptr %run_delayed_start to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %run_delayed_start, align 8
  %3 = ptrtoint ptr %delayed_refs to i32
  call void @__asan_load4_noabort(i32 %3)
  %n.038.i = load ptr, ptr %delayed_refs, align 4
  %tobool.not39.i = icmp eq ptr %n.038.i, null
  br i1 %tobool.not39.i, label %again.land.lhs.true_crit_edge, label %again.while.body.i_crit_edge

again.while.body.i_crit_edge:                     ; preds = %again
  br label %while.body.i

again.land.lhs.true_crit_edge:                    ; preds = %again
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %again.while.body.i_crit_edge
  %n.040.i = phi ptr [ %n.0.i, %if.end7.i.while.body.i_crit_edge ], [ %n.038.i, %again.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %n.040.i, i32 -172
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %2)
  %cmp.i = icmp ugt i64 %5, %2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.040.i, i32 0, i32 2
  br label %if.end7.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %2)
  %cmp4.i = icmp ult i64 %5, %2
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i.find_ref_head.exit_crit_edge

if.else.i.find_ref_head.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_ref_head.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.040.i, i32 0, i32 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ]
  %6 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %while.end.i, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %if.end7.i
  %add.ptr.i.le = getelementptr i8, ptr %n.040.i, i32 -172
  %tobool8.not.i.not = icmp eq ptr %add.ptr.i.le, null
  br i1 %tobool8.not.i.not, label %while.end.i.land.lhs.truethread-pre-split_crit_edge, label %if.then10.i

while.end.i.land.lhs.truethread-pre-split_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.truethread-pre-split

if.then10.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %2)
  %cmp12.i = icmp ult i64 %5, %2
  br i1 %cmp12.i, label %if.then13.i, label %if.then10.i.while.cond.preheader_crit_edge

if.then10.i.while.cond.preheader_crit_edge:       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.preheader

if.then13.i:                                      ; preds = %if.then10.i
  %call.i = tail call ptr @rb_next(ptr noundef nonnull %n.040.i) #13
  %tobool14.not.i = icmp eq ptr %call.i, null
  br i1 %tobool14.not.i, label %if.then13.i.land.lhs.truethread-pre-split_crit_edge, label %if.then13.i.find_ref_head.exit_crit_edge

if.then13.i.find_ref_head.exit_crit_edge:         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_ref_head.exit

if.then13.i.land.lhs.truethread-pre-split_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.truethread-pre-split

find_ref_head.exit:                               ; preds = %if.then13.i.find_ref_head.exit_crit_edge, %if.else.i.find_ref_head.exit_crit_edge
  %call.i.pn = phi ptr [ %call.i, %if.then13.i.find_ref_head.exit_crit_edge ], [ %n.040.i, %if.else.i.find_ref_head.exit_crit_edge ]
  %retval.0.i = getelementptr i8, ptr %call.i.pn, i32 -172
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %find_ref_head.exit.land.lhs.truethread-pre-split_crit_edge, label %find_ref_head.exit.while.cond.preheader_crit_edge

find_ref_head.exit.while.cond.preheader_crit_edge: ; preds = %find_ref_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.preheader

find_ref_head.exit.land.lhs.truethread-pre-split_crit_edge: ; preds = %find_ref_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.truethread-pre-split

land.lhs.truethread-pre-split:                    ; preds = %find_ref_head.exit.land.lhs.truethread-pre-split_crit_edge, %if.then13.i.land.lhs.truethread-pre-split_crit_edge, %while.end.i.land.lhs.truethread-pre-split_crit_edge
  %7 = ptrtoint ptr %run_delayed_start to i32
  call void @__asan_load8_noabort(i32 %7)
  %.pr = load i64, ptr %run_delayed_start, align 8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.truethread-pre-split, %again.land.lhs.true_crit_edge
  %8 = phi i64 [ %.pr, %land.lhs.truethread-pre-split ], [ %2, %again.land.lhs.true_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp.not = icmp eq i64 %8, 0
  br i1 %cmp.not, label %land.lhs.true.cleanup45_crit_edge, label %if.then

land.lhs.true.cleanup45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup45

if.then:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %run_delayed_start to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %run_delayed_start, align 8
  %10 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not.i64 = icmp eq ptr %11, null
  %add.ptr.i65 = getelementptr i8, ptr %11, i32 -172
  %tobool4.not = icmp eq ptr %add.ptr.i65, null
  %or.cond = or i1 %tobool.not.i64, %tobool4.not
  br i1 %or.cond, label %if.then.cleanup45_crit_edge, label %if.then.while.cond.preheader_crit_edge

if.then.while.cond.preheader_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.preheader

if.then.cleanup45_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup45

while.cond.preheader:                             ; preds = %if.then.while.cond.preheader_crit_edge, %find_ref_head.exit.while.cond.preheader_crit_edge, %if.then10.i.while.cond.preheader_crit_edge
  %head.0102 = phi ptr [ %add.ptr.i.le, %if.then10.i.while.cond.preheader_crit_edge ], [ %retval.0.i, %find_ref_head.exit.while.cond.preheader_crit_edge ], [ %add.ptr.i65, %if.then.while.cond.preheader_crit_edge ]
  %processing116 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head.0102, i32 0, i32 11
  %12 = ptrtoint ptr %processing116 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load117 = load i8, ptr %processing116, align 4
  %13 = and i8 %bf.load117, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not118 = icmp eq i8 %13, 0
  br i1 %tobool7.not118, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond:                                       ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %call8, i32 -172
  %processing = getelementptr i8, ptr %call8, i32 24
  %14 = ptrtoint ptr %processing to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %processing, align 4
  %15 = and i8 %bf.load, 16
  %tobool7.not = icmp eq i8 %15, 0
  br i1 %tobool7.not, label %while.cond.while.end_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %head.1119 = phi ptr [ %add.ptr, %while.cond.while.body_crit_edge ], [ %head.0102, %while.cond.preheader.while.body_crit_edge ]
  %href_node = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head.1119, i32 0, i32 7
  %call8 = tail call ptr @rb_next(ptr noundef %href_node) #13
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %while.cond

if.then10:                                        ; preds = %while.body
  %16 = ptrtoint ptr %run_delayed_start to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %run_delayed_start, align 8
  %cmp12 = icmp eq i64 %17, 0
  br i1 %cmp12, label %if.then10.cleanup45_crit_edge, label %again.loopexit

if.then10.cleanup45_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup45

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %head.1.lcssa = phi ptr [ %add.ptr, %while.cond.while.end_crit_edge ], [ %head.0102, %while.cond.preheader.while.end_crit_edge ]
  %bf.load.lcssa = phi i8 [ %bf.load, %while.cond.while.end_crit_edge ], [ %bf.load117, %while.cond.preheader.while.end_crit_edge ]
  %processing.le = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head.1.lcssa, i32 0, i32 11
  %bf.set = or i8 %bf.load.lcssa, 16
  %18 = ptrtoint ptr %processing.le to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %bf.set, ptr %processing.le, align 4
  %num_heads_ready = getelementptr inbounds %struct.btrfs_delayed_ref_root, ptr %delayed_refs, i32 0, i32 5
  %19 = ptrtoint ptr %num_heads_ready to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_heads_ready, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp20 = icmp eq i32 %20, 0
  br i1 %cmp20, label %do.end, label %while.end.if.end35_crit_edge, !prof !88

while.end.if.end35_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 576, i32 noundef 9, ptr noundef null) #13
  br label %if.end35

if.end35:                                         ; preds = %do.end, %while.end.if.end35_crit_edge
  %21 = ptrtoint ptr %num_heads_ready to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_heads_ready, align 8
  %dec = add i32 %22, -1
  store i32 %dec, ptr %num_heads_ready, align 8
  %23 = ptrtoint ptr %head.1.lcssa to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %head.1.lcssa, align 8
  %num_bytes = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head.1.lcssa, i32 0, i32 1
  %25 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %num_bytes, align 8
  %add = add i64 %26, %24
  %27 = ptrtoint ptr %run_delayed_start to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %add, ptr %run_delayed_start, align 8
  br label %cleanup45

cleanup45:                                        ; preds = %if.end35, %if.then10.cleanup45_crit_edge, %if.then.cleanup45_crit_edge, %land.lhs.true.cleanup45_crit_edge
  %retval.3 = phi ptr [ %head.1.lcssa, %if.end35 ], [ null, %if.then10.cleanup45_crit_edge ], [ null, %land.lhs.true.cleanup45_crit_edge ], [ null, %if.then.cleanup45_crit_edge ]
  ret ptr %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_delete_ref_head(ptr noundef %delayed_refs, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end56_crit_edge, label %land.rhs

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.btrfs_delayed_ref_root, ptr %delayed_refs, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !88

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 586, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool26.not = icmp eq i32 %.pr, 0
  br i1 %tobool26.not, label %if.end.if.end56_crit_edge, label %land.rhs27

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

land.rhs27:                                       ; preds = %if.end
  %dep_map29 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i83 = tail call i32 @lock_is_held_type(ptr noundef %dep_map29, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %cmp31.not = icmp eq i32 %call.i83, 0
  br i1 %cmp31.not, label %do.end50, label %land.rhs27.if.end56_crit_edge, !prof !88

land.rhs27.if.end56_crit_edge:                    ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

do.end50:                                         ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 587, i32 noundef 9, ptr noundef null) #13
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %land.rhs27.if.end56_crit_edge, %if.end.if.end56_crit_edge, %entry.if.end56_crit_edge
  %href_node = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head, i32 0, i32 7
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, ptr %delayed_refs, i32 0, i32 1
  %1 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i = icmp eq ptr %2, %href_node
  br i1 %cmp.i, label %if.then.i, label %if.end56.rb_erase_cached.exit_crit_edge

if.end56.rb_erase_cached.exit_crit_edge:          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %rb_erase_cached.exit

if.then.i:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  %call.i84 = tail call ptr @rb_next(ptr noundef %href_node) #13
  %3 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i84, ptr %rb_leftmost.i, align 4
  br label %rb_erase_cached.exit

rb_erase_cached.exit:                             ; preds = %if.then.i, %if.end56.rb_erase_cached.exit_crit_edge
  tail call void @rb_erase(ptr noundef %href_node, ptr noundef %delayed_refs) #13
  %4 = ptrtoint ptr %href_node to i32
  %5 = ptrtoint ptr %href_node to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %href_node, align 4
  %num_entries = getelementptr inbounds %struct.btrfs_delayed_ref_root, ptr %delayed_refs, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_entries, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %num_entries, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_entries, ptr %num_entries, i32 1, ptr elementtype(i32) %num_entries) #13, !srcloc !93
  %num_heads = getelementptr inbounds %struct.btrfs_delayed_ref_root, ptr %delayed_refs, i32 0, i32 4
  %7 = ptrtoint ptr %num_heads to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_heads, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %num_heads, align 4
  %processing = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head, i32 0, i32 11
  %9 = ptrtoint ptr %processing to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %processing, align 4
  %10 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp69 = icmp eq i8 %10, 0
  br i1 %cmp69, label %if.then70, label %rb_erase_cached.exit.if.end72_crit_edge

rb_erase_cached.exit.if.end72_crit_edge:          ; preds = %rb_erase_cached.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.then70:                                        ; preds = %rb_erase_cached.exit
  call void @__sanitizer_cov_trace_pc() #15
  %num_heads_ready = getelementptr inbounds %struct.btrfs_delayed_ref_root, ptr %delayed_refs, i32 0, i32 5
  %11 = ptrtoint ptr %num_heads_ready to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_heads_ready, align 8
  %dec71 = add i32 %12, -1
  store i32 %dec71, ptr %num_heads_ready, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %rb_erase_cached.exit.if.end72_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_add_delayed_tree_ref(ptr noundef %trans, ptr nocapture noundef readonly %generic_ref, ptr noundef %extent_op) local_unnamed_addr #0 align 64 {
entry:
  %qrecord_inserted = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qrecord_inserted) #13
  %2 = ptrtoint ptr %qrecord_inserted to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %qrecord_inserted, align 4, !annotation !94
  %action2 = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 1
  %3 = ptrtoint ptr %action2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %action2, align 4
  %5 = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %bytenr4 = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 4
  %8 = ptrtoint ptr %bytenr4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bytenr4, align 8
  %len = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 5
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %len, align 8
  %parent5 = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 6
  %12 = ptrtoint ptr %parent5 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %parent5, align 8
  %owning_root = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 7, i32 0, i32 1
  %14 = ptrtoint ptr %owning_root to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %owning_root, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %15)
  %cmp = icmp eq i64 %15, 3
  %16 = ptrtoint ptr %generic_ref to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %generic_ref, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp6 = icmp eq i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %spec.select = select i1 %cmp6, i1 %tobool, i1 false, !prof !83
  br i1 %spec.select, label %do.body, label %cond.false, !prof !83

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.6, i32 noundef 932) #17
  unreachable

do.body:                                          ; preds = %entry
  %tobool10.not = icmp eq ptr %extent_op, null
  br i1 %tobool10.not, label %do.body.do.end25_crit_edge, label %land.rhs11

do.body.do.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end25

land.rhs11:                                       ; preds = %do.body
  %is_data = getelementptr inbounds %struct.btrfs_delayed_extent_op, ptr %extent_op, i32 0, i32 4
  %18 = ptrtoint ptr %is_data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_data, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool12.not = icmp eq i8 %19, 0
  br i1 %tobool12.not, label %land.rhs11.do.end25_crit_edge, label %do.body20, !prof !83

land.rhs11.do.end25_crit_edge:                    ; preds = %land.rhs11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end25

do.body20:                                        ; preds = %land.rhs11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/delayed-ref.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 933, 0\0A.popsection", ""() #13, !srcloc !96
  unreachable

do.end25:                                         ; preds = %land.rhs11.do.end25_crit_edge, %do.body.do.end25_crit_edge
  %20 = load ptr, ptr @btrfs_delayed_tree_ref_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %20, i32 noundef 3136) #13
  %tobool26.not = icmp eq ptr %call, null
  br i1 %tobool26.not, label %do.end25.cleanup_crit_edge, label %if.end28

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end28:                                         ; preds = %do.end25
  %21 = load ptr, ptr @btrfs_delayed_ref_head_cachep, align 4
  %call29 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %21, i32 noundef 3136) #13
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %22 = load ptr, ptr @btrfs_delayed_tree_ref_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %22, ptr noundef nonnull %call) #13
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags, align 4
  %25 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool34.not = icmp eq i32 %25, 0
  br i1 %tobool34.not, label %if.end32.if.end41_crit_edge, label %land.lhs.true

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end32
  %skip_qgroup = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 2
  %26 = ptrtoint ptr %skip_qgroup to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %skip_qgroup, align 8, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool35.not = icmp eq i8 %27, 0
  br i1 %tobool35.not, label %if.then36, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then36:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3392, i32 noundef 56) #18
  %tobool38.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool38.not, label %if.then39, label %if.then36.if.end41_crit_edge

if.then36.if.end41_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  %29 = load ptr, ptr @btrfs_delayed_tree_ref_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %29, ptr noundef nonnull %call) #13
  %30 = load ptr, ptr @btrfs_delayed_ref_head_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %30, ptr noundef nonnull %call29) #13
  br label %cleanup

if.end41:                                         ; preds = %if.then36.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end32.if.end41_crit_edge
  %record.0 = phi ptr [ null, %land.lhs.true.if.end41_crit_edge ], [ %call7.i.i, %if.then36.if.end41_crit_edge ], [ null, %if.end32.if.end41_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool42.not = icmp eq i64 %13, 0
  %31 = ptrtoint ptr %owning_root to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %owning_root, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %32)
  %cmp.i.i = icmp ne i64 %32, 5
  %33 = add i64 %32, -281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 -281474976710400, i64 %33)
  %34 = icmp ult i64 %33, -281474976710400
  %tobool.not.i = and i1 %cmp.i.i, %34
  br i1 %tobool.not.i, label %if.end41.init_delayed_ref_common.exit_crit_edge, label %if.then1.i

if.end41.init_delayed_ref_common.exit_crit_edge:  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_delayed_ref_common.exit

if.then1.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  %tree_mod_seq.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 66
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tree_mod_seq.i, i32 noundef 8) #13
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %tree_mod_seq.i) #13
  br label %init_delayed_ref_common.exit

init_delayed_ref_common.exit:                     ; preds = %if.then1.i, %if.end41.init_delayed_ref_common.exit_crit_edge
  %seq.0.i = phi i64 [ %call.i.i, %if.then1.i ], [ 0, %if.end41.init_delayed_ref_common.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.i = icmp eq i32 %4, 3
  %refs.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %call, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #13
  %35 = ptrtoint ptr %refs.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 1, ptr %refs.i, align 8
  %bytenr4.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %call, i32 0, i32 2
  %36 = ptrtoint ptr %bytenr4.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %9, ptr %bytenr4.i, align 8
  %num_bytes5.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %call, i32 0, i32 3
  %37 = ptrtoint ptr %num_bytes5.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %11, ptr %num_bytes5.i, align 8
  %ref_mod.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %call, i32 0, i32 6
  %38 = ptrtoint ptr %ref_mod.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %ref_mod.i, align 4
  %action6.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %call, i32 0, i32 7
  %39 = ptrtoint ptr %action6.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load.i = load i32, ptr %action6.i, align 8
  %action.op.i = shl i32 %4, 24
  %bf.clear.i = and i32 %bf.load.i, 16383
  %action.op.op.i = or i32 %action.op.i, 16384
  %bf.set.i = select i1 %cmp.i, i32 16793600, i32 %action.op.op.i
  %seq13.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %call, i32 0, i32 4
  %40 = ptrtoint ptr %seq13.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %seq.0.i, ptr %seq13.i, align 8
  %conv.i = select i1 %tobool42.not, i32 11534336, i32 11927552
  %bf.set12.i = or i32 %conv.i, %bf.set.i
  %bf.set18.i = or i32 %bf.set12.i, %bf.clear.i
  store i32 %bf.set18.i, ptr %action6.i, align 8
  %41 = ptrtoint ptr %call to i32
  %42 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %call, align 8
  %add_list.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %call, i32 0, i32 1
  %43 = ptrtoint ptr %add_list.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %add_list.i, ptr %add_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %call, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add_list.i, ptr %prev.i.i, align 8
  %45 = ptrtoint ptr %owning_root to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %owning_root, align 8
  %root = getelementptr inbounds %struct.btrfs_delayed_tree_ref, ptr %call, i32 0, i32 1
  %47 = ptrtoint ptr %root to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %root, align 8
  %parent47 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, ptr %call, i32 0, i32 2
  %48 = ptrtoint ptr %parent47 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %13, ptr %parent47, align 8
  %level48 = getelementptr inbounds %struct.btrfs_delayed_tree_ref, ptr %call, i32 0, i32 3
  %49 = ptrtoint ptr %level48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %7, ptr %level48, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch.selectcmp.i = icmp eq i32 %4, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %switch.selectcmp88.i = icmp eq i32 %4, 4
  %switch.select89.i = select i1 %switch.selectcmp88.i, i32 0, i32 %switch.select.i
  %..i = select i1 %cmp.i, i8 -128, i8 0
  %refs.i129 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call29, i32 0, i32 2
  %call.i.i.i.i130 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i129, i32 noundef 4) #13
  %50 = ptrtoint ptr %refs.i129 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 1, ptr %refs.i129, align 8
  %51 = ptrtoint ptr %call29 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %9, ptr %call29, align 8
  %num_bytes21.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call29, i32 0, i32 1
  %52 = ptrtoint ptr %num_bytes21.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %11, ptr %num_bytes21.i, align 8
  %ref_mod.i131 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call29, i32 0, i32 10
  %53 = ptrtoint ptr %ref_mod.i131 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %switch.select89.i, ptr %ref_mod.i131, align 8
  %must_insert_reserved22.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call29, i32 0, i32 11
  %54 = ptrtoint ptr %must_insert_reserved22.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i132 = load i8, ptr %must_insert_reserved22.i, align 4
  %bf.clear.i133 = and i8 %bf.load.i132, 15
  %bf.shl36.i = select i1 %cmp, i8 32, i8 0
  %bf.set29.i = or i8 %bf.shl36.i, %..i
  %bf.set38.i = or i8 %bf.set29.i, %bf.clear.i133
  %ref_tree.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call29, i32 0, i32 5
  %55 = ptrtoint ptr %ref_tree.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %ref_tree.i, align 4
  %.compoundliteral.sroa.2.0.ref_tree.sroa_idx.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call29, i32 0, i32 5, i32 1
  %56 = ptrtoint ptr %.compoundliteral.sroa.2.0.ref_tree.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %.compoundliteral.sroa.2.0.ref_tree.sroa_idx.i, align 8
  %ref_add_list.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call29, i32 0, i32 6
  %57 = ptrtoint ptr %ref_add_list.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %ref_add_list.i, ptr %ref_add_list.i, align 4
  %prev.i.i134 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call29, i32 0, i32 6, i32 1
  %58 = ptrtoint ptr %prev.i.i134 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %ref_add_list.i, ptr %prev.i.i134, align 8
  %href_node.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call29, i32 0, i32 7
  %59 = ptrtoint ptr %href_node.i to i32
  %60 = ptrtoint ptr %href_node.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %href_node.i, align 4
  store i8 %bf.set38.i, ptr %must_insert_reserved22.i, align 4
  %total_ref_mod.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call29, i32 0, i32 9
  %61 = ptrtoint ptr %total_ref_mod.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %switch.select89.i, ptr %total_ref_mod.i, align 4
  %lock.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call29, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_delayed_ref_head.__key, i16 noundef signext 3) #13
  %mutex.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call29, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_delayed_ref_head.__key.22) #13
  %tobool50.not.i = icmp eq ptr %record.0, null
  br i1 %tobool50.not.i, label %init_delayed_ref_common.exit.init_delayed_ref_head.exit_crit_edge, label %if.then51.i

init_delayed_ref_common.exit.init_delayed_ref_head.exit_crit_edge: ; preds = %init_delayed_ref_common.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_delayed_ref_head.exit

if.then51.i:                                      ; preds = %init_delayed_ref_common.exit
  call void @__sanitizer_cov_trace_pc() #15
  %bytenr57.i = getelementptr inbounds %struct.btrfs_qgroup_extent_record, ptr %record.0, i32 0, i32 1
  %62 = ptrtoint ptr %bytenr57.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %9, ptr %bytenr57.i, align 8
  %num_bytes58.i = getelementptr inbounds %struct.btrfs_qgroup_extent_record, ptr %record.0, i32 0, i32 2
  %63 = ptrtoint ptr %num_bytes58.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %11, ptr %num_bytes58.i, align 8
  %old_roots.i = getelementptr inbounds %struct.btrfs_qgroup_extent_record, ptr %record.0, i32 0, i32 5
  %64 = ptrtoint ptr %old_roots.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %old_roots.i, align 8
  br label %init_delayed_ref_head.exit

init_delayed_ref_head.exit:                       ; preds = %if.then51.i, %init_delayed_ref_common.exit.init_delayed_ref_head.exit_crit_edge
  %extent_op51 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call29, i32 0, i32 8
  %65 = ptrtoint ptr %extent_op51 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %extent_op, ptr %extent_op51, align 8
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %66 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %transaction, align 4
  %delayed_refs52 = getelementptr inbounds %struct.btrfs_transaction, ptr %67, i32 0, i32 23
  %lock = getelementptr inbounds %struct.btrfs_transaction, ptr %67, i32 0, i32 23, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %call53 = call fastcc ptr @add_delayed_ref_head(ptr noundef %trans, ptr noundef nonnull %call29, ptr noundef %record.0, i32 noundef %4, ptr noundef nonnull %qrecord_inserted)
  %call55 = call fastcc i32 @insert_delayed_ref(ptr noundef %delayed_refs52, ptr noundef %call53, ptr noundef nonnull %call)
  call void @_raw_spin_unlock(ptr noundef %lock) #13
  %delayed_ref_updates.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 3
  %68 = ptrtoint ptr %delayed_ref_updates.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %delayed_ref_updates.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i135 = icmp eq i32 %69, 0
  br i1 %tobool.not.i135, label %init_delayed_ref_head.exit.btrfs_update_delayed_refs_rsv.exit_crit_edge, label %if.end.i

init_delayed_ref_head.exit.btrfs_update_delayed_refs_rsv.exit_crit_edge: ; preds = %init_delayed_ref_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_update_delayed_refs_rsv.exit

if.end.i:                                         ; preds = %init_delayed_ref_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fs_info1, align 4
  %delayed_refs_rsv.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %71, i32 0, i32 24
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %71, i32 0, i32 166
  %72 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nodesize.i.i, align 8
  %conv.i.i = zext i32 %73 to i64
  %conv2.i.i = zext i32 %69 to i64
  %mul1.i.i = shl nuw nsw i64 %conv2.i.i, 4
  %mul3.i.i = mul i64 %mul1.i.i, %conv.i.i
  %mount_opt.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %71, i32 0, i32 31
  %74 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mount_opt.i, align 8
  %and.i = lshr i32 %75, 25
  %and.lobit.i = and i32 %and.i, 1
  %76 = zext i32 %and.lobit.i to i64
  %spec.select.i = shl i64 %mul3.i.i, %76
  %lock.i136 = getelementptr inbounds %struct.btrfs_fs_info, ptr %71, i32 0, i32 24, i32 3
  call void @_raw_spin_lock(ptr noundef %lock.i136) #13
  %77 = ptrtoint ptr %delayed_refs_rsv.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %delayed_refs_rsv.i, align 8
  %add.i = add i64 %spec.select.i, %78
  store i64 %add.i, ptr %delayed_refs_rsv.i, align 8
  %full.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %71, i32 0, i32 24, i32 4
  %79 = ptrtoint ptr %full.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %full.i, align 8
  call void @_raw_spin_unlock(ptr noundef %lock.i136) #13
  %80 = ptrtoint ptr %delayed_ref_updates.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %delayed_ref_updates.i, align 8
  br label %btrfs_update_delayed_refs_rsv.exit

btrfs_update_delayed_refs_rsv.exit:               ; preds = %if.end.i, %init_delayed_ref_head.exit.btrfs_update_delayed_refs_rsv.exit_crit_edge
  %cond = select i1 %cmp.i, i32 1, i32 %4
  call fastcc void @trace_add_delayed_tree_ref(ptr noundef %1, ptr noundef nonnull %call, ptr noundef nonnull %call, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp62 = icmp sgt i32 %call55, 0
  br i1 %cmp62, label %if.then63, label %btrfs_update_delayed_refs_rsv.exit.if.end64_crit_edge

btrfs_update_delayed_refs_rsv.exit.if.end64_crit_edge: ; preds = %btrfs_update_delayed_refs_rsv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then63:                                        ; preds = %btrfs_update_delayed_refs_rsv.exit
  call void @__sanitizer_cov_trace_pc() #15
  %81 = load ptr, ptr @btrfs_delayed_tree_ref_cachep, align 4
  call void @kmem_cache_free(ptr noundef %81, ptr noundef nonnull %call) #13
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %btrfs_update_delayed_refs_rsv.exit.if.end64_crit_edge
  %82 = ptrtoint ptr %qrecord_inserted to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %qrecord_inserted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool65.not = icmp eq i32 %83, 0
  br i1 %tobool65.not, label %if.end64.cleanup_crit_edge, label %if.then66

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  %call67 = call i32 @btrfs_qgroup_trace_extent_post(ptr noundef %trans, ptr noundef %record.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %if.end64.cleanup_crit_edge, %if.then39, %if.then31, %do.end25.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then39 ], [ -12, %if.then31 ], [ -12, %do.end25.cleanup_crit_edge ], [ 0, %if.then66 ], [ 0, %if.end64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qrecord_inserted) #13
  ret i32 %retval.0
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #5 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %expr, ptr noundef nonnull @.str.1, i32 noundef %line) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #13, !srcloc !97
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @add_delayed_ref_head(ptr nocapture noundef %trans, ptr noundef %head_ref, ptr noundef %qrecord, i32 noundef %action, ptr noundef writeonly %qrecord_inserted_ret) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %0 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transaction, align 4
  %delayed_refs1 = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 23
  %tobool.not = icmp eq ptr %qrecord, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then:                                          ; preds = %entry
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %2 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info, align 4
  %call = tail call i32 @btrfs_qgroup_trace_extent_nolock(ptr noundef %3, ptr noundef %delayed_refs1, ptr noundef nonnull %qrecord) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %qrecord) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %qrecord_inserted.0 = phi i32 [ 0, %if.then3 ], [ 0, %entry.if.end4_crit_edge ], [ 1, %if.then.if.end4_crit_edge ]
  %fs_info5 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %4 = ptrtoint ptr %fs_info5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs_info5, align 4
  tail call fastcc void @trace_add_delayed_ref_head(ptr noundef %5, ptr noundef %head_ref, i32 noundef %action)
  %href_node = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head_ref, i32 0, i32 7
  %6 = ptrtoint ptr %head_ref to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %head_ref, align 8
  %8 = ptrtoint ptr %delayed_refs1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %delayed_refs1, align 4
  %tobool.not35.i = icmp eq ptr %9, null
  br i1 %tobool.not35.i, label %if.then.i.critedge.i, label %if.end4.while.body.outer.i_crit_edge

if.end4.while.body.outer.i_crit_edge:             ; preds = %if.end4
  br label %while.body.outer.i

while.body.outer.i:                               ; preds = %if.end11.thread.i.while.body.outer.i_crit_edge, %if.end4.while.body.outer.i_crit_edge
  %.ph.i = phi ptr [ %16, %if.end11.thread.i.while.body.outer.i_crit_edge ], [ %9, %if.end4.while.body.outer.i_crit_edge ]
  %leftmost.0.off036.ph.i = phi i1 [ false, %if.end11.thread.i.while.body.outer.i_crit_edge ], [ true, %if.end4.while.body.outer.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end11.i.while.body.i_crit_edge, %while.body.outer.i
  %10 = phi ptr [ %14, %if.end11.i.while.body.i_crit_edge ], [ %.ph.i, %while.body.outer.i ]
  %add.ptr5.i = getelementptr i8, ptr %10, i32 -172
  %11 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr5.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %12)
  %cmp.i = icmp ult i64 %7, %12
  br i1 %cmp.i, label %if.end11.i, label %if.else.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %12)
  %cmp8.i = icmp ugt i64 %7, %12
  br i1 %cmp8.i, label %if.end11.thread.i, label %htree_insert.exit

if.end11.i:                                       ; preds = %while.body.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end11.i.while.body.i_crit_edge

if.end11.i.while.body.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end11.thread.i:                                ; preds = %if.else.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rb_right.i, align 4
  %tobool.not43.i = icmp eq ptr %16, null
  br i1 %tobool.not43.i, label %while.cond.while.end_crit_edge.thread.i, label %if.end11.thread.i.while.body.outer.i_crit_edge

if.end11.thread.i.while.body.outer.i_crit_edge:   ; preds = %if.end11.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.outer.i

while.cond.while.end_crit_edge.thread.i:          ; preds = %if.end11.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right.i.le = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1
  %phi.cast.le48.i = ptrtoint ptr %10 to i32
  %17 = ptrtoint ptr %href_node to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %phi.cast.le48.i, ptr %href_node, align 4
  %rb_right.i49.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head_ref, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %rb_right.i49.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rb_right.i49.i, align 4
  %rb_left.i50.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head_ref, i32 0, i32 7, i32 2
  %19 = ptrtoint ptr %rb_left.i50.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %rb_left.i50.i, align 4
  br label %rb_insert_color_cached.exit.sink.split.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end11.i
  %rb_left.i.le = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2
  %phi.cast.le.i = ptrtoint ptr %10 to i32
  %20 = ptrtoint ptr %href_node to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %phi.cast.le.i, ptr %href_node, align 4
  %rb_right.i.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head_ref, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head_ref, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %rb_left.i.i, align 4
  %23 = ptrtoint ptr %rb_left.i.le to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %href_node, ptr %rb_left.i.le, align 4
  br i1 %leftmost.0.off036.ph.i, label %while.cond.while.end_crit_edge.i.if.then.i.i_crit_edge, label %while.cond.while.end_crit_edge.i.htree_insert.exit.thread_crit_edge

while.cond.while.end_crit_edge.i.htree_insert.exit.thread_crit_edge: ; preds = %while.cond.while.end_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %htree_insert.exit.thread

while.cond.while.end_crit_edge.i.if.then.i.i_crit_edge: ; preds = %while.cond.while.end_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.then.i.critedge.i:                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %href_node to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %href_node, align 4
  %rb_right.i.c.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head_ref, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %rb_right.i.c.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rb_right.i.c.i, align 4
  %rb_left.i.c.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head_ref, i32 0, i32 7, i32 2
  %26 = ptrtoint ptr %rb_left.i.c.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rb_left.i.c.i, align 4
  %27 = ptrtoint ptr %delayed_refs1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %href_node, ptr %delayed_refs1, align 4
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i.critedge.i, %while.cond.while.end_crit_edge.i.if.then.i.i_crit_edge
  %rb_leftmost.i.i = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 23, i32 0, i32 1
  br label %rb_insert_color_cached.exit.sink.split.i

rb_insert_color_cached.exit.sink.split.i:         ; preds = %if.then.i.i, %while.cond.while.end_crit_edge.thread.i
  %rb_right.le.sink.i = phi ptr [ %rb_right.i.le, %while.cond.while.end_crit_edge.thread.i ], [ %rb_leftmost.i.i, %if.then.i.i ]
  %28 = ptrtoint ptr %rb_right.le.sink.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %href_node, ptr %rb_right.le.sink.i, align 4
  br label %htree_insert.exit.thread

htree_insert.exit.thread:                         ; preds = %rb_insert_color_cached.exit.sink.split.i, %while.cond.while.end_crit_edge.i.htree_insert.exit.thread_crit_edge
  tail call void @rb_insert_color(ptr noundef %href_node, ptr noundef %delayed_refs1) #13
  br label %if.else9

htree_insert.exit:                                ; preds = %if.else.i
  %add.ptr5.i.le.le = getelementptr i8, ptr %10, i32 -172
  %tobool7.not = icmp eq ptr %add.ptr5.i.le.le, null
  br i1 %tobool7.not, label %htree_insert.exit.if.else9_crit_edge, label %if.then8

htree_insert.exit.if.else9_crit_edge:             ; preds = %htree_insert.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else9

if.then8:                                         ; preds = %htree_insert.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @update_existing_head_ref(ptr noundef %trans, ptr noundef nonnull %add.ptr5.i.le.le, ptr noundef %head_ref)
  %29 = load ptr, ptr @btrfs_delayed_ref_head_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %29, ptr noundef %head_ref) #13
  br label %if.end21

if.else9:                                         ; preds = %htree_insert.exit.if.else9_crit_edge, %htree_insert.exit.thread
  %is_data = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head_ref, i32 0, i32 11
  %30 = ptrtoint ptr %is_data to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %is_data, align 4
  %31 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool10.not = icmp eq i8 %31, 0
  br i1 %tobool10.not, label %if.else9.if.end17_crit_edge, label %land.lhs.true

if.else9.if.end17_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

land.lhs.true:                                    ; preds = %if.else9
  %ref_mod = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head_ref, i32 0, i32 10
  %32 = ptrtoint ptr %ref_mod to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ref_mod, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp = icmp slt i32 %33, 0
  br i1 %cmp, label %if.then11, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then11:                                        ; preds = %land.lhs.true
  %num_bytes = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head_ref, i32 0, i32 1
  %34 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %num_bytes, align 8
  %pending_csums = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 23, i32 6
  %36 = ptrtoint ptr %pending_csums to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %pending_csums, align 8
  %add = add i64 %37, %35
  store i64 %add, ptr %pending_csums, align 8
  %38 = ptrtoint ptr %fs_info5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fs_info5, align 4
  %40 = load i64, ptr %num_bytes, align 8
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %39, i32 0, i32 168
  %41 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sectorsize_bits.i, align 8
  %sh_prom.i = zext i32 %42 to i64
  %shr.i = lshr i64 %40, %sh_prom.i
  %csums_per_leaf.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %39, i32 0, i32 170
  %43 = ptrtoint ptr %csums_per_leaf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %csums_per_leaf.i, align 8
  %conv.i = zext i32 %44 to i64
  %add.i = add nsw i64 %conv.i, -1
  %sub.i = add i64 %add.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp171.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp171.i, label %if.then175.i, label %if.else181.i, !prof !83

if.then175.i:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %conv176.i = trunc i64 %sub.i to i32
  %div179.i = udiv i32 %conv176.i, %44
  br label %btrfs_csum_bytes_to_leaves.exit

if.else181.i:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %45 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %44, i64 %sub.i) #19, !srcloc !98
  %asmresult1.i.i = extractvalue { i64, i64 } %45, 1
  %extract.t54 = trunc i64 %asmresult1.i.i to i32
  br label %btrfs_csum_bytes_to_leaves.exit

btrfs_csum_bytes_to_leaves.exit:                  ; preds = %if.else181.i, %if.then175.i
  %_tmp.0.i.off0 = phi i32 [ %div179.i, %if.then175.i ], [ %extract.t54, %if.else181.i ]
  %delayed_ref_updates = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 3
  %46 = ptrtoint ptr %delayed_ref_updates to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %delayed_ref_updates, align 8
  %conv16 = add i32 %47, %_tmp.0.i.off0
  store i32 %conv16, ptr %delayed_ref_updates, align 8
  br label %if.end17

if.end17:                                         ; preds = %btrfs_csum_bytes_to_leaves.exit, %land.lhs.true.if.end17_crit_edge, %if.else9.if.end17_crit_edge
  %num_heads = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 23, i32 4
  %48 = ptrtoint ptr %num_heads to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_heads, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %num_heads, align 4
  %num_heads_ready = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 23, i32 5
  %50 = ptrtoint ptr %num_heads_ready to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_heads_ready, align 8
  %inc18 = add i32 %51, 1
  store i32 %inc18, ptr %num_heads_ready, align 8
  %num_entries = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 23, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_entries, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %num_entries, i32 1, i32 3, i32 1) #13
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_entries, ptr %num_entries, i32 1, ptr elementtype(i32) %num_entries) #13, !srcloc !99
  %delayed_ref_updates19 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 3
  %53 = ptrtoint ptr %delayed_ref_updates19 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %delayed_ref_updates19, align 8
  %inc20 = add i32 %54, 1
  store i32 %inc20, ptr %delayed_ref_updates19, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.then8
  %head_ref.addr.0 = phi ptr [ %add.ptr5.i.le.le, %if.then8 ], [ %head_ref, %if.end17 ]
  %tobool22.not = icmp eq ptr %qrecord_inserted_ret, null
  br i1 %tobool22.not, label %if.end21.if.end24_crit_edge, label %if.then23

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %qrecord_inserted_ret to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %qrecord_inserted.0, ptr %qrecord_inserted_ret, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21.if.end24_crit_edge
  ret ptr %head_ref.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @insert_delayed_ref(ptr noundef %root, ptr noundef %href, ptr noundef %ref) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %href, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %ref_tree = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %href, i32 0, i32 5
  %0 = ptrtoint ptr %ref_tree to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ref_tree, align 4
  %tobool.not33.i = icmp eq ptr %1, null
  br i1 %tobool.not33.i, label %while.end.thread.i, label %entry.while.body.outer.i_crit_edge

entry.while.body.outer.i_crit_edge:               ; preds = %entry
  br label %while.body.outer.i

while.end.thread.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ref, align 4
  %rb_right.i45.i = getelementptr inbounds %struct.rb_node, ptr %ref, i32 0, i32 1
  %3 = ptrtoint ptr %rb_right.i45.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %rb_right.i45.i, align 4
  %rb_left.i46.i = getelementptr inbounds %struct.rb_node, ptr %ref, i32 0, i32 2
  %4 = ptrtoint ptr %rb_left.i46.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rb_left.i46.i, align 4
  %5 = ptrtoint ptr %ref_tree to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ref, ptr %ref_tree, align 4
  br label %if.then.i.i

while.body.outer.i:                               ; preds = %cleanup.thread.i.while.body.outer.i_crit_edge, %entry.while.body.outer.i_crit_edge
  %.ph.i = phi ptr [ %10, %cleanup.thread.i.while.body.outer.i_crit_edge ], [ %1, %entry.while.body.outer.i_crit_edge ]
  %leftmost.0.off034.ph.i = phi i1 [ false, %cleanup.thread.i.while.body.outer.i_crit_edge ], [ true, %entry.while.body.outer.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.outer.i
  %6 = phi ptr [ %8, %cleanup.i.while.body.i_crit_edge ], [ %.ph.i, %while.body.outer.i ]
  %call.i = tail call fastcc i32 @comp_refs(ptr noundef %ref, ptr noundef nonnull %6, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %cleanup.i, label %if.else.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.not.i, label %if.end, label %cleanup.thread.i

cleanup.i:                                        ; preds = %while.body.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %while.end.i, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

cleanup.thread.i:                                 ; preds = %if.else.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rb_right.i, align 4
  %tobool.not49.i = icmp eq ptr %10, null
  br i1 %tobool.not49.i, label %while.end.thread52.i, label %cleanup.thread.i.while.body.outer.i_crit_edge

cleanup.thread.i.while.body.outer.i_crit_edge:    ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.outer.i

while.end.thread52.i:                             ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right.i.le = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1
  %phi.cast.le55.i = ptrtoint ptr %6 to i32
  %11 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %phi.cast.le55.i, ptr %ref, align 4
  %rb_right.i56.i = getelementptr inbounds %struct.rb_node, ptr %ref, i32 0, i32 1
  %12 = ptrtoint ptr %rb_right.i56.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rb_right.i56.i, align 4
  %rb_left.i57.i = getelementptr inbounds %struct.rb_node, ptr %ref, i32 0, i32 2
  %13 = ptrtoint ptr %rb_left.i57.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rb_left.i57.i, align 4
  br label %rb_insert_color_cached.exit.sink.split.i

while.end.i:                                      ; preds = %cleanup.i
  %rb_left.i.le = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2
  %phi.cast.le.i = ptrtoint ptr %6 to i32
  %14 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %phi.cast.le.i, ptr %ref, align 4
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %ref, i32 0, i32 1
  %15 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %ref, i32 0, i32 2
  %16 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rb_left.i.i, align 4
  %17 = ptrtoint ptr %rb_left.i.le to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ref, ptr %rb_left.i.le, align 4
  br i1 %leftmost.0.off034.ph.i, label %while.end.i.if.then.i.i_crit_edge, label %while.end.i.inserted_crit_edge

while.end.i.inserted_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %inserted

while.end.i.if.then.i.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %while.end.i.if.then.i.i_crit_edge, %while.end.thread.i
  %rb_leftmost.i.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %href, i32 0, i32 5, i32 1
  br label %rb_insert_color_cached.exit.sink.split.i

rb_insert_color_cached.exit.sink.split.i:         ; preds = %if.then.i.i, %while.end.thread52.i
  %rb_right.le.sink.i = phi ptr [ %rb_right.i.le, %while.end.thread52.i ], [ %rb_leftmost.i.i, %if.then.i.i ]
  %18 = ptrtoint ptr %rb_right.le.sink.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ref, ptr %rb_right.le.sink.i, align 4
  br label %inserted

if.end:                                           ; preds = %if.else.i
  %action = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %6, i32 0, i32 7
  %19 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load = load i32, ptr %action, align 8
  %action1 = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref, i32 0, i32 7
  %20 = ptrtoint ptr %action1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load2 = load i32, ptr %action1, align 8
  %cmp.unshifted = xor i32 %bf.load2, %bf.load
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %cmp.unshifted)
  %cmp = icmp ult i32 %cmp.unshifted, 16777216
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ref_mod = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref, i32 0, i32 6
  %21 = ptrtoint ptr %ref_mod to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ref_mod, align 4
  br label %if.end42

if.else:                                          ; preds = %if.end
  %ref_mod5 = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %6, i32 0, i32 6
  %23 = ptrtoint ptr %ref_mod5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ref_mod5, align 4
  %ref_mod6 = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref, i32 0, i32 6
  %25 = ptrtoint ptr %ref_mod6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ref_mod6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp7 = icmp slt i32 %24, %26
  br i1 %cmp7, label %if.then8, label %if.else38

if.then8:                                         ; preds = %if.else
  %bf.shl = and i32 %bf.load2, -16777216
  %bf.clear = and i32 %bf.load, 16777215
  %bf.set = or i32 %bf.shl, %bf.clear
  %27 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bf.set, ptr %action, align 8
  %sub = sub i32 0, %24
  %28 = ptrtoint ptr %ref_mod6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ref_mod6, align 4
  %30 = ptrtoint ptr %ref_mod5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ref_mod5, align 4
  %31 = ptrtoint ptr %action1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load18 = load i32, ptr %action1, align 8
  %bf.lshr19 = lshr i32 %bf.load18, 24
  %trunc = trunc i32 %bf.lshr19 to i8
  %32 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %trunc, label %if.else35 [
    i8 1, label %if.then21
    i8 2, label %if.then27
  ]

if.then21:                                        ; preds = %if.then8
  %add_list = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %6, i32 0, i32 1
  %ref_add_list = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %href, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %href, i32 0, i32 6, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %call.i.i1 = tail call zeroext i1 @__list_add_valid(ptr noundef %add_list, ptr noundef %34, ptr noundef %ref_add_list) #13
  br i1 %call.i.i1, label %if.end.i.i, label %if.then21.if.end42_crit_edge

if.then21.if.end42_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add_list, ptr %prev.i, align 4
  %36 = ptrtoint ptr %add_list to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ref_add_list, ptr %add_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %6, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %add_list, ptr %34, align 4
  br label %if.end42

if.then27:                                        ; preds = %if.then8
  %add_list28 = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %6, i32 0, i32 1
  %39 = ptrtoint ptr %add_list28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %add_list28, align 4
  %cmp.i2.not = icmp eq ptr %40, %add_list28
  br i1 %cmp.i2.not, label %cond.false, label %cond.end, !prof !88

cond.false:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.24, i32 noundef 631) #17
  unreachable

cond.end:                                         ; preds = %if.then27
  %call.i.i3 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add_list28) #13
  br i1 %call.i.i3, label %if.end.i.i4, label %cond.end.list_del.exit_crit_edge

cond.end.list_del.exit_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i4:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %6, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %add_list28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add_list28, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i4, %cond.end.list_del.exit_crit_edge
  %47 = ptrtoint ptr %add_list28 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 256 to ptr), ptr %add_list28, align 4
  %prev.i5 = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %6, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %prev.i5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i5, align 4
  br label %if.end42

if.else35:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.25, i32 noundef 634) #17
  unreachable

if.else38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %sub40 = sub i32 0, %26
  br label %if.end42

if.end42:                                         ; preds = %if.else38, %list_del.exit, %if.end.i.i, %if.then21.if.end42_crit_edge, %if.then4
  %mod.0 = phi i32 [ %22, %if.then4 ], [ %sub, %list_del.exit ], [ %sub40, %if.else38 ], [ %sub, %if.then21.if.end42_crit_edge ], [ %sub, %if.end.i.i ]
  %ref_mod43 = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %6, i32 0, i32 6
  %49 = ptrtoint ptr %ref_mod43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ref_mod43, align 4
  %add = add i32 %50, %mod.0
  store i32 %add, ptr %ref_mod43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp45 = icmp eq i32 %add, 0
  br i1 %cmp45, label %if.then46, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @drop_delayed_ref(ptr noundef %root, ptr noundef %href, ptr noundef nonnull %6)
  br label %cleanup

inserted:                                         ; preds = %rb_insert_color_cached.exit.sink.split.i, %while.end.i.inserted_crit_edge
  tail call void @rb_insert_color(ptr noundef %ref, ptr noundef %ref_tree) #13
  %action49 = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref, i32 0, i32 7
  %51 = ptrtoint ptr %action49 to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load50 = load i32, ptr %action49, align 8
  %bf.lshr51.mask = and i32 %bf.load50, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.lshr51.mask)
  %cmp52 = icmp eq i32 %bf.lshr51.mask, 16777216
  br i1 %cmp52, label %if.then53, label %inserted.if.end56_crit_edge

inserted.if.end56_crit_edge:                      ; preds = %inserted
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then53:                                        ; preds = %inserted
  %add_list54 = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref, i32 0, i32 1
  %ref_add_list55 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %href, i32 0, i32 6
  %prev.i6 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %href, i32 0, i32 6, i32 1
  %52 = ptrtoint ptr %prev.i6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i6, align 4
  %call.i.i7 = tail call zeroext i1 @__list_add_valid(ptr noundef %add_list54, ptr noundef %53, ptr noundef %ref_add_list55) #13
  br i1 %call.i.i7, label %if.end.i.i9, label %if.then53.if.end56_crit_edge

if.then53.if.end56_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.end.i.i9:                                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %prev.i6 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add_list54, ptr %prev.i6, align 4
  %55 = ptrtoint ptr %add_list54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %ref_add_list55, ptr %add_list54, align 4
  %prev3.i.i8 = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %prev3.i.i8 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i8, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %add_list54, ptr %53, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end.i.i9, %if.then53.if.end56_crit_edge, %inserted.if.end56_crit_edge
  %num_entries = getelementptr inbounds %struct.btrfs_delayed_ref_root, ptr %root, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_entries, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %num_entries, i32 1, i32 3, i32 1) #13
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_entries, ptr %num_entries, i32 1, ptr elementtype(i32) %num_entries) #13, !srcloc !99
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then46, %if.end42.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end56 ], [ 1, %if.then46 ], [ 1, %if.end42.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_add_delayed_tree_ref(ptr noundef %fs_info, ptr noundef %ref, ptr noundef %full_ref, i32 noundef %action) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_delayed_tree_ref, i32 0, i32 1), ptr blockaddress(@trace_add_delayed_tree_ref, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !83

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !100
  %call42 = tail call i32 @__traceiter_add_delayed_tree_ref(ptr noundef null, ptr noundef %fs_info, ptr noundef %ref, ptr noundef %full_ref, i32 noundef %action) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !83

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_delayed_tree_ref, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_delayed_tree_ref, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_add_delayed_tree_ref.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_add_delayed_tree_ref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 829, ptr noundef nonnull @.str.13) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !87
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
declare dso_local i32 @btrfs_qgroup_trace_extent_post(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_add_delayed_data_ref(ptr noundef %trans, ptr nocapture noundef readonly %generic_ref, i64 noundef %reserved) local_unnamed_addr #0 align 64 {
entry:
  %qrecord_inserted = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qrecord_inserted) #13
  %2 = ptrtoint ptr %qrecord_inserted to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %qrecord_inserted, align 4, !annotation !94
  %action2 = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 1
  %3 = ptrtoint ptr %action2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %action2, align 4
  %bytenr3 = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 4
  %5 = ptrtoint ptr %bytenr3 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bytenr3, align 8
  %len = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 5
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %len, align 8
  %parent4 = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 6
  %9 = ptrtoint ptr %parent4 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %parent4, align 8
  %11 = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 7
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %11, align 8
  %ino = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 7, i32 0, i32 1
  %14 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ino, align 8
  %offset5 = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 7, i32 0, i32 2
  %16 = ptrtoint ptr %offset5 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %offset5, align 8
  %18 = ptrtoint ptr %generic_ref to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %generic_ref, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp eq i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %spec.select = select i1 %cmp, i1 %tobool, i1 false, !prof !83
  br i1 %spec.select, label %cond.end, label %cond.false, !prof !83

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.7, i32 noundef 1025) #17
  unreachable

cond.end:                                         ; preds = %entry
  %20 = load ptr, ptr @btrfs_delayed_data_ref_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %20, i32 noundef 3136) #13
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool9.not = icmp eq i64 %10, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %13)
  %cmp.i.i = icmp ne i64 %13, 5
  %21 = add i64 %13, -281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 -281474976710400, i64 %21)
  %22 = icmp ult i64 %21, -281474976710400
  %tobool.not.i = and i1 %cmp.i.i, %22
  br i1 %tobool.not.i, label %if.end.init_delayed_ref_common.exit_crit_edge, label %if.then1.i

if.end.init_delayed_ref_common.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_delayed_ref_common.exit

if.then1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %tree_mod_seq.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 66
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tree_mod_seq.i, i32 noundef 8) #13
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %tree_mod_seq.i) #13
  br label %init_delayed_ref_common.exit

init_delayed_ref_common.exit:                     ; preds = %if.then1.i, %if.end.init_delayed_ref_common.exit_crit_edge
  %seq.0.i = phi i64 [ %call.i.i, %if.then1.i ], [ 0, %if.end.init_delayed_ref_common.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.i = icmp eq i32 %4, 3
  %refs.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %call, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #13
  %23 = ptrtoint ptr %refs.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %refs.i, align 8
  %bytenr4.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %call, i32 0, i32 2
  %24 = ptrtoint ptr %bytenr4.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %6, ptr %bytenr4.i, align 8
  %num_bytes5.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %call, i32 0, i32 3
  %25 = ptrtoint ptr %num_bytes5.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %8, ptr %num_bytes5.i, align 8
  %ref_mod.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %call, i32 0, i32 6
  %26 = ptrtoint ptr %ref_mod.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %ref_mod.i, align 4
  %action6.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %call, i32 0, i32 7
  %27 = ptrtoint ptr %action6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load.i = load i32, ptr %action6.i, align 8
  %action.op.i = shl i32 %4, 24
  %bf.clear.i = and i32 %bf.load.i, 16383
  %action.op.op.i = or i32 %action.op.i, 16384
  %bf.set.i = select i1 %cmp.i, i32 16793600, i32 %action.op.op.i
  %seq13.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %call, i32 0, i32 4
  %28 = ptrtoint ptr %seq13.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %seq.0.i, ptr %seq13.i, align 8
  %conv.i = select i1 %tobool9.not, i32 11665408, i32 12058624
  %bf.set12.i = or i32 %conv.i, %bf.set.i
  %bf.set18.i = or i32 %bf.set12.i, %bf.clear.i
  store i32 %bf.set18.i, ptr %action6.i, align 8
  %29 = ptrtoint ptr %call to i32
  %30 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %call, align 8
  %add_list.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %call, i32 0, i32 1
  %31 = ptrtoint ptr %add_list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %add_list.i, ptr %add_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %call, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add_list.i, ptr %prev.i.i, align 8
  %root = getelementptr inbounds %struct.btrfs_delayed_data_ref, ptr %call, i32 0, i32 1
  %33 = ptrtoint ptr %root to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %13, ptr %root, align 8
  %parent12 = getelementptr inbounds %struct.btrfs_delayed_data_ref, ptr %call, i32 0, i32 2
  %34 = ptrtoint ptr %parent12 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %10, ptr %parent12, align 8
  %objectid = getelementptr inbounds %struct.btrfs_delayed_data_ref, ptr %call, i32 0, i32 3
  %35 = ptrtoint ptr %objectid to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %15, ptr %objectid, align 8
  %offset13 = getelementptr inbounds %struct.btrfs_delayed_data_ref, ptr %call, i32 0, i32 4
  %36 = ptrtoint ptr %offset13 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %17, ptr %offset13, align 8
  %37 = load ptr, ptr @btrfs_delayed_ref_head_cachep, align 4
  %call14 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %37, i32 noundef 3136) #13
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %init_delayed_ref_common.exit
  call void @__sanitizer_cov_trace_pc() #15
  %38 = load ptr, ptr @btrfs_delayed_data_ref_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %38, ptr noundef nonnull %call) #13
  br label %cleanup

if.end17:                                         ; preds = %init_delayed_ref_common.exit
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags, align 4
  %41 = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool19.not = icmp eq i32 %41, 0
  br i1 %tobool19.not, label %if.end17.if.end26_crit_edge, label %land.lhs.true

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end17
  %skip_qgroup = getelementptr inbounds %struct.btrfs_ref, ptr %generic_ref, i32 0, i32 2
  %42 = ptrtoint ptr %skip_qgroup to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %skip_qgroup, align 8, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool20.not = icmp eq i8 %43, 0
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then21:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3392, i32 noundef 56) #18
  %tobool23.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool23.not, label %if.then24, label %if.then21.if.end26_crit_edge

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  %45 = load ptr, ptr @btrfs_delayed_data_ref_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %45, ptr noundef nonnull %call) #13
  %46 = load ptr, ptr @btrfs_delayed_ref_head_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %46, ptr noundef nonnull %call14) #13
  br label %cleanup

if.end26:                                         ; preds = %if.then21.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.end17.if.end26_crit_edge
  %record.0 = phi ptr [ null, %land.lhs.true.if.end26_crit_edge ], [ %call7.i.i, %if.then21.if.end26_crit_edge ], [ null, %if.end17.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch.selectcmp.i = icmp eq i32 %4, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %switch.selectcmp88.i = icmp eq i32 %4, 4
  %switch.select89.i = select i1 %switch.selectcmp88.i, i32 0, i32 %switch.select.i
  %refs.i106 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call14, i32 0, i32 2
  %call.i.i.i.i107 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i106, i32 noundef 4) #13
  %47 = ptrtoint ptr %refs.i106 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 1, ptr %refs.i106, align 8
  %48 = ptrtoint ptr %call14 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %6, ptr %call14, align 8
  %num_bytes21.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call14, i32 0, i32 1
  %49 = ptrtoint ptr %num_bytes21.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %8, ptr %num_bytes21.i, align 8
  %ref_mod.i108 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call14, i32 0, i32 10
  %50 = ptrtoint ptr %ref_mod.i108 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %switch.select89.i, ptr %ref_mod.i108, align 8
  %must_insert_reserved22.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call14, i32 0, i32 11
  %51 = ptrtoint ptr %must_insert_reserved22.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i109 = load i8, ptr %must_insert_reserved22.i, align 4
  %bf.clear.i110 = and i8 %bf.load.i109, 15
  %bf.set.i111 = select i1 %cmp.i, i8 -64, i8 64
  %bf.set38.i = or i8 %bf.clear.i110, %bf.set.i111
  %ref_tree.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call14, i32 0, i32 5
  %52 = ptrtoint ptr %ref_tree.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %ref_tree.i, align 4
  %.compoundliteral.sroa.2.0.ref_tree.sroa_idx.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call14, i32 0, i32 5, i32 1
  %53 = ptrtoint ptr %.compoundliteral.sroa.2.0.ref_tree.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %.compoundliteral.sroa.2.0.ref_tree.sroa_idx.i, align 8
  %ref_add_list.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call14, i32 0, i32 6
  %54 = ptrtoint ptr %ref_add_list.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %ref_add_list.i, ptr %ref_add_list.i, align 4
  %prev.i.i112 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call14, i32 0, i32 6, i32 1
  %55 = ptrtoint ptr %prev.i.i112 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %ref_add_list.i, ptr %prev.i.i112, align 8
  %href_node.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call14, i32 0, i32 7
  %56 = ptrtoint ptr %href_node.i to i32
  %57 = ptrtoint ptr %href_node.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %href_node.i, align 4
  store i8 %bf.set38.i, ptr %must_insert_reserved22.i, align 4
  %total_ref_mod.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call14, i32 0, i32 9
  %58 = ptrtoint ptr %total_ref_mod.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %switch.select89.i, ptr %total_ref_mod.i, align 4
  %lock.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call14, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_delayed_ref_head.__key, i16 noundef signext 3) #13
  %mutex.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call14, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_delayed_ref_head.__key.22) #13
  %tobool50.not.i = icmp eq ptr %record.0, null
  br i1 %tobool50.not.i, label %if.end26.init_delayed_ref_head.exit_crit_edge, label %if.then51.i

if.end26.init_delayed_ref_head.exit_crit_edge:    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_delayed_ref_head.exit

if.then51.i:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %reserved)
  %tobool2.i = icmp eq i64 %reserved, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool52.not.i = icmp eq i64 %13, 0
  %or.cond.i = or i1 %tobool2.i, %tobool52.not.i
  br i1 %or.cond.i, label %if.then51.i.if.end56.i_crit_edge, label %if.then54.i

if.then51.i.if.end56.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i

if.then54.i:                                      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv55.i = trunc i64 %reserved to i32
  %data_rsv.i = getelementptr inbounds %struct.btrfs_qgroup_extent_record, ptr %record.0, i32 0, i32 3
  %59 = ptrtoint ptr %data_rsv.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv55.i, ptr %data_rsv.i, align 8
  %data_rsv_refroot.i = getelementptr inbounds %struct.btrfs_qgroup_extent_record, ptr %record.0, i32 0, i32 4
  %60 = ptrtoint ptr %data_rsv_refroot.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %13, ptr %data_rsv_refroot.i, align 8
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %if.then51.i.if.end56.i_crit_edge
  %bytenr57.i = getelementptr inbounds %struct.btrfs_qgroup_extent_record, ptr %record.0, i32 0, i32 1
  %61 = ptrtoint ptr %bytenr57.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %6, ptr %bytenr57.i, align 8
  %num_bytes58.i = getelementptr inbounds %struct.btrfs_qgroup_extent_record, ptr %record.0, i32 0, i32 2
  %62 = ptrtoint ptr %num_bytes58.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %8, ptr %num_bytes58.i, align 8
  %old_roots.i = getelementptr inbounds %struct.btrfs_qgroup_extent_record, ptr %record.0, i32 0, i32 5
  %63 = ptrtoint ptr %old_roots.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %old_roots.i, align 8
  br label %init_delayed_ref_head.exit

init_delayed_ref_head.exit:                       ; preds = %if.end56.i, %if.end26.init_delayed_ref_head.exit_crit_edge
  %extent_op = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call14, i32 0, i32 8
  %64 = ptrtoint ptr %extent_op to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %extent_op, align 8
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %65 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %transaction, align 4
  %delayed_refs27 = getelementptr inbounds %struct.btrfs_transaction, ptr %66, i32 0, i32 23
  %lock = getelementptr inbounds %struct.btrfs_transaction, ptr %66, i32 0, i32 23, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %call28 = call fastcc ptr @add_delayed_ref_head(ptr noundef %trans, ptr noundef nonnull %call14, ptr noundef %record.0, i32 noundef %4, ptr noundef nonnull %qrecord_inserted)
  %call30 = call fastcc i32 @insert_delayed_ref(ptr noundef %delayed_refs27, ptr noundef %call28, ptr noundef nonnull %call)
  call void @_raw_spin_unlock(ptr noundef %lock) #13
  %delayed_ref_updates.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 3
  %67 = ptrtoint ptr %delayed_ref_updates.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %delayed_ref_updates.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i113 = icmp eq i32 %68, 0
  br i1 %tobool.not.i113, label %init_delayed_ref_head.exit.btrfs_update_delayed_refs_rsv.exit_crit_edge, label %if.end.i

init_delayed_ref_head.exit.btrfs_update_delayed_refs_rsv.exit_crit_edge: ; preds = %init_delayed_ref_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_update_delayed_refs_rsv.exit

if.end.i:                                         ; preds = %init_delayed_ref_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fs_info1, align 4
  %delayed_refs_rsv.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %70, i32 0, i32 24
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %70, i32 0, i32 166
  %71 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nodesize.i.i, align 8
  %conv.i.i = zext i32 %72 to i64
  %conv2.i.i = zext i32 %68 to i64
  %mul1.i.i = shl nuw nsw i64 %conv2.i.i, 4
  %mul3.i.i = mul i64 %mul1.i.i, %conv.i.i
  %mount_opt.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %70, i32 0, i32 31
  %73 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mount_opt.i, align 8
  %and.i = lshr i32 %74, 25
  %and.lobit.i = and i32 %and.i, 1
  %75 = zext i32 %and.lobit.i to i64
  %spec.select.i = shl i64 %mul3.i.i, %75
  %lock.i114 = getelementptr inbounds %struct.btrfs_fs_info, ptr %70, i32 0, i32 24, i32 3
  call void @_raw_spin_lock(ptr noundef %lock.i114) #13
  %76 = ptrtoint ptr %delayed_refs_rsv.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %delayed_refs_rsv.i, align 8
  %add.i = add i64 %spec.select.i, %77
  store i64 %add.i, ptr %delayed_refs_rsv.i, align 8
  %full.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %70, i32 0, i32 24, i32 4
  %78 = ptrtoint ptr %full.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %full.i, align 8
  call void @_raw_spin_unlock(ptr noundef %lock.i114) #13
  %79 = ptrtoint ptr %delayed_ref_updates.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %delayed_ref_updates.i, align 8
  br label %btrfs_update_delayed_refs_rsv.exit

btrfs_update_delayed_refs_rsv.exit:               ; preds = %if.end.i, %init_delayed_ref_head.exit.btrfs_update_delayed_refs_rsv.exit_crit_edge
  %80 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fs_info1, align 4
  %spec.select105 = select i1 %cmp.i, i32 1, i32 %4
  call fastcc void @trace_add_delayed_data_ref(ptr noundef %81, ptr noundef nonnull %call, ptr noundef nonnull %call, i32 noundef %spec.select105)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp38 = icmp sgt i32 %call30, 0
  br i1 %cmp38, label %if.then39, label %btrfs_update_delayed_refs_rsv.exit.if.end40_crit_edge

btrfs_update_delayed_refs_rsv.exit.if.end40_crit_edge: ; preds = %btrfs_update_delayed_refs_rsv.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then39:                                        ; preds = %btrfs_update_delayed_refs_rsv.exit
  call void @__sanitizer_cov_trace_pc() #15
  %82 = load ptr, ptr @btrfs_delayed_data_ref_cachep, align 4
  call void @kmem_cache_free(ptr noundef %82, ptr noundef nonnull %call) #13
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %btrfs_update_delayed_refs_rsv.exit.if.end40_crit_edge
  %83 = ptrtoint ptr %qrecord_inserted to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %qrecord_inserted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool41.not = icmp eq i32 %84, 0
  br i1 %tobool41.not, label %if.end40.cleanup_crit_edge, label %if.then42

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %call43 = call i32 @btrfs_qgroup_trace_extent_post(ptr noundef %trans, ptr noundef %record.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end40.cleanup_crit_edge, %if.then24, %if.then16, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.then42 ], [ -12, %if.then24 ], [ -12, %if.then16 ], [ -12, %cond.end.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qrecord_inserted) #13
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_add_delayed_data_ref(ptr noundef %fs_info, ptr noundef %ref, ptr noundef %full_ref, i32 noundef %action) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_delayed_data_ref, i32 0, i32 1), ptr blockaddress(@trace_add_delayed_data_ref, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !83

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !102
  %call42 = tail call i32 @__traceiter_add_delayed_data_ref(ptr noundef null, ptr noundef %fs_info, ptr noundef %ref, ptr noundef %full_ref, i32 noundef %action) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !103
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !83

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_delayed_data_ref, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_delayed_data_ref, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_add_delayed_data_ref.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_add_delayed_data_ref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 896, ptr noundef nonnull @.str.13) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !87
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
define dso_local i32 @btrfs_add_delayed_extent_op(ptr nocapture noundef %trans, i64 noundef %bytenr, i64 noundef %num_bytes, ptr noundef %extent_op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @btrfs_delayed_ref_head_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_data = getelementptr inbounds %struct.btrfs_delayed_extent_op, ptr %extent_op, i32 0, i32 4
  %1 = ptrtoint ptr %is_data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_data, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  %refs.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #13
  %3 = ptrtoint ptr %refs.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %refs.i, align 8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %bytenr, ptr %call, align 8
  %num_bytes21.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %num_bytes21.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %num_bytes, ptr %num_bytes21.i, align 8
  %ref_mod.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call, i32 0, i32 10
  %6 = ptrtoint ptr %ref_mod.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ref_mod.i, align 8
  %must_insert_reserved22.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call, i32 0, i32 11
  %7 = ptrtoint ptr %must_insert_reserved22.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %must_insert_reserved22.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 15
  %bf.shl27.i = select i1 %tobool1.not, i8 0, i8 64
  %bf.set38.i = or i8 %bf.clear.i, %bf.shl27.i
  %ref_tree.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %ref_tree.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %ref_tree.i, align 4
  %.compoundliteral.sroa.2.0.ref_tree.sroa_idx.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %.compoundliteral.sroa.2.0.ref_tree.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %.compoundliteral.sroa.2.0.ref_tree.sroa_idx.i, align 8
  %ref_add_list.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %ref_add_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %ref_add_list.i, ptr %ref_add_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ref_add_list.i, ptr %prev.i.i, align 8
  %href_node.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call, i32 0, i32 7
  %12 = ptrtoint ptr %href_node.i to i32
  %13 = ptrtoint ptr %href_node.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %href_node.i, align 4
  store i8 %bf.set38.i, ptr %must_insert_reserved22.i, align 4
  %total_ref_mod.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call, i32 0, i32 9
  %14 = ptrtoint ptr %total_ref_mod.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %total_ref_mod.i, align 4
  %lock.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_delayed_ref_head.__key, i16 noundef signext 3) #13
  %mutex.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_delayed_ref_head.__key.22) #13
  %extent_op2 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %call, i32 0, i32 8
  %15 = ptrtoint ptr %extent_op2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %extent_op, ptr %extent_op2, align 8
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %16 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %transaction, align 4
  %lock = getelementptr inbounds %struct.btrfs_transaction, ptr %17, i32 0, i32 23, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %call4 = tail call fastcc ptr @add_delayed_ref_head(ptr noundef %trans, ptr noundef nonnull %call, ptr noundef null, i32 noundef 4, ptr noundef null)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  %delayed_ref_updates.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 3
  %18 = ptrtoint ptr %delayed_ref_updates.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delayed_ref_updates.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %fs_info1.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %20 = ptrtoint ptr %fs_info1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fs_info1.i, align 4
  %delayed_refs_rsv.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %21, i32 0, i32 24
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %21, i32 0, i32 166
  %22 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nodesize.i.i, align 8
  %conv.i.i = zext i32 %23 to i64
  %conv2.i.i = zext i32 %19 to i64
  %mul1.i.i = shl nuw nsw i64 %conv2.i.i, 4
  %mul3.i.i = mul i64 %mul1.i.i, %conv.i.i
  %mount_opt.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %21, i32 0, i32 31
  %24 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mount_opt.i, align 8
  %and.i = lshr i32 %25, 25
  %and.lobit.i = and i32 %and.i, 1
  %26 = zext i32 %and.lobit.i to i64
  %spec.select.i = shl i64 %mul3.i.i, %26
  %lock.i14 = getelementptr inbounds %struct.btrfs_fs_info, ptr %21, i32 0, i32 24, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i14) #13
  %27 = ptrtoint ptr %delayed_refs_rsv.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %delayed_refs_rsv.i, align 8
  %add.i = add i64 %spec.select.i, %28
  store i64 %add.i, ptr %delayed_refs_rsv.i, align 8
  %full.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %21, i32 0, i32 24, i32 4
  %29 = ptrtoint ptr %full.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %full.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i14) #13
  %30 = ptrtoint ptr %delayed_ref_updates.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %delayed_ref_updates.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_find_delayed_ref_head(ptr noundef %delayed_refs, i64 noundef %bytenr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.btrfs_delayed_ref_root, ptr %delayed_refs, i32 0, i32 2, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !88

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1133, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %delayed_refs to i32
  call void @__asan_load4_noabort(i32 %1)
  %n.038.i = load ptr, ptr %delayed_refs, align 4
  %tobool.not39.i = icmp eq ptr %n.038.i, null
  br i1 %tobool.not39.i, label %if.end.find_ref_head.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.find_ref_head.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_ref_head.exit

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %n.040.i = phi ptr [ %n.0.i, %if.end7.i.while.body.i_crit_edge ], [ %n.038.i, %if.end.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %n.040.i, i32 -172
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %bytenr)
  %cmp.i = icmp ugt i64 %3, %bytenr
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.040.i, i32 0, i32 2
  br label %if.end7.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %bytenr)
  %cmp4.i = icmp ult i64 %3, %bytenr
  br i1 %cmp4.i, label %if.then5.i, label %find_ref_head.exit.loopexit.split.loop.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.040.i, i32 0, i32 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ]
  %4 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end7.i.find_ref_head.exit_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end7.i.find_ref_head.exit_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_ref_head.exit

find_ref_head.exit.loopexit.split.loop.exit:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.le = getelementptr i8, ptr %n.040.i, i32 -172
  br label %find_ref_head.exit

find_ref_head.exit:                               ; preds = %find_ref_head.exit.loopexit.split.loop.exit, %if.end7.i.find_ref_head.exit_crit_edge, %if.end.find_ref_head.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end.find_ref_head.exit_crit_edge ], [ %add.ptr.i.le, %find_ref_head.exit.loopexit.split.loop.exit ], [ null, %if.end7.i.find_ref_head.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_delayed_ref_exit() local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @btrfs_delayed_ref_head_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #13
  %1 = load ptr, ptr @btrfs_delayed_tree_ref_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #13
  %2 = load ptr, ptr @btrfs_delayed_data_ref_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #13
  %3 = load ptr, ptr @btrfs_delayed_extent_op_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_delayed_ref_init() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.8, i32 noundef 200, i32 noundef 0, i32 noundef 1048576, ptr noundef null) #13
  store ptr %call, ptr @btrfs_delayed_ref_head_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.9, i32 noundef 88, i32 noundef 0, i32 noundef 1048576, ptr noundef null) #13
  store ptr %call1, ptr @btrfs_delayed_tree_ref_cachep, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.fail_crit_edge, label %if.end4

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.10, i32 noundef 96, i32 noundef 0, i32 noundef 1048576, ptr noundef null) #13
  store ptr %call5, ptr @btrfs_delayed_data_ref_cachep, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.fail_crit_edge, label %if.end8

if.end4.fail_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.11, i32 noundef 32, i32 noundef 0, i32 noundef 1048576, ptr noundef null) #13
  store ptr %call9, ptr @btrfs_delayed_extent_op_cachep, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.fail_crit_edge, label %if.end8.return_crit_edge

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end8.fail_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

fail:                                             ; preds = %if.end8.fail_crit_edge, %if.end4.fail_crit_edge, %if.end.fail_crit_edge, %entry.fail_crit_edge
  tail call void @btrfs_delayed_ref_exit() #20
  br label %return

return:                                           ; preds = %fail, %if.end8.return_crit_edge
  %retval.0 = phi i32 [ -12, %fail ], [ 0, %if.end8.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_space_reservation(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_try_granting_tickets(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_update_bytes_may_use(ptr noundef %fs_info, ptr noundef %sinfo, i64 noundef %old, i64 noundef %diff) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_update_bytes_may_use, i32 0, i32 1), ptr blockaddress(@trace_update_bytes_may_use, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !83

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !104
  %call42 = tail call i32 @__traceiter_update_bytes_may_use(ptr noundef null, ptr noundef %fs_info, ptr noundef %sinfo, i64 noundef %old, i64 noundef %diff) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !105
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !83

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_update_bytes_may_use, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_update_bytes_may_use, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_update_bytes_may_use.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_update_bytes_may_use.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 2256, ptr noundef nonnull @.str.13) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !87
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @comp_refs(ptr nocapture noundef readonly %ref1, ptr nocapture noundef readonly %ref2, i1 noundef zeroext %check_seq) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref1, i32 0, i32 7
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %type, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %type1 = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref2, i32 0, i32 7
  %1 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load2 = load i32, ptr %type1, align 8
  %bf.lshr3 = lshr i32 %bf.load2, 16
  %bf.clear4 = and i32 %bf.lshr3, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %bf.clear4)
  %cmp = icmp ult i32 %bf.clear, %bf.clear4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %bf.clear4)
  %cmp13 = icmp ugt i32 %bf.clear, %bf.clear4
  br i1 %cmp13, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %trunc = trunc i32 %bf.lshr to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %trunc, label %if.else [
    i8 -80, label %if.end15.if.then26_crit_edge
    i8 -74, label %if.end15.if.then26_crit_edge78
  ]

if.end15.if.then26_crit_edge78:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

if.end15.if.then26_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

if.then26:                                        ; preds = %if.end15.if.then26_crit_edge, %if.end15.if.then26_crit_edge78
  %3 = and i32 %bf.load, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 11534336, i32 %3)
  %cmp.i = icmp eq i32 %3, 11534336
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then26
  %root.i = getelementptr inbounds %struct.btrfs_delayed_tree_ref, ptr %ref1, i32 0, i32 1
  %4 = ptrtoint ptr %root.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %root.i, align 8
  %root1.i = getelementptr inbounds %struct.btrfs_delayed_tree_ref, ptr %ref2, i32 0, i32 1
  %6 = ptrtoint ptr %root1.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %root1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp2.i = icmp ult i64 %5, %7
  br i1 %cmp2.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp6.i = icmp ugt i64 %5, %7
  br i1 %cmp6.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end34_crit_edge

if.end.i.if.end34_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else.i:                                        ; preds = %if.then26
  %parent.i = getelementptr inbounds %struct.btrfs_delayed_tree_ref, ptr %ref1, i32 0, i32 2
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %parent.i, align 8
  %parent9.i = getelementptr inbounds %struct.btrfs_delayed_tree_ref, ptr %ref2, i32 0, i32 2
  %10 = ptrtoint ptr %parent9.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %parent9.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp10.i = icmp ult i64 %9, %11
  br i1 %cmp10.i, label %if.else.i.cleanup_crit_edge, label %if.end12.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp15.i = icmp ugt i64 %9, %11
  br i1 %cmp15.i, label %if.end12.i.cleanup_crit_edge, label %if.end12.i.if.end34_crit_edge

if.end12.i.if.end34_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %if.end15
  %12 = and i32 %bf.load, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 11665408, i32 %12)
  %cmp.i63 = icmp eq i32 %12, 11665408
  br i1 %cmp.i63, label %if.then.i67, label %if.else.i74

if.then.i67:                                      ; preds = %if.else
  %root.i64 = getelementptr inbounds %struct.btrfs_delayed_data_ref, ptr %ref1, i32 0, i32 1
  %13 = ptrtoint ptr %root.i64 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %root.i64, align 8
  %root1.i65 = getelementptr inbounds %struct.btrfs_delayed_data_ref, ptr %ref2, i32 0, i32 1
  %15 = ptrtoint ptr %root1.i65 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %root1.i65, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp2.i66 = icmp ult i64 %14, %16
  br i1 %cmp2.i66, label %if.then.i67.cleanup_crit_edge, label %if.end.i69

if.then.i67.cleanup_crit_edge:                    ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i69:                                       ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp6.i68 = icmp ugt i64 %14, %16
  br i1 %cmp6.i68, label %if.end.i69.cleanup_crit_edge, label %if.end8.i

if.end.i69.cleanup_crit_edge:                     ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i69
  %objectid.i = getelementptr inbounds %struct.btrfs_delayed_data_ref, ptr %ref1, i32 0, i32 3
  %17 = ptrtoint ptr %objectid.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %objectid.i, align 8
  %objectid9.i = getelementptr inbounds %struct.btrfs_delayed_data_ref, ptr %ref2, i32 0, i32 3
  %19 = ptrtoint ptr %objectid9.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %objectid9.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %20)
  %cmp10.i70 = icmp ult i64 %18, %20
  br i1 %cmp10.i70, label %if.end8.i.cleanup_crit_edge, label %if.end12.i72

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12.i72:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %20)
  %cmp15.i71 = icmp ugt i64 %18, %20
  br i1 %cmp15.i71, label %if.end12.i72.cleanup_crit_edge, label %if.end17.i

if.end12.i72.cleanup_crit_edge:                   ; preds = %if.end12.i72
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17.i:                                       ; preds = %if.end12.i72
  %offset.i = getelementptr inbounds %struct.btrfs_delayed_data_ref, ptr %ref1, i32 0, i32 4
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %offset.i, align 8
  %offset18.i = getelementptr inbounds %struct.btrfs_delayed_data_ref, ptr %ref2, i32 0, i32 4
  %23 = ptrtoint ptr %offset18.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %offset18.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %24)
  %cmp19.i = icmp ult i64 %22, %24
  br i1 %cmp19.i, label %if.end17.i.cleanup_crit_edge, label %if.end21.i

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %24)
  %cmp24.i = icmp ugt i64 %22, %24
  br i1 %cmp24.i, label %if.end21.i.cleanup_crit_edge, label %if.end21.i.if.end34_crit_edge

if.end21.i.if.end34_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else.i74:                                      ; preds = %if.else
  %parent.i73 = getelementptr inbounds %struct.btrfs_delayed_data_ref, ptr %ref1, i32 0, i32 2
  %25 = ptrtoint ptr %parent.i73 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %parent.i73, align 8
  %parent27.i = getelementptr inbounds %struct.btrfs_delayed_data_ref, ptr %ref2, i32 0, i32 2
  %27 = ptrtoint ptr %parent27.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %parent27.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %28)
  %cmp28.i = icmp ult i64 %26, %28
  br i1 %cmp28.i, label %if.else.i74.cleanup_crit_edge, label %if.end30.i

if.else.i74.cleanup_crit_edge:                    ; preds = %if.else.i74
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end30.i:                                       ; preds = %if.else.i74
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %28)
  %cmp33.i = icmp ugt i64 %26, %28
  br i1 %cmp33.i, label %if.end30.i.cleanup_crit_edge, label %if.end30.i.if.end34_crit_edge

if.end30.i.if.end34_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34:                                         ; preds = %if.end30.i.if.end34_crit_edge, %if.end21.i.if.end34_crit_edge, %if.end12.i.if.end34_crit_edge, %if.end.i.if.end34_crit_edge
  br i1 %check_seq, label %if.then36, label %if.end34.if.end46_crit_edge

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then36:                                        ; preds = %if.end34
  %seq = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref1, i32 0, i32 4
  %29 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %seq, align 8
  %seq37 = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref2, i32 0, i32 4
  %31 = ptrtoint ptr %seq37 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %seq37, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %32)
  %cmp38 = icmp ult i64 %30, %32
  br i1 %cmp38, label %if.then36.cleanup_crit_edge, label %if.end40

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end40:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %32)
  %cmp43 = icmp ugt i64 %30, %32
  br i1 %cmp43, label %if.end40.cleanup_crit_edge, label %if.end40.if.end46_crit_edge

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end46:                                         ; preds = %if.end40.if.end46_crit_edge, %if.end34.if.end46_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end40.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge, %if.else.i74.cleanup_crit_edge, %if.end21.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %if.end12.i72.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end.i69.cleanup_crit_edge, %if.then.i67.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ -1, %if.then36.cleanup_crit_edge ], [ 1, %if.end40.cleanup_crit_edge ], [ 1, %if.end30.i.cleanup_crit_edge ], [ -1, %if.else.i74.cleanup_crit_edge ], [ 1, %if.end21.i.cleanup_crit_edge ], [ -1, %if.end17.i.cleanup_crit_edge ], [ 1, %if.end12.i72.cleanup_crit_edge ], [ -1, %if.end8.i.cleanup_crit_edge ], [ 1, %if.end.i69.cleanup_crit_edge ], [ -1, %if.then.i67.cleanup_crit_edge ], [ 1, %if.end12.i.cleanup_crit_edge ], [ -1, %if.else.i.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ -1, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drop_delayed_ref(ptr noundef %delayed_refs, ptr noundef %head, ptr noundef %ref) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !88

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 444, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ref_tree = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head, i32 0, i32 5
  %rb_leftmost.i = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %head, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i = icmp eq ptr %2, %ref
  br i1 %cmp.i, label %if.then.i, label %if.end.rb_erase_cached.exit_crit_edge

if.end.rb_erase_cached.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rb_erase_cached.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i1 = tail call ptr @rb_next(ptr noundef %ref) #13
  %3 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i1, ptr %rb_leftmost.i, align 4
  br label %rb_erase_cached.exit

rb_erase_cached.exit:                             ; preds = %if.then.i, %if.end.rb_erase_cached.exit_crit_edge
  tail call void @rb_erase(ptr noundef %ref, ptr noundef %ref_tree) #13
  %4 = ptrtoint ptr %ref to i32
  %5 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ref, align 8
  %add_list = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref, i32 0, i32 1
  %6 = ptrtoint ptr %add_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %add_list, align 4
  %cmp.i2.not = icmp eq ptr %7, %add_list
  br i1 %cmp.i2.not, label %rb_erase_cached.exit.if.end31_crit_edge, label %if.then29

rb_erase_cached.exit.if.end31_crit_edge:          ; preds = %rb_erase_cached.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then29:                                        ; preds = %rb_erase_cached.exit
  %call.i.i3 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add_list) #13
  br i1 %call.i.i3, label %if.end.i.i, label %if.then29.list_del.exit_crit_edge

if.then29.list_del.exit_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %add_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then29.list_del.exit_crit_edge
  %14 = ptrtoint ptr %add_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %add_list, align 4
  %prev.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %list_del.exit, %rb_erase_cached.exit.if.end31_crit_edge
  %in_tree = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref, i32 0, i32 7
  %16 = ptrtoint ptr %in_tree to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load = load i32, ptr %in_tree, align 8
  %bf.clear = and i32 %bf.load, -16385
  store i32 %bf.clear, ptr %in_tree, align 8
  %refs.i = getelementptr inbounds %struct.btrfs_delayed_ref_node, ptr %ref, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refs.i, i32 noundef 4) #13
  %17 = ptrtoint ptr %refs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %refs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i4 = icmp eq i32 %18, 0
  br i1 %cmp.i4, label %do.end.i, label %if.end31.if.end.i_crit_edge, !prof !88

if.end31.if.end.i_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 318, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end31.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !90
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #13
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #13, !srcloc !91
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then21.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.btrfs_put_delayed_ref.exit_crit_edge, label %if.then10.i.i.i.i, !prof !83

if.end5.i.i.i.i.btrfs_put_delayed_ref.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %btrfs_put_delayed_ref.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef 3) #13
  br label %btrfs_put_delayed_ref.exit

if.then21.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !92
  %20 = ptrtoint ptr %in_tree to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i = load i32, ptr %in_tree, align 8
  %21 = and i32 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool23.not.i = icmp eq i32 %21, 0
  br i1 %tobool23.not.i, label %if.then21.i.if.end45.i_crit_edge, label %do.end39.i, !prof !83

if.then21.i.if.end45.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

do.end39.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 320, i32 noundef 9, ptr noundef null) #13
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end39.i, %if.then21.i.if.end45.i_crit_edge
  %22 = ptrtoint ptr %in_tree to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load53.i = load i32, ptr %in_tree, align 8
  %bf.lshr54.i = lshr i32 %bf.load53.i, 16
  %trunc.i = trunc i32 %bf.lshr54.i to i8
  %23 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %trunc.i, label %do.body57.i [
    i8 -80, label %if.end45.i.sw.bb.i_crit_edge
    i8 -74, label %if.end45.i.sw.bb.i_crit_edge5
    i8 -78, label %if.end45.i.sw.bb56.i_crit_edge
    i8 -72, label %if.end45.i.sw.bb56.i_crit_edge6
  ]

if.end45.i.sw.bb56.i_crit_edge6:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb56.i

if.end45.i.sw.bb56.i_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb56.i

if.end45.i.sw.bb.i_crit_edge5:                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end45.i.sw.bb.i_crit_edge:                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end45.i.sw.bb.i_crit_edge, %if.end45.i.sw.bb.i_crit_edge5
  %24 = load ptr, ptr @btrfs_delayed_tree_ref_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %24, ptr noundef %ref) #13
  br label %btrfs_put_delayed_ref.exit

sw.bb56.i:                                        ; preds = %if.end45.i.sw.bb56.i_crit_edge, %if.end45.i.sw.bb56.i_crit_edge6
  %25 = load ptr, ptr @btrfs_delayed_data_ref_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %25, ptr noundef %ref) #13
  br label %btrfs_put_delayed_ref.exit

do.body57.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/delayed-ref.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 331, 0\0A.popsection", ""() #13, !srcloc !106
  unreachable

btrfs_put_delayed_ref.exit:                       ; preds = %sw.bb56.i, %sw.bb.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.btrfs_put_delayed_ref.exit_crit_edge
  %num_entries = getelementptr inbounds %struct.btrfs_delayed_ref_root, ptr %delayed_refs, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_entries, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %num_entries, i32 1, i32 3, i32 1) #13
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_entries, ptr %num_entries, i32 1, ptr elementtype(i32) %num_entries) #13, !srcloc !93
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_qgroup_trace_extent_nolock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_add_delayed_ref_head(ptr noundef %fs_info, ptr noundef %head_ref, i32 noundef %action) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_delayed_ref_head, i32 0, i32 1), ptr blockaddress(@trace_add_delayed_ref_head, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !83

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !107
  %call42 = tail call i32 @__traceiter_add_delayed_ref_head(ptr noundef null, ptr noundef %fs_info, ptr noundef %head_ref, i32 noundef %action) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !108
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !83

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_delayed_ref_head, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_delayed_ref_head, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_add_delayed_ref_head.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_add_delayed_ref_head.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 944, ptr noundef nonnull @.str.13) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !87
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #13
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
define internal fastcc void @update_existing_head_ref(ptr nocapture noundef %trans, ptr noundef %existing, ptr nocapture noundef readonly %update) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %transaction = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 4
  %0 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transaction, align 4
  %fs_info2 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %2 = ptrtoint ptr %fs_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info2, align 4
  %is_data = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %existing, i32 0, i32 11
  %4 = ptrtoint ptr %is_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %is_data, align 4
  %is_data3 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %update, i32 0, i32 11
  %5 = ptrtoint ptr %is_data3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load4 = load i8, ptr %is_data3, align 4
  %bf.lshr129 = xor i8 %bf.load4, %bf.load
  %6 = and i8 %bf.lshr129, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not = icmp eq i8 %6, 0
  br i1 %cmp.not, label %do.end14, label %do.body9, !prof !83

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/delayed-ref.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 667, 0\0A.popsection", ""() #13, !srcloc !109
  unreachable

do.end14:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %existing, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %7 = ptrtoint ptr %is_data3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load15 = load i8, ptr %is_data3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load15)
  %tobool18.not = icmp sgt i8 %bf.load15, -1
  br i1 %tobool18.not, label %do.end14.if.end28_crit_edge, label %if.then19

do.end14.if.end28_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then19:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #15
  %bf.lshr16 = and i8 %bf.load15, -128
  %8 = ptrtoint ptr %is_data to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load25 = load i8, ptr %is_data, align 4
  %bf.clear26 = and i8 %bf.load25, 127
  %bf.set = or i8 %bf.clear26, %bf.lshr16
  store i8 %bf.set, ptr %is_data, align 4
  %num_bytes = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %update, i32 0, i32 1
  %9 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %num_bytes, align 8
  %num_bytes27 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %existing, i32 0, i32 1
  %11 = ptrtoint ptr %num_bytes27 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %num_bytes27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then19, %do.end14.if.end28_crit_edge
  %extent_op = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %update, i32 0, i32 8
  %12 = ptrtoint ptr %extent_op to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extent_op, align 8
  %tobool29.not = icmp eq ptr %13, null
  br i1 %tobool29.not, label %if.end28.if.end56_crit_edge, label %if.then30

if.end28.if.end56_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then30:                                        ; preds = %if.end28
  %extent_op31 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %existing, i32 0, i32 8
  %14 = ptrtoint ptr %extent_op31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %extent_op31, align 8
  %tobool32.not = icmp eq ptr %15, null
  br i1 %tobool32.not, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %extent_op31 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %extent_op31, align 8
  br label %if.end56

if.else:                                          ; preds = %if.then30
  %update_key = getelementptr inbounds %struct.btrfs_delayed_extent_op, ptr %13, i32 0, i32 2
  %17 = ptrtoint ptr %update_key to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %update_key, align 2, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool37.not = icmp eq i8 %18, 0
  br i1 %tobool37.not, label %if.else.if.end44_crit_edge, label %if.then38

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %19 = call ptr @memcpy(ptr %15, ptr %13, i32 17)
  %20 = ptrtoint ptr %extent_op31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extent_op31, align 8
  %update_key43 = getelementptr inbounds %struct.btrfs_delayed_extent_op, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %update_key43 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %update_key43, align 2
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %if.else.if.end44_crit_edge
  %23 = ptrtoint ptr %extent_op to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %extent_op, align 8
  %update_flags = getelementptr inbounds %struct.btrfs_delayed_extent_op, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %update_flags to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %update_flags, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool46.not = icmp eq i8 %26, 0
  br i1 %tobool46.not, label %if.end44.if.end53_crit_edge, label %if.then47

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %flags_to_set = getelementptr inbounds %struct.btrfs_delayed_extent_op, ptr %24, i32 0, i32 5
  %27 = ptrtoint ptr %flags_to_set to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %flags_to_set, align 8
  %29 = ptrtoint ptr %extent_op31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %extent_op31, align 8
  %flags_to_set50 = getelementptr inbounds %struct.btrfs_delayed_extent_op, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %flags_to_set50 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %flags_to_set50, align 8
  %or = or i64 %32, %28
  store i64 %or, ptr %flags_to_set50, align 8
  %33 = load ptr, ptr %extent_op31, align 8
  %update_flags52 = getelementptr inbounds %struct.btrfs_delayed_extent_op, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %update_flags52 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %update_flags52, align 1
  %35 = ptrtoint ptr %extent_op to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load ptr, ptr %extent_op, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %if.end44.if.end53_crit_edge
  %36 = phi ptr [ %.pr, %if.then47 ], [ %24, %if.end44.if.end53_crit_edge ]
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end53.if.end56_crit_edge, label %if.then.i

if.end53.if.end56_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %37 = load ptr, ptr @btrfs_delayed_extent_op_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %37, ptr noundef nonnull %36) #13
  br label %if.end56

if.end56:                                         ; preds = %if.then.i, %if.end53.if.end56_crit_edge, %if.then33, %if.end28.if.end56_crit_edge
  %total_ref_mod = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %existing, i32 0, i32 9
  %38 = ptrtoint ptr %total_ref_mod to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %total_ref_mod, align 4
  %ref_mod = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %update, i32 0, i32 10
  %40 = ptrtoint ptr %ref_mod to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ref_mod, align 8
  %ref_mod57 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %existing, i32 0, i32 10
  %42 = ptrtoint ptr %ref_mod57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ref_mod57, align 8
  %add = add i32 %43, %41
  store i32 %add, ptr %ref_mod57, align 8
  %44 = load i32, ptr %ref_mod, align 8
  %add60 = add i32 %44, %39
  store i32 %add60, ptr %total_ref_mod, align 4
  %45 = ptrtoint ptr %is_data to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load62 = load i8, ptr %is_data, align 4
  %46 = and i8 %bf.load62, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool66.not = icmp eq i8 %46, 0
  br i1 %tobool66.not, label %if.end56.if.end89_crit_edge, label %if.then67

if.end56.if.end89_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.then67:                                        ; preds = %if.end56
  %num_bytes68 = getelementptr inbounds %struct.btrfs_delayed_ref_head, ptr %existing, i32 0, i32 1
  %47 = ptrtoint ptr %num_bytes68 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %num_bytes68, align 8
  %sectorsize_bits.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 168
  %49 = ptrtoint ptr %sectorsize_bits.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sectorsize_bits.i, align 8
  %sh_prom.i = zext i32 %50 to i64
  %shr.i = lshr i64 %48, %sh_prom.i
  %csums_per_leaf.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 170
  %51 = ptrtoint ptr %csums_per_leaf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %csums_per_leaf.i, align 8
  %conv.i = zext i32 %52 to i64
  %add.i = add nsw i64 %conv.i, -1
  %sub.i = add i64 %add.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp171.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp171.i, label %if.then175.i, label %if.else181.i, !prof !83

if.then175.i:                                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #15
  %conv176.i = trunc i64 %sub.i to i32
  %div179.i = udiv i32 %conv176.i, %52
  br label %btrfs_csum_bytes_to_leaves.exit

if.else181.i:                                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #15
  %53 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %52, i64 %sub.i) #19, !srcloc !98
  %asmresult1.i.i = extractvalue { i64, i64 } %53, 1
  %extract.t136 = trunc i64 %asmresult1.i.i to i32
  br label %btrfs_csum_bytes_to_leaves.exit

btrfs_csum_bytes_to_leaves.exit:                  ; preds = %if.else181.i, %if.then175.i
  %_tmp.0.i.off0 = phi i32 [ %div179.i, %if.then175.i ], [ %extract.t136, %if.else181.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add60)
  %cmp70 = icmp sgt i32 %add60, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp71 = icmp slt i32 %39, 0
  %or.cond = and i1 %cmp71, %cmp70
  br i1 %or.cond, label %if.then72, label %if.end74

if.then72:                                        ; preds = %btrfs_csum_bytes_to_leaves.exit
  %pending_csums = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 23, i32 6
  %54 = ptrtoint ptr %pending_csums to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %pending_csums, align 8
  %sub = sub i64 %55, %48
  store i64 %sub, ptr %pending_csums, align 8
  %delayed_refs_rsv.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 24
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 166
  %56 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nodesize.i.i, align 8
  %conv.i.i = zext i32 %57 to i64
  %conv2.i.i = zext i32 %_tmp.0.i.off0 to i64
  %mul1.i.i = shl nuw nsw i64 %conv2.i.i, 4
  %mul3.i.i = mul i64 %mul1.i.i, %conv.i.i
  %mount_opt.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 31
  %58 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mount_opt.i, align 8
  %and.i = lshr i32 %59, 25
  %and.lobit.i = and i32 %and.i, 1
  %60 = zext i32 %and.lobit.i to i64
  %spec.select.i = shl i64 %mul3.i.i, %60
  %call1.i = tail call i64 @btrfs_block_rsv_release(ptr noundef %3, ptr noundef %delayed_refs_rsv.i, i64 noundef %spec.select.i, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1.i)
  %tobool2.not.i = icmp eq i64 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then72.if.end89_crit_edge, label %if.then3.i

if.then72.if.end89_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.then3.i:                                       ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %3, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef %call1.i, i32 noundef 0) #13
  br label %if.end89

if.end74:                                         ; preds = %btrfs_csum_bytes_to_leaves.exit
  %61 = ptrtoint ptr %total_ref_mod to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %total_ref_mod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp76 = icmp slt i32 %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp79 = icmp sgt i32 %39, -1
  %or.cond130 = select i1 %cmp76, i1 %cmp79, i1 false
  br i1 %or.cond130, label %if.then81, label %if.end74.if.end89_crit_edge

if.end74.if.end89_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.then81:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %num_bytes68 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %num_bytes68, align 8
  %pending_csums83 = getelementptr inbounds %struct.btrfs_transaction, ptr %1, i32 0, i32 23, i32 6
  %65 = ptrtoint ptr %pending_csums83 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %pending_csums83, align 8
  %add84 = add i64 %66, %64
  store i64 %add84, ptr %pending_csums83, align 8
  %delayed_ref_updates = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 3
  %67 = ptrtoint ptr %delayed_ref_updates to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %delayed_ref_updates, align 8
  %conv87 = add i32 %68, %_tmp.0.i.off0
  store i32 %conv87, ptr %delayed_ref_updates, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then81, %if.end74.if.end89_crit_edge, %if.then3.i, %if.then72.if.end89_crit_edge, %if.end56.if.end89_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_add_delayed_ref_head(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_add_delayed_tree_ref(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_add_delayed_data_ref(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { cold noreturn }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readnone }
attributes #20 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !48, !49, !50, !51, !52, !54, !55, !57, !58, !60, !61, !63, !65, !67, !68, !70}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/delayed-ref.c", i32 100, i32 42}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/delayed-ref.c", i32 421, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/btrfs/delayed-ref.c", i32 537, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @btrfs_check_delayed_seq.__UNIQUE_ID_ddebug927, !5, !"__UNIQUE_ID_ddebug927", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/btrfs/delayed-ref.c", i32 932, i32 2}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/delayed-ref.c", i32 1025, i32 2}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/btrfs/delayed-ref.c", i32 1149, i32 5}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/delayed-ref.c", i32 1156, i32 5}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/delayed-ref.c", i32 1163, i32 5}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/btrfs/delayed-ref.c", i32 1170, i32 5}
!22 = !{ptr @btrfs_delayed_ref_head_cachep, !23, !"btrfs_delayed_ref_head_cachep", i1 false, i1 false}
!23 = !{!"../fs/btrfs/delayed-ref.c", i32 16, i32 20}
!24 = !{ptr @btrfs_delayed_tree_ref_cachep, !25, !"btrfs_delayed_tree_ref_cachep", i1 false, i1 false}
!25 = !{!"../fs/btrfs/delayed-ref.c", i32 17, i32 20}
!26 = !{ptr @btrfs_delayed_data_ref_cachep, !27, !"btrfs_delayed_data_ref_cachep", i1 false, i1 false}
!27 = !{!"../fs/btrfs/delayed-ref.c", i32 18, i32 20}
!28 = !{ptr @btrfs_delayed_extent_op_cachep, !29, !"btrfs_delayed_extent_op_cachep", i1 false, i1 false}
!29 = !{!"../fs/btrfs/delayed-ref.c", i32 19, i32 20}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/trace/events/btrfs.h", i32 1052, i32 1}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!34 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/btrfs/space-info.h", i32 110, i32 1}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/trace/events/btrfs.h", i32 2250, i32 1}
!43 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/btrfs/delayed-ref.h", i32 318, i32 2}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @assertfail._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @assertfail._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @init_delayed_ref_head.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../fs/btrfs/delayed-ref.c", i32 785, i32 2}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @init_delayed_ref_head.__key.22, !56, !"__key", i1 false, i1 false}
!56 = !{!"../fs/btrfs/delayed-ref.c", i32 786, i32 2}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/trace/events/btrfs.h", i32 937, i32 1}
!60 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/btrfs/delayed-ref.c", i32 631, i32 5}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/btrfs/delayed-ref.c", i32 634, i32 5}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../include/trace/events/btrfs.h", i32 821, i32 1}
!67 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../include/trace/events/btrfs.h", i32 888, i32 1}
!70 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2158330078}
!82 = !{i64 2148263475, i64 2148263480, i64 2148263493, i64 2148263537, i64 2148263571, i64 2148263592}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2155402465}
!85 = !{i64 2155402742}
!86 = !{i64 2149286155}
!87 = !{i64 2149287191}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 2148451612, i64 2148451644, i64 2148451673, i64 2148451707, i64 2148451738, i64 2148451761}
!90 = !{i64 2148539613}
!91 = !{i64 2148454077, i64 2148454109, i64 2148454138, i64 2148454172, i64 2148454203, i64 2148454226}
!92 = !{i64 2149585583}
!93 = !{i64 2148452547, i64 2148452573, i64 2148452602, i64 2148452636, i64 2148452667, i64 2148452690}
!94 = !{!"auto-init"}
!95 = !{i8 0, i8 2}
!96 = !{i64 2158360699, i64 2158361186, i64 2158360736, i64 2158360792, i64 2158360826, i64 2158360850, i64 2158360891, i64 2158360912, i64 2158360940, i64 2158360974}
!97 = !{i64 2158211394, i64 2158211876, i64 2158211431, i64 2158211487, i64 2158211521, i64 2158211545, i64 2158211586, i64 2158211607, i64 2158211635, i64 2158211669}
!98 = !{i64 2148288662, i64 2148288942, i64 2148289276, i64 2148289610}
!99 = !{i64 2148450082, i64 2148450108, i64 2148450137, i64 2148450171, i64 2148450202, i64 2148450225}
!100 = !{i64 2155230303}
!101 = !{i64 2155230566}
!102 = !{i64 2155272208}
!103 = !{i64 2155272471}
!104 = !{i64 2156426682}
!105 = !{i64 2156426935}
!106 = !{i64 2158252816, i64 2158253303, i64 2158252853, i64 2158252909, i64 2158252943, i64 2158252967, i64 2158253008, i64 2158253029, i64 2158253057, i64 2158253091}
!107 = !{i64 2155309377}
!108 = !{i64 2155309630}
!109 = !{i64 2158356478, i64 2158356965, i64 2158356515, i64 2158356571, i64 2158356605, i64 2158356629, i64 2158356670, i64 2158356691, i64 2158356719, i64 2158356753}
