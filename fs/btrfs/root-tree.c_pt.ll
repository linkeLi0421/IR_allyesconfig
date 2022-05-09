; ModuleID = '/llk/IR_all_yes/fs/btrfs/root-tree.c_pt.bc'
source_filename = "../fs/btrfs/root-tree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.btrfs_item_batch = type { ptr, ptr, i32, i32 }
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.78, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
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
%union.anon.78 = type { i64 }
%struct.btrfs_root_ref = type <{ i64, i64, i16 }>
%struct.timespec64 = type { i64, i32 }

@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\012unable to find root key (%llu %u %llu) in tree %llu\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/btrfs/root-tree.c\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017BTRFS: Transaction aborted (error %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"btrfs_update_root\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Transaction aborted (error %d)\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017Transaction aborted (error %d)\00", [63 x i8] zeroinitializer }, align 32
@btrfs_update_root.__UNIQUE_ID_ddebug927 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.5, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@btrfs_update_root.__UNIQUE_ID_ddebug928 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.5, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@btrfs_update_root.__UNIQUE_ID_ddebug929 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.5, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__func__.btrfs_find_orphan_roots = private unnamed_addr constant [24 x i8] c"btrfs_find_orphan_roots\00", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to start trans to delete orphan item\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to delete root orphan item\00", [62 x i8] zeroinitializer }, align 32
@btrfs_add_root_ref.__UNIQUE_ID_ddebug930 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.9, ptr @.str.1, ptr @.str.5, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"btrfs_add_root_ref\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [142 x i8], [50 x i8] } { [142 x i8] c"\014mismatching generation and generation_v2 found in root item. This root was probably mounted with an older kernel. Resetting all new fields.\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 4294967266, i64 4294967291]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 137, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 142, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 264, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 272, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 426, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [24 x i8] c"../fs/btrfs/root-tree.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 36, i32 4 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 142, i32 192, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_find_root(ptr noundef %root, ptr noundef %search_key, ptr noundef %path, ptr noundef %root_item, ptr noundef writeonly %root_key) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %root, ptr noundef %search_key, ptr noundef %path, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct.btrfs_key, ptr %search_key, i32 0, i32 2
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %offset, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %1)
  %cmp1.not = icmp eq i64 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %do.body, label %if.then2

if.then2:                                         ; preds = %if.end
  br i1 %cmp6, label %if.then2.if.end21_crit_edge, label %if.then2.out_crit_edge

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then2.if.end21_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.body:                                          ; preds = %if.end
  br i1 %cmp6, label %do.body9, label %do.end15, !prof !35

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/root-tree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #6, !srcloc !36
  unreachable

do.end15:                                         ; preds = %do.body
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp16 = icmp eq i32 %3, 0
  br i1 %cmp16, label %do.end15.out_crit_edge, label %if.end18

do.end15.out_crit_edge:                           ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i32 %3, -1
  %4 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %slots, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %if.then2.if.end21_crit_edge
  %5 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %path, align 4
  %slots23 = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %7 = ptrtoint ptr %slots23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slots23, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #6
  %9 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %mul.i.i.i.i = mul i32 %8, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %11 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %6, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #6
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %10, align 1
  %14 = call i64 @llvm.bswap.i64(i64 %13) #6
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %9, align 8
  %17 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %disk_key.i, align 8
  %19 = call i64 @llvm.bswap.i64(i64 %18) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #6
  %20 = ptrtoint ptr %search_key to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %search_key, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp26.not = icmp eq i64 %19, %21
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %16)
  %cmp27.not = icmp eq i8 %16, -124
  %or.cond = select i1 %cmp26.not, i1 %cmp27.not, i1 false
  br i1 %or.cond, label %if.end30, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end30:                                         ; preds = %if.end21
  %tobool31.not = icmp eq ptr %root_item, null
  br i1 %tobool31.not, label %if.end30.if.end33_crit_edge, label %if.then32

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then32:                                        ; preds = %if.end30
  %22 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i.i = call i32 @btrfs_get_32(ptr noundef %6, ptr noundef %22, i32 noundef 21) #6
  %call.i.i31.i = call i32 @btrfs_get_32(ptr noundef %6, ptr noundef %22, i32 noundef 17) #6
  %add.i = add i32 %call.i.i31.i, 101
  call void @__sanitizer_cov_trace_const_cmp4(i32 439, i32 %call.i.i.i)
  %cmp.i = icmp ult i32 %call.i.i.i, 439
  %23 = call i32 @llvm.umin.i32(i32 %call.i.i.i, i32 439) #6
  call void @read_extent_buffer(ptr noundef %6, ptr noundef nonnull %root_item, i32 noundef %add.i, i32 noundef %23) #6
  br i1 %cmp.i, label %if.then32.if.then13.i_crit_edge, label %land.lhs.true.i

if.then32.if.then13.i_crit_edge:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13.i

land.lhs.true.i:                                  ; preds = %if.then32
  %generation.i.i = getelementptr inbounds %struct.btrfs_root_item, ptr %root_item, i32 0, i32 1
  %24 = ptrtoint ptr %generation.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %generation.i.i, align 1
  %generation_v2.i.i = getelementptr inbounds %struct.btrfs_root_item, ptr %root_item, i32 0, i32 12
  %26 = ptrtoint ptr %generation_v2.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %generation_v2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %27)
  %cmp5.not.i = icmp eq i64 %25, %27
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end33_crit_edge, label %if.then6.i

land.lhs.true.i.if.end33_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp8.not.i = icmp eq i64 %27, 0
  br i1 %cmp8.not.i, label %if.then6.i.if.then13.i_crit_edge, label %if.then9.i

if.then6.i.if.then13.i_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %fs_info.i = getelementptr inbounds %struct.extent_buffer, ptr %6, i32 0, i32 3
  %28 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fs_info.i, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %29, ptr noundef nonnull @.str.10) #9
  br label %if.then13.i

if.then13.i:                                      ; preds = %if.then9.i, %if.then6.i.if.then13.i_crit_edge, %if.then32.if.then13.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %root_item, i32 239
  %30 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 200)
  %uuid.i = getelementptr inbounds %struct.btrfs_root_item, ptr %root_item, i32 0, i32 13
  call void @generate_random_guid(ptr noundef %uuid.i) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then13.i, %land.lhs.true.i.if.end33_crit_edge, %if.end30.if.end33_crit_edge
  %tobool34.not = icmp eq ptr %root_key, null
  br i1 %tobool34.not, label %if.end33.out_crit_edge, label %if.then35

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %root_key to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %19, ptr %root_key, align 1
  %found_key.sroa.6.0.root_key.sroa_idx = getelementptr inbounds i8, ptr %root_key, i32 8
  %32 = ptrtoint ptr %found_key.sroa.6.0.root_key.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -124, ptr %found_key.sroa.6.0.root_key.sroa_idx, align 1
  %found_key.sroa.9.0.root_key.sroa_idx = getelementptr inbounds i8, ptr %root_key, i32 9
  %33 = ptrtoint ptr %found_key.sroa.9.0.root_key.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %14, ptr %found_key.sroa.9.0.root_key.sroa_idx, align 1
  br label %out

out:                                              ; preds = %if.then35, %if.end33.out_crit_edge, %if.end21.out_crit_edge, %do.end15.out_crit_edge, %if.then2.out_crit_edge
  %ret.1 = phi i32 [ %call, %if.then2.out_crit_edge ], [ 0, %if.then35 ], [ 0, %if.end33.out_crit_edge ], [ %call, %do.end15.out_crit_edge ], [ 1, %if.end21.out_crit_edge ]
  call void @btrfs_release_path(ptr noundef %path) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_set_root_node(ptr nocapture noundef writeonly %item, ptr nocapture noundef readonly %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %node, align 8
  %bytenr.i = getelementptr inbounds %struct.btrfs_root_item, ptr %item, i32 0, i32 3
  %2 = tail call i64 @llvm.bswap.i64(i64 %1) #6
  %3 = ptrtoint ptr %bytenr.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %2, ptr %bytenr.i, align 1
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %node, i32 0, i32 12
  %4 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %5) #6
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %node, align 8
  %conv.i = trunc i64 %7 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %8 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %level.i, align 1
  %level.i6 = getelementptr inbounds %struct.btrfs_root_item, ptr %item, i32 0, i32 11
  %10 = ptrtoint ptr %level.i6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %level.i6, align 1
  %11 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages.i, align 4
  %call.i8 = tail call ptr @page_address(ptr noundef %12) #6
  %13 = ptrtoint ptr %node to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %node, align 8
  %conv.i9 = trunc i64 %14 to i32
  %and.i10 = and i32 %conv.i9, 4095
  %add.ptr.i11 = getelementptr i8, ptr %call.i8, i32 %and.i10
  %generation.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i11, i32 0, i32 5
  %15 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %generation.i, align 1
  %generation.i12 = getelementptr inbounds %struct.btrfs_root_item, ptr %item, i32 0, i32 1
  %17 = ptrtoint ptr %generation.i12 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %generation.i12, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_update_root(ptr noundef %trans, ptr noundef %root, ptr noundef %key, ptr noundef %item) local_unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %call = tail call ptr @btrfs_alloc_path() #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef %key, ptr noundef nonnull %call, i32 noundef 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp5.not = icmp eq i32 %call2, 0
  br i1 %cmp5.not, label %if.end54, label %if.then6

if.then6:                                         ; preds = %if.end4
  %2 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %key, align 1
  %type = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  %conv = zext i8 %5 to i32
  %offset = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %offset, align 1
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %8 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %root_key, align 1
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str, i64 noundef %3, i32 noundef %conv, i64 noundef %7, i64 noundef %9) #9
  %fs_info8 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %10 = ptrtoint ptr %fs_info8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fs_info8, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %11, i32 0, i32 149
  %call9 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end, label %if.then6.if.end51_crit_edge

if.then6.if.end51_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 142, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef -117) #6
  br label %if.end51

if.end51:                                         ; preds = %do.end, %if.then6.if.end51_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.4, i32 noundef 142, i32 noundef -117) #9
  br label %out

if.end54:                                         ; preds = %if.end4
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %15, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %16 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = tail call i32 @btrfs_get_32(ptr noundef %13, ptr noundef %16, i32 noundef 17) #6
  %call.i.i353 = tail call i32 @btrfs_get_32(ptr noundef %13, ptr noundef %16, i32 noundef 21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 439, i32 %call.i.i353)
  %cmp58 = icmp ult i32 %call.i.i353, 439
  br i1 %cmp58, label %if.then60, label %if.end54.if.end262_crit_edge

if.end54.if.end262_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end262

if.then60:                                        ; preds = %if.end54
  tail call void @btrfs_release_path(ptr noundef nonnull %call) #6
  %call61 = tail call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef %key, ptr noundef nonnull %call, i32 noundef -1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %do.body65, label %if.end125

do.body65:                                        ; preds = %if.then60
  %fs_info66 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %17 = ptrtoint ptr %fs_info66 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fs_info66, align 4
  %fs_state67 = getelementptr inbounds %struct.btrfs_fs_info, ptr %18, i32 0, i32 149
  %call68 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %do.body65.if.end122_crit_edge

do.body65.if.end122_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122

if.then70:                                        ; preds = %do.body65
  %19 = zext i32 %call61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call61, label %do.end89 [
    i32 -5, label %if.then70.do.body104_crit_edge
    i32 -30, label %if.then70.do.body104_crit_edge361
  ]

if.then70.do.body104_crit_edge361:                ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body104

if.then70.do.body104_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body104

do.end89:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 161, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %call61) #6
  br label %if.end122

do.body104:                                       ; preds = %if.then70.do.body104_crit_edge, %if.then70.do.body104_crit_edge361
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_update_root.__UNIQUE_ID_ddebug927, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_update_root, %if.then116)) #6
          to label %if.end122 [label %if.then116], !srcloc !37

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %fs_info66 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fs_info66, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %21, ptr noundef nonnull @.str.6, i32 noundef %call61) #9
  br label %if.end122

if.end122:                                        ; preds = %if.then116, %do.body104, %do.end89, %do.body65.if.end122_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.4, i32 noundef 161, i32 noundef %call61) #9
  br label %out

if.end125:                                        ; preds = %if.then60
  %22 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slots, align 4
  %call.i = tail call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %call, i32 noundef %23, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp127 = icmp slt i32 %call.i, 0
  br i1 %cmp127, label %do.body130, label %if.end190

do.body130:                                       ; preds = %if.end125
  %fs_info131 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %24 = ptrtoint ptr %fs_info131 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fs_info131, align 4
  %fs_state132 = getelementptr inbounds %struct.btrfs_fs_info, ptr %25, i32 0, i32 149
  %call133 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state132) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then135, label %do.body130.if.end187_crit_edge

do.body130.if.end187_crit_edge:                   ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end187

if.then135:                                       ; preds = %do.body130
  %26 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call.i, label %do.end154 [
    i32 -5, label %if.then135.do.body169_crit_edge
    i32 -30, label %if.then135.do.body169_crit_edge362
  ]

if.then135.do.body169_crit_edge362:               ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body169

if.then135.do.body169_crit_edge:                  ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body169

do.end154:                                        ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 167, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %call.i) #6
  br label %if.end187

do.body169:                                       ; preds = %if.then135.do.body169_crit_edge, %if.then135.do.body169_crit_edge362
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_update_root.__UNIQUE_ID_ddebug928, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_update_root, %if.then181)) #6
          to label %if.end187 [label %if.then181], !srcloc !37

if.then181:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %fs_info131 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fs_info131, align 4
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %28, ptr noundef nonnull @.str.6, i32 noundef %call.i) #9
  br label %if.end187

if.end187:                                        ; preds = %if.then181, %do.body169, %do.end154, %do.body130.if.end187_crit_edge
  tail call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.4, i32 noundef 167, i32 noundef %call.i) #9
  br label %out

if.end190:                                        ; preds = %if.end125
  tail call void @btrfs_release_path(ptr noundef nonnull %call) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %29 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 439, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #6
  %30 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %31 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %32 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  %33 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %key, ptr %batch.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %data_size.addr.i, ptr %30, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 439, ptr %31, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %32, align 4
  %call.i354 = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %call, ptr noundef nonnull %batch.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i354)
  %cmp192 = icmp slt i32 %call.i354, 0
  br i1 %cmp192, label %do.body195, label %if.end255

do.body195:                                       ; preds = %if.end190
  %fs_info196 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %37 = ptrtoint ptr %fs_info196 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fs_info196, align 4
  %fs_state197 = getelementptr inbounds %struct.btrfs_fs_info, ptr %38, i32 0, i32 149
  %call198 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state197) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %if.then200, label %do.body195.if.end252_crit_edge

do.body195.if.end252_crit_edge:                   ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

if.then200:                                       ; preds = %do.body195
  %39 = zext i32 %call.i354 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %call.i354, label %do.end219 [
    i32 -5, label %if.then200.do.body234_crit_edge
    i32 -30, label %if.then200.do.body234_crit_edge363
  ]

if.then200.do.body234_crit_edge363:               ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body234

if.then200.do.body234_crit_edge:                  ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body234

do.end219:                                        ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 174, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %call.i354) #6
  br label %if.end252

do.body234:                                       ; preds = %if.then200.do.body234_crit_edge, %if.then200.do.body234_crit_edge363
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_update_root.__UNIQUE_ID_ddebug929, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_update_root, %if.then246)) #6
          to label %if.end252 [label %if.then246], !srcloc !37

if.then246:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %fs_info196 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fs_info196, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %41, ptr noundef nonnull @.str.6, i32 noundef %call.i354) #9
  br label %if.end252

if.end252:                                        ; preds = %if.then246, %do.body234, %do.end219, %do.body195.if.end252_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.4, i32 noundef 174, i32 noundef %call.i354) #9
  br label %out

if.end255:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call, align 4
  %44 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %slots, align 4
  %mul.i.i.i355 = mul i32 %45, 25
  %add.i.i.i356 = add i32 %mul.i.i.i355, 101
  %46 = inttoptr i32 %add.i.i.i356 to ptr
  %call.i.i357 = call i32 @btrfs_get_32(ptr noundef %43, ptr noundef %46, i32 noundef 17) #6
  br label %if.end262

if.end262:                                        ; preds = %if.end255, %if.end54.if.end262_crit_edge
  %ptr.0.in = phi i32 [ %call.i.i357, %if.end255 ], [ %call.i.i, %if.end54.if.end262_crit_edge ]
  %ret.0 = phi i32 [ %call.i354, %if.end255 ], [ 0, %if.end54.if.end262_crit_edge ]
  %l.0 = phi ptr [ %43, %if.end255 ], [ %13, %if.end54.if.end262_crit_edge ]
  %ptr.0 = add i32 %ptr.0.in, 101
  %generation.i = getelementptr inbounds %struct.btrfs_root_item, ptr %item, i32 0, i32 1
  %47 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %generation.i, align 1
  %generation_v2.i = getelementptr inbounds %struct.btrfs_root_item, ptr %item, i32 0, i32 12
  %49 = ptrtoint ptr %generation_v2.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %48, ptr %generation_v2.i, align 1
  call void @write_extent_buffer(ptr noundef %l.0, ptr noundef %item, i32 noundef %ptr.0, i32 noundef 439) #6
  %50 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call, align 4
  call void @btrfs_mark_buffer_dirty(ptr noundef %51) #6
  br label %out

out:                                              ; preds = %if.end262, %if.end252, %if.end187, %if.end122, %if.end51, %if.end.out_crit_edge
  %ret.1 = phi i32 [ %call2, %if.end.out_crit_edge ], [ -117, %if.end51 ], [ %call61, %if.end122 ], [ %call.i, %if.end187 ], [ %call.i354, %if.end252 ], [ %ret.0, %if.end262 ]
  call void @btrfs_free_path(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_abort_transaction(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_insert_root(ptr noundef %trans, ptr noundef %root, ptr noundef %key, ptr noundef %item) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %generation.i = getelementptr inbounds %struct.btrfs_root_item, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %generation.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %generation.i, align 1
  %generation_v2.i = getelementptr inbounds %struct.btrfs_root_item, ptr %item, i32 0, i32 12
  %2 = ptrtoint ptr %generation_v2.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %generation_v2.i, align 1
  %call1 = tail call i32 @btrfs_insert_item(ptr noundef %trans, ptr noundef %root, ptr noundef %key, ptr noundef %item, i32 noundef 439) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_item(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_find_orphan_roots(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tree_root1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 2
  %0 = ptrtoint ptr %tree_root1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tree_root1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #6
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %call = tail call ptr @btrfs_alloc_path() #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup104_crit_edge, label %if.end

entry.cleanup104_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup104

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -5, ptr %key, align 8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 48, ptr %2, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %3, align 1
  %call2166 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %1, ptr noundef nonnull %key, ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2166)
  %cmp167 = icmp slt i32 %call2166, 0
  br i1 %cmp167, label %if.end.while.end_crit_edge, label %if.end4.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end4.lr.ph:                                    ; preds = %if.end
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %7 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 1
  br label %if.end4

if.end4:                                          ; preds = %cleanup103.if.end4_crit_edge, %if.end4.lr.ph
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %11 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %slots, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %10, i32 0, i32 12
  %13 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %14) #6
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %10, align 8
  %conv.i = trunc i64 %16 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %17 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %nritems.i, align 1
  %19 = call i32 @llvm.bswap.i32(i32 %18) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %19)
  %cmp7.not = icmp ult i32 %12, %19
  br i1 %cmp7.not, label %if.end4.if.end18_crit_edge, label %if.then8

if.end4.if.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then8:                                         ; preds = %if.end4
  %call.i150 = call i32 @btrfs_next_old_leaf(ptr noundef %1, ptr noundef nonnull %call, i64 noundef 0) #6
  %20 = call i32 @llvm.smin.i32(i32 %call.i150, i32 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %cmp13.not = icmp eq i32 %call.i150, 0
  br i1 %cmp13.not, label %if.end15, label %if.then8.while.end_crit_edge

if.then8.while.end_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end15:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end4.if.end18_crit_edge
  %leaf.0 = phi ptr [ %22, %if.end15 ], [ %10, %if.end4.if.end18_crit_edge ]
  %err.2 = phi i32 [ %20, %if.end15 ], [ 0, %if.end4.if.end18_crit_edge ]
  %23 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #6
  %mul.i.i.i.i = mul i32 %24, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %25 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %leaf.0, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #6
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %8, align 1
  %28 = call i64 @llvm.bswap.i64(i64 %27) #6
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %3, align 1
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %7, align 8
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %2, align 8
  %33 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %disk_key.i, align 8
  %35 = call i64 @llvm.bswap.i64(i64 %34) #6
  %36 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #6
  call void @btrfs_release_path(ptr noundef nonnull %call) #6
  %37 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %key, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5, i64 %38)
  %cmp22.not = icmp eq i64 %38, -5
  br i1 %cmp22.not, label %lor.lhs.false, label %if.end18.while.end_crit_edge

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

lor.lhs.false:                                    ; preds = %if.end18
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %40)
  %cmp24.not = icmp eq i8 %40, 48
  br i1 %cmp24.not, label %if.end27, label %lor.lhs.false.while.end_crit_edge

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end27:                                         ; preds = %lor.lhs.false
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %3, align 1
  %inc = add i64 %42, 1
  store i64 %inc, ptr %3, align 1
  %call30 = call ptr @btrfs_get_fs_root(ptr noundef %fs_info, i64 noundef %42, i1 noundef zeroext false) #6
  %cmp.i.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  %43 = ptrtoint ptr %call30 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %43, i32 0
  %44 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %spec.select.i, label %while.end.loopexit.split.loop.exit [
    i32 -2, label %if.then38
    i32 0, label %if.end53
  ]

if.then38:                                        ; preds = %if.end27
  call void @btrfs_release_path(ptr noundef nonnull %call) #6
  %call39 = call ptr @btrfs_join_transaction(ptr noundef %1) #6
  %cmp.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %call39 to i32
  call void (ptr, ptr, i32, i32, ptr, ...) @__btrfs_handle_fs_error(ptr noundef %fs_info, ptr noundef nonnull @__func__.btrfs_find_orphan_roots, i32 noundef 265, i32 noundef %45, ptr noundef nonnull @.str.7) #9
  br label %while.end

if.end43:                                         ; preds = %if.then38
  %call44 = call i32 @btrfs_del_orphan_item(ptr noundef %call39, ptr noundef %1, i64 noundef %42) #6
  %call45 = call i32 @btrfs_end_transaction(ptr noundef %call39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool46.not = icmp eq i32 %call44, 0
  br i1 %tobool46.not, label %if.end43.cleanup103_crit_edge, label %do.body48

if.end43.cleanup103_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

do.body48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, i32, i32, ptr, ...) @__btrfs_handle_fs_error(ptr noundef %fs_info, ptr noundef nonnull @__func__.btrfs_find_orphan_roots, i32 noundef 273, i32 noundef %call44, ptr noundef nonnull @.str.8) #9
  br label %while.end

if.end53:                                         ; preds = %if.end27
  %state = getelementptr inbounds %struct.btrfs_root, ptr %call30, i32 0, i32 5
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %state, align 4
  %48 = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool55.not = icmp eq i32 %48, 0
  br i1 %tobool55.not, label %do.end68, label %if.end53.if.end74_crit_edge, !prof !35

if.end53.if.end74_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

do.end68:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 279, i32 noundef 9, ptr noundef null) #6
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %if.end53.if.end74_crit_edge
  %refs.i = getelementptr inbounds %struct.btrfs_root, ptr %call30, i32 0, i32 6, i32 8
  %49 = ptrtoint ptr %refs.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %refs.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp82 = icmp eq i32 %50, 0
  br i1 %cmp82, label %if.then84, label %if.end74.if.end102_crit_edge

if.end74.if.end102_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.then84:                                        ; preds = %if.end74
  %drop_progress = getelementptr inbounds %struct.btrfs_root, ptr %call30, i32 0, i32 6, i32 9
  %offset.i = getelementptr inbounds %struct.btrfs_root, ptr %call30, i32 0, i32 6, i32 9, i32 2
  %51 = ptrtoint ptr %offset.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %offset.i, align 1
  %type.i = getelementptr inbounds %struct.btrfs_root, ptr %call30, i32 0, i32 6, i32 9, i32 1
  %53 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %type.i, align 1
  %55 = ptrtoint ptr %drop_progress to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %drop_progress, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %cmp87.not = icmp eq i64 %56, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp92.not = icmp eq i8 %54, 0
  %or.cond = select i1 %cmp87.not, i1 %cmp92.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %52)
  %cmp96.not = icmp eq i64 %52, 0
  %or.cond156 = select i1 %or.cond, i1 %cmp96.not, i1 false
  br i1 %or.cond156, label %if.then84.if.end100_crit_edge, label %if.then98

if.then84.if.end100_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then98:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef 21, ptr noundef %flags) #6
  call void @_set_bit(i32 noundef 15, ptr noundef %state) #6
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.then84.if.end100_crit_edge
  call void @_set_bit(i32 noundef 11, ptr noundef %state) #6
  call void @btrfs_add_dead_root(ptr noundef %call30) #6
  br label %if.end102

if.end102:                                        ; preds = %if.end100, %if.end74.if.end102_crit_edge
  call void @btrfs_put_root(ptr noundef %call30) #6
  br label %cleanup103

cleanup103:                                       ; preds = %if.end102, %if.end43.cleanup103_crit_edge
  %call2 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %1, ptr noundef nonnull %key, ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0) #6
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %cleanup103.while.end_crit_edge, label %cleanup103.if.end4_crit_edge

cleanup103.if.end4_crit_edge:                     ; preds = %cleanup103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

cleanup103.while.end_crit_edge:                   ; preds = %cleanup103
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end.loopexit.split.loop.exit:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %call30 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit.split.loop.exit, %cleanup103.while.end_crit_edge, %do.body48, %if.then41, %lor.lhs.false.while.end_crit_edge, %if.end18.while.end_crit_edge, %if.then8.while.end_crit_edge, %if.end.while.end_crit_edge
  %err.4.ph = phi i32 [ %call44, %do.body48 ], [ %45, %if.then41 ], [ %call2166, %if.end.while.end_crit_edge ], [ %57, %while.end.loopexit.split.loop.exit ], [ %call2, %cleanup103.while.end_crit_edge ], [ %20, %if.then8.while.end_crit_edge ], [ %err.2, %lor.lhs.false.while.end_crit_edge ], [ %err.2, %if.end18.while.end_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call) #6
  br label %cleanup104

cleanup104:                                       ; preds = %while.end, %entry.cleanup104_crit_edge
  %retval.0 = phi i32 [ %err.4.ph, %while.end ], [ -12, %entry.cleanup104_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_get_fs_root(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_join_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__btrfs_handle_fs_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_del_orphan_item(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_end_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_add_dead_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_del_root(ptr noundef %trans, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 4
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tree_root, align 4
  %call = tail call ptr @btrfs_alloc_path() #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %3, ptr noundef %key, ptr noundef nonnull %call, i32 noundef -1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %do.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp4.not = icmp eq i32 %call1, 0
  br i1 %cmp4.not, label %do.end14, label %do.body8, !prof !38

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/root-tree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 321, 0\0A.popsection", ""() #6, !srcloc !39
  unreachable

do.end14:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slots.i, align 4
  %call.i = tail call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %3, ptr noundef nonnull %call, i32 noundef %5, i32 noundef 1) #6
  br label %out

out:                                              ; preds = %do.end14, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ %call.i, %do.end14 ]
  tail call void @btrfs_free_path(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_del_root_ref(ptr noundef %trans, i64 noundef %root_id, i64 noundef %ref_id, i64 noundef %dirid, ptr nocapture noundef writeonly %sequence, ptr noundef %name, i32 noundef %name_len) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 4
  %tree_root1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tree_root1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tree_root1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #6
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %5 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %call = tail call ptr @btrfs_alloc_path() #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %again.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

again.preheader:                                  ; preds = %entry
  %6 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %root_id, ptr %key, align 8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -112, ptr %4, align 8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %ref_id, ptr %5, align 1
  %call268 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %3, ptr noundef nonnull %key, ptr noundef nonnull %call, i32 noundef -1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268)
  %cmp69 = icmp slt i32 %call268, 0
  br i1 %cmp69, label %again.preheader.out_crit_edge, label %if.end4.lr.ph

again.preheader.out_crit_edge:                    ; preds = %again.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end4.lr.ph:                                    ; preds = %again.preheader
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  br label %if.end4

if.end4:                                          ; preds = %if.then29.if.end4_crit_edge, %if.end4.lr.ph
  %call271 = phi i32 [ %call268, %if.end4.lr.ph ], [ %call2, %if.then29.if.end4_crit_edge ]
  %err.070 = phi i32 [ 0, %if.end4.lr.ph ], [ %err.1, %if.then29.if.end4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call271)
  %cmp5 = icmp eq i32 %call271, 0
  br i1 %cmp5, label %if.then6, label %if.end4.if.end24_crit_edge

if.end4.if.end24_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then6:                                         ; preds = %if.end4
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %11 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %12, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %13 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %10, ptr noundef %13, i32 noundef 17) #6
  %add = add i32 %call.i.i, 101
  %14 = inttoptr i32 %add to ptr
  %add.ptr = getelementptr %struct.btrfs_root_ref, ptr %14, i32 1
  %15 = ptrtoint ptr %add.ptr to i32
  %call.i = call i64 @btrfs_get_64(ptr noundef %10, ptr noundef %14, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %dirid)
  %cmp10.not = icmp eq i64 %call.i, %dirid
  br i1 %cmp10.not, label %lor.lhs.false, label %if.then6.out_crit_edge

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false:                                    ; preds = %if.then6
  %call.i65 = call zeroext i16 @btrfs_get_16(ptr noundef %10, ptr noundef %14, i32 noundef 16) #6
  %conv = zext i16 %call.i65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %name_len)
  %cmp12.not = icmp eq i32 %conv, %name_len
  br i1 %cmp12.not, label %lor.lhs.false14, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %call15 = call i32 @memcmp_extent_buffer(ptr noundef %10, ptr noundef %name, i32 noundef %15, i32 noundef %name_len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %lor.lhs.false14.out_crit_edge

lor.lhs.false14.out_crit_edge:                    ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %lor.lhs.false14
  %call.i66 = call i64 @btrfs_get_64(ptr noundef %10, ptr noundef %14, i32 noundef 8) #6
  %16 = ptrtoint ptr %sequence to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %call.i66, ptr %sequence, align 8
  %17 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slots, align 4
  %call.i67 = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %3, ptr noundef nonnull %call, i32 noundef %18, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool21.not = icmp eq i32 %call.i67, 0
  br i1 %tobool21.not, label %if.end18.if.end24_crit_edge, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end24:                                         ; preds = %if.end18.if.end24_crit_edge, %if.end4.if.end24_crit_edge
  %err.1 = phi i32 [ %err.070, %if.end18.if.end24_crit_edge ], [ -2, %if.end4.if.end24_crit_edge ]
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %20)
  %cmp27 = icmp eq i8 %20, -112
  br i1 %cmp27, label %if.then29, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then29:                                        ; preds = %if.end24
  call void @btrfs_release_path(ptr noundef nonnull %call) #6
  %21 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %ref_id, ptr %key, align 8
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -100, ptr %4, align 8
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %root_id, ptr %5, align 1
  %call2 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %3, ptr noundef nonnull %key, ptr noundef nonnull %call, i32 noundef -1, i32 noundef 1) #6
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then29.out_crit_edge, label %if.then29.if.end4_crit_edge

if.then29.if.end4_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then29.out_crit_edge:                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %if.then29.out_crit_edge, %if.end24.out_crit_edge, %if.end18.out_crit_edge, %lor.lhs.false14.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.then6.out_crit_edge, %again.preheader.out_crit_edge
  %err.2 = phi i32 [ 0, %again.preheader.out_crit_edge ], [ %call.i67, %if.end18.out_crit_edge ], [ -2, %if.then6.out_crit_edge ], [ -2, %lor.lhs.false.out_crit_edge ], [ -2, %lor.lhs.false14.out_crit_edge ], [ %err.1, %if.end24.out_crit_edge ], [ %err.1, %if.then29.out_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_add_root_ref(ptr noundef %trans, i64 noundef %root_id, i64 noundef %ref_id, i64 noundef %dirid, i64 noundef %sequence, ptr noundef %name, i32 noundef %name_len) local_unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 4
  %tree_root1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tree_root1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tree_root1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #6
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %5 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %call = tail call ptr @btrfs_alloc_path() #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %again.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

again.preheader:                                  ; preds = %entry
  %add = add i32 %name_len, 18
  %6 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  %9 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %root_id, ptr %key, align 8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -112, ptr %4, align 8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %ref_id, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %12 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #6
  %13 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %key, ptr %batch.i, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data_size.addr.i, ptr %6, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %7, align 4
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %8, align 4
  %call.i101 = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %3, ptr noundef nonnull %call, ptr noundef nonnull %batch.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool3.not102 = icmp eq i32 %call.i101, 0
  br i1 %tobool3.not102, label %if.end48.lr.ph, label %again.preheader.do.body_crit_edge

again.preheader.do.body_crit_edge:                ; preds = %again.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end48.lr.ph:                                   ; preds = %again.preheader
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %conv = trunc i32 %name_len to i16
  br label %if.end48

do.body:                                          ; preds = %if.then56.do.body_crit_edge, %again.preheader.do.body_crit_edge
  %call.i.lcssa = phi i32 [ %call.i101, %again.preheader.do.body_crit_edge ], [ %call.i, %if.then56.do.body_crit_edge ]
  %17 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fs_info, align 4
  %fs_state = getelementptr inbounds %struct.btrfs_fs_info, ptr %18, i32 0, i32 149
  %call6 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %fs_state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %do.body.if.end45_crit_edge

do.body.if.end45_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then8:                                         ; preds = %do.body
  %19 = zext i32 %call.i.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %call.i.lcssa, label %do.end [
    i32 -5, label %if.then8.do.body29_crit_edge
    i32 -30, label %if.then8.do.body29_crit_edge108
  ]

if.then8.do.body29_crit_edge108:                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body29

if.then8.do.body29_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body29

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 426, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %call.i.lcssa) #6
  br label %if.end45

do.body29:                                        ; preds = %if.then8.do.body29_crit_edge, %if.then8.do.body29_crit_edge108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btrfs_add_root_ref.__UNIQUE_ID_ddebug930, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btrfs_add_root_ref, %if.then39)) #6
          to label %if.end45 [label %if.then39], !srcloc !37

if.then39:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fs_info, align 4
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %21, ptr noundef nonnull @.str.6, i32 noundef %call.i.lcssa) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then39, %do.body29, %do.end, %do.body.if.end45_crit_edge
  call void @__btrfs_abort_transaction(ptr noundef %trans, ptr noundef nonnull @.str.9, i32 noundef 426, i32 noundef %call.i.lcssa) #9
  br label %cleanup.sink.split

if.end48:                                         ; preds = %if.then56.if.end48_crit_edge, %if.end48.lr.ph
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call, align 4
  %24 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %25, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %26 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %23, ptr noundef %26, i32 noundef 17) #6
  %add51 = add i32 %call.i.i, 101
  %27 = inttoptr i32 %add51 to ptr
  call void @btrfs_set_64(ptr noundef %23, ptr noundef %27, i32 noundef 0, i64 noundef %dirid) #6
  call void @btrfs_set_64(ptr noundef %23, ptr noundef %27, i32 noundef 8, i64 noundef %sequence) #6
  call void @btrfs_set_16(ptr noundef %23, ptr noundef %27, i32 noundef 16, i16 noundef zeroext %conv) #6
  %add.ptr = getelementptr %struct.btrfs_root_ref, ptr %27, i32 1
  %28 = ptrtoint ptr %add.ptr to i32
  call void @write_extent_buffer(ptr noundef %23, ptr noundef %name, i32 noundef %28, i32 noundef %name_len) #6
  call void @btrfs_mark_buffer_dirty(ptr noundef %23) #6
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %30)
  %cmp54 = icmp eq i8 %30, -112
  br i1 %cmp54, label %if.then56, label %if.end48.cleanup.sink.split_crit_edge

if.end48.cleanup.sink.split_crit_edge:            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then56:                                        ; preds = %if.end48
  call void @btrfs_release_path(ptr noundef nonnull %call) #6
  %31 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %ref_id, ptr %key, align 8
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -100, ptr %4, align 8
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %root_id, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %34 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #6
  %35 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %key, ptr %batch.i, align 4
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %data_size.addr.i, ptr %6, align 4
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add, ptr %7, align 4
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %8, align 4
  %call.i = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %3, ptr noundef nonnull %call, ptr noundef nonnull %batch.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.then56.if.end48_crit_edge, label %if.then56.do.body_crit_edge

if.then56.do.body_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then56.if.end48_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

cleanup.sink.split:                               ; preds = %if.end48.cleanup.sink.split_crit_edge, %if.end45
  %retval.0.ph = phi i32 [ %call.i.lcssa, %if.end45 ], [ 0, %if.end48.cleanup.sink.split_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @btrfs_check_and_init_root_item(ptr nocapture noundef %root_item) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.btrfs_inode_item, ptr %root_item, i32 0, i32 10
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %flags.i, align 1
  %2 = tail call i64 @llvm.bswap.i64(i64 %1) #6
  %and = and i64 %2, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i64 %2, 2147483648
  %3 = tail call i64 @llvm.bswap.i64(i64 %or) #6
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %flags.i, align 1
  %flags.i8 = getelementptr inbounds %struct.btrfs_root_item, ptr %root_item, i32 0, i32 7
  %5 = ptrtoint ptr %flags.i8 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %flags.i8, align 1
  %byte_limit.i = getelementptr inbounds %struct.btrfs_root_item, ptr %root_item, i32 0, i32 4
  %6 = ptrtoint ptr %byte_limit.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %byte_limit.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_update_root_times(ptr nocapture noundef readonly %trans, ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  %ct = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ct) #6
  %0 = call ptr @memset(ptr %ct, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %ct) #6
  %root_item_lock = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 37
  call void @_raw_spin_lock(ptr noundef %root_item_lock) #6
  %1 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %trans, align 8
  %ctransid.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 6, i32 16
  %3 = call i64 @llvm.bswap.i64(i64 %2) #6
  %4 = ptrtoint ptr %ctransid.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %ctransid.i, align 1
  %ctime = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 6, i32 20
  %5 = ptrtoint ptr %ct to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ct, align 8
  %7 = call i64 @llvm.bswap.i64(i64 %6) #6
  %8 = ptrtoint ptr %ctime to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %ctime, align 1
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ct, i32 0, i32 1
  %9 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv_nsec, align 8
  %nsec.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 6, i32 20, i32 1
  %11 = call i32 @llvm.bswap.i32(i32 %10) #6
  %12 = ptrtoint ptr %nsec.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %nsec.i, align 1
  call void @_raw_spin_unlock(ptr noundef %root_item_lock) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ct) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_subvolume_reserve_metadata(ptr noundef %root, ptr noundef %rsv, i32 noundef %items, i1 noundef zeroext %use_global_rsv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %global_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 20
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %nodesize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %5 = ptrtoint ptr %nodesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nodesize, align 8
  %mul = mul i32 %6, 3
  %conv = zext i32 %mul to i64
  %call.i = tail call i32 @__btrfs_qgroup_reserve_meta(ptr noundef %root, i32 noundef %mul, i32 noundef 2, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %qgroup_num_bytes.0 = phi i64 [ %conv, %if.then.if.end6_crit_edge ], [ 0, %entry.if.end6_crit_edge ]
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %7 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nodesize.i, align 8
  %conv.i = zext i32 %8 to i64
  %conv2.i = zext i32 %items to i64
  %mul1.i = shl nuw nsw i64 %conv2.i, 4
  %mul3.i = mul i64 %mul1.i, %conv.i
  %call8 = tail call ptr @btrfs_find_space_info(ptr noundef %1, i64 noundef 4) #6
  %space_info = getelementptr inbounds %struct.btrfs_block_rsv, ptr %rsv, i32 0, i32 2
  %9 = ptrtoint ptr %space_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %space_info, align 8
  %call9 = tail call i32 @btrfs_block_rsv_add(ptr noundef %1, ptr noundef %rsv, i64 noundef %mul3.i, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call9)
  %cmp = icmp eq i32 %call9, -28
  %10 = and i1 %cmp, %use_global_rsv
  br i1 %10, label %if.then13, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 @btrfs_block_rsv_migrate(ptr noundef %global_block_rsv, ptr noundef %rsv, i64 noundef %mul3.i, i1 noundef zeroext true) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end6.if.end15_crit_edge
  %ret.0 = phi i32 [ %call14, %if.then13 ], [ %call9, %if.end6.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool16.not = icmp eq i32 %ret.0, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %qgroup_num_bytes.0)
  %tobool18.not = icmp eq i64 %qgroup_num_bytes.0, 0
  %or.cond = or i1 %tobool18.not, %tobool16.not
  br i1 %or.cond, label %if.end15.if.end21_crit_edge, label %if.then19

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %conv20 = trunc i64 %qgroup_num_bytes.0 to i32
  tail call void @__btrfs_qgroup_free_meta(ptr noundef %root, i32 noundef %conv20, i32 noundef 2) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end15.if.end21_crit_edge
  br i1 %tobool16.not, label %if.then23, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.btrfs_block_rsv, ptr %rsv, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %qgroup_rsv_reserved = getelementptr inbounds %struct.btrfs_block_rsv, ptr %rsv, i32 0, i32 8
  %11 = ptrtoint ptr %qgroup_rsv_reserved to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %qgroup_rsv_reserved, align 8
  %add = add i64 %12, %qgroup_num_bytes.0
  store i64 %add, ptr %qgroup_rsv_reserved, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end21.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %if.then23 ], [ %ret.0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_find_space_info(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_block_rsv_add(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_block_rsv_migrate(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_subvolume_release_metadata(ptr noundef %root, ptr noundef %rsv) local_unnamed_addr #0 align 64 {
entry:
  %qgroup_to_release = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qgroup_to_release) #6
  %2 = ptrtoint ptr %qgroup_to_release to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %qgroup_to_release, align 8, !annotation !40
  %call = call i64 @btrfs_block_rsv_release(ptr noundef %1, ptr noundef %rsv, i64 noundef -1, ptr noundef nonnull %qgroup_to_release) #6
  %3 = ptrtoint ptr %qgroup_to_release to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %qgroup_to_release, align 8
  %conv = trunc i64 %4 to i32
  call void @btrfs_qgroup_convert_reserved_meta(ptr noundef %root, i32 noundef %conv) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qgroup_to_release) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_block_rsv_release(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_qgroup_convert_reserved_meta(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generate_random_guid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_del_items(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_empty_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_next_old_leaf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @btrfs_get_16(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_64(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_16(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__btrfs_qgroup_reserve_meta(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__btrfs_qgroup_free_meta(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/root-tree.c", i32 137, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/root-tree.c", i32 142, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !3, !"__UNIQUE_ID_ddebug926", i1 false, i1 false}
!9 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @btrfs_update_root.__UNIQUE_ID_ddebug927, !11, !"__UNIQUE_ID_ddebug927", i1 false, i1 false}
!11 = !{!"../fs/btrfs/root-tree.c", i32 161, i32 4}
!12 = !{ptr @btrfs_update_root.__UNIQUE_ID_ddebug928, !13, !"__UNIQUE_ID_ddebug928", i1 false, i1 false}
!13 = !{!"../fs/btrfs/root-tree.c", i32 167, i32 4}
!14 = !{ptr @btrfs_update_root.__UNIQUE_ID_ddebug929, !15, !"__UNIQUE_ID_ddebug929", i1 false, i1 false}
!15 = !{!"../fs/btrfs/root-tree.c", i32 174, i32 4}
!16 = !{ptr @__func__.btrfs_find_orphan_roots, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/root-tree.c", i32 264, i32 5}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/btrfs/root-tree.c", i32 272, i32 5}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/btrfs/root-tree.c", i32 426, i32 3}
!23 = !{ptr @btrfs_add_root_ref.__UNIQUE_ID_ddebug930, !22, !"__UNIQUE_ID_ddebug930", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/btrfs/root-tree.c", i32 36, i32 4}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2158316051, i64 2158316535, i64 2158316088, i64 2158316144, i64 2158316178, i64 2158316202, i64 2158316243, i64 2158316264, i64 2158316292, i64 2158316326}
!37 = !{i64 2148434417, i64 2148434422, i64 2148434435, i64 2148434479, i64 2148434513, i64 2148434534}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2158334164, i64 2158334649, i64 2158334201, i64 2158334257, i64 2158334291, i64 2158334315, i64 2158334356, i64 2158334377, i64 2158334405, i64 2158334439}
!40 = !{!"auto-init"}
