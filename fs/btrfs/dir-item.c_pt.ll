; ModuleID = '/llk/IR_all_yes/fs/btrfs/dir-item.c_pt.bc'
source_filename = "../fs/btrfs/dir-item.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
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
%struct.atomic_t = type { i32 }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.80, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
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
%union.anon.80 = type { i64 }
%struct.btrfs_dir_item = type <{ %struct.btrfs_disk_key, i64, i16, i16, i8 }>
%struct.btrfs_item_batch = type { ptr, ptr, i32, i32 }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.btrfs_inode = type { ptr, %struct.btrfs_key, %struct.spinlock, %struct.extent_map_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.extent_io_tree, %struct.mutex, %struct.btrfs_ordered_inode_tree, %struct.list_head, %struct.rb_node, i32, %struct.atomic_t, i64, i64, i64, i32, i32, i64, %union.anon.83, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, %struct.btrfs_block_rsv, i32, i32, ptr, %struct.timespec64, %struct.list_head, %struct.rw_semaphore, %struct.inode }
%struct.btrfs_ordered_inode_tree = type { %struct.spinlock, %struct.rb_root, ptr }
%union.anon.83 = type { i64 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.79 = type { ptr }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/btrfs/dir-item.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"data_size <= btrfs_item_size(leaf, path->slots[0])\00", [45 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 41, i32 2 }
@___asan_gen_.9 = private constant [23 x i8] c"../fs/btrfs/dir-item.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 44, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 3491, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_insert_xattr_item(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i64 noundef %objectid, ptr noundef %name, i16 noundef zeroext %name_len, ptr noundef %data, i16 noundef zeroext %data_len) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.btrfs_key, align 8
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #6
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #6
  %conv = zext i16 %name_len to i32
  %conv1 = zext i16 %data_len to i32
  %add = add nuw nsw i32 %conv1, %conv
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %0 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info, align 8
  %nodesize.i.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 166
  %2 = ptrtoint ptr %nodesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nodesize.i.i.i, align 8
  %sub.i = add i32 %3, -156
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i)
  %cmp = icmp ugt i32 %add, %sub.i
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %5 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %6 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %objectid, ptr %key, align 8
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 24, ptr %5, align 8
  %call.i = tail call i32 @crc32c(i32 noundef -2, ptr noundef %name, i32 noundef %conv) #6
  %conv.i = zext i32 %call.i to i64
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %conv.i, ptr %4, align 1
  %add9 = add nuw nsw i32 %add, 30
  %call11 = call fastcc ptr @insert_with_overflow(ptr noundef %trans, ptr noundef %root, ptr noundef %path, ptr noundef nonnull %key, i32 noundef %add9, ptr noundef %name, i32 noundef %conv)
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %path, align 4
  %12 = ptrtoint ptr %call11 to i32
  %13 = call ptr @memset(ptr %disk_key, i32 0, i32 17)
  call void @write_extent_buffer(ptr noundef %11, ptr noundef nonnull %disk_key, i32 noundef %12, i32 noundef 17) #6
  call void @btrfs_set_8(ptr noundef %11, ptr noundef %call11, i32 noundef 29, i8 noundef zeroext 8) #6
  call void @btrfs_set_16(ptr noundef %11, ptr noundef %call11, i32 noundef 27, i16 noundef zeroext %name_len) #6
  %14 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %trans, align 8
  call void @btrfs_set_64(ptr noundef %11, ptr noundef %call11, i32 noundef 17, i64 noundef %15) #6
  call void @btrfs_set_16(ptr noundef %11, ptr noundef %call11, i32 noundef 25, i16 noundef zeroext %data_len) #6
  %add.ptr = getelementptr %struct.btrfs_dir_item, ptr %call11, i32 1
  %16 = ptrtoint ptr %add.ptr to i32
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 %conv
  %17 = ptrtoint ptr %add.ptr17 to i32
  call void @write_extent_buffer(ptr noundef %11, ptr noundef %name, i32 noundef %16, i32 noundef %conv) #6
  call void @write_extent_buffer(ptr noundef %11, ptr noundef %data, i32 noundef %17, i32 noundef %conv1) #6
  %18 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %path, align 4
  call void @btrfs_mark_buffer_dirty(ptr noundef %19) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then13 ], [ 0, %if.end15 ], [ -28, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @insert_with_overflow(ptr noundef %trans, ptr noundef %root, ptr noundef %path, ptr noundef %cpu_key, i32 noundef %data_size, ptr noundef %name, i32 noundef %name_len) unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %0 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data_size, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #6
  %1 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  %4 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cpu_key, ptr %batch.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data_size.addr.i, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %data_size, ptr %2, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %3, align 4
  %call.i = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef %root, ptr noundef %path, ptr noundef nonnull %batch.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call.i)
  %cmp = icmp eq i32 %call.i, -17
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call ptr @btrfs_match_dir_item_name(ptr undef, ptr noundef %path, ptr noundef %name, i32 noundef %name_len)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end9.thread, label %if.then.cleanup47_crit_edge

if.then.cleanup47_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

if.end9.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @btrfs_extend_item(ptr noundef %path, i32 noundef %data_size) #6
  br label %if.end25

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %8 = inttoptr i32 %call.i to ptr
  br label %cleanup47

if.end9:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10.not = icmp eq i32 %call.i, 0
  br i1 %cmp10.not, label %if.end9.if.end25_crit_edge, label %do.end, !prof !19

if.end9.if.end25_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef null) #6
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.end9.if.end25_crit_edge, %if.end9.thread
  %9 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %path, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %11 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %12, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %13 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %10, ptr noundef %13, i32 noundef 17) #6
  %14 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slots, align 4
  %mul.i.i.i68 = mul i32 %15, 25
  %add.i.i.i69 = add i32 %mul.i.i.i68, 101
  %16 = inttoptr i32 %add.i.i.i69 to ptr
  %call.i.i70 = call i32 @btrfs_get_32(ptr noundef %10, ptr noundef %16, i32 noundef 21) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i70, i32 %data_size)
  %cmp37.not = icmp ult i32 %call.i.i70, %data_size
  br i1 %cmp37.not, label %cond.false, label %cond.end, !prof !20

cond.false:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  call fastcc void @assertfail() #9
  unreachable

cond.end:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %call.i.i, 101
  %17 = inttoptr i32 %add to ptr
  %18 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slots, align 4
  %mul.i.i.i71 = mul i32 %19, 25
  %add.i.i.i72 = add i32 %mul.i.i.i71, 101
  %20 = inttoptr i32 %add.i.i.i72 to ptr
  %call.i.i73 = call i32 @btrfs_get_32(ptr noundef %10, ptr noundef %20, i32 noundef 21) #6
  %sub = sub i32 %call.i.i73, %data_size
  %add.ptr = getelementptr i8, ptr %17, i32 %sub
  br label %cleanup47

cleanup47:                                        ; preds = %cond.end, %if.then6, %if.then.cleanup47_crit_edge
  %retval.1 = phi ptr [ %add.ptr, %cond.end ], [ %8, %if.then6 ], [ inttoptr (i32 -17 to ptr), %if.then.cleanup47_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_insert_dir_item(ptr noundef %trans, ptr noundef %name, i32 noundef %name_len, ptr noundef %dir, ptr nocapture noundef readonly %location, i8 noundef zeroext %type, i64 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.btrfs_key, align 8
  %disk_key = alloca %struct.btrfs_disk_key, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dir, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #6
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key) #6
  %4 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 1
  %5 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key, i32 0, i32 2
  %location.i = getelementptr inbounds %struct.btrfs_inode, ptr %dir, i32 0, i32 1
  %6 = ptrtoint ptr %location.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not.i = icmp eq i64 %7, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %type.i = getelementptr inbounds %struct.btrfs_inode, ptr %dir, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %9)
  %cmp.i = icmp eq i8 %9, -124
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.btrfs_ino.exit_crit_edge

lor.lhs.false.i.btrfs_ino.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %btrfs_ino.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i_ino.i = getelementptr inbounds %struct.btrfs_inode, ptr %dir, i32 0, i32 37, i32 11
  %10 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino.i, align 8
  %conv3.i = zext i32 %11 to i64
  br label %btrfs_ino.exit

btrfs_ino.exit:                                   ; preds = %if.then.i, %lor.lhs.false.i.btrfs_ino.exit_crit_edge
  %ino.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %7, %lor.lhs.false.i.btrfs_ino.exit_crit_edge ]
  %12 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %ino.0.i, ptr %key, align 8
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 84, ptr %2, align 8
  %call.i = tail call i32 @crc32c(i32 noundef -2, ptr noundef %name, i32 noundef %name_len) #6
  %conv.i = zext i32 %call.i to i64
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %conv.i, ptr %3, align 1
  %call4 = tail call ptr @btrfs_alloc_path() #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %btrfs_ino.exit.cleanup_crit_edge, label %if.end

btrfs_ino.exit.cleanup_crit_edge:                 ; preds = %btrfs_ino.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %btrfs_ino.exit
  %offset.i = getelementptr inbounds %struct.btrfs_key, ptr %location, i32 0, i32 2
  %15 = ptrtoint ptr %offset.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %offset.i, align 1
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #6
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %5, align 1
  %type.i67 = getelementptr inbounds %struct.btrfs_key, ptr %location, i32 0, i32 1
  %19 = ptrtoint ptr %type.i67 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %type.i67, align 1
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %4, align 8
  %22 = ptrtoint ptr %location to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %location, align 1
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #6
  %25 = ptrtoint ptr %disk_key to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %disk_key, align 8
  %add = add i32 %name_len, 30
  %call5 = call fastcc ptr @insert_with_overflow(ptr noundef %trans, ptr noundef %1, ptr noundef nonnull %call4, ptr noundef nonnull %key, i32 noundef %add, ptr noundef %name, i32 noundef %name_len)
  %cmp.i68 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  %26 = ptrtoint ptr %call5 to i32
  %cmp = icmp eq ptr %call5, inttoptr (i32 -17 to ptr)
  br i1 %cmp, label %if.then7.second_insert_crit_edge, label %if.then7.out_free_crit_edge

if.then7.out_free_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.then7.second_insert_crit_edge:                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %second_insert

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call4, align 4
  %29 = ptrtoint ptr %call5 to i32
  call void @write_extent_buffer(ptr noundef %28, ptr noundef nonnull %disk_key, i32 noundef %29, i32 noundef 17) #6
  call void @btrfs_set_8(ptr noundef %28, ptr noundef %call5, i32 noundef 29, i8 noundef zeroext %type) #6
  call void @btrfs_set_16(ptr noundef %28, ptr noundef %call5, i32 noundef 25, i16 noundef zeroext 0) #6
  %conv = trunc i32 %name_len to i16
  call void @btrfs_set_16(ptr noundef %28, ptr noundef %call5, i32 noundef 27, i16 noundef zeroext %conv) #6
  %30 = ptrtoint ptr %trans to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %trans, align 8
  call void @btrfs_set_64(ptr noundef %28, ptr noundef %call5, i32 noundef 17, i64 noundef %31) #6
  %add.ptr = getelementptr %struct.btrfs_dir_item, ptr %call5, i32 1
  %32 = ptrtoint ptr %add.ptr to i32
  call void @write_extent_buffer(ptr noundef %28, ptr noundef %name, i32 noundef %32, i32 noundef %name_len) #6
  call void @btrfs_mark_buffer_dirty(ptr noundef %28) #6
  br label %second_insert

second_insert:                                    ; preds = %if.end11, %if.then7.second_insert_crit_edge
  %ret.0 = phi i32 [ -17, %if.then7.second_insert_crit_edge ], [ 0, %if.end11 ]
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fs_info, align 8
  %tree_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %tree_root to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tree_root, align 4
  %cmp12 = icmp eq ptr %1, %36
  br i1 %cmp12, label %out_free.thread, label %if.end15

out_free.thread:                                  ; preds = %second_insert
  call void @__sanitizer_cov_trace_pc() #8
  call void @btrfs_free_path(ptr noundef nonnull %call4) #6
  br label %if.end19

if.end15:                                         ; preds = %second_insert
  call void @__sanitizer_cov_trace_pc() #8
  call void @btrfs_release_path(ptr noundef nonnull %call4) #6
  %call16 = call i32 @btrfs_insert_delayed_dir_index(ptr noundef %trans, ptr noundef %name, i32 noundef %name_len, ptr noundef %dir, ptr noundef nonnull %disk_key, i8 noundef zeroext %type, i64 noundef %index) #6
  br label %out_free

out_free:                                         ; preds = %if.end15, %if.then7.out_free_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end15 ], [ %26, %if.then7.out_free_crit_edge ]
  %ret2.0 = phi i32 [ %call16, %if.end15 ], [ 0, %if.then7.out_free_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool17.not = icmp eq i32 %ret.1, 0
  br i1 %tobool17.not, label %out_free.if.end19_crit_edge, label %out_free.cleanup_crit_edge

out_free.cleanup_crit_edge:                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out_free.if.end19_crit_edge:                      ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %out_free.if.end19_crit_edge, %out_free.thread
  %ret2.072 = phi i32 [ 0, %out_free.thread ], [ %ret2.0, %out_free.if.end19_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %out_free.cleanup_crit_edge, %btrfs_ino.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %btrfs_ino.exit.cleanup_crit_edge ], [ %ret.1, %out_free.cleanup_crit_edge ], [ %ret2.072, %if.end19 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_delayed_dir_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_lookup_dir_item(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i64 noundef %dir, ptr noundef %name, i32 noundef %name_len, i32 noundef %mod) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #6
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %dir, ptr %key, align 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 84, ptr %0, align 8
  %call.i = tail call i32 @crc32c(i32 noundef -2, ptr noundef %name, i32 noundef %name_len) #6
  %conv.i = zext i32 %call.i to i64
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %conv.i, ptr %1, align 1
  %mod.lobit.i = ashr i32 %mod, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mod)
  %cmp1.i = icmp ne i32 %mod, 0
  %conv.i9 = zext i1 %cmp1.i to i32
  %call.i10 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %key, ptr noundef %path, i32 noundef %mod.lobit.i, i32 noundef %conv.i9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp2.i = icmp slt i32 %call.i10, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = inttoptr i32 %call.i10 to ptr
  br label %btrfs_lookup_match_dir.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp5.not.i = icmp eq i32 %call.i10, 0
  br i1 %cmp5.not.i, label %if.end9.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = call ptr @btrfs_match_dir_item_name(ptr undef, ptr noundef %path, ptr noundef %name, i32 noundef %name_len) #6
  br label %btrfs_lookup_match_dir.exit

btrfs_lookup_match_dir.exit:                      ; preds = %if.end9.i, %if.then.i
  %retval.0.i = phi ptr [ %5, %if.then.i ], [ %call10.i, %if.end9.i ]
  %cmp = icmp eq ptr %retval.0.i, inttoptr (i32 -2 to ptr)
  %spec.select = select i1 %cmp, ptr null, ptr %retval.0.i
  br label %cleanup

cleanup:                                          ; preds = %btrfs_lookup_match_dir.exit, %if.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.i.cleanup_crit_edge ], [ %spec.select, %btrfs_lookup_match_dir.exit ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #6
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_check_dir_item_collision(ptr noundef %root, i64 noundef %dir, ptr noundef %name, i32 noundef %name_len) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #6
  %call = tail call ptr @btrfs_alloc_path() #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %dir, ptr %key, align 8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 84, ptr %1, align 8
  %call.i = tail call i32 @crc32c(i32 noundef -2, ptr noundef %name, i32 noundef %name_len) #6
  %conv.i = zext i32 %call.i to i64
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %conv.i, ptr %0, align 1
  %call.i41 = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %root, ptr noundef nonnull %key, ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp2.i = icmp slt i32 %call.i41, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = inttoptr i32 %call.i41 to ptr
  br label %btrfs_lookup_match_dir.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp5.not.i = icmp eq i32 %call.i41, 0
  br i1 %cmp5.not.i, label %if.end9.i, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = call ptr @btrfs_match_dir_item_name(ptr undef, ptr noundef nonnull %call, ptr noundef %name, i32 noundef %name_len) #6
  br label %btrfs_lookup_match_dir.exit

btrfs_lookup_match_dir.exit:                      ; preds = %if.end9.i, %if.then.i
  %retval.0.i = phi ptr [ %5, %if.then.i ], [ %call10.i, %if.end9.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %btrfs_lookup_match_dir.exit.if.end11_crit_edge

btrfs_lookup_match_dir.exit.if.end11_crit_edge:   ; preds = %btrfs_lookup_match_dir.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then4:                                         ; preds = %btrfs_lookup_match_dir.exit
  %cmp = icmp eq ptr %retval.0.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %if.then4.out_crit_edge, label %if.end7

if.then4.out_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end7:                                          ; preds = %if.then4
  %6 = ptrtoint ptr %retval.0.i to i32
  %cmp8 = icmp slt ptr %retval.0.i, null
  br i1 %cmp8, label %if.end7.out_crit_edge, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end7.if.end11_crit_edge, %btrfs_lookup_match_dir.exit.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool12.not, label %if.end14, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %10, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %11 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %8, ptr noundef %11, i32 noundef 21) #6
  %add17 = add i32 %name_len, 55
  %add18 = add i32 %add17, %call.i.i
  %fs_info = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 8
  %12 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fs_info, align 8
  %nodesize.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %13, i32 0, i32 166
  %14 = ptrtoint ptr %nodesize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nodesize.i, align 8
  %sub.i = add i32 %15, -101
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %sub.i)
  %cmp20 = icmp ugt i32 %add18, %sub.i
  %. = select i1 %cmp20, i32 -75, i32 0
  br label %out

out:                                              ; preds = %if.end14, %if.end11.out_crit_edge, %if.end7.out_crit_edge, %if.then4.out_crit_edge, %if.end.i.out_crit_edge
  %ret.0 = phi i32 [ %6, %if.end7.out_crit_edge ], [ 0, %if.then4.out_crit_edge ], [ -17, %if.end11.out_crit_edge ], [ %., %if.end14 ], [ 0, %if.end.i.out_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_lookup_dir_index_item(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i64 noundef %dir, i64 noundef %index, ptr noundef %name, i32 noundef %name_len, i32 noundef %mod) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #6
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %dir, ptr %key, align 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 96, ptr %0, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %index, ptr %1, align 1
  %mod.lobit.i = ashr i32 %mod, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mod)
  %cmp1.i = icmp ne i32 %mod, 0
  %conv.i = zext i1 %cmp1.i to i32
  %call.i = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %key, ptr noundef %path, i32 noundef %mod.lobit.i, i32 noundef %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = inttoptr i32 %call.i to ptr
  br label %btrfs_lookup_match_dir.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp5.not.i, label %if.end9.i, label %if.end.i.btrfs_lookup_match_dir.exit_crit_edge

if.end.i.btrfs_lookup_match_dir.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %btrfs_lookup_match_dir.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = call ptr @btrfs_match_dir_item_name(ptr undef, ptr noundef %path, ptr noundef %name, i32 noundef %name_len) #6
  br label %btrfs_lookup_match_dir.exit

btrfs_lookup_match_dir.exit:                      ; preds = %if.end9.i, %if.end.i.btrfs_lookup_match_dir.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %5, %if.then.i ], [ %call10.i, %if.end9.i ], [ inttoptr (i32 -2 to ptr), %if.end.i.btrfs_lookup_match_dir.exit_crit_edge ]
  %cmp = icmp eq ptr %retval.0.i, inttoptr (i32 -2 to ptr)
  %.call = select i1 %cmp, ptr null, ptr %retval.0.i
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #6
  ret ptr %.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_search_dir_index_item(ptr noundef %root, ptr noundef %path, i64 noundef %dirid, ptr noundef %name, i32 noundef %name_len) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #6
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %dirid, ptr %key, align 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 96, ptr %0, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %1, align 1
  %call = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef %root, ptr noundef nonnull %key, ptr noundef %path, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %path, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pages.i, align 4
  %call.i = call ptr @page_address(ptr noundef %9) #6
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %7, align 8
  %conv.i = trunc i64 %11 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 7
  %12 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %nritems.i, align 1
  %14 = call i32 @llvm.bswap.i32(i32 %13) #6
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %15 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end13, %if.end
  %leaf.0.ph = phi ptr [ %21, %if.end13 ], [ %7, %if.end ]
  %nritems.0.ph = phi i32 [ %28, %if.end13 ], [ %14, %if.end ]
  %17 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %nritems.0.ph)
  %cmp4.not62 = icmp ult i32 %18, %nritems.0.ph
  br i1 %cmp4.not62, label %while.cond.outer.if.end17_crit_edge, label %while.cond.outer.if.then5_crit_edge

while.cond.outer.if.then5_crit_edge:              ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

while.cond.outer.if.end17_crit_edge:              ; preds = %while.cond.outer
  br label %if.end17

if.then5:                                         ; preds = %if.end29.if.then5_crit_edge, %while.cond.outer.if.then5_crit_edge
  %call.i53 = call i32 @btrfs_next_old_leaf(ptr noundef %root, ptr noundef %path, i64 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %cmp7 = icmp slt i32 %call.i53, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %19 = inttoptr i32 %call.i53 to ptr
  br label %cleanup

if.end10:                                         ; preds = %if.then5
  %cmp11.not = icmp eq i32 %call.i53, 0
  br i1 %cmp11.not, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %path, align 4
  %pages.i54 = getelementptr inbounds %struct.extent_buffer, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %pages.i54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pages.i54, align 4
  %call.i55 = call ptr @page_address(ptr noundef %23) #6
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %21, align 8
  %conv.i56 = trunc i64 %25 to i32
  %and.i57 = and i32 %conv.i56, 4095
  %add.ptr.i58 = getelementptr i8, ptr %call.i55, i32 %and.i57
  %nritems.i59 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i58, i32 0, i32 7
  %26 = ptrtoint ptr %nritems.i59 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %nritems.i59, align 1
  %28 = call i32 @llvm.bswap.i32(i32 %27) #6
  br label %while.cond.outer

if.end17:                                         ; preds = %if.end29.if.end17_crit_edge, %while.cond.outer.if.end17_crit_edge
  %29 = phi i32 [ %inc, %if.end29.if.end17_crit_edge ], [ %18, %while.cond.outer.if.end17_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #6
  %mul.i.i.i.i = mul i32 %29, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %30 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %leaf.0.ph, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #6
  %31 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %16, align 1
  %33 = call i64 @llvm.bswap.i64(i64 %32) #6
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %1, align 1
  %35 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %15, align 8
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %0, align 8
  %38 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %disk_key.i, align 8
  %40 = call i64 @llvm.bswap.i64(i64 %39) #6
  %41 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #6
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %dirid)
  %cmp21.not = icmp eq i64 %40, %dirid
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %36)
  %cmp23.not = icmp eq i8 %36, 96
  %or.cond = select i1 %cmp21.not, i1 %cmp23.not, i1 false
  br i1 %or.cond, label %if.end26, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %call27 = call ptr @btrfs_match_dir_item_name(ptr undef, ptr noundef %path, ptr noundef %name, i32 noundef %name_len)
  %tobool.not = icmp eq ptr %call27, null
  br i1 %tobool.not, label %if.end29, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %42 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %slots, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %slots, align 4
  %cmp4.not = icmp ult i32 %inc, %nritems.0.ph
  br i1 %cmp4.not, label %if.end29.if.end17_crit_edge, label %if.end29.if.then5_crit_edge

if.end29.if.then5_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.end29.if.end17_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

cleanup:                                          ; preds = %if.end26.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then8, %if.then
  %retval.0 = phi ptr [ %5, %if.then ], [ %19, %if.then8 ], [ %call27, %if.end26.cleanup_crit_edge ], [ null, %if.end17.cleanup_crit_edge ], [ null, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_match_dir_item_name(ptr nocapture readnone %fs_info, ptr nocapture noundef readonly %path, ptr noundef %name, i32 noundef %name_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i.i = tail call i32 @btrfs_get_32(ptr noundef %1, ptr noundef %4, i32 noundef 17) #6
  %5 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %slots, align 4
  %mul.i.i.i39 = mul i32 %6, 25
  %add.i.i.i40 = add i32 %mul.i.i.i39, 101
  %7 = inttoptr i32 %add.i.i.i40 to ptr
  %call.i.i41 = tail call i32 @btrfs_get_32(ptr noundef %1, ptr noundef %7, i32 noundef 21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %cmp44.not = icmp eq i32 %call.i.i41, 0
  br i1 %cmp44.not, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %add = add i32 %call.i.i, 101
  %8 = inttoptr i32 %add to ptr
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.preheader
  %cur.047 = phi i32 [ %add17, %if.end.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %dir_item.045 = phi ptr [ %add.ptr18, %if.end.while.body_crit_edge ], [ %8, %while.body.preheader ]
  %call.i = tail call zeroext i16 @btrfs_get_16(ptr noundef %1, ptr noundef %dir_item.045, i32 noundef 27) #6
  %conv = zext i16 %call.i to i32
  %add6 = add nuw nsw i32 %conv, 30
  %call.i42 = tail call zeroext i16 @btrfs_get_16(ptr noundef %1, ptr noundef %dir_item.045, i32 noundef 25) #6
  %conv8 = zext i16 %call.i42 to i32
  %add9 = add nuw nsw i32 %add6, %conv8
  %call.i43 = tail call zeroext i16 @btrfs_get_16(ptr noundef %1, ptr noundef %dir_item.045, i32 noundef 27) #6
  %conv11 = zext i16 %call.i43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %name_len)
  %cmp12 = icmp eq i32 %conv11, %name_len
  br i1 %cmp12, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %add.ptr = getelementptr %struct.btrfs_dir_item, ptr %dir_item.045, i32 1
  %9 = ptrtoint ptr %add.ptr to i32
  %call14 = tail call i32 @memcmp_extent_buffer(ptr noundef %1, ptr noundef %name, i32 noundef %9, i32 noundef %name_len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %add17 = add i32 %add9, %cur.047
  %add.ptr18 = getelementptr i8, ptr %dir_item.045, i32 %add9
  %cmp = icmp ult i32 %add17, %call.i.i41
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %dir_item.045, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_lookup_xattr(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i64 noundef %dir, ptr noundef %name, i16 noundef zeroext %name_len, i32 noundef %mod) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #6
  %0 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %dir, ptr %key, align 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 24, ptr %0, align 8
  %conv = zext i16 %name_len to i32
  %call.i = tail call i32 @crc32c(i32 noundef -2, ptr noundef %name, i32 noundef %conv) #6
  %conv.i = zext i32 %call.i to i64
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %conv.i, ptr %1, align 1
  %mod.lobit.i = ashr i32 %mod, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mod)
  %cmp1.i = icmp ne i32 %mod, 0
  %conv.i12 = zext i1 %cmp1.i to i32
  %call.i13 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %key, ptr noundef %path, i32 noundef %mod.lobit.i, i32 noundef %conv.i12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %cmp2.i = icmp slt i32 %call.i13, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = inttoptr i32 %call.i13 to ptr
  br label %btrfs_lookup_match_dir.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %cmp5.not.i = icmp eq i32 %call.i13, 0
  br i1 %cmp5.not.i, label %if.end9.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = call ptr @btrfs_match_dir_item_name(ptr undef, ptr noundef %path, ptr noundef %name, i32 noundef %conv) #6
  br label %btrfs_lookup_match_dir.exit

btrfs_lookup_match_dir.exit:                      ; preds = %if.end9.i, %if.then.i
  %retval.0.i = phi ptr [ %5, %if.then.i ], [ %call10.i, %if.end9.i ]
  %cmp = icmp eq ptr %retval.0.i, inttoptr (i32 -2 to ptr)
  %spec.select = select i1 %cmp, ptr null, ptr %retval.0.i
  br label %cleanup

cleanup:                                          ; preds = %btrfs_lookup_match_dir.exit, %if.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.i.cleanup_crit_edge ], [ %spec.select, %btrfs_lookup_match_dir.exit ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_delete_one_dir_name(ptr noundef %trans, ptr noundef %root, ptr noundef %path, ptr noundef %di) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path, align 4
  %call.i = tail call zeroext i16 @btrfs_get_16(ptr noundef %1, ptr noundef %di, i32 noundef 27) #6
  %conv = zext i16 %call.i to i32
  %add = add nuw nsw i32 %conv, 30
  %call.i33 = tail call zeroext i16 @btrfs_get_16(ptr noundef %1, ptr noundef %di, i32 noundef 25) #6
  %conv2 = zext i16 %call.i33 to i32
  %add3 = add nuw nsw i32 %add, %conv2
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %3, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %4 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = tail call i32 @btrfs_get_32(ptr noundef %1, ptr noundef %4, i32 noundef 21) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add3)
  %cmp = icmp eq i32 %call.i.i, %add3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %slots, align 4
  %call.i34 = tail call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef %root, ptr noundef %path, i32 noundef %6, i32 noundef 1) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %di to i32
  %8 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slots, align 4
  %mul.i.i.i35 = mul i32 %9, 25
  %add.i.i.i36 = add i32 %mul.i.i.i35, 101
  %10 = inttoptr i32 %add.i.i.i36 to ptr
  %call.i.i37 = tail call i32 @btrfs_get_32(ptr noundef %1, ptr noundef %10, i32 noundef 17) #6
  %add12 = add i32 %add3, %7
  %add11 = add i32 %call.i.i, 101
  %sub.neg = sub i32 %add11, %add12
  %sub14 = add i32 %sub.neg, %call.i.i37
  tail call void @memmove_extent_buffer(ptr noundef %1, i32 noundef %7, i32 noundef %add12, i32 noundef %sub14) #6
  %sub15 = sub i32 %call.i.i, %add3
  tail call void @btrfs_truncate_item(ptr noundef %path, i32 noundef %sub15, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call.i34, %if.then ], [ 0, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memmove_extent_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_truncate_item(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_extend_item(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail() unnamed_addr #3 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 44) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #6, !srcloc !21
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_empty_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_16(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_set_64(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_next_old_leaf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @btrfs_get_16(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_del_items(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold noreturn }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/dir-item.c", i32 41, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/dir-item.c", i32 44, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @assertfail._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @assertfail._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2158186886, i64 2158187368, i64 2158186923, i64 2158186979, i64 2158187013, i64 2158187037, i64 2158187078, i64 2158187099, i64 2158187127, i64 2158187161}
