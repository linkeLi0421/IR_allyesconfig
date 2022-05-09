; ModuleID = '/llk/IR_all_yes/fs/btrfs/tree-mod-log.c_pt.bc'
source_filename = "../fs/btrfs/tree-mod-log.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.btrfs_seq_list = type { %struct.list_head, i64 }
%struct.tree_mod_elem = type { %struct.rb_node, i64, i64, i32, i32, i64, %struct.btrfs_disk_key, i64, %struct.anon.83, %struct.tree_mod_root }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.anon.83 = type { i32, i32 }
%struct.tree_mod_root = type { i64, i8 }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/btrfs/tree-mod-log.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014failed to read tree block %llu from get_old_root\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tm2\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tm2 == tm || tm2->seq > tm->seq\00", [32 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 779, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 829, i32 4 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 850, i32 4 }
@___asan_gen_.17 = private constant [27 x i8] c"../fs/btrfs/tree-mod-log.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 851, i32 4 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 3491, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @btrfs_get_tree_mod_seq(ptr noundef %fs_info, ptr noundef %elem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tree_mod_log_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 67
  tail call void @_raw_write_lock(ptr noundef %tree_mod_log_lock) #8
  %seq = getelementptr inbounds %struct.btrfs_seq_list, ptr %elem, i32 0, i32 1
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %seq, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %tree_mod_seq.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 66
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tree_mod_seq.i, i32 noundef 8) #8
  %call.i2.i.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %tree_mod_seq.i) #8
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call.i2.i.i, ptr %seq, align 8
  %tree_mod_seq_list = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 69
  %prev.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 69, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %elem, ptr noundef %4, ptr noundef %tree_mod_seq_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %elem, ptr %prev.i, align 4
  %6 = ptrtoint ptr %elem to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tree_mod_seq_list, ptr %elem, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %elem, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %elem, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 19, ptr noundef %flags) #8
  br label %if.end

if.end:                                           ; preds = %list_add_tail.exit, %entry.if.end_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %tree_mod_log_lock) #8
  %9 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %seq, align 8
  ret i64 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_put_tree_mod_seq(ptr noundef %fs_info, ptr noundef %elem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %seq = getelementptr inbounds %struct.btrfs_seq_list, ptr %elem, i32 0, i32 1
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %seq, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.cleanup23_crit_edge, label %if.end

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup23

if.end:                                           ; preds = %entry
  %tree_mod_log_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 67
  tail call void @_raw_write_lock(ptr noundef %tree_mod_log_lock) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %elem) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %elem, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %elem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elem, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %elem to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %elem, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %elem, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %10 = ptrtoint ptr %seq to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %seq, align 8
  %tree_mod_seq_list = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 69
  %11 = ptrtoint ptr %tree_mod_seq_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %tree_mod_seq_list, align 4
  %cmp.i.not = icmp eq ptr %12, %tree_mod_seq_list
  br i1 %cmp.i.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 19, ptr noundef %flags) #8
  br label %if.end11

if.else:                                          ; preds = %list_del.exit
  %seq6 = getelementptr inbounds %struct.btrfs_seq_list, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %seq6 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %seq6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %14)
  %cmp = icmp ugt i64 %1, %14
  br i1 %cmp, label %if.else.cleanup23.sink.split_crit_edge, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.else.cleanup23.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup23.sink.split

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.then3
  %min_seq.1 = phi i64 [ -1, %if.then3 ], [ %14, %if.else.if.end11_crit_edge ]
  %tree_mod_log = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 68
  %call12 = tail call ptr @rb_first(ptr noundef %tree_mod_log) #8
  %tobool13.not48 = icmp eq ptr %call12, null
  br i1 %tobool13.not48, label %if.end11.cleanup23.sink.split_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.cleanup23.sink.split_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup23.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11.for.body_crit_edge
  %node.049 = phi ptr [ %call14, %for.inc.for.body_crit_edge ], [ %call12, %if.end11.for.body_crit_edge ]
  %call14 = tail call ptr @rb_next(ptr noundef nonnull %node.049) #8
  %seq18 = getelementptr inbounds %struct.tree_mod_elem, ptr %node.049, i32 0, i32 2
  %15 = ptrtoint ptr %seq18 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %seq18, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %min_seq.1)
  %cmp19.not = icmp ult i64 %16, %min_seq.1
  br i1 %cmp19.not, label %if.end21, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rb_erase(ptr noundef nonnull %node.049, ptr noundef %tree_mod_log) #8
  tail call void @kfree(ptr noundef nonnull %node.049) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %for.body.for.inc_crit_edge
  %tobool13.not = icmp eq ptr %call14, null
  br i1 %tobool13.not, label %for.inc.cleanup23.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup23.sink.split_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup23.sink.split

cleanup23.sink.split:                             ; preds = %for.inc.cleanup23.sink.split_crit_edge, %if.end11.cleanup23.sink.split_crit_edge, %if.else.cleanup23.sink.split_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %tree_mod_log_lock) #8
  br label %cleanup23

cleanup23:                                        ; preds = %cleanup23.sink.split, %entry.cleanup23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_tree_mod_log_insert_key(ptr noundef %eb, i32 noundef %slot, i32 noundef %op, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 8
  %flags.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %tobool1.not.i = icmp eq ptr %eb, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 12
  %5 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pages.i.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %6) #8
  %7 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %eb, align 8
  %conv.i.i = trunc i64 %8 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %level.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %level.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.i = icmp eq i8 %10, 0
  br i1 %cmp.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %call1 = tail call fastcc ptr @alloc_tree_mod_elem(ptr noundef %eb, i32 noundef %slot, i32 noundef %op, i32 noundef %flags)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %11 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fs_info, align 8
  %flags.i25 = getelementptr inbounds %struct.btrfs_fs_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i25, align 4
  %15 = and i32 %14, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i26 = icmp eq i32 %15, 0
  br i1 %tobool.not.i26, label %if.end3.cleanup.sink.split_crit_edge, label %if.end.i28

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end.i28:                                       ; preds = %if.end3
  br i1 %tobool1.not.i, label %if.end.i28.if.end5.i37_crit_edge, label %land.lhs.true.i36

if.end.i28.if.end5.i37_crit_edge:                 ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i37

land.lhs.true.i36:                                ; preds = %if.end.i28
  %pages.i.i29 = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 12
  %16 = ptrtoint ptr %pages.i.i29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages.i.i29, align 4
  %call.i.i30 = tail call ptr @page_address(ptr noundef %17) #8
  %18 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %eb, align 8
  %conv.i.i31 = trunc i64 %19 to i32
  %and.i.i32 = and i32 %conv.i.i31, 4095
  %add.ptr.i.i33 = getelementptr i8, ptr %call.i.i30, i32 %and.i.i32
  %level.i.i34 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i33, i32 0, i32 8
  %20 = ptrtoint ptr %level.i.i34 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %level.i.i34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.i35 = icmp eq i8 %21, 0
  br i1 %cmp.i35, label %land.lhs.true.i36.cleanup.sink.split_crit_edge, label %land.lhs.true.i36.if.end5.i37_crit_edge

land.lhs.true.i36.if.end5.i37_crit_edge:          ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i37

land.lhs.true.i36.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end5.i37:                                      ; preds = %land.lhs.true.i36.if.end5.i37_crit_edge, %if.end.i28.if.end5.i37_crit_edge
  %tree_mod_log_lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %12, i32 0, i32 67
  tail call void @_raw_write_lock(ptr noundef %tree_mod_log_lock.i) #8
  %tree_mod_seq_list.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %12, i32 0, i32 69
  %22 = ptrtoint ptr %tree_mod_seq_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %tree_mod_seq_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %23, %tree_mod_seq_list.i
  br i1 %cmp.i.not.i, label %if.then8.i, label %if.end7

if.then8.i:                                       ; preds = %if.end5.i37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_write_unlock(ptr noundef %tree_mod_log_lock.i) #8
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end5.i37
  %24 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fs_info, align 8
  %call9 = tail call fastcc i32 @tree_mod_log_insert(ptr noundef %25, ptr noundef nonnull %call1)
  %26 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fs_info, align 8
  %tree_mod_log_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %27, i32 0, i32 67
  tail call void @_raw_write_unlock(ptr noundef %tree_mod_log_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %if.end7.cleanup.sink.split_crit_edge

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end7.cleanup.sink.split_crit_edge, %if.then8.i, %land.lhs.true.i36.cleanup.sink.split_crit_edge, %if.end3.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.then8.i ], [ 0, %if.end3.cleanup.sink.split_crit_edge ], [ 0, %land.lhs.true.i36.cleanup.sink.split_crit_edge ], [ %call9, %if.end7.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_tree_mod_elem(ptr noundef %eb, i32 noundef %slot, i32 noundef %op, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !23

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and6.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 104) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  %2 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %eb, align 8
  %logical = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %logical to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %logical, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %op)
  %cmp.not = icmp eq i32 %op, 1
  br i1 %cmp.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = mul i32 %slot, 33
  %.pre27 = add i32 %.pre, 101
  %.pre28 = inttoptr i32 %.pre27 to ptr
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %key = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i, i32 0, i32 6
  tail call void @btrfs_node_key(ptr noundef %eb, ptr noundef %key, i32 noundef %slot) #8
  %mul.i = mul i32 %slot, 33
  %add.i = add i32 %mul.i, 101
  %5 = inttoptr i32 %add.i to ptr
  %call.i.i = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %5, i32 noundef 17) #8
  %blockptr = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %blockptr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i.i, ptr %blockptr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %.pre-phi = phi ptr [ %.pre28, %if.end.if.end3_crit_edge ], [ %5, %if.then1 ]
  %op4 = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %op4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %op, ptr %op4, align 8
  %slot5 = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %slot5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %slot, ptr %slot5, align 4
  %call.i.i26 = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %.pre-phi, i32 noundef 25) #8
  %generation = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %generation to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call.i.i26, ptr %generation, align 8
  %10 = ptrtoint ptr %call7.i.i to i32
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %kzalloc.exit.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tree_mod_log_insert(ptr noundef %fs_info, ptr noundef %tm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 67, i32 4
  %call = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !24

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tree_mod_seq.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 66
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tree_mod_seq.i, i32 noundef 8) #8
  %call.i2.i.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %tree_mod_seq.i) #8
  %seq = getelementptr inbounds %struct.tree_mod_elem, ptr %tm, i32 0, i32 2
  %1 = ptrtoint ptr %seq to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %call.i2.i.i, ptr %seq, align 8
  %tree_mod_log = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 68
  %2 = ptrtoint ptr %tree_mod_log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tree_mod_log, align 4
  %tobool26.not81 = icmp eq ptr %3, null
  br i1 %tobool26.not81, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %logical28 = getelementptr inbounds %struct.tree_mod_elem, ptr %tm, i32 0, i32 1
  %4 = ptrtoint ptr %logical28 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %logical28, align 8
  br label %while.body

while.body:                                       ; preds = %if.end50.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %3, %while.body.lr.ph ], [ %12, %if.end50.while.body_crit_edge ]
  %logical = getelementptr inbounds %struct.tree_mod_elem, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %logical, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %5)
  %cmp = icmp ult i64 %8, %5
  br i1 %cmp, label %if.then29, label %if.else

if.then29:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2
  br label %if.end50

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %5)
  %cmp32 = icmp ugt i64 %8, %5
  br i1 %cmp32, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1
  br label %if.end50

if.else34:                                        ; preds = %if.else
  %seq35 = getelementptr inbounds %struct.tree_mod_elem, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %seq35 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %seq35, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %call.i2.i.i)
  %cmp37 = icmp ult i64 %10, %call.i2.i.i
  br i1 %cmp37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left39 = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2
  br label %if.end50

if.else40:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %call.i2.i.i)
  %cmp43 = icmp ugt i64 %10, %call.i2.i.i
  br i1 %cmp43, label %if.then44, label %if.else40.cleanup_crit_edge

if.else40.cleanup_crit_edge:                      ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then44:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right45 = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1
  br label %if.end50

if.end50:                                         ; preds = %if.then44, %if.then38, %if.then33, %if.then29
  %new.1 = phi ptr [ %rb_left, %if.then29 ], [ %rb_right, %if.then33 ], [ %rb_left39, %if.then38 ], [ %rb_right45, %if.then44 ]
  %11 = ptrtoint ptr %new.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %new.1, align 4
  %tobool26.not = icmp eq ptr %12, null
  br i1 %tobool26.not, label %while.cond.while.end_crit_edge, label %if.end50.while.body_crit_edge

if.end50.while.body_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le = ptrtoint ptr %6 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ]
  %new.0.lcssa = phi ptr [ %new.1, %while.cond.while.end_crit_edge ], [ %tree_mod_log, %if.end.while.end_crit_edge ]
  %13 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %parent.0.lcssa, ptr %tm, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %tm, i32 0, i32 1
  %14 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %tm, i32 0, i32 2
  %15 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rb_left.i, align 4
  %16 = ptrtoint ptr %new.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tm, ptr %new.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %tm, ptr noundef %tree_mod_log) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.else40.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -17, %if.else40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_tree_mod_log_insert_move(ptr noundef %eb, i32 noundef %dst_slot, i32 noundef %src_slot, i32 noundef %nr_items) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 8
  %flags.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %tobool1.not.i = icmp eq ptr %eb, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 12
  %5 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pages.i.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %6) #8
  %7 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %eb, align 8
  %conv.i.i = trunc i64 %8 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %level.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %level.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.i = icmp eq i8 %10, 0
  br i1 %cmp.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_items, i32 4) #8
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %13 = extractvalue { i32, i1 } %11, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3392) #12
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end3

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3392, i32 noundef 104) #11
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end3.free_tms_crit_edge, label %if.end7

if.end3.free_tms_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tms

if.end7:                                          ; preds = %if.end3
  %15 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %eb, align 8
  %logical = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %logical to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %logical, align 8
  %slot = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %src_slot, ptr %slot, align 4
  %move = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %move to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %dst_slot, ptr %move, align 8
  %nr_items10 = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %nr_items10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %nr_items, ptr %nr_items10, align 4
  %op = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 5, ptr %op, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %dst_slot, i32 %src_slot)
  %cmp154 = icmp slt i32 %dst_slot, %src_slot
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_items)
  %cmp11155 = icmp ne i32 %nr_items, 0
  %or.cond156 = and i1 %cmp11155, %cmp154
  br i1 %or.cond156, label %if.end7.for.body_crit_edge, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.for.body_crit_edge
  %add158 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ %dst_slot, %if.end7.for.body_crit_edge ]
  %i.0157 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i127 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3392, i32 noundef 104) #11
  %tobool.not.i128 = icmp eq ptr %call7.i.i.i127, null
  br i1 %tobool.not.i128, label %alloc_tree_mod_elem.exit.thread, label %for.inc

alloc_tree_mod_elem.exit.thread:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx151 = getelementptr ptr, ptr %call8.i.i, i32 %i.0157
  %23 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx151, align 4
  br label %free_tms

for.inc:                                          ; preds = %for.body
  %24 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %eb, align 8
  %logical.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i127, i32 0, i32 1
  %26 = ptrtoint ptr %logical.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %logical.i, align 8
  %key.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i127, i32 0, i32 6
  tail call void @btrfs_node_key(ptr noundef %eb, ptr noundef %key.i, i32 noundef %add158) #8
  %mul.i.i = mul i32 %add158, 33
  %add.i.i = add i32 %mul.i.i, 101
  %27 = inttoptr i32 %add.i.i to ptr
  %call.i.i.i = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %27, i32 noundef 17) #8
  %blockptr.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i127, i32 0, i32 7
  %28 = ptrtoint ptr %blockptr.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call.i.i.i, ptr %blockptr.i, align 8
  %op4.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i127, i32 0, i32 3
  %29 = ptrtoint ptr %op4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %op4.i, align 8
  %slot5.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i127, i32 0, i32 4
  %30 = ptrtoint ptr %slot5.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add158, ptr %slot5.i, align 4
  %call.i.i26.i = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %27, i32 noundef 25) #8
  %generation.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i127, i32 0, i32 5
  %31 = ptrtoint ptr %generation.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %call.i.i26.i, ptr %generation.i, align 8
  %32 = ptrtoint ptr %call7.i.i.i127 to i32
  %33 = ptrtoint ptr %call7.i.i.i127 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %call7.i.i.i127, align 8
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.0157
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i.i127, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0157, 1
  %add = add nsw i32 %inc, %dst_slot
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %src_slot)
  %cmp = icmp slt i32 %add, %src_slot
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %nr_items)
  %cmp11 = icmp slt i32 %inc, %nr_items
  %or.cond = and i1 %cmp11, %cmp
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end7.for.end_crit_edge
  %35 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fs_info, align 8
  %flags.i130 = getelementptr inbounds %struct.btrfs_fs_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i130 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flags.i130, align 4
  %39 = and i32 %38, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i131 = icmp eq i32 %39, 0
  br i1 %tobool.not.i131, label %for.end.free_tms_crit_edge, label %if.end.i133

for.end.free_tms_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tms

if.end.i133:                                      ; preds = %for.end
  br i1 %tobool1.not.i, label %if.end.i133.if.end5.i142_crit_edge, label %land.lhs.true.i141

if.end.i133.if.end5.i142_crit_edge:               ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i142

land.lhs.true.i141:                               ; preds = %if.end.i133
  %pages.i.i134 = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 12
  %40 = ptrtoint ptr %pages.i.i134 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pages.i.i134, align 4
  %call.i.i135 = tail call ptr @page_address(ptr noundef %41) #8
  %42 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %eb, align 8
  %conv.i.i136 = trunc i64 %43 to i32
  %and.i.i137 = and i32 %conv.i.i136, 4095
  %add.ptr.i.i138 = getelementptr i8, ptr %call.i.i135, i32 %and.i.i137
  %level.i.i139 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i138, i32 0, i32 8
  %44 = ptrtoint ptr %level.i.i139 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %level.i.i139, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp.i140 = icmp eq i8 %45, 0
  br i1 %cmp.i140, label %land.lhs.true.i141.free_tms_crit_edge, label %land.lhs.true.i141.if.end5.i142_crit_edge

land.lhs.true.i141.if.end5.i142_crit_edge:        ; preds = %land.lhs.true.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i142

land.lhs.true.i141.free_tms_crit_edge:            ; preds = %land.lhs.true.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tms

if.end5.i142:                                     ; preds = %land.lhs.true.i141.if.end5.i142_crit_edge, %if.end.i133.if.end5.i142_crit_edge
  %tree_mod_log_lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %36, i32 0, i32 67
  tail call void @_raw_write_lock(ptr noundef %tree_mod_log_lock.i) #8
  %tree_mod_seq_list.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %36, i32 0, i32 69
  %46 = ptrtoint ptr %tree_mod_seq_list.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %tree_mod_seq_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %47, %tree_mod_seq_list.i
  br i1 %cmp.i.not.i, label %if.then8.i, label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %if.end5.i142
  br i1 %or.cond156, label %for.cond22.preheader.for.body28_crit_edge, label %for.cond22.preheader.for.end37_crit_edge

for.cond22.preheader.for.end37_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

for.cond22.preheader.for.body28_crit_edge:        ; preds = %for.cond22.preheader
  br label %for.body28

if.then8.i:                                       ; preds = %if.end5.i142
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_write_unlock(ptr noundef %tree_mod_log_lock.i) #8
  br label %free_tms

for.cond22:                                       ; preds = %for.body28
  %inc36 = add nuw nsw i32 %i.1162, 1
  %add23 = add nsw i32 %inc36, %dst_slot
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %src_slot)
  %cmp24 = icmp slt i32 %add23, %src_slot
  call void @__sanitizer_cov_trace_cmp4(i32 %inc36, i32 %nr_items)
  %cmp26 = icmp slt i32 %inc36, %nr_items
  %or.cond125 = and i1 %cmp26, %cmp24
  br i1 %or.cond125, label %for.cond22.for.body28_crit_edge, label %for.cond22.for.end37_crit_edge

for.cond22.for.end37_crit_edge:                   ; preds = %for.cond22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

for.cond22.for.body28_crit_edge:                  ; preds = %for.cond22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body28

for.body28:                                       ; preds = %for.cond22.for.body28_crit_edge, %for.cond22.preheader.for.body28_crit_edge
  %i.1162 = phi i32 [ %inc36, %for.cond22.for.body28_crit_edge ], [ 0, %for.cond22.preheader.for.body28_crit_edge ]
  %48 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fs_info, align 8
  %arrayidx30 = getelementptr ptr, ptr %call8.i.i, i32 %i.1162
  %50 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx30, align 4
  %call31 = tail call fastcc i32 @tree_mod_log_insert(ptr noundef %49, ptr noundef %51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %for.cond22, label %for.body28.free_tms_crit_edge

for.body28.free_tms_crit_edge:                    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tms

for.end37:                                        ; preds = %for.cond22.for.end37_crit_edge, %for.cond22.preheader.for.end37_crit_edge
  %52 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fs_info, align 8
  %call39 = tail call fastcc i32 @tree_mod_log_insert(ptr noundef %53, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %for.end37.free_tms_crit_edge

for.end37.free_tms_crit_edge:                     ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tms

if.end42:                                         ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fs_info, align 8
  %tree_mod_log_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %55, i32 0, i32 67
  tail call void @_raw_write_unlock(ptr noundef %tree_mod_log_lock) #8
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %cleanup

free_tms:                                         ; preds = %for.end37.free_tms_crit_edge, %for.body28.free_tms_crit_edge, %if.then8.i, %land.lhs.true.i141.free_tms_crit_edge, %for.end.free_tms_crit_edge, %alloc_tree_mod_elem.exit.thread, %if.end3.free_tms_crit_edge
  %ret.0 = phi i32 [ %call39, %for.end37.free_tms_crit_edge ], [ -12, %if.end3.free_tms_crit_edge ], [ -12, %alloc_tree_mod_elem.exit.thread ], [ 0, %if.then8.i ], [ 0, %for.end.free_tms_crit_edge ], [ 0, %land.lhs.true.i141.free_tms_crit_edge ], [ %call31, %for.body28.free_tms_crit_edge ]
  %locked.0.off0 = phi i1 [ true, %for.end37.free_tms_crit_edge ], [ false, %if.end3.free_tms_crit_edge ], [ false, %alloc_tree_mod_elem.exit.thread ], [ false, %if.then8.i ], [ false, %for.end.free_tms_crit_edge ], [ false, %land.lhs.true.i141.free_tms_crit_edge ], [ true, %for.body28.free_tms_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_items)
  %cmp45163 = icmp sgt i32 %nr_items, 0
  br i1 %cmp45163, label %free_tms.for.body46_crit_edge, label %free_tms.for.end61_crit_edge

free_tms.for.end61_crit_edge:                     ; preds = %free_tms
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end61

free_tms.for.body46_crit_edge:                    ; preds = %free_tms
  br label %for.body46

for.body46:                                       ; preds = %if.end57.for.body46_crit_edge, %free_tms.for.body46_crit_edge
  %i.2164 = phi i32 [ %inc60, %if.end57.for.body46_crit_edge ], [ 0, %free_tms.for.body46_crit_edge ]
  %arrayidx47 = getelementptr ptr, ptr %call8.i.i, i32 %i.2164
  %56 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx47, align 4
  %tobool48.not = icmp eq ptr %57, null
  br i1 %tobool48.not, label %for.body46.if.end57_crit_edge, label %land.lhs.true

for.body46.if.end57_crit_edge:                    ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

land.lhs.true:                                    ; preds = %for.body46
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %60 = ptrtoint ptr %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %60)
  %cmp52 = icmp eq i32 %59, %60
  br i1 %cmp52, label %land.lhs.true.if.end57_crit_edge, label %if.then53

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fs_info, align 8
  %tree_mod_log = getelementptr inbounds %struct.btrfs_fs_info, ptr %62, i32 0, i32 68
  tail call void @rb_erase(ptr noundef nonnull %57, ptr noundef %tree_mod_log) #8
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %land.lhs.true.if.end57_crit_edge, %for.body46.if.end57_crit_edge
  %63 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx47, align 4
  tail call void @kfree(ptr noundef %64) #8
  %inc60 = add nuw nsw i32 %i.2164, 1
  %exitcond.not = icmp eq i32 %inc60, %nr_items
  br i1 %exitcond.not, label %if.end57.for.end61_crit_edge, label %if.end57.for.body46_crit_edge

if.end57.for.body46_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body46

if.end57.for.end61_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end61

for.end61:                                        ; preds = %if.end57.for.end61_crit_edge, %free_tms.for.end61_crit_edge
  br i1 %locked.0.off0, label %if.then63, label %for.end61.if.end66_crit_edge

for.end61.if.end66_crit_edge:                     ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then63:                                        ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fs_info, align 8
  %tree_mod_log_lock65 = getelementptr inbounds %struct.btrfs_fs_info, ptr %66, i32 0, i32 67
  tail call void @_raw_write_unlock(ptr noundef %tree_mod_log_lock65) #8
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %for.end61.if.end66_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #8
  tail call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end42, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end66 ], [ 0, %if.end42 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_tree_mod_log_insert_root(ptr noundef %old_root, ptr nocapture noundef readonly %new_root, i1 noundef zeroext %log_removal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.extent_buffer, ptr %old_root, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %flags.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %log_removal, label %land.lhs.true, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %old_root, i32 0, i32 12
  %5 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %6) #8
  %7 = ptrtoint ptr %old_root to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %old_root, align 8
  %conv.i = trunc i64 %8 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %9 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.not = icmp eq i8 %10, 0
  br i1 %cmp.not, label %land.lhs.true.if.end17_crit_edge, label %if.then4

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then4:                                         ; preds = %land.lhs.true
  %11 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages.i, align 4
  %call.i97 = tail call ptr @page_address(ptr noundef %12) #8
  %13 = ptrtoint ptr %old_root to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %old_root, align 8
  %conv.i98 = trunc i64 %14 to i32
  %and.i99 = and i32 %conv.i98, 4095
  %add.ptr.i100 = getelementptr i8, ptr %call.i97, i32 %and.i99
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i100, i32 0, i32 7
  %15 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %nritems.i, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 4) #8
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %if.then4.cleanup.sink.split_crit_edge, label %if.end7.i.i, !prof !24

if.then4.cleanup.sink.split_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end7.i.i:                                      ; preds = %if.then4
  %20 = extractvalue { i32, i1 } %18, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3392) #12
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.cleanup.sink.split_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup.sink.split_crit_edge:         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp10147.not = icmp eq i32 %16, 0
  br i1 %cmp10147.not, label %for.cond.preheader.if.end17_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end17_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0148 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i102 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3392, i32 noundef 104) #11
  %tobool.not.i103 = icmp eq ptr %call7.i.i.i102, null
  br i1 %tobool.not.i103, label %alloc_tree_mod_elem.exit.thread, label %for.inc

alloc_tree_mod_elem.exit.thread:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx127 = getelementptr ptr, ptr %call8.i.i, i32 %i.0148
  %22 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx127, align 4
  br label %free_tms

for.inc:                                          ; preds = %for.body
  %23 = ptrtoint ptr %old_root to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %old_root, align 8
  %logical.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i102, i32 0, i32 1
  %25 = ptrtoint ptr %logical.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %logical.i, align 8
  %key.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i102, i32 0, i32 6
  tail call void @btrfs_node_key(ptr noundef %old_root, ptr noundef %key.i, i32 noundef %i.0148) #8
  %mul.i.i = mul i32 %i.0148, 33
  %add.i.i = add i32 %mul.i.i, 101
  %26 = inttoptr i32 %add.i.i to ptr
  %call.i.i.i = tail call i64 @btrfs_get_64(ptr noundef %old_root, ptr noundef %26, i32 noundef 17) #8
  %blockptr.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i102, i32 0, i32 7
  %27 = ptrtoint ptr %blockptr.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call.i.i.i, ptr %blockptr.i, align 8
  %op4.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i102, i32 0, i32 3
  %28 = ptrtoint ptr %op4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %op4.i, align 8
  %slot5.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i102, i32 0, i32 4
  %29 = ptrtoint ptr %slot5.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %i.0148, ptr %slot5.i, align 4
  %call.i.i26.i = tail call i64 @btrfs_get_64(ptr noundef %old_root, ptr noundef %26, i32 noundef 25) #8
  %generation.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i102, i32 0, i32 5
  %30 = ptrtoint ptr %generation.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %call.i.i26.i, ptr %generation.i, align 8
  %31 = ptrtoint ptr %call7.i.i.i102 to i32
  %32 = ptrtoint ptr %call7.i.i.i102 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %call7.i.i.i102, align 8
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.0148
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i.i102, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0148, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %for.inc.if.end17_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end17_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end17:                                         ; preds = %for.inc.if.end17_crit_edge, %for.cond.preheader.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %tm_list.0 = phi ptr [ null, %land.lhs.true.if.end17_crit_edge ], [ null, %if.end.if.end17_crit_edge ], [ %call8.i.i, %for.cond.preheader.if.end17_crit_edge ], [ %call8.i.i, %for.inc.if.end17_crit_edge ]
  %nritems.0 = phi i32 [ 0, %land.lhs.true.if.end17_crit_edge ], [ 0, %if.end.if.end17_crit_edge ], [ 0, %for.cond.preheader.if.end17_crit_edge ], [ %17, %for.inc.if.end17_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3392, i32 noundef 104) #11
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.end17.free_tms_crit_edge, label %if.end21

if.end17.free_tms_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tms

if.end21:                                         ; preds = %if.end17
  %35 = ptrtoint ptr %new_root to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %new_root, align 8
  %logical = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %logical to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %logical, align 8
  %38 = ptrtoint ptr %old_root to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %old_root, align 8
  %old_root23 = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i, i32 0, i32 9
  %40 = ptrtoint ptr %old_root23 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %old_root23, align 8
  %pages.i105 = getelementptr inbounds %struct.extent_buffer, ptr %old_root, i32 0, i32 12
  %41 = ptrtoint ptr %pages.i105 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pages.i105, align 4
  %call.i106 = tail call ptr @page_address(ptr noundef %42) #8
  %43 = ptrtoint ptr %old_root to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %old_root, align 8
  %conv.i107 = trunc i64 %44 to i32
  %and.i108 = and i32 %conv.i107, 4095
  %add.ptr.i109 = getelementptr i8, ptr %call.i106, i32 %and.i108
  %level.i110 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i109, i32 0, i32 8
  %45 = ptrtoint ptr %level.i110 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %level.i110, align 1
  %level = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i, i32 0, i32 9, i32 1
  %47 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %level, align 8
  %48 = ptrtoint ptr %pages.i105 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pages.i105, align 4
  %call.i112 = tail call ptr @page_address(ptr noundef %49) #8
  %50 = ptrtoint ptr %old_root to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %old_root, align 8
  %conv.i113 = trunc i64 %51 to i32
  %and.i114 = and i32 %conv.i113, 4095
  %add.ptr.i115 = getelementptr i8, ptr %call.i112, i32 %and.i114
  %generation.i116 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i115, i32 0, i32 5
  %52 = ptrtoint ptr %generation.i116 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %generation.i116, align 1
  %54 = tail call i64 @llvm.bswap.i64(i64 %53) #8
  %generation = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i, i32 0, i32 5
  %55 = ptrtoint ptr %generation to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %generation, align 8
  %op = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 6, ptr %op, align 8
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %flags.i, align 4
  %59 = and i32 %58, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i118 = icmp eq i32 %59, 0
  br i1 %tobool.not.i118, label %if.end21.free_tms_crit_edge, label %if.end.i119

if.end21.free_tms_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tms

if.end.i119:                                      ; preds = %if.end21
  %tree_mod_log_lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 67
  tail call void @_raw_write_lock(ptr noundef %tree_mod_log_lock.i) #8
  %tree_mod_seq_list.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 69
  %60 = ptrtoint ptr %tree_mod_seq_list.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %tree_mod_seq_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %61, %tree_mod_seq_list.i
  br i1 %cmp.i.not.i, label %if.then8.i, label %if.end30

if.then8.i:                                       ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_write_unlock(ptr noundef %tree_mod_log_lock.i) #8
  br label %free_tms

if.end30:                                         ; preds = %if.end.i119
  %tobool31.not = icmp eq ptr %tm_list.0, null
  br i1 %tobool31.not, label %if.end30.if.end38_crit_edge, label %if.then32

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then32:                                        ; preds = %if.end30
  %sub.i = add nsw i32 %nritems.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nritems.0)
  %cmp22.i = icmp sgt i32 %nritems.0, 0
  br i1 %cmp22.i, label %if.then32.for.body.i_crit_edge, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then32.for.body.i_crit_edge:                   ; preds = %if.then32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc6.i.for.body.i_crit_edge, %if.then32.for.body.i_crit_edge
  %i.023.i = phi i32 [ %dec7.i, %for.inc6.i.for.body.i_crit_edge ], [ %sub.i, %if.then32.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %tm_list.0, i32 %i.023.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i, align 4
  %call.i121 = tail call fastcc i32 @tree_mod_log_insert(ptr noundef %1, ptr noundef %63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool.not.i122 = icmp eq i32 %call.i121, 0
  br i1 %tobool.not.i122, label %for.inc6.i, label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %i.023.i)
  %cmp324.i = icmp sgt i32 %sub.i, %i.023.i
  br i1 %cmp324.i, label %for.body4.lr.ph.i, label %for.cond2.preheader.i.if.end38.thread_crit_edge

for.cond2.preheader.i.if.end38.thread_crit_edge:  ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.thread

for.body4.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %tree_mod_log.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 68
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %j.025.i = phi i32 [ %sub.i, %for.body4.lr.ph.i ], [ %dec.i, %for.body4.i.for.body4.i_crit_edge ]
  %arrayidx5.i = getelementptr ptr, ptr %tm_list.0, i32 %j.025.i
  %64 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx5.i, align 4
  tail call void @rb_erase(ptr noundef %65, ptr noundef %tree_mod_log.i) #8
  %dec.i = add nsw i32 %j.025.i, -1
  %cmp3.i = icmp sgt i32 %dec.i, %i.023.i
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.if.end38.thread_crit_edge

for.body4.i.if.end38.thread_crit_edge:            ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.thread

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4.i

for.inc6.i:                                       ; preds = %for.body.i
  %dec7.i = add nsw i32 %i.023.i, -1
  %cmp.i = icmp sgt i32 %i.023.i, 0
  br i1 %cmp.i, label %for.inc6.i.for.body.i_crit_edge, label %for.inc6.i.if.end38_crit_edge

for.inc6.i.if.end38_crit_edge:                    ; preds = %for.inc6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

for.inc6.i.for.body.i_crit_edge:                  ; preds = %for.inc6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end38.thread:                                  ; preds = %for.body4.i.if.end38.thread_crit_edge, %for.cond2.preheader.i.if.end38.thread_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %tree_mod_log_lock.i) #8
  br label %free_tms

if.end38:                                         ; preds = %for.inc6.i.if.end38_crit_edge, %if.then32.if.end38_crit_edge, %if.end30.if.end38_crit_edge
  %call37 = tail call fastcc i32 @tree_mod_log_insert(ptr noundef %1, ptr noundef nonnull %call7.i.i)
  tail call void @_raw_write_unlock(ptr noundef %tree_mod_log_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool39.not = icmp eq i32 %call37, 0
  br i1 %tobool39.not, label %if.end38.cleanup.sink.split_crit_edge, label %if.end38.free_tms_crit_edge

if.end38.free_tms_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tms

if.end38.cleanup.sink.split_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

free_tms:                                         ; preds = %if.end38.free_tms_crit_edge, %if.end38.thread, %if.then8.i, %if.end21.free_tms_crit_edge, %if.end17.free_tms_crit_edge, %alloc_tree_mod_elem.exit.thread
  %tm.0 = phi ptr [ %call7.i.i, %if.end38.free_tms_crit_edge ], [ null, %if.end17.free_tms_crit_edge ], [ null, %alloc_tree_mod_elem.exit.thread ], [ %call7.i.i, %if.end38.thread ], [ %call7.i.i, %if.then8.i ], [ %call7.i.i, %if.end21.free_tms_crit_edge ]
  %tm_list.1 = phi ptr [ %tm_list.0, %if.end38.free_tms_crit_edge ], [ %tm_list.0, %if.end17.free_tms_crit_edge ], [ %call8.i.i, %alloc_tree_mod_elem.exit.thread ], [ %tm_list.0, %if.end38.thread ], [ %tm_list.0, %if.then8.i ], [ %tm_list.0, %if.end21.free_tms_crit_edge ]
  %nritems.1 = phi i32 [ %nritems.0, %if.end38.free_tms_crit_edge ], [ %nritems.0, %if.end17.free_tms_crit_edge ], [ %17, %alloc_tree_mod_elem.exit.thread ], [ %nritems.0, %if.end38.thread ], [ %nritems.0, %if.then8.i ], [ %nritems.0, %if.end21.free_tms_crit_edge ]
  %ret.2 = phi i32 [ %call37, %if.end38.free_tms_crit_edge ], [ -12, %if.end17.free_tms_crit_edge ], [ -12, %alloc_tree_mod_elem.exit.thread ], [ %call.i121, %if.end38.thread ], [ 0, %if.then8.i ], [ 0, %if.end21.free_tms_crit_edge ]
  %tobool42.not = icmp eq ptr %tm_list.1, null
  br i1 %tobool42.not, label %free_tms.cleanup.sink.split_crit_edge, label %for.cond44.preheader

free_tms.cleanup.sink.split_crit_edge:            ; preds = %free_tms
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.cond44.preheader:                             ; preds = %free_tms
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nritems.1)
  %cmp45149 = icmp sgt i32 %nritems.1, 0
  br i1 %cmp45149, label %for.cond44.preheader.for.body47_crit_edge, label %for.cond44.preheader.for.end51_crit_edge

for.cond44.preheader.for.end51_crit_edge:         ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end51

for.cond44.preheader.for.body47_crit_edge:        ; preds = %for.cond44.preheader
  br label %for.body47

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.cond44.preheader.for.body47_crit_edge
  %i.1150 = phi i32 [ %inc50, %for.body47.for.body47_crit_edge ], [ 0, %for.cond44.preheader.for.body47_crit_edge ]
  %arrayidx48 = getelementptr ptr, ptr %tm_list.1, i32 %i.1150
  %66 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx48, align 4
  tail call void @kfree(ptr noundef %67) #8
  %inc50 = add nuw nsw i32 %i.1150, 1
  %exitcond155.not = icmp eq i32 %inc50, %nritems.1
  br i1 %exitcond155.not, label %for.body47.for.end51_crit_edge, label %for.body47.for.body47_crit_edge

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body47

for.body47.for.end51_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end51

for.end51:                                        ; preds = %for.body47.for.end51_crit_edge, %for.cond44.preheader.for.end51_crit_edge
  tail call void @kfree(ptr noundef nonnull %tm_list.1) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end51, %free_tms.cleanup.sink.split_crit_edge, %if.end38.cleanup.sink.split_crit_edge, %if.end7.i.i.cleanup.sink.split_crit_edge, %if.then4.cleanup.sink.split_crit_edge
  %tm.0142.sink = phi ptr [ %tm_list.0, %if.end38.cleanup.sink.split_crit_edge ], [ %tm.0, %for.end51 ], [ %tm.0, %free_tms.cleanup.sink.split_crit_edge ], [ null, %if.end7.i.i.cleanup.sink.split_crit_edge ], [ null, %if.then4.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end38.cleanup.sink.split_crit_edge ], [ %ret.2, %for.end51 ], [ %ret.2, %free_tms.cleanup.sink.split_crit_edge ], [ -12, %if.end7.i.i.cleanup.sink.split_crit_edge ], [ -12, %if.then4.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef %tm.0142.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_tree_mod_log_eb_copy(ptr noundef %dst, ptr noundef %src, i32 noundef %dst_offset, i32 noundef %src_offset, i32 noundef %nr_items) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.extent_buffer, ptr %dst, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %flags.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %dst, i32 0, i32 12
  %5 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %6) #8
  %7 = ptrtoint ptr %dst to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dst, align 8
  %conv.i = trunc i64 %8 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %9 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp eq i8 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %pages.i124 = getelementptr inbounds %struct.extent_buffer, ptr %src, i32 0, i32 12
  %11 = ptrtoint ptr %pages.i124 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages.i124, align 4
  %call.i125 = tail call ptr @page_address(ptr noundef %12) #8
  %13 = ptrtoint ptr %src to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %src, align 8
  %conv.i126 = trunc i64 %14 to i32
  %and.i127 = and i32 %conv.i126, 4095
  %add.ptr.i128 = getelementptr i8, ptr %call.i125, i32 %and.i127
  %level.i129 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i128, i32 0, i32 8
  %15 = ptrtoint ptr %level.i129 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %level.i129, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp6 = icmp eq i8 %16, 0
  br i1 %cmp6, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %mul = shl i32 %nr_items, 1
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 4) #8
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %if.end9.cleanup_crit_edge, label %if.end7.i.i, !prof !24

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end9
  %19 = extractvalue { i32, i1 } %17, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3392) #12
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end12

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end7.i.i
  %add.ptr = getelementptr ptr, ptr %call8.i.i, i32 %nr_items
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_items)
  %cmp13162 = icmp sgt i32 %nr_items, 0
  br i1 %cmp13162, label %if.end12.for.body_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end12.for.body_crit_edge
  %i.0163 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i131 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3392, i32 noundef 104) #11
  %tobool.not.i132 = icmp eq ptr %call7.i.i.i131, null
  br i1 %tobool.not.i132, label %alloc_tree_mod_elem.exit.thread, label %if.end19

alloc_tree_mod_elem.exit.thread:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx156 = getelementptr ptr, ptr %add.ptr, i32 %i.0163
  %21 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx156, align 4
  br label %free_tms

if.end19:                                         ; preds = %for.body
  %add = add i32 %i.0163, %src_offset
  %22 = ptrtoint ptr %src to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %src, align 8
  %logical.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i131, i32 0, i32 1
  %24 = ptrtoint ptr %logical.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %logical.i, align 8
  %key.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i131, i32 0, i32 6
  tail call void @btrfs_node_key(ptr noundef %src, ptr noundef %key.i, i32 noundef %add) #8
  %mul.i.i = mul i32 %add, 33
  %add.i.i = add i32 %mul.i.i, 101
  %25 = inttoptr i32 %add.i.i to ptr
  %call.i.i.i = tail call i64 @btrfs_get_64(ptr noundef %src, ptr noundef %25, i32 noundef 17) #8
  %blockptr.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i131, i32 0, i32 7
  %26 = ptrtoint ptr %blockptr.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %call.i.i.i, ptr %blockptr.i, align 8
  %op4.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i131, i32 0, i32 3
  %27 = ptrtoint ptr %op4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %op4.i, align 8
  %slot5.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i131, i32 0, i32 4
  %28 = ptrtoint ptr %slot5.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %slot5.i, align 4
  %call.i.i26.i = tail call i64 @btrfs_get_64(ptr noundef %src, ptr noundef %25, i32 noundef 25) #8
  %generation.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i131, i32 0, i32 5
  %29 = ptrtoint ptr %generation.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %call.i.i26.i, ptr %generation.i, align 8
  %30 = ptrtoint ptr %call7.i.i.i131 to i32
  %31 = ptrtoint ptr %call7.i.i.i131 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %call7.i.i.i131, align 8
  %arrayidx = getelementptr ptr, ptr %add.ptr, i32 %i.0163
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i.i131, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i135 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3392, i32 noundef 104) #11
  %tobool.not.i136 = icmp eq ptr %call7.i.i.i135, null
  br i1 %tobool.not.i136, label %alloc_tree_mod_elem.exit143.thread, label %for.inc

alloc_tree_mod_elem.exit143.thread:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx22157 = getelementptr ptr, ptr %call8.i.i, i32 %i.0163
  %34 = ptrtoint ptr %arrayidx22157 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx22157, align 4
  br label %free_tms

for.inc:                                          ; preds = %if.end19
  %add20 = add i32 %i.0163, %dst_offset
  %35 = ptrtoint ptr %dst to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %dst, align 8
  %logical.i137 = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i135, i32 0, i32 1
  %37 = ptrtoint ptr %logical.i137 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %logical.i137, align 8
  %.pre.i = mul i32 %add20, 33
  %.pre27.i = add i32 %.pre.i, 101
  %.pre28.i = inttoptr i32 %.pre27.i to ptr
  %op4.i139 = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i135, i32 0, i32 3
  %38 = ptrtoint ptr %op4.i139 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %op4.i139, align 8
  %slot5.i140 = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i135, i32 0, i32 4
  %39 = ptrtoint ptr %slot5.i140 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add20, ptr %slot5.i140, align 4
  %call.i.i26.i141 = tail call i64 @btrfs_get_64(ptr noundef %dst, ptr noundef %.pre28.i, i32 noundef 25) #8
  %generation.i142 = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i135, i32 0, i32 5
  %40 = ptrtoint ptr %generation.i142 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %call.i.i26.i141, ptr %generation.i142, align 8
  %41 = ptrtoint ptr %call7.i.i.i135 to i32
  %42 = ptrtoint ptr %call7.i.i.i135 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %call7.i.i.i135, align 8
  %arrayidx22 = getelementptr ptr, ptr %call8.i.i, i32 %i.0163
  %43 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i.i135, ptr %arrayidx22, align 4
  %inc = add nuw nsw i32 %i.0163, 1
  %exitcond.not = icmp eq i32 %inc, %nr_items
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end12.for.end_crit_edge
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %flags.i, align 4
  %46 = and i32 %45, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i145 = icmp eq i32 %46, 0
  br i1 %tobool.not.i145, label %for.end.free_tms_crit_edge, label %if.end.i146

for.end.free_tms_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tms

if.end.i146:                                      ; preds = %for.end
  %tree_mod_log_lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 67
  tail call void @_raw_write_lock(ptr noundef %tree_mod_log_lock.i) #8
  %tree_mod_seq_list.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 69
  %47 = ptrtoint ptr %tree_mod_seq_list.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %tree_mod_seq_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %48, %tree_mod_seq_list.i
  br i1 %cmp.i.not.i, label %if.then8.i, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %if.end.i146
  br i1 %cmp13162, label %for.cond30.preheader.for.body33_crit_edge, label %for.cond30.preheader.cleanup.sink.split.sink.split_crit_edge

for.cond30.preheader.cleanup.sink.split.sink.split_crit_edge: ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

for.cond30.preheader.for.body33_crit_edge:        ; preds = %for.cond30.preheader
  br label %for.body33

if.then8.i:                                       ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_write_unlock(ptr noundef %tree_mod_log_lock.i) #8
  br label %free_tms

for.cond30:                                       ; preds = %if.end38
  %inc45 = add nuw nsw i32 %i.1165, 1
  %exitcond173.not = icmp eq i32 %inc45, %nr_items
  br i1 %exitcond173.not, label %for.cond30.cleanup.sink.split.sink.split_crit_edge, label %for.cond30.for.body33_crit_edge

for.cond30.for.body33_crit_edge:                  ; preds = %for.cond30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body33

for.cond30.cleanup.sink.split.sink.split_crit_edge: ; preds = %for.cond30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

for.body33:                                       ; preds = %for.cond30.for.body33_crit_edge, %for.cond30.preheader.for.body33_crit_edge
  %i.1165 = phi i32 [ %inc45, %for.cond30.for.body33_crit_edge ], [ 0, %for.cond30.preheader.for.body33_crit_edge ]
  %arrayidx34 = getelementptr ptr, ptr %add.ptr, i32 %i.1165
  %49 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx34, align 4
  %call35 = tail call fastcc i32 @tree_mod_log_insert(ptr noundef %1, ptr noundef %50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %for.body33.free_tms_crit_edge

for.body33.free_tms_crit_edge:                    ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tms

if.end38:                                         ; preds = %for.body33
  %arrayidx39 = getelementptr ptr, ptr %call8.i.i, i32 %i.1165
  %51 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx39, align 4
  %call40 = tail call fastcc i32 @tree_mod_log_insert(ptr noundef %1, ptr noundef %52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %for.cond30, label %if.end38.free_tms_crit_edge

if.end38.free_tms_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tms

free_tms:                                         ; preds = %if.end38.free_tms_crit_edge, %for.body33.free_tms_crit_edge, %if.then8.i, %for.end.free_tms_crit_edge, %alloc_tree_mod_elem.exit143.thread, %alloc_tree_mod_elem.exit.thread
  %ret.0 = phi i32 [ -12, %alloc_tree_mod_elem.exit.thread ], [ -12, %alloc_tree_mod_elem.exit143.thread ], [ 0, %if.then8.i ], [ 0, %for.end.free_tms_crit_edge ], [ %call40, %if.end38.free_tms_crit_edge ], [ %call35, %for.body33.free_tms_crit_edge ]
  %locked.0.off0 = phi i1 [ false, %alloc_tree_mod_elem.exit.thread ], [ false, %alloc_tree_mod_elem.exit143.thread ], [ false, %if.then8.i ], [ false, %for.end.free_tms_crit_edge ], [ true, %for.body33.free_tms_crit_edge ], [ true, %if.end38.free_tms_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp49166 = icmp sgt i32 %mul, 0
  br i1 %cmp49166, label %for.body51.lr.ph, label %free_tms.for.end67_crit_edge

free_tms.for.end67_crit_edge:                     ; preds = %free_tms
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end67

for.body51.lr.ph:                                 ; preds = %free_tms
  %tree_mod_log = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 68
  br label %for.body51

for.body51:                                       ; preds = %if.end63.for.body51_crit_edge, %for.body51.lr.ph
  %i.2167 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc66, %if.end63.for.body51_crit_edge ]
  %arrayidx52 = getelementptr ptr, ptr %call8.i.i, i32 %i.2167
  %53 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx52, align 4
  %tobool53.not = icmp eq ptr %54, null
  br i1 %tobool53.not, label %for.body51.if.end63_crit_edge, label %land.lhs.true54

for.body51.if.end63_crit_edge:                    ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true54:                                  ; preds = %for.body51
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %57 = ptrtoint ptr %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %57)
  %cmp58 = icmp eq i32 %56, %57
  br i1 %cmp58, label %land.lhs.true54.if.end63_crit_edge, label %if.then60

land.lhs.true54.if.end63_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then60:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rb_erase(ptr noundef nonnull %54, ptr noundef %tree_mod_log) #8
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %land.lhs.true54.if.end63_crit_edge, %for.body51.if.end63_crit_edge
  %58 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx52, align 4
  tail call void @kfree(ptr noundef %59) #8
  %inc66 = add nuw nsw i32 %i.2167, 1
  %exitcond174.not = icmp eq i32 %inc66, %mul
  br i1 %exitcond174.not, label %if.end63.for.end67_crit_edge, label %if.end63.for.body51_crit_edge

if.end63.for.body51_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body51

if.end63.for.end67_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end67

for.end67:                                        ; preds = %if.end63.for.end67_crit_edge, %free_tms.for.end67_crit_edge
  br i1 %locked.0.off0, label %if.then69, label %for.end67.cleanup.sink.split_crit_edge

for.end67.cleanup.sink.split_crit_edge:           ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then69:                                        ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #10
  %tree_mod_log_lock70 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 67
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then69, %for.cond30.cleanup.sink.split.sink.split_crit_edge, %for.cond30.preheader.cleanup.sink.split.sink.split_crit_edge
  %tree_mod_log_lock70.sink = phi ptr [ %tree_mod_log_lock70, %if.then69 ], [ %tree_mod_log_lock.i, %for.cond30.preheader.cleanup.sink.split.sink.split_crit_edge ], [ %tree_mod_log_lock.i, %for.cond30.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ %ret.0, %if.then69 ], [ 0, %for.cond30.preheader.cleanup.sink.split.sink.split_crit_edge ], [ 0, %for.cond30.cleanup.sink.split.sink.split_crit_edge ]
  tail call void @_raw_write_unlock(ptr noundef %tree_mod_log_lock70.sink) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %for.end67.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %for.end67.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.i.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_tree_mod_log_free_eb(ptr noundef %eb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 8
  %flags.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %tobool1.not.i = icmp eq ptr %eb, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %pages.i.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 12
  %5 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pages.i.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %6) #8
  %7 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %eb, align 8
  %conv.i.i = trunc i64 %8 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %level.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %level.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.i = icmp eq i8 %10, 0
  br i1 %cmp.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 12
  %11 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %12) #8
  %13 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %eb, align 8
  %conv.i = trunc i64 %14 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %15 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %nritems.i, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 4) #8
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %20 = extractvalue { i32, i1 } %18, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3392) #12
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp86.not = icmp eq i32 %16, 0
  br i1 %cmp86.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.087 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i55 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3392, i32 noundef 104) #11
  %tobool.not.i56 = icmp eq ptr %call7.i.i.i55, null
  br i1 %tobool.not.i56, label %alloc_tree_mod_elem.exit.thread, label %for.inc

alloc_tree_mod_elem.exit.thread:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx80 = getelementptr ptr, ptr %call8.i.i, i32 %i.087
  %22 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx80, align 4
  br label %free_tms

for.inc:                                          ; preds = %for.body
  %23 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %eb, align 8
  %logical.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i55, i32 0, i32 1
  %25 = ptrtoint ptr %logical.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %logical.i, align 8
  %key.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i55, i32 0, i32 6
  tail call void @btrfs_node_key(ptr noundef %eb, ptr noundef %key.i, i32 noundef %i.087) #8
  %mul.i.i = mul i32 %i.087, 33
  %add.i.i = add i32 %mul.i.i, 101
  %26 = inttoptr i32 %add.i.i to ptr
  %call.i.i.i = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %26, i32 noundef 17) #8
  %blockptr.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i55, i32 0, i32 7
  %27 = ptrtoint ptr %blockptr.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call.i.i.i, ptr %blockptr.i, align 8
  %op4.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i55, i32 0, i32 3
  %28 = ptrtoint ptr %op4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %op4.i, align 8
  %slot5.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i55, i32 0, i32 4
  %29 = ptrtoint ptr %slot5.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %i.087, ptr %slot5.i, align 4
  %call.i.i26.i = tail call i64 @btrfs_get_64(ptr noundef %eb, ptr noundef %26, i32 noundef 25) #8
  %generation.i = getelementptr inbounds %struct.tree_mod_elem, ptr %call7.i.i.i55, i32 0, i32 5
  %30 = ptrtoint ptr %generation.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %call.i.i26.i, ptr %generation.i, align 8
  %31 = ptrtoint ptr %call7.i.i.i55 to i32
  %32 = ptrtoint ptr %call7.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %call7.i.i.i55, align 8
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.087
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i.i55, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %34 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fs_info, align 8
  %flags.i58 = getelementptr inbounds %struct.btrfs_fs_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i58 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags.i58, align 4
  %38 = and i32 %37, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i59 = icmp eq i32 %38, 0
  br i1 %tobool.not.i59, label %for.end.free_tms_crit_edge, label %if.end.i61

for.end.free_tms_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tms

if.end.i61:                                       ; preds = %for.end
  br i1 %tobool1.not.i, label %if.end.i61.if.end5.i70_crit_edge, label %land.lhs.true.i69

if.end.i61.if.end5.i70_crit_edge:                 ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i70

land.lhs.true.i69:                                ; preds = %if.end.i61
  %39 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pages.i, align 4
  %call.i.i63 = tail call ptr @page_address(ptr noundef %40) #8
  %41 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %eb, align 8
  %conv.i.i64 = trunc i64 %42 to i32
  %and.i.i65 = and i32 %conv.i.i64, 4095
  %add.ptr.i.i66 = getelementptr i8, ptr %call.i.i63, i32 %and.i.i65
  %level.i.i67 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i66, i32 0, i32 8
  %43 = ptrtoint ptr %level.i.i67 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %level.i.i67, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp.i68 = icmp eq i8 %44, 0
  br i1 %cmp.i68, label %land.lhs.true.i69.free_tms_crit_edge, label %land.lhs.true.i69.if.end5.i70_crit_edge

land.lhs.true.i69.if.end5.i70_crit_edge:          ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i70

land.lhs.true.i69.free_tms_crit_edge:             ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tms

if.end5.i70:                                      ; preds = %land.lhs.true.i69.if.end5.i70_crit_edge, %if.end.i61.if.end5.i70_crit_edge
  %tree_mod_log_lock.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %35, i32 0, i32 67
  tail call void @_raw_write_lock(ptr noundef %tree_mod_log_lock.i) #8
  %tree_mod_seq_list.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %35, i32 0, i32 69
  %45 = ptrtoint ptr %tree_mod_seq_list.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %tree_mod_seq_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %46, %tree_mod_seq_list.i
  br i1 %cmp.i.not.i, label %if.then8.i, label %if.end13

if.then8.i:                                       ; preds = %if.end5.i70
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_write_unlock(ptr noundef %tree_mod_log_lock.i) #8
  br label %free_tms

if.end13:                                         ; preds = %if.end5.i70
  %47 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fs_info, align 8
  %sub.i = add nsw i32 %17, -1
  br i1 %cmp86.not, label %if.end13.tree_mod_log_free_eb.exit_crit_edge, label %if.end13.for.body.i_crit_edge

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

if.end13.tree_mod_log_free_eb.exit_crit_edge:     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %tree_mod_log_free_eb.exit

for.body.i:                                       ; preds = %for.inc6.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %i.023.i = phi i32 [ %dec7.i, %for.inc6.i.for.body.i_crit_edge ], [ %sub.i, %if.end13.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %call8.i.i, i32 %i.023.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i, align 4
  %call.i72 = tail call fastcc i32 @tree_mod_log_insert(ptr noundef %48, ptr noundef %50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i73 = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i73, label %for.inc6.i, label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %i.023.i)
  %cmp324.i = icmp sgt i32 %sub.i, %i.023.i
  br i1 %cmp324.i, label %for.body4.lr.ph.i, label %for.cond2.preheader.i.tree_mod_log_free_eb.exit_crit_edge

for.cond2.preheader.i.tree_mod_log_free_eb.exit_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tree_mod_log_free_eb.exit

for.body4.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %tree_mod_log.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %48, i32 0, i32 68
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %j.025.i = phi i32 [ %sub.i, %for.body4.lr.ph.i ], [ %dec.i, %for.body4.i.for.body4.i_crit_edge ]
  %arrayidx5.i = getelementptr ptr, ptr %call8.i.i, i32 %j.025.i
  %51 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx5.i, align 4
  tail call void @rb_erase(ptr noundef %52, ptr noundef %tree_mod_log.i) #8
  %dec.i = add nsw i32 %j.025.i, -1
  %cmp3.i = icmp sgt i32 %dec.i, %i.023.i
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.tree_mod_log_free_eb.exit_crit_edge

for.body4.i.tree_mod_log_free_eb.exit_crit_edge:  ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tree_mod_log_free_eb.exit

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4.i

for.inc6.i:                                       ; preds = %for.body.i
  %dec7.i = add nsw i32 %i.023.i, -1
  %cmp.i74 = icmp sgt i32 %i.023.i, 0
  br i1 %cmp.i74, label %for.inc6.i.for.body.i_crit_edge, label %for.inc6.i.tree_mod_log_free_eb.exit_crit_edge

for.inc6.i.tree_mod_log_free_eb.exit_crit_edge:   ; preds = %for.inc6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tree_mod_log_free_eb.exit

for.inc6.i.for.body.i_crit_edge:                  ; preds = %for.inc6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

tree_mod_log_free_eb.exit:                        ; preds = %for.inc6.i.tree_mod_log_free_eb.exit_crit_edge, %for.body4.i.tree_mod_log_free_eb.exit_crit_edge, %for.cond2.preheader.i.tree_mod_log_free_eb.exit_crit_edge, %if.end13.tree_mod_log_free_eb.exit_crit_edge
  %retval.0.i75 = phi i32 [ %call.i72, %for.cond2.preheader.i.tree_mod_log_free_eb.exit_crit_edge ], [ 0, %if.end13.tree_mod_log_free_eb.exit_crit_edge ], [ %call.i72, %for.body4.i.tree_mod_log_free_eb.exit_crit_edge ], [ 0, %for.inc6.i.tree_mod_log_free_eb.exit_crit_edge ]
  %53 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fs_info, align 8
  %tree_mod_log_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %54, i32 0, i32 67
  tail call void @_raw_write_unlock(ptr noundef %tree_mod_log_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i75)
  %tobool17.not = icmp eq i32 %retval.0.i75, 0
  br i1 %tobool17.not, label %tree_mod_log_free_eb.exit.cleanup.sink.split_crit_edge, label %tree_mod_log_free_eb.exit.free_tms_crit_edge

tree_mod_log_free_eb.exit.free_tms_crit_edge:     ; preds = %tree_mod_log_free_eb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tms

tree_mod_log_free_eb.exit.cleanup.sink.split_crit_edge: ; preds = %tree_mod_log_free_eb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

free_tms:                                         ; preds = %tree_mod_log_free_eb.exit.free_tms_crit_edge, %if.then8.i, %land.lhs.true.i69.free_tms_crit_edge, %for.end.free_tms_crit_edge, %alloc_tree_mod_elem.exit.thread
  %ret.0 = phi i32 [ %retval.0.i75, %tree_mod_log_free_eb.exit.free_tms_crit_edge ], [ -12, %alloc_tree_mod_elem.exit.thread ], [ 0, %if.then8.i ], [ 0, %for.end.free_tms_crit_edge ], [ 0, %land.lhs.true.i69.free_tms_crit_edge ]
  br i1 %cmp86.not, label %free_tms.cleanup.sink.split_crit_edge, label %free_tms.for.body22_crit_edge

free_tms.for.body22_crit_edge:                    ; preds = %free_tms
  br label %for.body22

free_tms.cleanup.sink.split_crit_edge:            ; preds = %free_tms
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %free_tms.for.body22_crit_edge
  %i.189 = phi i32 [ %inc25, %for.body22.for.body22_crit_edge ], [ 0, %free_tms.for.body22_crit_edge ]
  %arrayidx23 = getelementptr ptr, ptr %call8.i.i, i32 %i.189
  %55 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx23, align 4
  tail call void @kfree(ptr noundef %56) #8
  %inc25 = add nuw nsw i32 %i.189, 1
  %exitcond95.not = icmp eq i32 %inc25, %17
  br i1 %exitcond95.not, label %for.body22.cleanup.sink.split_crit_edge, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22

for.body22.cleanup.sink.split_crit_edge:          ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body22.cleanup.sink.split_crit_edge, %free_tms.cleanup.sink.split_crit_edge, %tree_mod_log_free_eb.exit.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %tree_mod_log_free_eb.exit.cleanup.sink.split_crit_edge ], [ %ret.0, %free_tms.cleanup.sink.split_crit_edge ], [ %ret.0, %for.body22.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_tree_mod_log_rewind(ptr noundef %fs_info, ptr nocapture noundef readnone %path, ptr noundef %eb, i64 noundef %time_seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %time_seq)
  %tobool.not = icmp eq i64 %time_seq, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 12
  %0 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #8
  %2 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %eb, align 8
  %conv.i = trunc i64 %3 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %4 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tree_mod_log_lock.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 67
  tail call void @_raw_read_lock(ptr noundef %tree_mod_log_lock.i.i) #8
  %tree_mod_log.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 68
  %6 = ptrtoint ptr %tree_mod_log.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.085.i.i = load ptr, ptr %tree_mod_log.i.i, align 4
  %tobool.not86.i.i = icmp eq ptr %node.085.i.i, null
  br i1 %tobool.not86.i.i, label %tree_mod_log_search.exit.thread, label %if.end3.while.body.i.i_crit_edge

if.end3.while.body.i.i_crit_edge:                 ; preds = %if.end3
  br label %while.body.i.i

tree_mod_log_search.exit.thread:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_read_unlock(ptr noundef %tree_mod_log_lock.i.i) #8
  br label %cleanup

while.body.i.i:                                   ; preds = %if.end60.i.i.while.body.i.i_crit_edge, %if.end3.while.body.i.i_crit_edge
  %node.088.i.i = phi ptr [ %node.0.i.i, %if.end60.i.i.while.body.i.i_crit_edge ], [ %node.085.i.i, %if.end3.while.body.i.i_crit_edge ]
  %found.087.i.i = phi ptr [ %found.1.i.i, %if.end60.i.i.while.body.i.i_crit_edge ], [ null, %if.end3.while.body.i.i_crit_edge ]
  %logical.i.i = getelementptr inbounds %struct.tree_mod_elem, ptr %node.088.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %logical.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %logical.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %3)
  %cmp.i.i = icmp ult i64 %8, %3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.088.i.i, i32 0, i32 2
  br label %if.end60.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %3)
  %cmp2.i.i = icmp ugt i64 %8, %3
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.else4.i.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.088.i.i, i32 0, i32 1
  br label %if.end60.i.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  %seq.i.i = getelementptr inbounds %struct.tree_mod_elem, ptr %node.088.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %seq.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %time_seq)
  %cmp5.i.i = icmp ult i64 %10, %time_seq
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.else8.i.i

if.then6.i.i:                                     ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left7.i.i = getelementptr inbounds %struct.rb_node, ptr %node.088.i.i, i32 0, i32 2
  br label %if.end60.i.i

if.else8.i.i:                                     ; preds = %if.else4.i.i
  %tobool11.not.i.i = icmp eq ptr %found.087.i.i, null
  br i1 %tobool11.not.i.i, label %if.else8.i.i.if.end25.i.i_crit_edge, label %do.body.i.i

if.else8.i.i.if.end25.i.i_crit_edge:              ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i

do.body.i.i:                                      ; preds = %if.else8.i.i
  %seq13.i.i = getelementptr inbounds %struct.tree_mod_elem, ptr %found.087.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %seq13.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %seq13.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %10)
  %cmp15.i.i = icmp ugt i64 %12, %10
  br i1 %cmp15.i.i, label %do.body19.i.i, label %do.body.i.i.if.end25.i.i_crit_edge, !prof !24

do.body.i.i.if.end25.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i

do.body19.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/tree-mod-log.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 436, 0\0A.popsection", ""() #8, !srcloc !25
  unreachable

if.end25.i.i:                                     ; preds = %do.body.i.i.if.end25.i.i_crit_edge, %if.else8.i.i.if.end25.i.i_crit_edge
  %rb_left26.i.i = getelementptr inbounds %struct.rb_node, ptr %node.088.i.i, i32 0, i32 2
  br label %if.end60.i.i

if.end60.i.i:                                     ; preds = %if.end25.i.i, %if.then6.i.i, %if.then3.i.i, %if.then.i.i
  %found.1.i.i = phi ptr [ %found.087.i.i, %if.then.i.i ], [ %found.087.i.i, %if.then3.i.i ], [ %found.087.i.i, %if.then6.i.i ], [ %node.088.i.i, %if.end25.i.i ]
  %node.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then3.i.i ], [ %rb_left7.i.i, %if.then6.i.i ], [ %rb_left26.i.i, %if.end25.i.i ]
  %13 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %tree_mod_log_search.exit, label %if.end60.i.i.while.body.i.i_crit_edge

if.end60.i.i.while.body.i.i_crit_edge:            ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

tree_mod_log_search.exit:                         ; preds = %if.end60.i.i
  tail call void @_raw_read_unlock(ptr noundef %tree_mod_log_lock.i.i) #8
  %tobool5.not = icmp eq ptr %found.1.i.i, null
  br i1 %tobool5.not, label %tree_mod_log_search.exit.cleanup_crit_edge, label %if.end7

tree_mod_log_search.exit.cleanup_crit_edge:       ; preds = %tree_mod_log_search.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %tree_mod_log_search.exit
  %op = getelementptr inbounds %struct.tree_mod_elem, ptr %found.1.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp8 = icmp eq i32 %15, 3
  br i1 %cmp8, label %do.body, label %if.else

do.body:                                          ; preds = %if.end7
  %slot = getelementptr inbounds %struct.tree_mod_elem, ptr %found.1.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp11.not = icmp eq i32 %17, 0
  br i1 %cmp11.not, label %do.end22, label %do.body16, !prof !23

do.body16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/tree-mod-log.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 751, 0\0A.popsection", ""() #8, !srcloc !26
  unreachable

do.end22:                                         ; preds = %do.body
  %18 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %eb, align 8
  %call24 = tail call ptr @alloc_dummy_extent_buffer(ptr noundef %fs_info, i64 noundef %19) #8
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @btrfs_tree_read_unlock(ptr noundef %eb) #8
  tail call void @free_extent_buffer(ptr noundef %eb) #8
  br label %cleanup

if.end27:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %eb, align 8
  %pages.i110 = getelementptr inbounds %struct.extent_buffer, ptr %call24, i32 0, i32 12
  %22 = ptrtoint ptr %pages.i110 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pages.i110, align 4
  %call.i111 = tail call ptr @page_address(ptr noundef %23) #8
  %24 = ptrtoint ptr %call24 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %call24, align 8
  %conv.i112 = trunc i64 %25 to i32
  %and.i113 = and i32 %conv.i112, 4095
  %add.ptr.i114 = getelementptr i8, ptr %call.i111, i32 %and.i113
  %bytenr.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i114, i32 0, i32 2
  %26 = tail call i64 @llvm.bswap.i64(i64 %21) #8
  %27 = ptrtoint ptr %bytenr.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %bytenr.i, align 1
  %28 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pages.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %29) #8
  %30 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %eb, align 8
  %conv.i.i = trunc i64 %31 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %flags.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %flags.i.i, align 1
  %34 = ptrtoint ptr %pages.i110 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pages.i110, align 4
  %call.i.i117 = tail call ptr @page_address(ptr noundef %35) #8
  %36 = ptrtoint ptr %call24 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %call24, align 8
  %conv.i.i118 = trunc i64 %37 to i32
  %and.i.i119 = and i32 %conv.i.i118, 4095
  %add.ptr.i.i120 = getelementptr i8, ptr %call.i.i117, i32 %and.i.i119
  %flags.i.i121 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i120, i32 0, i32 3
  %38 = ptrtoint ptr %flags.i.i121 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %flags.i.i121, align 1
  %40 = and i64 %39, -256
  %41 = tail call i64 @llvm.bswap.i64(i64 %40) #8
  %42 = shl i64 %33, 56
  %or.i = or i64 %41, %42
  %43 = ptrtoint ptr %pages.i110 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pages.i110, align 4
  %call.i5.i = tail call ptr @page_address(ptr noundef %44) #8
  %45 = ptrtoint ptr %call24 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %call24, align 8
  %conv.i6.i = trunc i64 %46 to i32
  %and.i7.i = and i32 %conv.i6.i, 4095
  %add.ptr.i8.i = getelementptr i8, ptr %call.i5.i, i32 %and.i7.i
  %flags.i9.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i8.i, i32 0, i32 3
  %47 = tail call i64 @llvm.bswap.i64(i64 %or.i) #8
  %48 = ptrtoint ptr %flags.i9.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %47, ptr %flags.i9.i, align 1
  %49 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pages.i, align 4
  %call.i123 = tail call ptr @page_address(ptr noundef %50) #8
  %51 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %eb, align 8
  %conv.i124 = trunc i64 %52 to i32
  %and.i125 = and i32 %conv.i124, 4095
  %add.ptr.i126 = getelementptr i8, ptr %call.i123, i32 %and.i125
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i126, i32 0, i32 6
  %53 = ptrtoint ptr %owner.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %owner.i, align 1
  %55 = ptrtoint ptr %pages.i110 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pages.i110, align 4
  %call.i128 = tail call ptr @page_address(ptr noundef %56) #8
  %57 = ptrtoint ptr %call24 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %call24, align 8
  %conv.i129 = trunc i64 %58 to i32
  %and.i130 = and i32 %conv.i129, 4095
  %add.ptr.i131 = getelementptr i8, ptr %call.i128, i32 %and.i130
  %owner.i132 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i131, i32 0, i32 6
  %59 = ptrtoint ptr %owner.i132 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %54, ptr %owner.i132, align 1
  %60 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pages.i, align 4
  %call.i134 = tail call ptr @page_address(ptr noundef %61) #8
  %62 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %eb, align 8
  %conv.i135 = trunc i64 %63 to i32
  %and.i136 = and i32 %conv.i135, 4095
  %add.ptr.i137 = getelementptr i8, ptr %call.i134, i32 %and.i136
  %level.i138 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i137, i32 0, i32 8
  %64 = ptrtoint ptr %level.i138 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %level.i138, align 1
  %66 = ptrtoint ptr %pages.i110 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pages.i110, align 4
  %call.i140 = tail call ptr @page_address(ptr noundef %67) #8
  %68 = ptrtoint ptr %call24 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %call24, align 8
  %conv.i141 = trunc i64 %69 to i32
  %and.i142 = and i32 %conv.i141, 4095
  %add.ptr.i143 = getelementptr i8, ptr %call.i140, i32 %and.i142
  %level.i144 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i143, i32 0, i32 8
  %70 = ptrtoint ptr %level.i144 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %65, ptr %level.i144, align 1
  br label %if.end36

if.else:                                          ; preds = %if.end7
  %call32 = tail call ptr @btrfs_clone_extent_buffer(ptr noundef %eb) #8
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.then34, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @btrfs_tree_read_unlock(ptr noundef %eb) #8
  tail call void @free_extent_buffer(ptr noundef %eb) #8
  br label %cleanup

if.end36:                                         ; preds = %if.else.if.end36_crit_edge, %if.end27
  %eb_rewin.0 = phi ptr [ %call24, %if.end27 ], [ %call32, %if.else.if.end36_crit_edge ]
  tail call void @btrfs_tree_read_unlock(ptr noundef %eb) #8
  tail call void @free_extent_buffer(ptr noundef %eb) #8
  %pages.i145 = getelementptr inbounds %struct.extent_buffer, ptr %eb_rewin.0, i32 0, i32 12
  %71 = ptrtoint ptr %pages.i145 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pages.i145, align 4
  %call.i146 = tail call ptr @page_address(ptr noundef %72) #8
  %73 = ptrtoint ptr %eb_rewin.0 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %eb_rewin.0, align 8
  %conv.i147 = trunc i64 %74 to i32
  %and.i148 = and i32 %conv.i147, 4095
  %add.ptr.i149 = getelementptr i8, ptr %call.i146, i32 %and.i148
  %owner.i150 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i149, i32 0, i32 6
  %75 = ptrtoint ptr %owner.i150 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 8)
  %76 = load i64, ptr %owner.i150, align 1
  %77 = tail call i64 @llvm.bswap.i64(i64 %76) #8
  %78 = ptrtoint ptr %pages.i145 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pages.i145, align 4
  %call.i152 = tail call ptr @page_address(ptr noundef %79) #8
  %80 = ptrtoint ptr %eb_rewin.0 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %eb_rewin.0, align 8
  %conv.i153 = trunc i64 %81 to i32
  %and.i154 = and i32 %conv.i153, 4095
  %add.ptr.i155 = getelementptr i8, ptr %call.i152, i32 %and.i154
  %level.i156 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i155, i32 0, i32 8
  %82 = ptrtoint ptr %level.i156 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %level.i156, align 1
  %conv39 = zext i8 %83 to i32
  tail call void @btrfs_set_buffer_lockdep_class(i64 noundef %77, ptr noundef nonnull %eb_rewin.0, i32 noundef %conv39) #8
  tail call void @btrfs_tree_read_lock(ptr noundef nonnull %eb_rewin.0) #8
  tail call fastcc void @tree_mod_log_rewind(ptr noundef %fs_info, ptr noundef nonnull %eb_rewin.0, i64 noundef %time_seq, ptr noundef nonnull %found.1.i.i)
  %84 = ptrtoint ptr %pages.i145 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pages.i145, align 4
  %call.i158 = tail call ptr @page_address(ptr noundef %85) #8
  %86 = ptrtoint ptr %eb_rewin.0 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %eb_rewin.0, align 8
  %conv.i159 = trunc i64 %87 to i32
  %and.i160 = and i32 %conv.i159, 4095
  %add.ptr.i161 = getelementptr i8, ptr %call.i158, i32 %and.i160
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i161, i32 0, i32 7
  %88 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %nritems.i, align 1
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #8
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 166
  %91 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %nodesize.i.i, align 8
  %sub.i.i = add i32 %92, -101
  %div.i = udiv i32 %sub.i.i, 33
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %div.i)
  %cmp42 = icmp ugt i32 %90, %div.i
  br i1 %cmp42, label %do.end59, label %if.end36.cleanup_crit_edge, !prof !24

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end59:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 780, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.end36.cleanup_crit_edge, %if.then34, %if.then26, %tree_mod_log_search.exit.cleanup_crit_edge, %tree_mod_log_search.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then26 ], [ null, %if.then34 ], [ %eb, %entry.cleanup_crit_edge ], [ %eb, %if.end.cleanup_crit_edge ], [ %eb, %tree_mod_log_search.exit.cleanup_crit_edge ], [ %eb_rewin.0, %do.end59 ], [ %eb_rewin.0, %if.end36.cleanup_crit_edge ], [ %eb, %tree_mod_log_search.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_dummy_extent_buffer(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_tree_read_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_clone_extent_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_buffer_lockdep_class(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_tree_read_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tree_mod_log_rewind(ptr noundef %fs_info, ptr noundef %eb, i64 noundef %time_seq, ptr noundef %first_tm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 12
  %0 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #8
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
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %tree_mod_log_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 67
  tail call void @_raw_read_lock(ptr noundef %tree_mod_log_lock) #8
  %logical50 = getelementptr inbounds %struct.tree_mod_elem, ptr %first_tm, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end49.while.cond_crit_edge, %entry
  %tm.0 = phi ptr [ %first_tm, %entry ], [ %call46, %if.end49.while.cond_crit_edge ]
  %n.0 = phi i32 [ %6, %entry ], [ %n.1, %if.end49.while.cond_crit_edge ]
  %tobool.not = icmp eq ptr %tm.0, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %seq = getelementptr inbounds %struct.tree_mod_elem, ptr %tm.0, i32 0, i32 2
  %7 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %seq, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %time_seq)
  %cmp.not = icmp ult i64 %8, %time_seq
  br i1 %cmp.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %op = getelementptr inbounds %struct.tree_mod_elem, ptr %tm.0, i32 0, i32 3
  %9 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %op, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %while.body.sw.epilog_crit_edge [
    i32 3, label %do.body
    i32 4, label %while.body.sw.bb10_crit_edge
    i32 2, label %while.body.sw.bb10_crit_edge109
    i32 0, label %do.body15
    i32 1, label %sw.bb40
    i32 5, label %sw.bb41
  ]

while.body.sw.bb10_crit_edge109:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

while.body.sw.bb10_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %while.body
  %slot = getelementptr inbounds %struct.tree_mod_elem, ptr %tm.0, i32 0, i32 4
  %12 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %slot, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %n.0)
  %cmp1 = icmp ult i32 %13, %n.0
  br i1 %cmp1, label %do.body4, label %do.body.sw.bb10_crit_edge, !prof !24

do.body.sw.bb10_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/tree-mod-log.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 675, 0\0A.popsection", ""() #8, !srcloc !27
  unreachable

sw.bb10:                                          ; preds = %do.body.sw.bb10_crit_edge, %while.body.sw.bb10_crit_edge, %while.body.sw.bb10_crit_edge109
  %key = getelementptr inbounds %struct.tree_mod_elem, ptr %tm.0, i32 0, i32 6
  %slot11 = getelementptr inbounds %struct.tree_mod_elem, ptr %tm.0, i32 0, i32 4
  %14 = ptrtoint ptr %slot11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slot11, align 4
  %mul.i.i = mul i32 %15, 33
  %add.i.i = add i32 %mul.i.i, 101
  tail call void @write_extent_buffer(ptr noundef %eb, ptr noundef %key, i32 noundef %add.i.i, i32 noundef 17) #8
  %16 = ptrtoint ptr %slot11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slot11, align 4
  %blockptr = getelementptr inbounds %struct.tree_mod_elem, ptr %tm.0, i32 0, i32 7
  %18 = ptrtoint ptr %blockptr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %blockptr, align 8
  %mul.i = mul i32 %17, 33
  %add.i = add i32 %mul.i, 101
  %20 = inttoptr i32 %add.i to ptr
  tail call void @btrfs_set_64(ptr noundef %eb, ptr noundef %20, i32 noundef 17, i64 noundef %19) #8
  %21 = ptrtoint ptr %slot11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %slot11, align 4
  %generation = getelementptr inbounds %struct.tree_mod_elem, ptr %tm.0, i32 0, i32 5
  %23 = ptrtoint ptr %generation to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %generation, align 8
  %mul.i91 = mul i32 %22, 33
  %add.i92 = add i32 %mul.i91, 101
  %25 = inttoptr i32 %add.i92 to ptr
  tail call void @btrfs_set_64(ptr noundef %eb, ptr noundef %25, i32 noundef 25, i64 noundef %24) #8
  %inc = add i32 %n.0, 1
  br label %sw.epilog

do.body15:                                        ; preds = %while.body
  %slot16 = getelementptr inbounds %struct.tree_mod_elem, ptr %tm.0, i32 0, i32 4
  %26 = ptrtoint ptr %slot16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %slot16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %n.0)
  %cmp17.not = icmp ult i32 %27, %n.0
  br i1 %cmp17.not, label %do.end33, label %do.body25, !prof !23

do.body25:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/tree-mod-log.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 686, 0\0A.popsection", ""() #8, !srcloc !28
  unreachable

do.end33:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %key34 = getelementptr inbounds %struct.tree_mod_elem, ptr %tm.0, i32 0, i32 6
  %mul.i.i93 = mul i32 %27, 33
  %add.i.i94 = add i32 %mul.i.i93, 101
  tail call void @write_extent_buffer(ptr noundef %eb, ptr noundef %key34, i32 noundef %add.i.i94, i32 noundef 17) #8
  %28 = ptrtoint ptr %slot16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slot16, align 4
  %blockptr37 = getelementptr inbounds %struct.tree_mod_elem, ptr %tm.0, i32 0, i32 7
  %30 = ptrtoint ptr %blockptr37 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %blockptr37, align 8
  %mul.i95 = mul i32 %29, 33
  %add.i96 = add i32 %mul.i95, 101
  %32 = inttoptr i32 %add.i96 to ptr
  tail call void @btrfs_set_64(ptr noundef %eb, ptr noundef %32, i32 noundef 17, i64 noundef %31) #8
  %33 = ptrtoint ptr %slot16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %slot16, align 4
  %generation39 = getelementptr inbounds %struct.tree_mod_elem, ptr %tm.0, i32 0, i32 5
  %35 = ptrtoint ptr %generation39 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %generation39, align 8
  %mul.i97 = mul i32 %34, 33
  %add.i98 = add i32 %mul.i97, 101
  %37 = inttoptr i32 %add.i98 to ptr
  tail call void @btrfs_set_64(ptr noundef %eb, ptr noundef %37, i32 noundef 25, i64 noundef %36) #8
  br label %sw.epilog

sw.bb40:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %n.0, -1
  br label %sw.epilog

sw.bb41:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %slot42 = getelementptr inbounds %struct.tree_mod_elem, ptr %tm.0, i32 0, i32 4
  %38 = ptrtoint ptr %slot42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %slot42, align 4
  %mul.i99 = mul i32 %39, 33
  %add.i100 = add i32 %mul.i99, 101
  %move = getelementptr inbounds %struct.tree_mod_elem, ptr %tm.0, i32 0, i32 8
  %40 = ptrtoint ptr %move to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %move, align 8
  %mul.i101 = mul i32 %41, 33
  %add.i102 = add i32 %mul.i101, 101
  %nr_items = getelementptr inbounds %struct.tree_mod_elem, ptr %tm.0, i32 0, i32 8, i32 1
  %42 = ptrtoint ptr %nr_items to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_items, align 4
  %mul = mul i32 %43, 33
  tail call void @memmove_extent_buffer(ptr noundef %eb, i32 noundef %add.i100, i32 noundef %add.i102, i32 noundef %mul) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb41, %sw.bb40, %do.end33, %sw.bb10, %while.body.sw.epilog_crit_edge
  %n.1 = phi i32 [ %n.0, %while.body.sw.epilog_crit_edge ], [ %n.0, %sw.bb41 ], [ %dec, %sw.bb40 ], [ %n.0, %do.end33 ], [ %inc, %sw.bb10 ]
  %call46 = tail call ptr @rb_next(ptr noundef nonnull %tm.0) #8
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %sw.epilog.while.end_crit_edge, label %if.end49

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end49:                                         ; preds = %sw.epilog
  %logical = getelementptr inbounds %struct.tree_mod_elem, ptr %call46, i32 0, i32 1
  %44 = ptrtoint ptr %logical to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %logical, align 8
  %46 = ptrtoint ptr %logical50 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %logical50, align 8
  %cmp51.not = icmp eq i64 %45, %47
  br i1 %cmp51.not, label %if.end49.while.cond_crit_edge, label %if.end49.while.end_crit_edge

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end49.while.cond_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %if.end49.while.end_crit_edge, %sw.epilog.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %n.2 = phi i32 [ %n.1, %if.end49.while.end_crit_edge ], [ %n.1, %sw.epilog.while.end_crit_edge ], [ %n.0, %land.rhs.while.end_crit_edge ], [ %n.0, %while.cond.while.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef %tree_mod_log_lock) #8
  %48 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pages.i, align 4
  %call.i104 = tail call ptr @page_address(ptr noundef %49) #8
  %50 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %eb, align 8
  %conv.i105 = trunc i64 %51 to i32
  %and.i106 = and i32 %conv.i105, 4095
  %add.ptr.i107 = getelementptr i8, ptr %call.i104, i32 %and.i106
  %nritems.i108 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i107, i32 0, i32 7
  %52 = tail call i32 @llvm.bswap.i32(i32 %n.2) #8
  %53 = ptrtoint ptr %nritems.i108 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %nritems.i108, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_get_old_root(ptr noundef %root, i64 noundef %time_seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %call = tail call ptr @btrfs_read_lock_root_node(ptr noundef %root) #8
  %call2 = tail call fastcc ptr @tree_mod_log_oldest_root(ptr noundef %call, i64 noundef %time_seq)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup176_crit_edge, label %if.end

entry.cleanup176_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup176

if.end:                                           ; preds = %entry
  %op = getelementptr inbounds %struct.tree_mod_elem, ptr %call2, i32 0, i32 3
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp eq i32 %3, 6
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %old_root4 = getelementptr inbounds %struct.tree_mod_elem, ptr %call2, i32 0, i32 9
  %generation = getelementptr inbounds %struct.tree_mod_elem, ptr %call2, i32 0, i32 5
  %4 = ptrtoint ptr %generation to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %generation, align 8
  %6 = ptrtoint ptr %old_root4 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %old_root4, align 8
  %level6 = getelementptr inbounds %struct.tree_mod_elem, ptr %call2, i32 0, i32 9, i32 1
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %call, align 8
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %call, i32 0, i32 12
  %10 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %11) #8
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %call, align 8
  %conv.i = trunc i64 %13 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  %old_root.0 = phi ptr [ %old_root4, %if.then3 ], [ null, %if.else ]
  %old_generation.0 = phi i64 [ %5, %if.then3 ], [ 0, %if.else ]
  %logical.0 = phi i64 [ %7, %if.then3 ], [ %9, %if.else ]
  %level.0.in.in = phi ptr [ %level6, %if.then3 ], [ %level.i, %if.else ]
  %14 = ptrtoint ptr %level.0.in.in to i32
  call void @__asan_load1_noabort(i32 %14)
  %level.0.in = load i8, ptr %level.0.in.in, align 1
  %level.0 = zext i8 %level.0.in to i32
  %tree_mod_log_lock.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 67
  tail call void @_raw_read_lock(ptr noundef %tree_mod_log_lock.i.i) #8
  %tree_mod_log.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 68
  %15 = ptrtoint ptr %tree_mod_log.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %node.085.i.i = load ptr, ptr %tree_mod_log.i.i, align 4
  %tobool.not86.i.i = icmp eq ptr %node.085.i.i, null
  br i1 %tobool.not86.i.i, label %if.end9.tree_mod_log_search.exit_crit_edge, label %if.end9.while.body.i.i_crit_edge

if.end9.while.body.i.i_crit_edge:                 ; preds = %if.end9
  br label %while.body.i.i

if.end9.tree_mod_log_search.exit_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %tree_mod_log_search.exit

while.body.i.i:                                   ; preds = %if.end60.i.i.while.body.i.i_crit_edge, %if.end9.while.body.i.i_crit_edge
  %node.088.i.i = phi ptr [ %node.0.i.i, %if.end60.i.i.while.body.i.i_crit_edge ], [ %node.085.i.i, %if.end9.while.body.i.i_crit_edge ]
  %found.087.i.i = phi ptr [ %found.1.i.i, %if.end60.i.i.while.body.i.i_crit_edge ], [ null, %if.end9.while.body.i.i_crit_edge ]
  %logical.i.i = getelementptr inbounds %struct.tree_mod_elem, ptr %node.088.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %logical.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %logical.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %logical.0)
  %cmp.i.i = icmp ult i64 %17, %logical.0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.088.i.i, i32 0, i32 2
  br label %if.end60.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %logical.0)
  %cmp2.i.i = icmp ugt i64 %17, %logical.0
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.else4.i.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.088.i.i, i32 0, i32 1
  br label %if.end60.i.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  %seq.i.i = getelementptr inbounds %struct.tree_mod_elem, ptr %node.088.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %seq.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %time_seq)
  %cmp5.i.i = icmp ult i64 %19, %time_seq
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.else8.i.i

if.then6.i.i:                                     ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left7.i.i = getelementptr inbounds %struct.rb_node, ptr %node.088.i.i, i32 0, i32 2
  br label %if.end60.i.i

if.else8.i.i:                                     ; preds = %if.else4.i.i
  %tobool11.not.i.i = icmp eq ptr %found.087.i.i, null
  br i1 %tobool11.not.i.i, label %if.else8.i.i.if.end25.i.i_crit_edge, label %do.body.i.i

if.else8.i.i.if.end25.i.i_crit_edge:              ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i

do.body.i.i:                                      ; preds = %if.else8.i.i
  %seq13.i.i = getelementptr inbounds %struct.tree_mod_elem, ptr %found.087.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %seq13.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %seq13.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %19)
  %cmp15.i.i = icmp ugt i64 %21, %19
  br i1 %cmp15.i.i, label %do.body19.i.i, label %do.body.i.i.if.end25.i.i_crit_edge, !prof !24

do.body.i.i.if.end25.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i

do.body19.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/tree-mod-log.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 436, 0\0A.popsection", ""() #8, !srcloc !25
  unreachable

if.end25.i.i:                                     ; preds = %do.body.i.i.if.end25.i.i_crit_edge, %if.else8.i.i.if.end25.i.i_crit_edge
  %rb_left26.i.i = getelementptr inbounds %struct.rb_node, ptr %node.088.i.i, i32 0, i32 2
  br label %if.end60.i.i

if.end60.i.i:                                     ; preds = %if.end25.i.i, %if.then6.i.i, %if.then3.i.i, %if.then.i.i
  %found.1.i.i = phi ptr [ %found.087.i.i, %if.then.i.i ], [ %found.087.i.i, %if.then3.i.i ], [ %found.087.i.i, %if.then6.i.i ], [ %node.088.i.i, %if.end25.i.i ]
  %node.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then3.i.i ], [ %rb_left7.i.i, %if.then6.i.i ], [ %rb_left26.i.i, %if.end25.i.i ]
  %22 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end60.i.i.tree_mod_log_search.exit_crit_edge, label %if.end60.i.i.while.body.i.i_crit_edge

if.end60.i.i.while.body.i.i_crit_edge:            ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end60.i.i.tree_mod_log_search.exit_crit_edge:  ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tree_mod_log_search.exit

tree_mod_log_search.exit:                         ; preds = %if.end60.i.i.tree_mod_log_search.exit_crit_edge, %if.end9.tree_mod_log_search.exit_crit_edge
  %found.2.i.i = phi ptr [ null, %if.end9.tree_mod_log_search.exit_crit_edge ], [ %found.1.i.i, %if.end60.i.i.tree_mod_log_search.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef %tree_mod_log_lock.i.i) #8
  %tobool11.not = icmp eq ptr %old_root.0, null
  %tobool12.not = icmp eq ptr %found.2.i.i, null
  %or.cond = select i1 %tobool11.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %tree_mod_log_search.exit.if.else84_crit_edge, label %land.lhs.true13

tree_mod_log_search.exit.if.else84_crit_edge:     ; preds = %tree_mod_log_search.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else84

land.lhs.true13:                                  ; preds = %tree_mod_log_search.exit
  %op14 = getelementptr inbounds %struct.tree_mod_elem, ptr %found.2.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %op14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %op14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp15.not = icmp eq i32 %24, 3
  br i1 %cmp15.not, label %land.lhs.true13.if.else84_crit_edge, label %if.then17

land.lhs.true13.if.else84_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else84

if.then17:                                        ; preds = %land.lhs.true13
  tail call void @btrfs_tree_read_unlock(ptr noundef %call) #8
  tail call void @free_extent_buffer(ptr noundef %call) #8
  %root_key = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 7
  %25 = ptrtoint ptr %root_key to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %root_key, align 1
  %call18 = tail call ptr @read_tree_block(ptr noundef %1, i64 noundef %logical.0, i64 noundef %26, i64 noundef 0, i32 noundef %level.0, ptr noundef null) #8
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end.thread, label %lor.rhs

do.end.thread:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 826, i32 noundef 9, ptr noundef null) #8
  br label %if.end92.thread

lor.rhs:                                          ; preds = %if.then17
  %bflags.i = getelementptr inbounds %struct.extent_buffer, ptr %call18, i32 0, i32 2
  %27 = ptrtoint ptr %bflags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %bflags.i, align 4
  %and1.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool22.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool22.not, label %if.then48, label %if.else50, !prof !24

if.then48:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 826, i32 noundef 9, ptr noundef null) #8
  tail call void @free_extent_buffer(ptr noundef %call18) #8
  br label %if.end92.thread

if.end92.thread:                                  ; preds = %if.then48, %do.end.thread
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.1, i64 noundef %logical.0) #13
  br label %cleanup176

if.else50:                                        ; preds = %lor.rhs
  tail call void @btrfs_tree_read_lock(ptr noundef %call18) #8
  %call51 = tail call ptr @btrfs_clone_extent_buffer(ptr noundef %call18) #8
  tail call void @_raw_read_lock(ptr noundef %tree_mod_log_lock.i.i) #8
  %29 = ptrtoint ptr %tree_mod_log.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %node.085.i.i260 = load ptr, ptr %tree_mod_log.i.i, align 4
  %tobool.not86.i.i261 = icmp eq ptr %node.085.i.i260, null
  br i1 %tobool.not86.i.i261, label %if.else50.tree_mod_log_search.exit292_crit_edge, label %if.else50.while.body.i.i266_crit_edge

if.else50.while.body.i.i266_crit_edge:            ; preds = %if.else50
  br label %while.body.i.i266

if.else50.tree_mod_log_search.exit292_crit_edge:  ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #10
  br label %tree_mod_log_search.exit292

while.body.i.i266:                                ; preds = %if.end60.i.i290.while.body.i.i266_crit_edge, %if.else50.while.body.i.i266_crit_edge
  %node.088.i.i262 = phi ptr [ %node.0.i.i288, %if.end60.i.i290.while.body.i.i266_crit_edge ], [ %node.085.i.i260, %if.else50.while.body.i.i266_crit_edge ]
  %found.087.i.i263 = phi ptr [ %found.1.i.i286, %if.end60.i.i290.while.body.i.i266_crit_edge ], [ null, %if.else50.while.body.i.i266_crit_edge ]
  %logical.i.i264 = getelementptr inbounds %struct.tree_mod_elem, ptr %node.088.i.i262, i32 0, i32 1
  %30 = ptrtoint ptr %logical.i.i264 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %logical.i.i264, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %logical.0)
  %cmp.i.i265 = icmp ult i64 %31, %logical.0
  br i1 %cmp.i.i265, label %if.then.i.i268, label %if.else.i.i270

if.then.i.i268:                                   ; preds = %while.body.i.i266
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i.i267 = getelementptr inbounds %struct.rb_node, ptr %node.088.i.i262, i32 0, i32 2
  br label %if.end60.i.i290

if.else.i.i270:                                   ; preds = %while.body.i.i266
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %logical.0)
  %cmp2.i.i269 = icmp ugt i64 %31, %logical.0
  br i1 %cmp2.i.i269, label %if.then3.i.i272, label %if.else4.i.i275

if.then3.i.i272:                                  ; preds = %if.else.i.i270
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i.i271 = getelementptr inbounds %struct.rb_node, ptr %node.088.i.i262, i32 0, i32 1
  br label %if.end60.i.i290

if.else4.i.i275:                                  ; preds = %if.else.i.i270
  %seq.i.i273 = getelementptr inbounds %struct.tree_mod_elem, ptr %node.088.i.i262, i32 0, i32 2
  %32 = ptrtoint ptr %seq.i.i273 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %seq.i.i273, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %time_seq)
  %cmp5.i.i274 = icmp ult i64 %33, %time_seq
  br i1 %cmp5.i.i274, label %if.then6.i.i277, label %if.else8.i.i279

if.then6.i.i277:                                  ; preds = %if.else4.i.i275
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left7.i.i276 = getelementptr inbounds %struct.rb_node, ptr %node.088.i.i262, i32 0, i32 2
  br label %if.end60.i.i290

if.else8.i.i279:                                  ; preds = %if.else4.i.i275
  %tobool11.not.i.i278 = icmp eq ptr %found.087.i.i263, null
  br i1 %tobool11.not.i.i278, label %if.else8.i.i279.if.end25.i.i285_crit_edge, label %do.body.i.i282

if.else8.i.i279.if.end25.i.i285_crit_edge:        ; preds = %if.else8.i.i279
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i285

do.body.i.i282:                                   ; preds = %if.else8.i.i279
  %seq13.i.i280 = getelementptr inbounds %struct.tree_mod_elem, ptr %found.087.i.i263, i32 0, i32 2
  %34 = ptrtoint ptr %seq13.i.i280 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %seq13.i.i280, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %33)
  %cmp15.i.i281 = icmp ugt i64 %35, %33
  br i1 %cmp15.i.i281, label %do.body19.i.i283, label %do.body.i.i282.if.end25.i.i285_crit_edge, !prof !24

do.body.i.i282.if.end25.i.i285_crit_edge:         ; preds = %do.body.i.i282
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i285

do.body19.i.i283:                                 ; preds = %do.body.i.i282
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/tree-mod-log.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 436, 0\0A.popsection", ""() #8, !srcloc !25
  unreachable

if.end25.i.i285:                                  ; preds = %do.body.i.i282.if.end25.i.i285_crit_edge, %if.else8.i.i279.if.end25.i.i285_crit_edge
  %rb_left26.i.i284 = getelementptr inbounds %struct.rb_node, ptr %node.088.i.i262, i32 0, i32 2
  br label %if.end60.i.i290

if.end60.i.i290:                                  ; preds = %if.end25.i.i285, %if.then6.i.i277, %if.then3.i.i272, %if.then.i.i268
  %found.1.i.i286 = phi ptr [ %found.087.i.i263, %if.then.i.i268 ], [ %found.087.i.i263, %if.then3.i.i272 ], [ %found.087.i.i263, %if.then6.i.i277 ], [ %node.088.i.i262, %if.end25.i.i285 ]
  %node.1.in.i.i287 = phi ptr [ %rb_left.i.i267, %if.then.i.i268 ], [ %rb_right.i.i271, %if.then3.i.i272 ], [ %rb_left7.i.i276, %if.then6.i.i277 ], [ %rb_left26.i.i284, %if.end25.i.i285 ]
  %36 = ptrtoint ptr %node.1.in.i.i287 to i32
  call void @__asan_load4_noabort(i32 %36)
  %node.0.i.i288 = load ptr, ptr %node.1.in.i.i287, align 4
  %tobool.not.i.i289 = icmp eq ptr %node.0.i.i288, null
  br i1 %tobool.not.i.i289, label %if.end60.i.i290.tree_mod_log_search.exit292_crit_edge, label %if.end60.i.i290.while.body.i.i266_crit_edge

if.end60.i.i290.while.body.i.i266_crit_edge:      ; preds = %if.end60.i.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i266

if.end60.i.i290.tree_mod_log_search.exit292_crit_edge: ; preds = %if.end60.i.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %tree_mod_log_search.exit292

tree_mod_log_search.exit292:                      ; preds = %if.end60.i.i290.tree_mod_log_search.exit292_crit_edge, %if.else50.tree_mod_log_search.exit292_crit_edge
  %found.2.i.i291 = phi ptr [ null, %if.else50.tree_mod_log_search.exit292_crit_edge ], [ %found.1.i.i286, %if.end60.i.i290.tree_mod_log_search.exit292_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef %tree_mod_log_lock.i.i) #8
  tail call void @btrfs_tree_read_unlock(ptr noundef %call18) #8
  tail call void @free_extent_buffer(ptr noundef %call18) #8
  %tobool53.not = icmp eq ptr %found.2.i.i291, null
  br i1 %tobool53.not, label %cond.false, label %cond.end, !prof !24

cond.false:                                       ; preds = %tree_mod_log_search.exit292
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 850) #14
  unreachable

cond.end:                                         ; preds = %tree_mod_log_search.exit292
  %cmp60 = icmp eq ptr %found.2.i.i291, %found.2.i.i
  br i1 %cmp60, label %cond.end.lor.lhs.false_crit_edge, label %lor.rhs62

cond.end.lor.lhs.false_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.rhs62:                                        ; preds = %cond.end
  %seq = getelementptr inbounds %struct.tree_mod_elem, ptr %found.2.i.i291, i32 0, i32 2
  %37 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %seq, align 8
  %seq63 = getelementptr inbounds %struct.tree_mod_elem, ptr %found.2.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %seq63 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %seq63, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %40)
  %cmp64 = icmp ugt i64 %38, %40
  br i1 %cmp64, label %lor.rhs62.lor.lhs.false_crit_edge, label %cond.false74, !prof !23

lor.rhs62.lor.lhs.false_crit_edge:                ; preds = %lor.rhs62
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

cond.false74:                                     ; preds = %lor.rhs62
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 851) #14
  unreachable

lor.lhs.false:                                    ; preds = %lor.rhs62.lor.lhs.false_crit_edge, %cond.end.lor.lhs.false_crit_edge
  %seq77 = getelementptr inbounds %struct.tree_mod_elem, ptr %found.2.i.i291, i32 0, i32 2
  %41 = ptrtoint ptr %seq77 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %seq77, align 8
  %seq78 = getelementptr inbounds %struct.tree_mod_elem, ptr %found.2.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %seq78 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %seq78, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %44)
  %cmp79 = icmp ult i64 %42, %44
  br i1 %cmp79, label %cleanup.thread, label %if.end92

cleanup.thread:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @free_extent_buffer(ptr noundef %call51) #8
  br label %cleanup176

if.else84:                                        ; preds = %land.lhs.true13.if.else84_crit_edge, %tree_mod_log_search.exit.if.else84_crit_edge
  br i1 %tobool11.not, label %if.end92.thread365, label %if.end92.thread349

if.end92:                                         ; preds = %lor.lhs.false
  %tobool93.not = icmp eq ptr %call51, null
  br i1 %tobool93.not, label %if.end92.cleanup176_crit_edge, label %if.end92.if.then97_crit_edge

if.end92.if.then97_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then97

if.end92.cleanup176_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup176

if.end92.thread365:                               ; preds = %if.else84
  %call90 = tail call ptr @btrfs_clone_extent_buffer(ptr noundef %call) #8
  tail call void @btrfs_tree_read_unlock(ptr noundef %call) #8
  tail call void @free_extent_buffer(ptr noundef %call) #8
  %tobool93.not368 = icmp eq ptr %call90, null
  br i1 %tobool93.not368, label %if.end92.thread365.cleanup176_crit_edge, label %if.end92.thread365.if.end100_crit_edge

if.end92.thread365.if.end100_crit_edge:           ; preds = %if.end92.thread365
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.end92.thread365.cleanup176_crit_edge:          ; preds = %if.end92.thread365
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup176

if.end92.thread349:                               ; preds = %if.else84
  %pages.i293 = getelementptr inbounds %struct.extent_buffer, ptr %call, i32 0, i32 12
  %45 = ptrtoint ptr %pages.i293 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pages.i293, align 4
  %call.i294 = tail call ptr @page_address(ptr noundef %46) #8
  %47 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %call, align 8
  %conv.i295 = trunc i64 %48 to i32
  %and.i296 = and i32 %conv.i295, 4095
  %add.ptr.i297 = getelementptr i8, ptr %call.i294, i32 %and.i296
  %owner.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i297, i32 0, i32 6
  %49 = ptrtoint ptr %owner.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %owner.i, align 1
  %51 = tail call i64 @llvm.bswap.i64(i64 %50) #8
  tail call void @btrfs_tree_read_unlock(ptr noundef %call) #8
  tail call void @free_extent_buffer(ptr noundef %call) #8
  %call88 = tail call ptr @alloc_dummy_extent_buffer(ptr noundef %1, i64 noundef %logical.0) #8
  %tobool93.not353 = icmp eq ptr %call88, null
  br i1 %tobool93.not353, label %if.end92.thread349.cleanup176_crit_edge, label %if.end92.thread349.if.then97_crit_edge

if.end92.thread349.if.then97_crit_edge:           ; preds = %if.end92.thread349
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then97

if.end92.thread349.cleanup176_crit_edge:          ; preds = %if.end92.thread349
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup176

if.then97:                                        ; preds = %if.end92.thread349.if.then97_crit_edge, %if.end92.if.then97_crit_edge
  %eb.0354363 = phi ptr [ %call88, %if.end92.thread349.if.then97_crit_edge ], [ %call51, %if.end92.if.then97_crit_edge ]
  %eb_root_owner.0355362 = phi i64 [ %51, %if.end92.thread349.if.then97_crit_edge ], [ 0, %if.end92.if.then97_crit_edge ]
  %tm.1356360 = phi ptr [ %found.2.i.i, %if.end92.thread349.if.then97_crit_edge ], [ %found.2.i.i291, %if.end92.if.then97_crit_edge ]
  %52 = ptrtoint ptr %eb.0354363 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %eb.0354363, align 8
  %pages.i298 = getelementptr inbounds %struct.extent_buffer, ptr %eb.0354363, i32 0, i32 12
  %54 = ptrtoint ptr %pages.i298 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pages.i298, align 4
  %call.i299 = tail call ptr @page_address(ptr noundef %55) #8
  %56 = ptrtoint ptr %eb.0354363 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %eb.0354363, align 8
  %conv.i300 = trunc i64 %57 to i32
  %and.i301 = and i32 %conv.i300, 4095
  %add.ptr.i302 = getelementptr i8, ptr %call.i299, i32 %and.i301
  %bytenr.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i302, i32 0, i32 2
  %58 = tail call i64 @llvm.bswap.i64(i64 %53) #8
  %59 = ptrtoint ptr %bytenr.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %58, ptr %bytenr.i, align 1
  %60 = ptrtoint ptr %pages.i298 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pages.i298, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %61) #8
  %62 = ptrtoint ptr %eb.0354363 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %eb.0354363, align 8
  %conv.i.i = trunc i64 %63 to i32
  %and.i.i = and i32 %conv.i.i, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %and.i.i
  %flags.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 8)
  %65 = load i64, ptr %flags.i.i, align 1
  %66 = and i64 %65, -256
  %67 = or i64 %66, 1
  %68 = ptrtoint ptr %pages.i298 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pages.i298, align 4
  %call.i5.i = tail call ptr @page_address(ptr noundef %69) #8
  %70 = ptrtoint ptr %eb.0354363 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %eb.0354363, align 8
  %conv.i6.i = trunc i64 %71 to i32
  %and.i7.i = and i32 %conv.i6.i, 4095
  %add.ptr.i8.i = getelementptr i8, ptr %call.i5.i, i32 %and.i7.i
  %flags.i9.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i8.i, i32 0, i32 3
  %72 = ptrtoint ptr %flags.i9.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 %67, ptr %flags.i9.i, align 1
  %73 = ptrtoint ptr %pages.i298 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pages.i298, align 4
  %call.i304 = tail call ptr @page_address(ptr noundef %74) #8
  %75 = ptrtoint ptr %eb.0354363 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %eb.0354363, align 8
  %conv.i305 = trunc i64 %76 to i32
  %and.i306 = and i32 %conv.i305, 4095
  %add.ptr.i307 = getelementptr i8, ptr %call.i304, i32 %and.i306
  %owner.i308 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i307, i32 0, i32 6
  %77 = tail call i64 @llvm.bswap.i64(i64 %eb_root_owner.0355362) #8
  %78 = ptrtoint ptr %owner.i308 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 %77, ptr %owner.i308, align 1
  %level99 = getelementptr inbounds %struct.tree_mod_root, ptr %old_root.0, i32 0, i32 1
  %79 = ptrtoint ptr %level99 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %level99, align 8
  %81 = ptrtoint ptr %pages.i298 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pages.i298, align 4
  %call.i310 = tail call ptr @page_address(ptr noundef %82) #8
  %83 = ptrtoint ptr %eb.0354363 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %eb.0354363, align 8
  %conv.i311 = trunc i64 %84 to i32
  %and.i312 = and i32 %conv.i311, 4095
  %add.ptr.i313 = getelementptr i8, ptr %call.i310, i32 %and.i312
  %level.i314 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i313, i32 0, i32 8
  %85 = ptrtoint ptr %level.i314 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %80, ptr %level.i314, align 1
  %86 = ptrtoint ptr %pages.i298 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pages.i298, align 4
  %call.i316 = tail call ptr @page_address(ptr noundef %87) #8
  %88 = ptrtoint ptr %eb.0354363 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %eb.0354363, align 8
  %conv.i317 = trunc i64 %89 to i32
  %and.i318 = and i32 %conv.i317, 4095
  %add.ptr.i319 = getelementptr i8, ptr %call.i316, i32 %and.i318
  %generation.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i319, i32 0, i32 5
  %90 = tail call i64 @llvm.bswap.i64(i64 %old_generation.0) #8
  %91 = ptrtoint ptr %generation.i to i32
  call void @__asan_storeN_noabort(i32 %91, i32 8)
  store i64 %90, ptr %generation.i, align 1
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.end92.thread365.if.end100_crit_edge
  %eb.0354364 = phi ptr [ %eb.0354363, %if.then97 ], [ %call90, %if.end92.thread365.if.end100_crit_edge ]
  %tm.1356361 = phi ptr [ %tm.1356360, %if.then97 ], [ %found.2.i.i, %if.end92.thread365.if.end100_crit_edge ]
  %pages.i320 = getelementptr inbounds %struct.extent_buffer, ptr %eb.0354364, i32 0, i32 12
  %92 = ptrtoint ptr %pages.i320 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pages.i320, align 4
  %call.i321 = tail call ptr @page_address(ptr noundef %93) #8
  %94 = ptrtoint ptr %eb.0354364 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %eb.0354364, align 8
  %conv.i322 = trunc i64 %95 to i32
  %and.i323 = and i32 %conv.i322, 4095
  %add.ptr.i324 = getelementptr i8, ptr %call.i321, i32 %and.i323
  %owner.i325 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i324, i32 0, i32 6
  %96 = ptrtoint ptr %owner.i325 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 8)
  %97 = load i64, ptr %owner.i325, align 1
  %98 = tail call i64 @llvm.bswap.i64(i64 %97) #8
  %99 = ptrtoint ptr %pages.i320 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pages.i320, align 4
  %call.i327 = tail call ptr @page_address(ptr noundef %100) #8
  %101 = ptrtoint ptr %eb.0354364 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %eb.0354364, align 8
  %conv.i328 = trunc i64 %102 to i32
  %and.i329 = and i32 %conv.i328, 4095
  %add.ptr.i330 = getelementptr i8, ptr %call.i327, i32 %and.i329
  %level.i331 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i330, i32 0, i32 8
  %103 = ptrtoint ptr %level.i331 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %level.i331, align 1
  %conv103 = zext i8 %104 to i32
  tail call void @btrfs_set_buffer_lockdep_class(i64 noundef %98, ptr noundef nonnull %eb.0354364, i32 noundef %conv103) #8
  tail call void @btrfs_tree_read_lock(ptr noundef nonnull %eb.0354364) #8
  %tobool104.not = icmp eq ptr %tm.1356361, null
  br i1 %tobool104.not, label %if.else106, label %if.then105

if.then105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @tree_mod_log_rewind(ptr noundef %1, ptr noundef nonnull %eb.0354364, i64 noundef %time_seq, ptr noundef nonnull %tm.1356361)
  br label %if.end141

if.else106:                                       ; preds = %if.end100
  %105 = ptrtoint ptr %pages.i320 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pages.i320, align 4
  %call.i333 = tail call ptr @page_address(ptr noundef %106) #8
  %107 = ptrtoint ptr %eb.0354364 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %eb.0354364, align 8
  %conv.i334 = trunc i64 %108 to i32
  %and.i335 = and i32 %conv.i334, 4095
  %add.ptr.i336 = getelementptr i8, ptr %call.i333, i32 %and.i335
  %level.i337 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i336, i32 0, i32 8
  %109 = ptrtoint ptr %level.i337 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %level.i337, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp110.not = icmp eq i8 %110, 0
  br i1 %cmp110.not, label %if.else106.if.end141_crit_edge, label %do.end127, !prof !23

if.else106.if.end141_crit_edge:                   ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

do.end127:                                        ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 884, i32 noundef 9, ptr noundef null) #8
  br label %if.end141

if.end141:                                        ; preds = %do.end127, %if.else106.if.end141_crit_edge, %if.then105
  %111 = ptrtoint ptr %pages.i320 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pages.i320, align 4
  %call.i339 = tail call ptr @page_address(ptr noundef %112) #8
  %113 = ptrtoint ptr %eb.0354364 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %eb.0354364, align 8
  %conv.i340 = trunc i64 %114 to i32
  %and.i341 = and i32 %conv.i340, 4095
  %add.ptr.i342 = getelementptr i8, ptr %call.i339, i32 %and.i341
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i342, i32 0, i32 7
  %115 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %nritems.i, align 1
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #8
  %nodesize.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %118 = ptrtoint ptr %nodesize.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %nodesize.i.i, align 8
  %sub.i.i = add i32 %119, -101
  %div.i = udiv i32 %sub.i.i, 33
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %div.i)
  %cmp145 = icmp ugt i32 %117, %div.i
  br i1 %cmp145, label %do.end162, label %if.end141.cleanup176_crit_edge, !prof !24

if.end141.cleanup176_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup176

do.end162:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 885, i32 noundef 9, ptr noundef null) #8
  br label %cleanup176

cleanup176:                                       ; preds = %do.end162, %if.end141.cleanup176_crit_edge, %if.end92.thread349.cleanup176_crit_edge, %if.end92.thread365.cleanup176_crit_edge, %if.end92.cleanup176_crit_edge, %cleanup.thread, %if.end92.thread, %entry.cleanup176_crit_edge
  %retval.1 = phi ptr [ %call, %entry.cleanup176_crit_edge ], [ null, %if.end92.cleanup176_crit_edge ], [ %eb.0354364, %do.end162 ], [ %eb.0354364, %if.end141.cleanup176_crit_edge ], [ null, %cleanup.thread ], [ null, %if.end92.thread ], [ null, %if.end92.thread349.cleanup176_crit_edge ], [ null, %if.end92.thread365.cleanup176_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_read_lock_root_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tree_mod_log_oldest_root(ptr nocapture noundef readonly %eb_root, i64 noundef %time_seq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %time_seq)
  %tobool.not = icmp eq i64 %time_seq, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %fs_info = getelementptr inbounds %struct.extent_buffer, ptr %eb_root, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %while.cond.preheader
  %found.0 = phi ptr [ %found.2.i.i3335, %if.end9 ], [ null, %while.cond.preheader ]
  %root_logical.0.in = phi ptr [ %old_root, %if.end9 ], [ %eb_root, %while.cond.preheader ]
  %looped.0.off0 = phi i1 [ false, %if.end9 ], [ true, %while.cond.preheader ]
  %0 = ptrtoint ptr %root_logical.0.in to i32
  call void @__asan_load8_noabort(i32 %0)
  %root_logical.0 = load i64, ptr %root_logical.0.in, align 8
  %1 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fs_info, align 8
  %tree_mod_log_lock.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %2, i32 0, i32 67
  tail call void @_raw_read_lock(ptr noundef %tree_mod_log_lock.i.i) #8
  %tree_mod_log.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %2, i32 0, i32 68
  %3 = ptrtoint ptr %tree_mod_log.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %node.085.i.i = load ptr, ptr %tree_mod_log.i.i, align 4
  %tobool.not86.i.i = icmp eq ptr %node.085.i.i, null
  br i1 %tobool.not86.i.i, label %while.cond.tree_mod_log_search_oldest.exit_crit_edge, label %while.cond.while.body.i.i_crit_edge

while.cond.while.body.i.i_crit_edge:              ; preds = %while.cond
  br label %while.body.i.i

while.cond.tree_mod_log_search_oldest.exit_crit_edge: ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %tree_mod_log_search_oldest.exit

while.body.i.i:                                   ; preds = %if.end60.i.i.while.body.i.i_crit_edge, %while.cond.while.body.i.i_crit_edge
  %node.088.i.i = phi ptr [ %node.0.i.i, %if.end60.i.i.while.body.i.i_crit_edge ], [ %node.085.i.i, %while.cond.while.body.i.i_crit_edge ]
  %found.087.i.i = phi ptr [ %found.1.i.i, %if.end60.i.i.while.body.i.i_crit_edge ], [ null, %while.cond.while.body.i.i_crit_edge ]
  %logical.i.i = getelementptr inbounds %struct.tree_mod_elem, ptr %node.088.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %logical.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %logical.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %root_logical.0)
  %cmp.i.i = icmp ult i64 %5, %root_logical.0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.088.i.i, i32 0, i32 2
  br label %if.end60.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %root_logical.0)
  %cmp2.i.i = icmp ugt i64 %5, %root_logical.0
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.else4.i.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.088.i.i, i32 0, i32 1
  br label %if.end60.i.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  %seq.i.i = getelementptr inbounds %struct.tree_mod_elem, ptr %node.088.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %seq.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %time_seq)
  %cmp5.i.i = icmp ult i64 %7, %time_seq
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.else8.i.i

if.then6.i.i:                                     ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left7.i.i = getelementptr inbounds %struct.rb_node, ptr %node.088.i.i, i32 0, i32 2
  br label %if.end60.i.i

if.else8.i.i:                                     ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %time_seq)
  %cmp29.i.i = icmp ugt i64 %7, %time_seq
  br i1 %cmp29.i.i, label %if.then30.i.i, label %tree_mod_log_search_oldest.exit.thread

tree_mod_log_search_oldest.exit.thread:           ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_read_unlock(ptr noundef %tree_mod_log_lock.i.i) #8
  br label %if.end7

if.then30.i.i:                                    ; preds = %if.else8.i.i
  %tobool31.not.i.i = icmp eq ptr %found.087.i.i, null
  br i1 %tobool31.not.i.i, label %if.then30.i.i.if.end53.i.i_crit_edge, label %do.body33.i.i

if.then30.i.i.if.end53.i.i_crit_edge:             ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i.i

do.body33.i.i:                                    ; preds = %if.then30.i.i
  %seq34.i.i = getelementptr inbounds %struct.tree_mod_elem, ptr %found.087.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %seq34.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %seq34.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %7)
  %cmp36.i.i = icmp ult i64 %9, %7
  br i1 %cmp36.i.i, label %do.body44.i.i, label %do.body33.i.i.if.end53.i.i_crit_edge, !prof !24

do.body33.i.i.if.end53.i.i_crit_edge:             ; preds = %do.body33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i.i

do.body44.i.i:                                    ; preds = %do.body33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/tree-mod-log.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 442, 0\0A.popsection", ""() #8, !srcloc !29
  unreachable

if.end53.i.i:                                     ; preds = %do.body33.i.i.if.end53.i.i_crit_edge, %if.then30.i.i.if.end53.i.i_crit_edge
  %rb_right54.i.i = getelementptr inbounds %struct.rb_node, ptr %node.088.i.i, i32 0, i32 1
  br label %if.end60.i.i

if.end60.i.i:                                     ; preds = %if.end53.i.i, %if.then6.i.i, %if.then3.i.i, %if.then.i.i
  %found.1.i.i = phi ptr [ %found.087.i.i, %if.then.i.i ], [ %found.087.i.i, %if.then3.i.i ], [ %found.087.i.i, %if.then6.i.i ], [ %node.088.i.i, %if.end53.i.i ]
  %node.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then3.i.i ], [ %rb_left7.i.i, %if.then6.i.i ], [ %rb_right54.i.i, %if.end53.i.i ]
  %10 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end60.i.i.tree_mod_log_search_oldest.exit_crit_edge, label %if.end60.i.i.while.body.i.i_crit_edge

if.end60.i.i.while.body.i.i_crit_edge:            ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end60.i.i.tree_mod_log_search_oldest.exit_crit_edge: ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tree_mod_log_search_oldest.exit

tree_mod_log_search_oldest.exit:                  ; preds = %if.end60.i.i.tree_mod_log_search_oldest.exit_crit_edge, %while.cond.tree_mod_log_search_oldest.exit_crit_edge
  %found.2.i.i = phi ptr [ null, %while.cond.tree_mod_log_search_oldest.exit_crit_edge ], [ %found.1.i.i, %if.end60.i.i.tree_mod_log_search_oldest.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef %tree_mod_log_lock.i.i) #8
  %tobool2.not = icmp eq ptr %found.2.i.i, null
  %or.cond = select i1 %looped.0.off0, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %tree_mod_log_search_oldest.exit.cleanup_crit_edge, label %if.end4

tree_mod_log_search_oldest.exit.cleanup_crit_edge: ; preds = %tree_mod_log_search_oldest.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %tree_mod_log_search_oldest.exit
  br i1 %tobool2.not, label %if.end4.while.end_crit_edge, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end7:                                          ; preds = %if.end4.if.end7_crit_edge, %tree_mod_log_search_oldest.exit.thread
  %found.2.i.i3335 = phi ptr [ %node.088.i.i, %tree_mod_log_search_oldest.exit.thread ], [ %found.2.i.i, %if.end4.if.end7_crit_edge ]
  %op = getelementptr inbounds %struct.tree_mod_elem, ptr %found.2.i.i3335, i32 0, i32 3
  %11 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %op, align 8
  %cmp.not = icmp eq i32 %12, 6
  br i1 %cmp.not, label %if.end9, label %if.end7.while.end_crit_edge

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end9:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %old_root = getelementptr inbounds %struct.tree_mod_elem, ptr %found.2.i.i3335, i32 0, i32 9
  br label %while.cond

while.end:                                        ; preds = %if.end7.while.end_crit_edge, %if.end4.while.end_crit_edge
  %found.2.i.i.lcssa29 = phi ptr [ %found.2.i.i3335, %if.end7.while.end_crit_edge ], [ null, %if.end4.while.end_crit_edge ]
  %tobool10.not = icmp eq ptr %found.0, null
  %spec.select = select i1 %tobool10.not, ptr %found.2.i.i.lcssa29, ptr %found.0
  br label %cleanup

cleanup:                                          ; preds = %while.end, %tree_mod_log_search_oldest.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %while.end ], [ null, %entry.cleanup_crit_edge ], [ null, %tree_mod_log_search_oldest.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_tree_block(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #4 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %expr, ptr noundef nonnull @.str, i32 noundef %line) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #8, !srcloc !30
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_old_root_level(ptr noundef %root, i64 noundef %time_seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @btrfs_root_node(ptr noundef %root) #8
  %call1 = tail call fastcc ptr @tree_mod_log_oldest_root(ptr noundef %call, i64 noundef %time_seq)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %op = getelementptr inbounds %struct.tree_mod_elem, ptr %call1, i32 0, i32 3
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %level2 = getelementptr inbounds %struct.tree_mod_elem, ptr %call1, i32 0, i32 9, i32 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %call, i32 0, i32 12
  %2 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %3) #8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %call, align 8
  %conv.i = trunc i64 %5 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %level.0.in.in = phi ptr [ %level2, %if.then ], [ %level.i, %if.else ]
  %6 = ptrtoint ptr %level.0.in.in to i32
  call void @__asan_load1_noabort(i32 %6)
  %level.0.in = load i8, ptr %level.0.in.in, align 1
  %level.0 = zext i8 %level.0.in to i32
  tail call void @free_extent_buffer(ptr noundef %call) #8
  ret i32 %level.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_root_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @btrfs_tree_mod_log_lowest_seq(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tree_mod_log_lock = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 67
  tail call void @_raw_read_lock(ptr noundef %tree_mod_log_lock) #8
  %tree_mod_seq_list = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 69
  %0 = ptrtoint ptr %tree_mod_seq_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %tree_mod_seq_list, align 4
  %cmp.i.not = icmp eq ptr %1, %tree_mod_seq_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.btrfs_seq_list, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %seq, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i64 [ 0, %entry.if.end_crit_edge ], [ %3, %if.then ]
  tail call void @_raw_read_unlock(ptr noundef %tree_mod_log_lock) #8
  ret i64 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_node_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @btrfs_get_64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @memmove_extent_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_64(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { cold noreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/tree-mod-log.c", i32 779, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/tree-mod-log.c", i32 829, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/btrfs/tree-mod-log.c", i32 850, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/tree-mod-log.c", i32 851, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @assertfail._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @assertfail._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2158247863, i64 2158248351, i64 2158247900, i64 2158247956, i64 2158247990, i64 2158248014, i64 2158248055, i64 2158248076, i64 2158248104, i64 2158248138}
!26 = !{i64 2158256717, i64 2158257205, i64 2158256754, i64 2158256810, i64 2158256844, i64 2158256868, i64 2158256909, i64 2158256930, i64 2158256958, i64 2158256992}
!27 = !{i64 2158252198, i64 2158252686, i64 2158252235, i64 2158252291, i64 2158252325, i64 2158252349, i64 2158252390, i64 2158252411, i64 2158252439, i64 2158252473}
!28 = !{i64 2158253825, i64 2158254313, i64 2158253862, i64 2158253918, i64 2158253952, i64 2158253976, i64 2158254017, i64 2158254038, i64 2158254066, i64 2158254100}
!29 = !{i64 2158249473, i64 2158249961, i64 2158249510, i64 2158249566, i64 2158249600, i64 2158249624, i64 2158249665, i64 2158249686, i64 2158249714, i64 2158249748}
!30 = !{i64 2158199975, i64 2158200457, i64 2158200012, i64 2158200068, i64 2158200102, i64 2158200126, i64 2158200167, i64 2158200188, i64 2158200216, i64 2158200250}
