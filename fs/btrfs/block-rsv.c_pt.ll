; ModuleID = '/llk/IR_all_yes/fs/btrfs/block-rsv.c_pt.bc'
source_filename = "../fs/btrfs/block-rsv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.81 }
%struct.atomic_t = type { i32 }
%union.anon.81 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.82, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%union.anon.82 = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.btrfs_space_info = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i32, i8, i32, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, %struct.rw_semaphore, [9 x %struct.list_head], %struct.kobject, [9 x ptr] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@btrfs_init_block_rsv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&rsv->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/btrfs/block-rsv.c\00", [43 x i8] zeroinitializer }, align 32
@btrfs_use_block_rsv._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 5000, i32 1, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.btrfs_use_block_rsv = private unnamed_addr constant [20 x i8] c"btrfs_use_block_rsv\00", align 1
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017BTRFS: block rsv %d returned %d\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/btrfs/space-info.h\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"space_info\00", [21 x i8] zeroinitializer }, align 32
@__tracepoint_update_bytes_may_use = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/btrfs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_update_bytes_may_use.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_btrfs_space_reservation = external dso_local global %struct.tracepoint, align 4
@trace_btrfs_space_reservation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 64, i64 2, i64 7, i64 10]
@__sancov_gen_cov_switch_values.9 = internal global [9 x i64] [i64 7, i64 64, i64 1, i64 2, i64 3, i64 4, i64 7, i64 8, i64 10]
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 177, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 467, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 533, i32 10 }
@___asan_gen_.26 = private constant [24 x i8] c"../fs/btrfs/block-rsv.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 537, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [25 x i8] c"../fs/btrfs/space-info.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 110, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [32 x i8] c"../include/trace/events/btrfs.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 2250, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 108, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @btrfs_init_block_rsv.__key, ptr @.str, ptr @.str.1, ptr @btrfs_use_block_rsv._rs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_init_block_rsv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_use_block_rsv._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_block_rsv_migrate(ptr noundef %src, ptr noundef %dst, i64 noundef %num_bytes, i1 noundef zeroext %update_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %src, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %reserved.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %src, i32 0, i32 1
  %0 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %reserved.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %num_bytes)
  %cmp.not.i = icmp ult i64 %1, %num_bytes
  br i1 %cmp.not.i, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %sub.i = sub i64 %1, %num_bytes
  %2 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %sub.i, ptr %reserved.i, align 8
  %3 = ptrtoint ptr %src to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %src, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %4)
  %cmp3.i = icmp ult i64 %sub.i, %4
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %full.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %src, i32 0, i32 4
  %5 = ptrtoint ptr %full.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %full.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4.i, %if.then.i.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %lock.i4 = getelementptr inbounds %struct.btrfs_block_rsv, ptr %dst, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i4) #7
  %reserved.i5 = getelementptr inbounds %struct.btrfs_block_rsv, ptr %dst, i32 0, i32 1
  %6 = ptrtoint ptr %reserved.i5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %reserved.i5, align 8
  %add.i = add i64 %7, %num_bytes
  store i64 %add.i, ptr %reserved.i5, align 8
  %8 = ptrtoint ptr %dst to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dst, align 8
  br i1 %update_size, label %if.then.i6, label %if.else.i

if.then.i6:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add1.i = add i64 %9, %num_bytes
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add1.i, ptr %dst, align 8
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %9)
  %cmp.not.i7 = icmp ult i64 %add.i, %9
  br i1 %cmp.not.i7, label %if.else.i.cleanup_crit_edge, label %if.then4.i9

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4.i9:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %full.i8 = getelementptr inbounds %struct.btrfs_block_rsv, ptr %dst, i32 0, i32 4
  %11 = ptrtoint ptr %full.i8 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %full.i8, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i9, %if.else.i.cleanup_crit_edge, %if.then.i6, %entry.cleanup_crit_edge
  %lock.i.sink = phi ptr [ %lock.i, %entry.cleanup_crit_edge ], [ %lock.i4, %if.then.i6 ], [ %lock.i4, %if.else.i.cleanup_crit_edge ], [ %lock.i4, %if.then4.i9 ]
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ 0, %if.then.i6 ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %if.then4.i9 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.sink) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_block_rsv_use_bytes(ptr noundef %block_rsv, i64 noundef %num_bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %reserved = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 1
  %0 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %reserved, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %num_bytes)
  %cmp.not = icmp ult i64 %1, %num_bytes
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %sub = sub i64 %1, %num_bytes
  %2 = ptrtoint ptr %reserved to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %sub, ptr %reserved, align 8
  %3 = ptrtoint ptr %block_rsv to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %block_rsv, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %4)
  %cmp3 = icmp ult i64 %sub, %4
  br i1 %cmp3, label %if.then4, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %full = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 4
  %5 = ptrtoint ptr %full to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %full, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ -28, %entry.if.end5_crit_edge ], [ 0, %if.then4 ], [ 0, %if.then.if.end5_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_block_rsv_add_bytes(ptr noundef %block_rsv, i64 noundef %num_bytes, i1 noundef zeroext %update_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %reserved = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 1
  %0 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %reserved, align 8
  %add = add i64 %1, %num_bytes
  store i64 %add, ptr %reserved, align 8
  %2 = ptrtoint ptr %block_rsv to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %block_rsv, align 8
  br i1 %update_size, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add1 = add i64 %3, %num_bytes
  %4 = ptrtoint ptr %block_rsv to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add1, ptr %block_rsv, align 8
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %3)
  %cmp.not = icmp ult i64 %add, %3
  br i1 %cmp.not, label %if.else.if.end5_crit_edge, label %if.then4

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %full = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 4
  %5 = ptrtoint ptr %full to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %full, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else.if.end5_crit_edge, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_init_block_rsv(ptr noundef %rsv, i16 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %rsv, i32 0, i32 88)
  %lock = getelementptr inbounds %struct.btrfs_block_rsv, ptr %rsv, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @btrfs_init_block_rsv.__key, i16 noundef signext 3) #7
  %type1 = getelementptr inbounds %struct.btrfs_block_rsv, ptr %rsv, i32 0, i32 5
  %1 = ptrtoint ptr %type1 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %type, ptr %type1, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_init_metadata_block_rsv(ptr noundef %fs_info, ptr noundef %rsv, i16 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %rsv, i32 0, i32 88)
  %lock.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %rsv, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @btrfs_init_block_rsv.__key, i16 noundef signext 3) #7
  %type1.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %rsv, i32 0, i32 5
  %1 = ptrtoint ptr %type1.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %type, ptr %type1.i, align 2
  %call = tail call ptr @btrfs_find_space_info(ptr noundef %fs_info, i64 noundef 4) #7
  %space_info = getelementptr inbounds %struct.btrfs_block_rsv, ptr %rsv, i32 0, i32 2
  %2 = ptrtoint ptr %space_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %space_info, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_find_space_info(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_alloc_block_rsv(ptr noundef %fs_info, i16 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3136, i32 noundef 88) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = call ptr @memset(ptr %call7.i, i32 0, i32 88)
  %lock.i.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %call7.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @btrfs_init_block_rsv.__key, i16 noundef signext 3) #7
  %type1.i.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %call7.i, i32 0, i32 5
  %2 = ptrtoint ptr %type1.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %type, ptr %type1.i.i, align 2
  %call.i = tail call ptr @btrfs_find_space_info(ptr noundef %fs_info, i64 noundef 4) #7
  %space_info.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %space_info.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %space_info.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_free_block_rsv(ptr noundef %fs_info, ptr noundef %rsv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rsv, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i64 @btrfs_block_rsv_release(ptr noundef %fs_info, ptr noundef nonnull %rsv, i64 noundef -1, ptr noundef null)
  tail call void @kfree(ptr noundef nonnull %rsv) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @btrfs_block_rsv_release(ptr noundef %fs_info, ptr noundef %block_rsv, i64 noundef %num_bytes, ptr noundef writeonly %qgroup_to_release) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %global_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20
  %delayed_refs_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24
  %cmp = icmp eq ptr %delayed_refs_rsv, %block_rsv
  br i1 %cmp, label %entry.if.end3_crit_edge, label %if.else

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.else:                                          ; preds = %entry
  %cmp1.not = icmp eq ptr %global_block_rsv, %block_rsv
  br i1 %cmp1.not, label %if.else.if.end9_crit_edge, label %land.lhs.true

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true:                                    ; preds = %if.else
  %full = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24, i32 4
  %0 = ptrtoint ptr %full to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %full, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %land.lhs.true.if.end3_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %entry.if.end3_crit_edge
  %target.0 = phi ptr [ %global_block_rsv, %entry.if.end3_crit_edge ], [ %delayed_refs_rsv, %land.lhs.true.if.end3_crit_edge ]
  %tobool4.not = icmp eq ptr %target.0, null
  br i1 %tobool4.not, label %if.end3.if.end9_crit_edge, label %land.lhs.true5

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true5:                                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %space_info = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 2
  %2 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %space_info, align 8
  %space_info6 = getelementptr inbounds %struct.btrfs_block_rsv, ptr %target.0, i32 0, i32 2
  %4 = ptrtoint ptr %space_info6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %space_info6, align 8
  %cmp7.not = icmp eq ptr %3, %5
  %spec.store.select = select i1 %cmp7.not, ptr %target.0, ptr null
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true5, %if.end3.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %if.else.if.end9_crit_edge
  %target.1 = phi ptr [ %spec.store.select, %land.lhs.true5 ], [ null, %if.end3.if.end9_crit_edge ], [ null, %if.else.if.end9_crit_edge ], [ null, %land.lhs.true.if.end9_crit_edge ]
  %space_info1.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 2
  %6 = ptrtoint ptr %space_info1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %space_info1.i, align 8
  %lock.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %num_bytes)
  %cmp.i = icmp eq i64 %num_bytes, -1
  br i1 %cmp.i, label %if.then.i, label %if.end9.if.end.i_crit_edge

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %block_rsv to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %block_rsv, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end9.if.end.i_crit_edge
  %num_bytes.addr.0.i = phi i64 [ %9, %if.then.i ], [ %num_bytes, %if.end9.if.end.i_crit_edge ]
  %10 = ptrtoint ptr %block_rsv to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %block_rsv, align 8
  %sub.i = sub i64 %11, %num_bytes.addr.0.i
  store i64 %sub.i, ptr %block_rsv, align 8
  %reserved.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 1
  %12 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %reserved.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %sub.i)
  %cmp4.not.i = icmp ult i64 %13, %sub.i
  br i1 %cmp4.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then5.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub8.i = sub i64 %13, %sub.i
  %14 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %sub.i, ptr %reserved.i, align 8
  %full.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 4
  %15 = ptrtoint ptr %full.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %full.i, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then5.i, %if.end.i.if.end11.i_crit_edge
  %num_bytes.addr.1.i = phi i64 [ %sub8.i, %if.then5.i ], [ 0, %if.end.i.if.end11.i_crit_edge ]
  %qgroup_rsv_reserved.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 8
  %16 = ptrtoint ptr %qgroup_rsv_reserved.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %qgroup_rsv_reserved.i, align 8
  %qgroup_rsv_size12.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 7
  %18 = ptrtoint ptr %qgroup_rsv_size12.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %qgroup_rsv_size12.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp13.not.i = icmp ult i64 %17, %19
  br i1 %cmp13.not.i, label %if.end11.i.if.end21.i_crit_edge, label %if.then14.i

if.end11.i.if.end21.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub17.i = sub i64 %17, %19
  %20 = ptrtoint ptr %qgroup_rsv_reserved.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %qgroup_rsv_reserved.i, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end21.i_crit_edge
  %qgroup_to_release.0.i = phi i64 [ %sub17.i, %if.then14.i ], [ 0, %if.end11.i.if.end21.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %num_bytes.addr.1.i)
  %cmp23.not.i = icmp eq i64 %num_bytes.addr.1.i, 0
  br i1 %cmp23.not.i, label %if.end21.i.if.end48.i_crit_edge, label %if.then24.i

if.end21.i.if.end48.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then24.i:                                      ; preds = %if.end21.i
  %tobool.not.i = icmp eq ptr %target.1, null
  br i1 %tobool.not.i, label %if.then24.i.if.then46.i_crit_edge, label %if.then25.i

if.then24.i.if.then46.i_crit_edge:                ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46.i

if.then25.i:                                      ; preds = %if.then24.i
  %lock26.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %target.1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock26.i) #7
  %full27.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %target.1, i32 0, i32 4
  %21 = ptrtoint ptr %full27.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %full27.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool28.not.i = icmp eq i16 %22, 0
  br i1 %tobool28.not.i, label %if.then29.i, label %if.end44.thread96.i

if.end44.thread96.i:                              ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %lock26.i) #7
  br label %if.then46.i

if.then29.i:                                      ; preds = %if.then25.i
  %23 = ptrtoint ptr %target.1 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %target.1, align 8
  %reserved31.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %target.1, i32 0, i32 1
  %25 = ptrtoint ptr %reserved31.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %reserved31.i, align 8
  %sub32.i = sub i64 %24, %26
  %27 = tail call i64 @llvm.umin.i64(i64 %num_bytes.addr.1.i, i64 %sub32.i) #7
  %add.i = add i64 %27, %26
  %28 = ptrtoint ptr %reserved31.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %add.i, ptr %reserved31.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %24)
  %cmp37.not.i = icmp ult i64 %add.i, %24
  br i1 %cmp37.not.i, label %if.then29.i.if.end44.i_crit_edge, label %if.then38.i

if.then29.i.if.end44.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.then38.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %full27.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %full27.i, align 8
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then38.i, %if.then29.i.if.end44.i_crit_edge
  %sub41.i = sub i64 %num_bytes.addr.1.i, %27
  tail call void @_raw_spin_unlock(ptr noundef %lock26.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub41.i)
  %tobool45.not.i = icmp eq i64 %sub41.i, 0
  br i1 %tobool45.not.i, label %if.end44.i.if.end48.i_crit_edge, label %if.end44.i.if.then46.i_crit_edge

if.end44.i.if.then46.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46.i

if.end44.i.if.end48.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then46.i:                                      ; preds = %if.end44.i.if.then46.i_crit_edge, %if.end44.thread96.i, %if.then24.i.if.then46.i_crit_edge
  %num_bytes.addr.395.i = phi i64 [ %sub41.i, %if.end44.i.if.then46.i_crit_edge ], [ %num_bytes.addr.1.i, %if.end44.thread96.i ], [ %num_bytes.addr.1.i, %if.then24.i.if.then46.i_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %7) #7
  %sub.i.i = sub i64 0, %num_bytes.addr.395.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp.i.i.i = icmp slt i64 %sub.i.i, 0
  %cond.i.i.i = select i1 %cmp.i.i.i, i64 %num_bytes.addr.395.i, i64 %sub.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %30 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i.i, label %if.then46.i.if.end.i.i.i_crit_edge, label %land.rhs.i.i.i

if.then46.i.if.end.i.i.i_crit_edge:               ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then46.i
  %dep_map.i.i.i = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 1
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp1.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp1.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.if.end.i.i.i_crit_edge, !prof !36

land.rhs.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 110, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %land.rhs.i.i.i.if.end.i.i.i_crit_edge, %if.then46.i.if.end.i.i.i_crit_edge
  %bytes_may_use.i.i.i = getelementptr inbounds %struct.btrfs_space_info, ptr %7, i32 0, i32 5
  %31 = ptrtoint ptr %bytes_may_use.i.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %bytes_may_use.i.i.i, align 8
  tail call fastcc void @trace_update_bytes_may_use(ptr noundef %fs_info, ptr noundef %7, i64 noundef %32, i64 noundef %sub.i.i) #7
  %flags.i.i.i = getelementptr inbounds %struct.btrfs_space_info, ptr %7, i32 0, i32 14
  %33 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %flags.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp25.i.i.i = icmp sgt i64 %sub.i.i, 0
  %conv.i.i.i = zext i1 %cmp25.i.i.i to i32
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, i64 noundef %34, i64 noundef %cond.i.i.i, i32 noundef %conv.i.i.i) #7
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.i.if.end60.i.i.i_crit_edge

if.end.i.i.i.if.end60.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  %35 = ptrtoint ptr %bytes_may_use.i.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %bytes_may_use.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %num_bytes.addr.395.i)
  %cmp30.i.i.i = icmp ult i64 %36, %num_bytes.addr.395.i
  br i1 %cmp30.i.i.i, label %do.end45.i.i.i, label %land.lhs.true.i.i.i.if.end60.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end60.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i.i.i

do.end45.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 110, i32 noundef 9, ptr noundef null) #7
  br label %btrfs_space_info_free_bytes_may_use.exit.i

if.end60.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.if.end60.i.i.i_crit_edge, %if.end.i.i.i.if.end60.i.i.i_crit_edge
  %37 = ptrtoint ptr %bytes_may_use.i.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %bytes_may_use.i.i.i, align 8
  %add.i.i.i = sub i64 %38, %num_bytes.addr.395.i
  br label %btrfs_space_info_free_bytes_may_use.exit.i

btrfs_space_info_free_bytes_may_use.exit.i:       ; preds = %if.end60.i.i.i, %do.end45.i.i.i
  %storemerge.i.i.i = phi i64 [ %add.i.i.i, %if.end60.i.i.i ], [ 0, %do.end45.i.i.i ]
  %39 = ptrtoint ptr %bytes_may_use.i.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %storemerge.i.i.i, ptr %bytes_may_use.i.i.i, align 8
  tail call void @btrfs_try_granting_tickets(ptr noundef %fs_info, ptr noundef %7) #7
  tail call void @_raw_spin_unlock(ptr noundef %7) #7
  br label %if.end48.i

if.end48.i:                                       ; preds = %btrfs_space_info_free_bytes_may_use.exit.i, %if.end44.i.if.end48.i_crit_edge, %if.end21.i.if.end48.i_crit_edge
  %tobool49.not.i = icmp eq ptr %qgroup_to_release, null
  br i1 %tobool49.not.i, label %if.end48.i.block_rsv_release_bytes.exit_crit_edge, label %if.then50.i

if.end48.i.block_rsv_release_bytes.exit_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %block_rsv_release_bytes.exit

if.then50.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %qgroup_to_release to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %qgroup_to_release.0.i, ptr %qgroup_to_release, align 8
  br label %block_rsv_release_bytes.exit

block_rsv_release_bytes.exit:                     ; preds = %if.then50.i, %if.end48.i.block_rsv_release_bytes.exit_crit_edge
  ret i64 %num_bytes.addr.1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_block_rsv_add(ptr noundef %fs_info, ptr noundef %block_rsv, i64 noundef %num_bytes, i32 noundef %flush) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %num_bytes)
  %cmp = icmp eq i64 %num_bytes, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @btrfs_reserve_metadata_bytes(ptr noundef %fs_info, ptr noundef %block_rsv, i64 noundef %num_bytes, i32 noundef %flush) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %reserved.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 1
  %0 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %reserved.i, align 8
  %add.i = add i64 %1, %num_bytes
  store i64 %add.i, ptr %reserved.i, align 8
  %2 = ptrtoint ptr %block_rsv to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %block_rsv, align 8
  %add1.i = add i64 %3, %num_bytes
  store i64 %add1.i, ptr %block_rsv, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then1 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_reserve_metadata_bytes(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_block_rsv_check(ptr noundef %block_rsv, i32 noundef %min_factor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %block_rsv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %0 = ptrtoint ptr %block_rsv to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %block_rsv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %min_factor)
  %cmp.i = icmp eq i32 %min_factor, 10
  br i1 %cmp.i, label %if.end.div_factor.exit_crit_edge, label %if.end.i

if.end.div_factor.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %div_factor.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = sext i32 %min_factor to i64
  %mul.i = mul i64 %1, %conv.i
  %div791.i.i.i = lshr i64 %mul.i, 1
  %2 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div791.i.i.i, i64 3689348814741910323) #11, !srcloc !37
  %3 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div791.i.i.i, i64 %2) #11, !srcloc !38
  br label %div_factor.exit

div_factor.exit:                                  ; preds = %if.end.i, %if.end.div_factor.exit_crit_edge
  %retval.0.i = phi i64 [ %3, %if.end.i ], [ %1, %if.end.div_factor.exit_crit_edge ]
  %reserved = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 1
  %4 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %reserved, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %retval.0.i)
  %cmp.not = icmp ult i64 %5, %retval.0.i
  %spec.select = select i1 %cmp.not, i32 -28, i32 0
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %div_factor.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %div_factor.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_block_rsv_refill(ptr noundef %fs_info, ptr noundef %block_rsv, i64 noundef %min_reserved, i32 noundef %flush) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %block_rsv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %reserved = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 1
  %0 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %reserved, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %min_reserved)
  %cmp.not = icmp ult i64 %1, %min_reserved
  %sub = select i1 %cmp.not, i64 %1, i64 0
  %num_bytes.0 = sub i64 %min_reserved, %sub
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call = tail call i32 @btrfs_reserve_metadata_bytes(ptr noundef %fs_info, ptr noundef nonnull %block_rsv, i64 noundef %num_bytes.0, i32 noundef %flush) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %2 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %reserved, align 8
  %add.i = add i64 %3, %num_bytes.0
  store i64 %add.i, ptr %reserved, align 8
  %4 = ptrtoint ptr %block_rsv to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %block_rsv, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %5)
  %cmp.not.i = icmp ult i64 %add.i, %5
  br i1 %cmp.not.i, label %if.then9.btrfs_block_rsv_add_bytes.exit_crit_edge, label %if.then4.i

if.then9.btrfs_block_rsv_add_bytes.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_block_rsv_add_bytes.exit

if.then4.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %full.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %block_rsv, i32 0, i32 4
  %6 = ptrtoint ptr %full.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %full.i, align 8
  br label %btrfs_block_rsv_add_bytes.exit

btrfs_block_rsv_add_bytes.exit:                   ; preds = %if.then4.i, %if.then9.btrfs_block_rsv_add_bytes.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %btrfs_block_rsv_add_bytes.exit, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %btrfs_block_rsv_add_bytes.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_cond_migrate_bytes(ptr noundef %fs_info, ptr noundef %dest, i64 noundef %num_bytes, i32 noundef %min_factor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %space_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %space_info, align 8
  %space_info1 = getelementptr inbounds %struct.btrfs_block_rsv, ptr %dest, i32 0, i32 2
  %2 = ptrtoint ptr %space_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %space_info1, align 8
  %cmp.not = icmp eq ptr %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %global_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20
  %lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %4 = ptrtoint ptr %global_block_rsv to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %global_block_rsv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %min_factor)
  %cmp.i = icmp eq i32 %min_factor, 10
  br i1 %cmp.i, label %if.end.div_factor.exit_crit_edge, label %if.end.i

if.end.div_factor.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %div_factor.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = sext i32 %min_factor to i64
  %mul.i = mul i64 %5, %conv.i
  %div791.i.i.i = lshr i64 %mul.i, 1
  %6 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div791.i.i.i, i64 3689348814741910323) #11, !srcloc !37
  %7 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div791.i.i.i, i64 %6) #11, !srcloc !38
  br label %div_factor.exit

div_factor.exit:                                  ; preds = %if.end.i, %if.end.div_factor.exit_crit_edge
  %retval.0.i = phi i64 [ %7, %if.end.i ], [ %5, %if.end.div_factor.exit_crit_edge ]
  %reserved = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %reserved, align 8
  %add = add i64 %retval.0.i, %num_bytes
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %add)
  %cmp2 = icmp ult i64 %9, %add
  br i1 %cmp2, label %div_factor.exit.cleanup.sink.split_crit_edge, label %if.end5

div_factor.exit.cleanup.sink.split_crit_edge:     ; preds = %div_factor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end5:                                          ; preds = %div_factor.exit
  %sub = sub i64 %9, %num_bytes
  %10 = ptrtoint ptr %reserved to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %sub, ptr %reserved, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %5)
  %cmp9 = icmp ult i64 %sub, %5
  br i1 %cmp9, label %if.then10, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %full = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 4
  %11 = ptrtoint ptr %full to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %full, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end5.if.end11_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  %lock.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %dest, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %reserved.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %dest, i32 0, i32 1
  %12 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %reserved.i, align 8
  %add.i = add i64 %13, %num_bytes
  store i64 %add.i, ptr %reserved.i, align 8
  %14 = ptrtoint ptr %dest to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dest, align 8
  %add1.i = add i64 %15, %num_bytes
  store i64 %add1.i, ptr %dest, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end11, %div_factor.exit.cleanup.sink.split_crit_edge
  %lock.i.sink = phi ptr [ %lock.i, %if.end11 ], [ %lock, %div_factor.exit.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end11 ], [ -28, %div_factor.exit.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_update_global_block_rsv(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %global_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20
  %space_info = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %space_info, align 8
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 2
  %2 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tree_root, align 4
  %bytes_used.i = getelementptr inbounds %struct.btrfs_root, ptr %3, i32 0, i32 6, i32 5
  %4 = ptrtoint ptr %bytes_used.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %bytes_used.i, align 1
  %6 = tail call i64 @llvm.bswap.i64(i64 %5) #7
  %global_root_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 10
  tail call void @_raw_read_lock(ptr noundef %global_root_lock) #7
  %global_root_tree = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 11
  %call1 = tail call ptr @rb_first_postorder(ptr noundef %global_root_tree) #7
  %tobool4.not151 = icmp eq ptr %call1, null
  br i1 %tobool4.not151, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %root.0154 = phi ptr [ %call6, %for.inc.land.rhs_crit_edge ], [ %call1, %entry.land.rhs_crit_edge ]
  %num_bytes.0153 = phi i64 [ %num_bytes.1, %for.inc.land.rhs_crit_edge ], [ %6, %entry.land.rhs_crit_edge ]
  %min_items.0152 = phi i32 [ %min_items.1, %for.inc.land.rhs_crit_edge ], [ 1, %entry.land.rhs_crit_edge ]
  %call6 = tail call ptr @rb_next_postorder(ptr noundef nonnull %root.0154) #7
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root.0154, i32 0, i32 7
  %7 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %root_key, align 1
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i64 %8, label %land.rhs.for.inc_crit_edge [
    i64 2, label %land.rhs.if.then_crit_edge
    i64 7, label %land.rhs.if.then_crit_edge156
    i64 10, label %land.rhs.if.then_crit_edge157
  ]

land.rhs.if.then_crit_edge157:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.rhs.if.then_crit_edge156:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.rhs.if.then_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %land.rhs.if.then_crit_edge, %land.rhs.if.then_crit_edge156, %land.rhs.if.then_crit_edge157
  %bytes_used.i128 = getelementptr inbounds %struct.btrfs_root, ptr %root.0154, i32 0, i32 6, i32 5
  %9 = ptrtoint ptr %bytes_used.i128 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %bytes_used.i128, align 1
  %11 = tail call i64 @llvm.bswap.i64(i64 %10) #7
  %add = add i64 %11, %num_bytes.0153
  %inc = add i32 %min_items.0152, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.rhs.for.inc_crit_edge
  %min_items.1 = phi i32 [ %inc, %if.then ], [ %min_items.0152, %land.rhs.for.inc_crit_edge ]
  %num_bytes.1 = phi i64 [ %add, %if.then ], [ %num_bytes.0153, %land.rhs.for.inc_crit_edge ]
  %tobool4.not = icmp eq ptr %call6, null
  br i1 %tobool4.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %min_items.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %min_items.1, %for.inc.for.end_crit_edge ]
  %num_bytes.0.lcssa = phi i64 [ %6, %entry.for.end_crit_edge ], [ %num_bytes.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef %global_root_lock) #7
  %add28 = add i32 %min_items.0.lcssa, 10
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 166
  %12 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nodesize.i, align 8
  %conv.i = zext i32 %13 to i64
  %conv2.i = zext i32 %add28 to i64
  %mul1.i = shl nuw nsw i64 %conv2.i, 4
  %mul3.i = mul i64 %mul1.i, %conv.i
  %14 = tail call i64 @llvm.umax.i64(i64 %num_bytes.0.lcssa, i64 %mul3.i)
  tail call void @_raw_spin_lock(ptr noundef %1) #7
  %lock36 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock36) #7
  %15 = tail call i64 @llvm.umin.i64(i64 %14, i64 536870912)
  %16 = ptrtoint ptr %global_block_rsv to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %global_block_rsv, align 8
  %reserved = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 1
  %17 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %reserved, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %18)
  %cmp44 = icmp ugt i64 %15, %18
  br i1 %cmp44, label %if.then45, label %if.else

if.then45:                                        ; preds = %for.end
  %sub = sub i64 %15, %18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp.i = icmp slt i64 %sub, 0
  %sub.i = sub i64 0, %sub
  %cond.i = select i1 %cmp.i, i64 %sub.i, i64 %sub
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %19 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.then45.if.end.i_crit_edge, label %land.rhs.i

if.then45.if.end.i_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then45
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp1.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !36

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 110, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then45.if.end.i_crit_edge
  %bytes_may_use.i = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bytes_may_use.i, align 8
  tail call fastcc void @trace_update_bytes_may_use(ptr noundef %fs_info, ptr noundef %1, i64 noundef %21, i64 noundef %sub) #7
  %flags.i = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 14
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp25.i = icmp sgt i64 %sub, 0
  %conv.i129 = zext i1 %cmp25.i to i32
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, i64 noundef %23, i64 noundef %cond.i, i32 noundef %conv.i129) #7
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end60.i_crit_edge

if.end.i.if.end60.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %24 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %bytes_may_use.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %sub.i)
  %cmp30.i = icmp ult i64 %25, %sub.i
  br i1 %cmp30.i, label %do.end45.i, label %land.lhs.true.i.if.end60.i_crit_edge

land.lhs.true.i.if.end60.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i

do.end45.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 110, i32 noundef 9, ptr noundef null) #7
  br label %btrfs_space_info_update_bytes_may_use.exit

if.end60.i:                                       ; preds = %land.lhs.true.i.if.end60.i_crit_edge, %if.end.i.if.end60.i_crit_edge
  %26 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %bytes_may_use.i, align 8
  %add.i = add i64 %27, %sub
  br label %btrfs_space_info_update_bytes_may_use.exit

btrfs_space_info_update_bytes_may_use.exit:       ; preds = %if.end60.i, %do.end45.i
  %storemerge.i = phi i64 [ %add.i, %if.end60.i ], [ 0, %do.end45.i ]
  %28 = ptrtoint ptr %bytes_may_use.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %storemerge.i, ptr %bytes_may_use.i, align 8
  %29 = ptrtoint ptr %global_block_rsv to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %global_block_rsv, align 8
  %31 = ptrtoint ptr %reserved to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %reserved, align 8
  br label %if.end61

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %18)
  %cmp52 = icmp ult i64 %15, %18
  br i1 %cmp52, label %if.then53, label %if.else.if.end61_crit_edge

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then53:                                        ; preds = %if.else
  %sub56.neg = sub i64 %15, %18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub56.neg)
  %cmp.i130 = icmp slt i64 %sub56.neg, 0
  %sub.i131 = sub i64 0, %sub56.neg
  %cond.i132 = select i1 %cmp.i130, i64 %sub.i131, i64 %sub56.neg
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %32 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i133 = icmp eq i32 %32, 0
  br i1 %tobool.not.i133, label %if.then53.if.end.i143_crit_edge, label %land.rhs.i137

if.then53.if.end.i143_crit_edge:                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i143

land.rhs.i137:                                    ; preds = %if.then53
  %dep_map.i134 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %call.i.i135 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i134, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i135)
  %cmp1.not.i136 = icmp eq i32 %call.i.i135, 0
  br i1 %cmp1.not.i136, label %do.end.i138, label %land.rhs.i137.if.end.i143_crit_edge, !prof !36

land.rhs.i137.if.end.i143_crit_edge:              ; preds = %land.rhs.i137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i143

do.end.i138:                                      ; preds = %land.rhs.i137
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 110, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i143

if.end.i143:                                      ; preds = %do.end.i138, %land.rhs.i137.if.end.i143_crit_edge, %if.then53.if.end.i143_crit_edge
  %bytes_may_use.i139 = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %bytes_may_use.i139 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %bytes_may_use.i139, align 8
  tail call fastcc void @trace_update_bytes_may_use(ptr noundef %fs_info, ptr noundef %1, i64 noundef %34, i64 noundef %sub56.neg) #7
  %flags.i140 = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 14
  %35 = ptrtoint ptr %flags.i140 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %flags.i140, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub56.neg)
  %cmp25.i141 = icmp sgt i64 %sub56.neg, 0
  %conv.i142 = zext i1 %cmp25.i141 to i32
  tail call fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, i64 noundef %36, i64 noundef %cond.i132, i32 noundef %conv.i142) #7
  br i1 %cmp.i130, label %land.lhs.true.i145, label %if.end.i143.if.end60.i148_crit_edge

if.end.i143.if.end60.i148_crit_edge:              ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i148

land.lhs.true.i145:                               ; preds = %if.end.i143
  %37 = ptrtoint ptr %bytes_may_use.i139 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %bytes_may_use.i139, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %sub.i131)
  %cmp30.i144 = icmp ult i64 %38, %sub.i131
  br i1 %cmp30.i144, label %do.end45.i146, label %land.lhs.true.i145.if.end60.i148_crit_edge

land.lhs.true.i145.if.end60.i148_crit_edge:       ; preds = %land.lhs.true.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i148

do.end45.i146:                                    ; preds = %land.lhs.true.i145
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 110, i32 noundef 9, ptr noundef null) #7
  br label %btrfs_space_info_update_bytes_may_use.exit150

if.end60.i148:                                    ; preds = %land.lhs.true.i145.if.end60.i148_crit_edge, %if.end.i143.if.end60.i148_crit_edge
  %39 = ptrtoint ptr %bytes_may_use.i139 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %bytes_may_use.i139, align 8
  %add.i147 = add i64 %40, %sub56.neg
  br label %btrfs_space_info_update_bytes_may_use.exit150

btrfs_space_info_update_bytes_may_use.exit150:    ; preds = %if.end60.i148, %do.end45.i146
  %storemerge.i149 = phi i64 [ %add.i147, %if.end60.i148 ], [ 0, %do.end45.i146 ]
  %41 = ptrtoint ptr %bytes_may_use.i139 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %storemerge.i149, ptr %bytes_may_use.i139, align 8
  %42 = ptrtoint ptr %global_block_rsv to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %global_block_rsv, align 8
  %44 = ptrtoint ptr %reserved to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %reserved, align 8
  tail call void @btrfs_try_granting_tickets(ptr noundef %fs_info, ptr noundef %1) #7
  br label %if.end61

if.end61:                                         ; preds = %btrfs_space_info_update_bytes_may_use.exit150, %if.else.if.end61_crit_edge, %btrfs_space_info_update_bytes_may_use.exit
  %45 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %reserved, align 8
  %47 = ptrtoint ptr %global_block_rsv to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %global_block_rsv, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %48)
  %cmp64 = icmp eq i64 %46, %48
  %spec.select = zext i1 %cmp64 to i16
  %49 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %spec.select, ptr %49, align 8
  %total_bytes = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %total_bytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %52)
  %cmp70.not = icmp ult i64 %48, %52
  br i1 %cmp70.not, label %if.end61.if.end72_crit_edge, label %if.then71

if.end61.if.end72_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then71:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %force_alloc = getelementptr inbounds %struct.btrfs_space_info, ptr %1, i32 0, i32 11
  %53 = ptrtoint ptr %force_alloc to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %force_alloc, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end61.if.end72_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock36) #7
  tail call void @_raw_spin_unlock(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_try_granting_tickets(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @btrfs_init_root_block_rsv(ptr nocapture noundef %root) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %2 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %root_key, align 1
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.9)
  switch i64 %3, label %entry.sw.epilog_crit_edge [
    i64 7, label %entry.sw.bb_crit_edge
    i64 2, label %entry.sw.bb_crit_edge14
    i64 10, label %entry.sw.bb_crit_edge15
    i64 1, label %entry.sw.bb2_crit_edge
    i64 4, label %entry.sw.bb2_crit_edge16
    i64 8, label %entry.sw.bb2_crit_edge17
    i64 3, label %sw.bb4
  ]

entry.sw.bb2_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge14, %entry.sw.bb_crit_edge15
  %delayed_refs_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 24
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge16, %entry.sw.bb2_crit_edge17
  %global_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 20
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %chunk_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %.sink = phi ptr [ %chunk_block_rsv, %sw.bb4 ], [ %global_block_rsv, %sw.bb2 ], [ %delayed_refs_rsv, %sw.bb ], [ null, %entry.sw.epilog_crit_edge ]
  %block_rsv6 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 12
  %4 = ptrtoint ptr %block_rsv6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %.sink, ptr %block_rsv6, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_init_global_block_rsv(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @btrfs_find_space_info(ptr noundef %fs_info, i64 noundef 2) #7
  %space_info1 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 22, i32 2
  %0 = ptrtoint ptr %space_info1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %space_info1, align 8
  %call2 = tail call ptr @btrfs_find_space_info(ptr noundef %fs_info, i64 noundef 4) #7
  %space_info3 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20, i32 2
  %1 = ptrtoint ptr %space_info3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %space_info3, align 8
  %space_info4 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %space_info4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %space_info4, align 8
  %space_info5 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 25, i32 2
  %3 = ptrtoint ptr %space_info5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %space_info5, align 8
  %space_info6 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 23, i32 2
  %4 = ptrtoint ptr %space_info6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %space_info6, align 8
  %space_info7 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24, i32 2
  %5 = ptrtoint ptr %space_info7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %space_info7, align 8
  tail call void @btrfs_update_global_block_rsv(ptr noundef %fs_info)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_release_global_block_rsv(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %global_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 20
  %call = tail call i64 @btrfs_block_rsv_release(ptr noundef %fs_info, ptr noundef %global_block_rsv, i64 noundef -1, ptr noundef null)
  %trans_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 21
  %0 = ptrtoint ptr %trans_block_rsv to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %trans_block_rsv, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !39

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 467, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %reserved = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 21, i32 1
  %2 = ptrtoint ptr %reserved to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %reserved, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp21.not = icmp eq i64 %3, 0
  br i1 %cmp21.not, label %if.end.if.end43_crit_edge, label %do.end37, !prof !39

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 468, i32 noundef 9, ptr noundef null) #7
  br label %if.end43

if.end43:                                         ; preds = %do.end37, %if.end.if.end43_crit_edge
  %chunk_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 22
  %4 = ptrtoint ptr %chunk_block_rsv to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %chunk_block_rsv, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp53.not = icmp eq i64 %5, 0
  br i1 %cmp53.not, label %if.end43.if.end75_crit_edge, label %do.end69, !prof !39

if.end43.if.end75_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

do.end69:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 469, i32 noundef 9, ptr noundef null) #7
  br label %if.end75

if.end75:                                         ; preds = %do.end69, %if.end43.if.end75_crit_edge
  %reserved85 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 22, i32 1
  %6 = ptrtoint ptr %reserved85 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %reserved85, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp86.not = icmp eq i64 %7, 0
  br i1 %cmp86.not, label %if.end75.if.end108_crit_edge, label %do.end102, !prof !39

if.end75.if.end108_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

do.end102:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 470, i32 noundef 9, ptr noundef null) #7
  br label %if.end108

if.end108:                                        ; preds = %do.end102, %if.end75.if.end108_crit_edge
  %delayed_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 23
  %8 = ptrtoint ptr %delayed_block_rsv to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %delayed_block_rsv, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp118.not = icmp eq i64 %9, 0
  br i1 %cmp118.not, label %if.end108.if.end140_crit_edge, label %do.end134, !prof !39

if.end108.if.end140_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

do.end134:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 471, i32 noundef 9, ptr noundef null) #7
  br label %if.end140

if.end140:                                        ; preds = %do.end134, %if.end108.if.end140_crit_edge
  %reserved150 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 23, i32 1
  %10 = ptrtoint ptr %reserved150 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %reserved150, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp151.not = icmp eq i64 %11, 0
  br i1 %cmp151.not, label %if.end140.if.end173_crit_edge, label %do.end167, !prof !39

if.end140.if.end173_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end173

do.end167:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 472, i32 noundef 9, ptr noundef null) #7
  br label %if.end173

if.end173:                                        ; preds = %do.end167, %if.end140.if.end173_crit_edge
  %delayed_refs_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24
  %reserved182 = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 24, i32 1
  %12 = ptrtoint ptr %reserved182 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %reserved182, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp183.not = icmp eq i64 %13, 0
  br i1 %cmp183.not, label %if.end173.if.end205_crit_edge, label %do.end199, !prof !39

if.end173.if.end205_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

do.end199:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 473, i32 noundef 9, ptr noundef null) #7
  br label %if.end205

if.end205:                                        ; preds = %do.end199, %if.end173.if.end205_crit_edge
  %14 = ptrtoint ptr %delayed_refs_rsv to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %delayed_refs_rsv, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %cmp216.not = icmp eq i64 %15, 0
  br i1 %cmp216.not, label %if.end205.if.end238_crit_edge, label %do.end232, !prof !39

if.end205.if.end238_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end238

do.end232:                                        ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 474, i32 noundef 9, ptr noundef null) #7
  br label %if.end238

if.end238:                                        ; preds = %do.end232, %if.end205.if.end238_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_use_block_rsv(ptr nocapture noundef readonly %trans, ptr noundef %root, i32 noundef %blocksize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %global_block_rsv = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 20
  %state.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 5
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %uuid_root.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %uuid_root.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uuid_root.i, align 8
  %cmp.i = icmp eq ptr %6, %root
  br i1 %cmp.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %adding_csums.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 11
  %7 = ptrtoint ptr %adding_csums.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %adding_csums.i, align 2, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not.i = icmp eq i8 %8, 0
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.if.then7.i_crit_edge, label %land.lhs.true.i

lor.lhs.false2.i.if.then7.i_crit_edge:            ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false2.i
  %root_key.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %9 = ptrtoint ptr %root_key.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %root_key.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %10)
  %cmp4.i = icmp eq i64 %10, 7
  br i1 %cmp4.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.then7.i_crit_edge

land.lhs.true.i.if.then7.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %block_rsv5.i = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 5
  %11 = ptrtoint ptr %block_rsv5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %block_rsv5.i, align 8
  %tobool6.not.i = icmp eq ptr %12, null
  br i1 %tobool6.not.i, label %if.end.i.if.then7.i_crit_edge, label %if.end.i.get_block_rsv.exit_crit_edge

if.end.i.get_block_rsv.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_block_rsv.exit

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i.if.then7.i_crit_edge, %land.lhs.true.i.if.then7.i_crit_edge, %lor.lhs.false2.i.if.then7.i_crit_edge
  %block_rsv8.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 12
  %13 = ptrtoint ptr %block_rsv8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %block_rsv8.i, align 8
  br label %get_block_rsv.exit

get_block_rsv.exit:                               ; preds = %if.then7.i, %if.end.i.get_block_rsv.exit_crit_edge
  %block_rsv.1.i = phi ptr [ %12, %if.end.i.get_block_rsv.exit_crit_edge ], [ %14, %if.then7.i ]
  %tobool10.not.i = icmp eq ptr %block_rsv.1.i, null
  %empty_block_rsv.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 25
  %spec.select.i = select i1 %tobool10.not.i, ptr %empty_block_rsv.i, ptr %block_rsv.1.i
  %15 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %spec.select.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp = icmp eq i64 %16, 0
  %.pre = zext i32 %blocksize to i64
  br i1 %cmp, label %get_block_rsv.exit.try_reserve_crit_edge, label %again.preheader, !prof !36

get_block_rsv.exit.try_reserve_crit_edge:         ; preds = %get_block_rsv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_reserve

again.preheader:                                  ; preds = %get_block_rsv.exit
  %lock.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %spec.select.i, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %reserved.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %spec.select.i, i32 0, i32 1
  %17 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %reserved.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %.pre)
  %cmp.not.i124 = icmp ult i64 %18, %.pre
  br i1 %cmp.not.i124, label %if.end6.lr.ph, label %again.preheader.if.then.i_crit_edge

again.preheader.if.then.i_crit_edge:              ; preds = %again.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end6.lr.ph:                                    ; preds = %again.preheader
  %failfast = getelementptr inbounds %struct.btrfs_block_rsv, ptr %spec.select.i, i32 0, i32 6
  %type = getelementptr inbounds %struct.btrfs_block_rsv, ptr %spec.select.i, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %19 = ptrtoint ptr %failfast to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %failfast, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool7.not = icmp eq i16 %20, 0
  br i1 %tobool7.not, label %if.end10, label %if.end6.lr.ph.cleanup_crit_edge

if.end6.lr.ph.cleanup_crit_edge:                  ; preds = %if.end6.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then15.if.then.i_crit_edge, %again.preheader.if.then.i_crit_edge
  %.lcssa = phi i64 [ %18, %again.preheader.if.then.i_crit_edge ], [ %28, %if.then15.if.then.i_crit_edge ]
  %sub.i = sub i64 %.lcssa, %.pre
  %21 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %sub.i, ptr %reserved.i, align 8
  %22 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %spec.select.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %23)
  %cmp3.i = icmp ult i64 %sub.i, %23
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.btrfs_block_rsv_use_bytes.exit.thread_crit_edge

if.then.i.btrfs_block_rsv_use_bytes.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_block_rsv_use_bytes.exit.thread

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %full.i = getelementptr inbounds %struct.btrfs_block_rsv, ptr %spec.select.i, i32 0, i32 4
  %24 = ptrtoint ptr %full.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %full.i, align 8
  br label %btrfs_block_rsv_use_bytes.exit.thread

btrfs_block_rsv_use_bytes.exit.thread:            ; preds = %if.then4.i, %if.then.i.btrfs_block_rsv_use_bytes.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6.lr.ph
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp12.not = icmp eq i16 %26, 0
  br i1 %cmp12.not, label %if.then15, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then15:                                        ; preds = %if.end10
  tail call void @btrfs_update_global_block_rsv(ptr noundef %1)
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %27 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %reserved.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %.pre)
  %cmp.not.i = icmp ult i64 %28, %.pre
  br i1 %cmp.not.i, label %if.end6.1, label %if.then15.if.then.i_crit_edge

if.then15.if.then.i_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end6.1:                                        ; preds = %if.then15
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %29 = ptrtoint ptr %failfast to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %failfast, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool7.not.1 = icmp eq i16 %30, 0
  br i1 %tobool7.not.1, label %if.end10.1, label %if.end6.1.cleanup_crit_edge

if.end6.1.cleanup_crit_edge:                      ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.1:                                       ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %type, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.end10.1, %if.end10.if.end16_crit_edge
  %.lcssa138 = phi i16 [ %26, %if.end10.if.end16_crit_edge ], [ %32, %if.end10.1 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %.lcssa138)
  %cmp19.not = icmp eq i16 %.lcssa138, 5
  br i1 %cmp19.not, label %if.end16.try_reserve_crit_edge, label %land.lhs.true21

if.end16.try_reserve_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_reserve

land.lhs.true21:                                  ; preds = %if.end16
  %mount_opt = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 31
  %33 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mount_opt, align 8
  %and = and i32 %34, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %land.lhs.true21.try_reserve_crit_edge, label %if.then23

land.lhs.true21.try_reserve_crit_edge:            ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_reserve

if.then23:                                        ; preds = %land.lhs.true21
  %call24 = tail call i32 @___ratelimit(ptr noundef nonnull @btrfs_use_block_rsv._rs, ptr noundef nonnull @__func__.btrfs_use_block_rsv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.try_reserve_crit_edge, label %do.end

if.then23.try_reserve_crit_edge:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_reserve

do.end:                                           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %type, align 2
  %conv37 = zext i16 %36 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 539, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %conv37, i32 noundef -28) #7
  br label %try_reserve

try_reserve:                                      ; preds = %do.end, %if.then23.try_reserve_crit_edge, %land.lhs.true21.try_reserve_crit_edge, %if.end16.try_reserve_crit_edge, %get_block_rsv.exit.try_reserve_crit_edge
  %call53 = tail call i32 @btrfs_reserve_metadata_bytes(ptr noundef %1, ptr noundef %spec.select.i, i64 noundef %.pre, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %try_reserve.cleanup_crit_edge, label %if.end56

try_reserve.cleanup_crit_edge:                    ; preds = %try_reserve
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56:                                         ; preds = %try_reserve
  %type57 = getelementptr inbounds %struct.btrfs_block_rsv, ptr %spec.select.i, i32 0, i32 5
  %37 = ptrtoint ptr %type57 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %type57, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp59.not = icmp eq i16 %38, 0
  br i1 %cmp59.not, label %if.end56.if.end71_crit_edge, label %land.lhs.true61

if.end56.if.end71_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

land.lhs.true61:                                  ; preds = %if.end56
  %space_info = getelementptr inbounds %struct.btrfs_block_rsv, ptr %spec.select.i, i32 0, i32 2
  %39 = ptrtoint ptr %space_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %space_info, align 8
  %space_info62 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 20, i32 2
  %41 = ptrtoint ptr %space_info62 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %space_info62, align 8
  %cmp63 = icmp eq ptr %40, %42
  br i1 %cmp63, label %if.then65, label %land.lhs.true61.if.end71_crit_edge

land.lhs.true61.if.end71_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then65:                                        ; preds = %land.lhs.true61
  %lock.i101 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 20, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i101) #7
  %reserved.i102 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 20, i32 1
  %43 = ptrtoint ptr %reserved.i102 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %reserved.i102, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %.pre)
  %cmp.not.i103 = icmp ult i64 %44, %.pre
  br i1 %cmp.not.i103, label %btrfs_block_rsv_use_bytes.exit110, label %if.then.i106

if.then.i106:                                     ; preds = %if.then65
  %sub.i104 = sub i64 %44, %.pre
  %45 = ptrtoint ptr %reserved.i102 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %sub.i104, ptr %reserved.i102, align 8
  %46 = ptrtoint ptr %global_block_rsv to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %global_block_rsv, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i104, i64 %47)
  %cmp3.i105 = icmp ult i64 %sub.i104, %47
  br i1 %cmp3.i105, label %if.then4.i108, label %if.then.i106.btrfs_block_rsv_use_bytes.exit110.thread_crit_edge

if.then.i106.btrfs_block_rsv_use_bytes.exit110.thread_crit_edge: ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %btrfs_block_rsv_use_bytes.exit110.thread

if.then4.i108:                                    ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_pc() #9
  %full.i107 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 20, i32 4
  %48 = ptrtoint ptr %full.i107 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %full.i107, align 8
  br label %btrfs_block_rsv_use_bytes.exit110.thread

btrfs_block_rsv_use_bytes.exit110.thread:         ; preds = %if.then4.i108, %if.then.i106.btrfs_block_rsv_use_bytes.exit110.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i101) #7
  br label %cleanup

btrfs_block_rsv_use_bytes.exit110:                ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %lock.i101) #7
  br label %if.end71

if.end71:                                         ; preds = %btrfs_block_rsv_use_bytes.exit110, %land.lhs.true61.if.end71_crit_edge, %if.end56.if.end71_crit_edge
  %ret.0 = phi i32 [ -28, %btrfs_block_rsv_use_bytes.exit110 ], [ %call53, %land.lhs.true61.if.end71_crit_edge ], [ %call53, %if.end56.if.end71_crit_edge ]
  %49 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %btrfs_block_rsv_use_bytes.exit110.thread, %try_reserve.cleanup_crit_edge, %if.end6.1.cleanup_crit_edge, %btrfs_block_rsv_use_bytes.exit.thread, %if.end6.lr.ph.cleanup_crit_edge
  %retval.0 = phi ptr [ %49, %if.end71 ], [ %spec.select.i, %try_reserve.cleanup_crit_edge ], [ %spec.select.i, %btrfs_block_rsv_use_bytes.exit.thread ], [ %global_block_rsv, %btrfs_block_rsv_use_bytes.exit110.thread ], [ inttoptr (i32 -28 to ptr), %if.end6.1.cleanup_crit_edge ], [ inttoptr (i32 -28 to ptr), %if.end6.lr.ph.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_update_bytes_may_use(ptr noundef %fs_info, ptr noundef %sinfo, i64 noundef %old, i64 noundef %diff) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_update_bytes_may_use, i32 0, i32 1), ptr blockaddress(@trace_update_bytes_may_use, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !41

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !26) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !42
  %call42 = tail call i32 @__traceiter_update_bytes_may_use(ptr noundef null, ptr noundef %fs_info, ptr noundef %sinfo, i64 noundef %old, i64 noundef %diff) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !43
  %13 = tail call i32 @llvm.read_register.i32(metadata !26) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !26) #7
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !39

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !44
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 2256, ptr noundef nonnull @.str.7) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  %31 = tail call i32 @llvm.read_register.i32(metadata !26) #7
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
define internal fastcc void @trace_btrfs_space_reservation(ptr noundef %fs_info, i64 noundef %val, i64 noundef %bytes, i32 noundef %reserve) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_btrfs_space_reservation, i32 0, i32 1), ptr blockaddress(@trace_btrfs_space_reservation, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !41

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !26) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  %call42 = tail call i32 @__traceiter_btrfs_space_reservation(ptr noundef null, ptr noundef %fs_info, ptr noundef nonnull @.str.5, i64 noundef %val, i64 noundef %bytes, i32 noundef %reserve) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %13 = tail call i32 @llvm.read_register.i32(metadata !26) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !26) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !39

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !44
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
  %.b1 = load i1, ptr @trace_btrfs_space_reservation.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_btrfs_space_reservation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1076, ptr noundef nonnull @.str.7) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  %31 = tail call i32 @llvm.read_register.i32(metadata !26) #7
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
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_update_bytes_may_use(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_btrfs_space_reservation(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !20, !22, !23, !25}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @btrfs_init_block_rsv.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/btrfs/block-rsv.c", i32 177, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/btrfs/block-rsv.c", i32 467, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/btrfs/block-rsv.c", i32 533, i32 10}
!7 = !{ptr @btrfs_use_block_rsv._rs, !6, !"_rs", i1 false, i1 false}
!8 = !{ptr @__func__.btrfs_use_block_rsv, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/btrfs/block-rsv.c", i32 536, i32 7}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/btrfs/block-rsv.c", i32 537, i32 4}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/space-info.h", i32 110, i32 1}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/trace/events/btrfs.h", i32 2250, i32 1}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!19 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/trace/events/btrfs.h", i32 1052, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 789664, i64 789691}
!38 = !{i64 790004, i64 790031, i64 790065, i64 790086}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i8 0, i8 2}
!41 = !{i64 2148250138, i64 2148250143, i64 2148250156, i64 2148250200, i64 2148250234, i64 2148250255}
!42 = !{i64 2156413133}
!43 = !{i64 2156413386}
!44 = !{i64 2149272818}
!45 = !{i64 2149273854}
!46 = !{i64 2155392977}
!47 = !{i64 2155393254}
