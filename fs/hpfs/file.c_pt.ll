; ModuleID = '/llk/IR_all_yes/fs/hpfs/file.c_pt.bc'
source_filename = "../fs/hpfs/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.iomap_ops = type { ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.fnode = type { i32, [2 x i32], i8, [15 x i8], i32, i32, i32, i16, i8, i8, i32, i32, i16, i16, %struct.bplus_header, %union.anon.82, i32, i32, [16 x i8], i16, i8, i8, i32, i32, [316 x i8] }
%struct.bplus_header = type { i8, [3 x i8], i8, i8, i16, %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.anon.79, [0 x %struct.bplus_internal_node] }
%struct.anon.79 = type {}
%struct.bplus_internal_node = type { i32, i32 }
%union.anon.82 = type { [8 x %struct.bplus_leaf_node] }
%struct.bplus_leaf_node = type { i32, i32, i32 }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }

@hpfs_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @hpfs_writepage, ptr @hpfs_readpage, ptr @hpfs_writepages, ptr @__set_page_dirty_buffers, ptr null, ptr @hpfs_readahead, ptr @hpfs_write_begin, ptr @hpfs_write_end, ptr @_hpfs_bmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hpfs_file_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr @generic_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @hpfs_ioctl, ptr null, ptr @generic_file_mmap, i32 0, ptr null, ptr null, ptr @hpfs_file_release, ptr @hpfs_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@hpfs_file_iops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpfs_setattr, ptr null, ptr null, ptr @hpfs_fiemap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/hpfs/hpfs_fn.h\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bmap\00", [27 x i8] zeroinitializer }, align 32
@hpfs_iomap_ops = internal constant { %struct.iomap_ops, [24 x i8] } { %struct.iomap_ops { ptr @hpfs_iomap_begin, ptr null }, [24 x i8] zeroinitializer }, align 32
@hpfs_iomap_begin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/hpfs/file.c\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [10 x i8] c"hpfs_aops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 247, i32 39 }
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"hpfs_file_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 258, i32 30 }
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"../fs/hpfs/hpfs_fn.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 378, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 56, i32 51 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"hpfs_iomap_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 157, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [18 x i8] c"../fs/hpfs/file.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 128, i32 6 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @hpfs_aops, ptr @hpfs_file_ops, ptr @.str, ptr @.str.1, ptr @hpfs_iomap_ops, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_file_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_iomap_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_file_fsync(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @file_write_and_wait_range(ptr noundef %file, i64 noundef %start, i64 noundef %end) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev, align 4
  %call1 = tail call i32 @sync_blockdev(ptr noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_truncate(ptr noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %call1.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %5) #5
  br i1 %call1.i, label %if.end.hpfs_lock_assert.exit_crit_edge, label %do.end.i, !prof !24

if.end.hpfs_lock_assert.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %hpfs_lock_assert.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 378, i32 noundef 9, ptr noundef null) #5
  br label %hpfs_lock_assert.exit

hpfs_lock_assert.exit:                            ; preds = %do.end.i, %if.end.hpfs_lock_assert.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %i, i32 -48
  %i_n_secs = getelementptr i8, ptr %i, i32 -16
  %6 = ptrtoint ptr %i_n_secs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %i_n_secs, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 14
  %7 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_size, align 8
  %add = add i64 %8, 511
  %shr = ashr i64 %add, 9
  %add1 = add nsw i64 %shr, 1
  %i_blocks = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 22
  %9 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add1, ptr %i_blocks, align 8
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %8, ptr %add.ptr.i, align 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %i, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  %15 = lshr i64 %add, 9
  %conv = trunc i64 %15 to i32
  tail call void @hpfs_truncate_btree(ptr noundef %12, i32 noundef %14, i32 noundef 1, i32 noundef %conv) #5
  tail call void @hpfs_write_inode(ptr noundef %i) #5
  %16 = ptrtoint ptr %i_n_secs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %i_n_secs, align 8
  br label %return

return:                                           ; preds = %hpfs_lock_assert.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_truncate_btree(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_write_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @hpfs_get_block, ptr noundef %wbc) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_readpage(ptr noundef %page, ptr noundef nonnull @hpfs_get_block) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_writepages(ptr noundef %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_writepages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull @hpfs_get_block) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpfs_readahead(ptr noundef %rac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpage_readahead(ptr noundef %rac, ptr noundef nonnull @hpfs_get_block) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pagep, align 4
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 -48
  %call1 = tail call i32 @cont_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata, ptr noundef nonnull @hpfs_get_block, ptr noundef %add.ptr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !24

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  tail call fastcc void @hpfs_write_failed(ptr noundef %mapping, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %pagep, ptr noundef %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %call = tail call i32 @generic_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %pagep, ptr noundef %fsdata) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %len)
  %cmp = icmp ult i32 %call, %len
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i.i, align 16
  tail call void @mutex_lock_nested(ptr noundef %7, i32 noundef 0) #5
  %i_size.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %add)
  %cmp.i = icmp slt i64 %9, %add
  br i1 %cmp.i, label %if.then.i, label %if.then.hpfs_write_failed.exit_crit_edge

if.then.hpfs_write_failed.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %hpfs_write_failed.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @truncate_pagecache(ptr noundef %3, i64 noundef %9) #5
  tail call void @hpfs_truncate(ptr noundef %3) #5
  br label %hpfs_write_failed.exit

hpfs_write_failed.exit:                           ; preds = %if.then.i, %if.then.hpfs_write_failed.exit_crit_edge
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i8.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i8.i, align 16
  tail call void @mutex_unlock(ptr noundef %13) #5
  br label %if.end

if.end:                                           ; preds = %hpfs_write_failed.exit, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i, align 16
  tail call void @mutex_lock_nested(ptr noundef %17, i32 noundef 0) #5
  %i_dirty = getelementptr i8, ptr %1, i32 -8
  %18 = ptrtoint ptr %i_dirty to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %i_dirty, align 8
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %i_dirty, align 8
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i16 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i.i16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i16, align 16
  tail call void @mutex_unlock(ptr noundef %22) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @_hpfs_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @hpfs_get_block) #5
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_file_release(ptr noundef %inode, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #5
  tail call void @hpfs_write_if_changed(ptr noundef %inode) #5
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i4 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i4, align 16
  tail call void @mutex_unlock(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_fiemap(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %start, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #5
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !25
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_off() #5
  %1 = tail call ptr @llvm.returnaddress(i32 0) #5
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #5
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %2) #5
  tail call void @trace_hardirqs_on() #5
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %3 = tail call ptr @llvm.returnaddress(i32 0) #5
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #5
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #5
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !26
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !27

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @warn_bogus_irq_restore() #5
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #5, !srcloc !28
  %6 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !30
  %8 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %9, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !31
  %10 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !32
  %12 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %13, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = tail call i64 @llvm.umin.i64(i64 %11, i64 %len)
  %call1 = tail call i32 @iomap_fiemap(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %start, i64 noundef %14, ptr noundef nonnull @hpfs_iomap_ops) #5
  tail call void @up_write(ptr noundef %i_rwsem.i) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_get_block(ptr noundef %inode, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  %n_secs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_secs) #5
  %0 = ptrtoint ptr %n_secs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n_secs, align 4, !annotation !33
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i.i, align 16
  tail call void @mutex_lock_nested(ptr noundef %4, i32 noundef 0) #5
  %conv = trunc i64 %iblock to i32
  %call = call fastcc i32 @hpfs_bmap(ptr noundef %inode, i32 noundef %conv, ptr noundef nonnull %n_secs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end18, label %if.then

if.then:                                          ; preds = %entry
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %5 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b_size, align 8
  %shr = lshr i32 %6, 9
  %7 = ptrtoint ptr %n_secs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_secs, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %shr, i32 %8)
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %call6 = tail call i32 @hpfs_search_hotfix_map_for_range(ptr noundef %11, i32 noundef %call, i32 noundef %9) #5
  %12 = ptrtoint ptr %n_secs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call6, ptr %n_secs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then11, label %if.then.if.end14_crit_edge, !prof !27

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %call13 = tail call i32 @hpfs_search_hotfix_map(ptr noundef %14, i32 noundef %call) #5
  %15 = ptrtoint ptr %n_secs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %n_secs, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then.if.end14_crit_edge
  %s.0 = phi i32 [ %call13, %if.then11 ], [ %call, %if.then.if.end14_crit_edge ]
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %conv16 = zext i32 %s.0 to i64
  %18 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %bh_result, align 4
  %20 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end14.map_bh.exit_crit_edge

if.end14.map_bh.exit_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #5
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %if.end14.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 26
  %21 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %23 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %24 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv16, ptr %b_blocknr.i, align 8
  %25 = ptrtoint ptr %n_secs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_secs, align 4
  %shl = shl i32 %26, 9
  %27 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl, ptr %b_size, align 8
  br label %ret_r

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool19.not = icmp eq i32 %create, 0
  br i1 %tobool19.not, label %if.end18.ret_r_crit_edge, label %if.end21

if.end18.ret_r_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %ret_r

if.end21:                                         ; preds = %if.end18
  %shl22 = shl i64 %iblock, 9
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -48
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl22, i64 %29)
  %cmp24.not = icmp eq i64 %shl22, %29
  br i1 %cmp24.not, label %if.end30, label %do.body

do.body:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hpfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 100, 0\0A.popsection", ""() #5, !srcloc !34
  unreachable

if.end30:                                         ; preds = %if.end21
  %30 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %34 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %i_blocks, align 8
  %36 = trunc i64 %35 to i32
  %conv32 = add i32 %36, -1
  %call33 = tail call i32 @hpfs_add_sector_to_btree(ptr noundef %31, i32 noundef %33, i32 noundef 1, i32 noundef %conv32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call33)
  %cmp34 = icmp eq i32 %call33, -1
  br i1 %cmp34, label %if.then36, label %if.end42

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb, align 4
  %39 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_ino, align 8
  %41 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %i_blocks, align 8
  %43 = trunc i64 %42 to i32
  %conv41 = add i32 %43, -1
  tail call void @hpfs_truncate_btree(ptr noundef %38, i32 noundef %40, i32 noundef 1, i32 noundef %conv41) #5
  br label %ret_r

if.end42:                                         ; preds = %if.end30
  %44 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %i_blocks, align 8
  %inc = add i64 %45, 1
  store i64 %inc, ptr %i_blocks, align 8
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr.i, align 8
  %add = add i64 %47, 512
  store i64 %add, ptr %add.ptr.i, align 8
  %48 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %bh_result, align 4
  %50 = and i32 %49, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end42.set_buffer_new.exit_crit_edge

if.end42.set_buffer_new.exit_crit_edge:           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_buffer_new.exit

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #5
  br label %set_buffer_new.exit

set_buffer_new.exit:                              ; preds = %if.then.i, %if.end42.set_buffer_new.exit_crit_edge
  %51 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb, align 4
  %call48 = tail call i32 @hpfs_search_hotfix_map(ptr noundef %52, i32 noundef %call33) #5
  %conv49 = zext i32 %call48 to i64
  %53 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %bh_result, align 4
  %55 = and i32 %54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i78 = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i78, label %if.then.i.i79, label %set_buffer_new.exit.map_bh.exit85_crit_edge

set_buffer_new.exit.map_bh.exit85_crit_edge:      ; preds = %set_buffer_new.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %map_bh.exit85

if.then.i.i79:                                    ; preds = %set_buffer_new.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #5
  br label %map_bh.exit85

map_bh.exit85:                                    ; preds = %if.then.i.i79, %set_buffer_new.exit.map_bh.exit85_crit_edge
  %s_bdev.i80 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 26
  %56 = ptrtoint ptr %s_bdev.i80 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_bdev.i80, align 4
  %b_bdev.i81 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %58 = ptrtoint ptr %b_bdev.i81 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %b_bdev.i81, align 8
  %b_blocknr.i82 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %59 = ptrtoint ptr %b_blocknr.i82 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv49, ptr %b_blocknr.i82, align 8
  %s_blocksize.i83 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 3
  %60 = ptrtoint ptr %s_blocksize.i83 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_blocksize.i83, align 16
  %b_size.i84 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %62 = ptrtoint ptr %b_size.i84 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %b_size.i84, align 8
  br label %ret_r

ret_r:                                            ; preds = %map_bh.exit85, %if.then36, %if.end18.ret_r_crit_edge, %map_bh.exit
  %r.0 = phi i32 [ -28, %if.then36 ], [ 0, %if.end18.ret_r_crit_edge ], [ 0, %map_bh.exit85 ], [ 0, %map_bh.exit ]
  %63 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i86 = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 33
  %65 = ptrtoint ptr %s_fs_info.i.i86 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_fs_info.i.i86, align 16
  tail call void @mutex_unlock(ptr noundef %66) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_secs) #5
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hpfs_bmap(ptr noundef %inode, i32 noundef %file_secno, ptr nocapture noundef writeonly %n_secs) unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #5
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !33
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %add.ptr.i, align 8
  %add = add i64 %2, 511
  %shr = ashr i64 %add, 9
  %conv = zext i32 %file_secno to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv)
  %cmp.not = icmp sgt i64 %shr, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_file_sec = getelementptr i8, ptr %inode, i32 -24
  %3 = ptrtoint ptr %i_file_sec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_file_sec, align 8
  %sub = sub i32 %file_secno, %4
  %i_n_secs = getelementptr i8, ptr %inode, i32 -16
  %5 = ptrtoint ptr %i_n_secs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_n_secs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub)
  %cmp3 = icmp ugt i32 %6, %sub
  br i1 %cmp3, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub7 = sub i32 %6, %sub
  %7 = ptrtoint ptr %n_secs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub7, ptr %n_secs, align 4
  %i_disk_sec = getelementptr i8, ptr %inode, i32 -20
  %8 = ptrtoint ptr %i_disk_sec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_disk_sec, align 4
  %add8 = add i32 %9, %sub
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  %call10 = call ptr @hpfs_map_fnode(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %bh) #5
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %btree = getelementptr inbounds %struct.fnode, ptr %call10, i32 0, i32 14
  %16 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bh, align 4
  %call14 = call i32 @hpfs_bplus_lookup(ptr noundef %15, ptr noundef %inode, ptr noundef %btree, i32 noundef %file_secno, ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14)
  %cmp15 = icmp eq i32 %call14, -1
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %call20 = call i32 @hpfs_chk_sectors(ptr noundef %19, i32 noundef %call14, i32 noundef 1, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %20 = ptrtoint ptr %i_file_sec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_file_sec, align 8
  %sub25 = sub i32 %file_secno, %21
  %22 = ptrtoint ptr %i_n_secs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_n_secs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %sub25)
  %cmp27 = icmp ugt i32 %23, %sub25
  br i1 %cmp27, label %if.then29, label %if.end34

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %sub31 = sub i32 %23, %sub25
  %24 = ptrtoint ptr %n_secs to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub31, ptr %n_secs, align 4
  %i_disk_sec32 = getelementptr i8, ptr %inode, i32 -20
  %25 = ptrtoint ptr %i_disk_sec32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_disk_sec32, align 4
  %add33 = add i32 %26, %sub25
  br label %cleanup

if.end34:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %n_secs to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %n_secs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then29, %if.end18.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add8, %if.then5 ], [ %add33, %if.then29 ], [ %call14, %if.end34 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_search_hotfix_map_for_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_search_hotfix_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_add_sector_to_btree(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_map_fnode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_bplus_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_chk_sectors(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_readpage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_writepages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cont_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hpfs_write_failed(ptr nocapture noundef readonly %mapping, i64 noundef %to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #5
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %to)
  %cmp = icmp slt i64 %7, %to
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @truncate_pagecache(ptr noundef %1, i64 noundef %7) #5
  tail call void @hpfs_truncate(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i8 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i8, align 16
  tail call void @mutex_unlock(ptr noundef %11) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_write_if_changed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_iomap_begin(ptr noundef %inode, i64 noundef %offset, i64 noundef %length, i32 noundef %flags, ptr nocapture noundef writeonly %iomap, ptr nocapture noundef readnone %srcmap) #0 align 64 {
entry:
  %n_secs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %2 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_secs) #5
  %4 = ptrtoint ptr %n_secs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %n_secs, align 4, !annotation !33
  %and = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end39, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b104 = load i1, ptr @hpfs_iomap_begin.__already_done, align 1
  br i1 %.b104, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !24

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @hpfs_iomap_begin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 128, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end39:                                         ; preds = %entry
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %5 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_bdev, align 4
  %bdev = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 5
  %7 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %bdev, align 4
  %offset41 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1
  %8 = ptrtoint ptr %offset41 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %offset, ptr %offset41, align 8
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  tail call void @mutex_lock_nested(ptr noundef %10, i32 noundef 0) #5
  %sh_prom = zext i8 %3 to i64
  %shr = ashr i64 %offset, %sh_prom
  %conv42 = trunc i64 %shr to i32
  %call = call fastcc i32 @hpfs_bmap(ptr noundef %inode, i32 noundef %conv42, ptr noundef nonnull %n_secs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool43.not = icmp eq i32 %call, 0
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end39
  %11 = ptrtoint ptr %n_secs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_secs, align 4
  %conv45 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv45, i64 %length)
  %cmp = icmp slt i64 %conv45, %length
  %extract.t103 = trunc i64 %length to i32
  %cond.off0 = select i1 %cmp, i32 %12, i32 %extract.t103
  %call49 = tail call i32 @hpfs_search_hotfix_map_for_range(ptr noundef %1, i32 noundef %call, i32 noundef %cond.off0) #5
  %13 = ptrtoint ptr %n_secs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call49, ptr %n_secs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then59, label %if.then44.if.end61_crit_edge, !prof !27

if.then44.if.end61_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then59:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  %call60 = tail call i32 @hpfs_search_hotfix_map(ptr noundef %1, i32 noundef %call) #5
  %14 = ptrtoint ptr %n_secs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %n_secs, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then44.if.end61_crit_edge
  %s.0 = phi i32 [ %call60, %if.then59 ], [ %call, %if.then44.if.end61_crit_edge ]
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %type, align 8
  %flags62 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  %16 = ptrtoint ptr %flags62 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 8, ptr %flags62, align 2
  %conv63 = zext i32 %s.0 to i64
  %shl = shl i64 %conv63, %sh_prom
  %17 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %shl, ptr %iomap, align 8
  %18 = ptrtoint ptr %n_secs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_secs, align 4
  %conv65 = zext i32 %19 to i64
  %shl67 = shl i64 %conv65, %sh_prom
  br label %if.end74

if.else:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %type69 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %20 = ptrtoint ptr %type69 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %type69, align 8
  %21 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -1, ptr %iomap, align 8
  %shl71 = shl nuw i32 1, %conv
  %conv72 = sext i32 %shl71 to i64
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.end61
  %conv72.sink = phi i64 [ %conv72, %if.else ], [ %shl67, %if.end61 ]
  %length73 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %22 = ptrtoint ptr %length73 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv72.sink, ptr %length73, align 8
  %23 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i, align 16
  tail call void @mutex_unlock(ptr noundef %24) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end74 ], [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_secs) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @hpfs_aops, !1, !"hpfs_aops", i1 false, i1 false}
!1 = !{!"../fs/hpfs/file.c", i32 247, i32 39}
!2 = !{ptr @hpfs_file_ops, !3, !"hpfs_file_ops", i1 false, i1 false}
!3 = !{!"../fs/hpfs/file.c", i32 258, i32 30}
!4 = !{ptr @hpfs_file_iops, !5, !"hpfs_file_iops", i1 false, i1 false}
!5 = !{!"../fs/hpfs/file.c", i32 271, i32 31}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hpfs/hpfs_fn.h", i32 378, i32 2}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/hpfs/file.c", i32 56, i32 51}
!10 = !{ptr @hpfs_iomap_ops, !11, !"hpfs_iomap_ops", i1 false, i1 false}
!11 = !{!"../fs/hpfs/file.c", i32 157, i32 31}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../fs/hpfs/file.c", i32 128, i32 6}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 765166, i64 765227}
!26 = !{i64 767898}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 768183}
!29 = !{i64 2153113138}
!30 = !{i64 2153112980}
!31 = !{i64 2153113308}
!32 = !{i64 2149900318}
!33 = !{!"auto-init"}
!34 = !{i64 2154446011, i64 2154446490, i64 2154446048, i64 2154446104, i64 2154446138, i64 2154446162, i64 2154446203, i64 2154446224, i64 2154446252, i64 2154446286}
