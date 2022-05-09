; ModuleID = '/llk/IR_all_yes/fs/omfs/file.c_pt.bc'
source_filename = "../fs/omfs/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type opaque
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.omfs_extent = type { i64, i32, i32, %struct.omfs_extent_entry }
%struct.omfs_extent_entry = type { i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.omfs_sb_info = type { i64, i64, i64, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.kuid_t, %struct.kgid_t, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.54, %struct.list_head, %struct.list_head, %union.anon.55 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.54 = type { %struct.list_head }
%union.anon.55 = type { %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }

@omfs_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr @generic_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_mmap, i32 0, ptr null, ptr null, ptr null, ptr @generic_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@omfs_file_inops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omfs_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@omfs_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @omfs_writepage, ptr @omfs_readpage, ptr @omfs_writepages, ptr @__set_page_dirty_buffers, ptr null, ptr @omfs_readahead, ptr @omfs_write_begin, ptr @generic_write_end, ptr @omfs_bmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"omfs_file_operations\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 337, i32 30 }
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"omfs_aops\00", align 1
@___asan_gen_.5 = private constant [18 x i8] c"../fs/omfs/file.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 374, i32 39 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @omfs_file_operations, ptr @omfs_aops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omfs_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omfs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @omfs_make_empty_table(ptr nocapture noundef readonly %bh, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %offset
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %arrayidx, align 8
  %e_extent_count = getelementptr inbounds %struct.omfs_extent, ptr %arrayidx, i32 0, i32 1
  %3 = ptrtoint ptr %e_extent_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %e_extent_count, align 8
  %e_fill = getelementptr inbounds %struct.omfs_extent, ptr %arrayidx, i32 0, i32 2
  %4 = ptrtoint ptr %e_fill to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 34, ptr %e_fill, align 4
  %e_entry = getelementptr inbounds %struct.omfs_extent, ptr %arrayidx, i32 0, i32 3
  %5 = call ptr @memset(ptr %e_entry, i32 255, i32 16)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omfs_shrink_inode(ptr nocapture noundef readonly %inode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %5 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.not = icmp eq i64 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @omfs_bread(ptr noundef %1, i64 noundef %conv) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call4, i32 0, i32 5
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  %s_sys_blocksize.i = getelementptr inbounds %struct.omfs_sb_info, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %s_sys_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_sys_blocksize.i, align 8
  %call998 = tail call i32 @omfs_is_bad(ptr noundef %3, ptr noundef %9, i64 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call998)
  %tobool10.not99 = icmp eq i32 %call998, 0
  br i1 %tobool10.not99, label %if.end12.lr.ph, label %if.end6.brelse.exit92_crit_edge

if.end6.brelse.exit92_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit92

if.end12.lr.ph:                                   ; preds = %if.end6
  %sub1.i = add i32 %11, -496
  %arrayidx = getelementptr i8, ptr %9, i32 464
  %s_mirrors = getelementptr inbounds %struct.omfs_sb_info, ptr %3, i32 0, i32 4
  br label %if.end12

if.end12:                                         ; preds = %if.end40.if.end12_crit_edge, %if.end12.lr.ph
  %max_extents.0.in.in103 = phi i32 [ %sub1.i, %if.end12.lr.ph ], [ %sub1.i87, %if.end40.if.end12_crit_edge ]
  %next.0102 = phi i64 [ %conv, %if.end12.lr.ph ], [ %15, %if.end40.if.end12_crit_edge ]
  %bh.0101 = phi ptr [ %call4, %if.end12.lr.ph ], [ %call37, %if.end40.if.end12_crit_edge ]
  %oe.0100 = phi ptr [ %arrayidx, %if.end12.lr.ph ], [ %arrayidx42, %if.end40.if.end12_crit_edge ]
  %b_data8104 = getelementptr inbounds %struct.buffer_head, ptr %bh.0101, i32 0, i32 5
  %max_extents.0.in = lshr i32 %max_extents.0.in.in103, 4
  %max_extents.0 = add nuw nsw i32 %max_extents.0.in, 1
  %e_extent_count = getelementptr inbounds %struct.omfs_extent, ptr %oe.0100, i32 0, i32 1
  %12 = ptrtoint ptr %e_extent_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %e_extent_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %max_extents.0)
  %cmp13 = icmp ugt i32 %13, %max_extents.0
  br i1 %cmp13, label %if.end12.brelse.exit92_crit_edge, label %if.end16

if.end12.brelse.exit92_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit92

if.end16:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %oe.0100 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %oe.0100, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp1894 = icmp ugt i32 %13, 1
  br i1 %cmp1894, label %for.body.preheader, label %if.end16.brelse.exit_crit_edge

if.end16.brelse.exit_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

for.body.preheader:                               ; preds = %if.end16
  %e_entry = getelementptr inbounds %struct.omfs_extent, ptr %oe.0100, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %extent_count.096 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %13, %for.body.preheader ]
  %entry1.095 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %e_entry, %for.body.preheader ]
  %16 = ptrtoint ptr %entry1.095 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %entry1.095, align 8
  %e_blocks = getelementptr inbounds %struct.omfs_extent_entry, ptr %entry1.095, i32 0, i32 1
  %18 = ptrtoint ptr %e_blocks to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %e_blocks, align 8
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %conv21 = trunc i64 %19 to i32
  %call22 = tail call i32 @omfs_clear_range(ptr noundef %21, i64 noundef %17, i32 noundef %conv21) #6
  %incdec.ptr = getelementptr %struct.omfs_extent_entry, ptr %entry1.095, i32 1
  %dec = add i32 %extent_count.096, -1
  %cmp18 = icmp ugt i32 %dec, 1
  br i1 %cmp18, label %for.body.for.body_crit_edge, label %for.body.brelse.exit_crit_edge

for.body.brelse.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

brelse.exit:                                      ; preds = %for.body.brelse.exit_crit_edge, %if.end16.brelse.exit_crit_edge
  %22 = ptrtoint ptr %b_data8104 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data8104, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %oe.0100 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %23 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %arrayidx.i = getelementptr i8, ptr %23, i32 %sub.ptr.sub
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 -1, ptr %arrayidx.i, align 8
  %e_extent_count.i = getelementptr inbounds %struct.omfs_extent, ptr %arrayidx.i, i32 0, i32 1
  %25 = ptrtoint ptr %e_extent_count.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %e_extent_count.i, align 8
  %e_fill.i = getelementptr inbounds %struct.omfs_extent, ptr %arrayidx.i, i32 0, i32 2
  %26 = ptrtoint ptr %e_fill.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 34, ptr %e_fill.i, align 4
  %e_entry.i = getelementptr inbounds %struct.omfs_extent, ptr %arrayidx.i, i32 0, i32 3
  %27 = call ptr @memset(ptr %e_entry.i, i32 255, i32 16)
  tail call void @mark_buffer_dirty(ptr noundef nonnull %bh.0101) #6
  tail call void @__brelse(ptr noundef nonnull %bh.0101) #6
  %28 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_ino, align 8
  %conv25 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %next.0102, i64 %conv25)
  %cmp26.not = icmp eq i64 %next.0102, %conv25
  br i1 %cmp26.not, label %brelse.exit.if.end31_crit_edge, label %if.then28

brelse.exit.if.end31_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then28:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb, align 4
  %32 = ptrtoint ptr %s_mirrors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_mirrors, align 4
  %call30 = tail call i32 @omfs_clear_range(ptr noundef %31, i64 noundef %next.0102, i32 noundef %33) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %brelse.exit.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %15)
  %cmp32 = icmp eq i64 %15, -1
  br i1 %cmp32, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %34 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb, align 4
  %call37 = tail call ptr @omfs_bread(ptr noundef %35, i64 noundef %15) #6
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end35.cleanup_crit_edge, label %if.end40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %b_data41 = getelementptr inbounds %struct.buffer_head, ptr %call37, i32 0, i32 5
  %36 = ptrtoint ptr %b_data41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %b_data41, align 4
  %arrayidx42 = getelementptr i8, ptr %37, i32 64
  %38 = ptrtoint ptr %s_sys_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_sys_blocksize.i, align 8
  %sub1.i87 = add i32 %39, -96
  %call9 = tail call i32 @omfs_is_bad(ptr noundef %3, ptr noundef %37, i64 noundef %15) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end40.if.end12_crit_edge, label %if.end40.brelse.exit92_crit_edge

if.end40.brelse.exit92_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit92

if.end40.if.end12_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

brelse.exit92:                                    ; preds = %if.end40.brelse.exit92_crit_edge, %if.end12.brelse.exit92_crit_edge, %if.end6.brelse.exit92_crit_edge
  %bh.0.lcssa = phi ptr [ %call4, %if.end6.brelse.exit92_crit_edge ], [ %bh.0101, %if.end12.brelse.exit92_crit_edge ], [ %call37, %if.end40.brelse.exit92_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %bh.0.lcssa) #6
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit92, %if.end35.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %brelse.exit92 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ -5, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omfs_bread(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omfs_is_bad(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omfs_clear_range(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omfs_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %4 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ia_size, align 8
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %land.lhs.true
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !15
  %and.i.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  %7 = tail call ptr @llvm.returnaddress(i32 0) #6
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %8) #6
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %8) #6
  tail call void @trace_hardirqs_on() #6
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call ptr @llvm.returnaddress(i32 0) #6
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %10) #6
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %10) #6
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !16
  %and.i.i.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !17

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #6, !srcloc !18
  %12 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !20
  %14 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %15, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %13, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %15, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !21
  %16 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !22
  %18 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %19, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %17)
  %cmp.not = icmp eq i64 %5, %17
  br i1 %cmp.not, label %i_size_read.exit.if.end11_crit_edge, label %if.then4

i_size_read.exit.if.end11_crit_edge:              ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then4:                                         ; preds = %i_size_read.exit
  %20 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ia_size, align 8
  %call6 = tail call i32 @inode_newsize_ok(ptr noundef %1, i64 noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ia_size, align 8
  tail call void @truncate_setsize(ptr noundef %1, i64 noundef %23) #6
  %call.i = tail call i32 @omfs_shrink_inode(ptr noundef %1) #6
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %i_size_read.exit.if.end11_crit_edge, %if.end.if.end11_crit_edge
  tail call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %attr) #6
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call1, %entry.cleanup_crit_edge ], [ %call6, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omfs_writepage(ptr noundef %page, ptr noundef %wbc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @omfs_get_block, ptr noundef %wbc) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omfs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_read_full_page(ptr noundef %page, ptr noundef nonnull @omfs_get_block) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omfs_writepages(ptr noundef %mapping, ptr noundef %wbc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_writepages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull @omfs_get_block) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omfs_readahead(ptr noundef %rac) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpage_readahead(ptr noundef %rac, ptr noundef nonnull @omfs_get_block) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omfs_write_begin(ptr nocapture noundef readnone %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr nocapture noundef readnone %fsdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_begin(ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef nonnull @omfs_get_block) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !23

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  tail call fastcc void @omfs_write_failed(ptr noundef %mapping, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @omfs_bmap(ptr noundef %mapping, i64 noundef %block) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @omfs_get_block) #6
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omfs_get_block(ptr noundef %inode, i64 noundef %block, ptr noundef %bh_result, i32 noundef %create) #2 align 64 {
entry:
  %new_block.i = alloca i64, align 8
  %new_count.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %4 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_size, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %6 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %7 to i32
  %shr = lshr i32 %5, %conv
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %conv3 = zext i32 %9 to i64
  %call4 = tail call ptr @omfs_bread(ptr noundef %1, i64 noundef %conv3) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call4, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %s_sys_blocksize.i = getelementptr inbounds %struct.omfs_sb_info, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %s_sys_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_sys_blocksize.i, align 8
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  %conv7 = zext i32 %15 to i64
  %call9131 = tail call i32 @omfs_is_bad(ptr noundef %3, ptr noundef %11, i64 noundef %conv7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9131)
  %tobool10.not132 = icmp eq i32 %call9131, 0
  br i1 %tobool10.not132, label %if.end12.preheader, label %if.end.brelse.exit108_crit_edge

if.end.brelse.exit108_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit108

if.end12.preheader:                               ; preds = %if.end
  %sub1.i = add i32 %13, -496
  %arrayidx = getelementptr i8, ptr %11, i32 464
  br label %if.end12

if.end12:                                         ; preds = %if.end37.if.end12_crit_edge, %if.end12.preheader
  %oe.0136 = phi ptr [ %arrayidx39, %if.end37.if.end12_crit_edge ], [ %arrayidx, %if.end12.preheader ]
  %max_extents.0.in.in135 = phi i32 [ %sub1.i86, %if.end37.if.end12_crit_edge ], [ %sub1.i, %if.end12.preheader ]
  %bh.0134 = phi ptr [ %call34, %if.end37.if.end12_crit_edge ], [ %call4, %if.end12.preheader ]
  %max_extents.0.in = lshr i32 %max_extents.0.in.in135, 4
  %max_extents.0 = add nuw nsw i32 %max_extents.0.in, 1
  %e_extent_count = getelementptr inbounds %struct.omfs_extent, ptr %oe.0136, i32 0, i32 1
  %16 = ptrtoint ptr %e_extent_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %e_extent_count, align 8
  %18 = ptrtoint ptr %oe.0136 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %oe.0136, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %max_extents.0)
  %cmp = icmp ugt i32 %17, %max_extents.0
  br i1 %cmp, label %if.end12.brelse.exit108_crit_edge, label %if.end15

if.end12.brelse.exit108_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit108

if.end15:                                         ; preds = %if.end12
  %e_entry = getelementptr inbounds %struct.omfs_extent, ptr %oe.0136, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp44.i = icmp sgt i32 %17, 1
  br i1 %cmp44.i, label %for.body.lr.ph.i, label %if.end15.if.end28_crit_edge

if.end15.if.end28_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

for.body.lr.ph.i:                                 ; preds = %if.end15
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_block_shift.i.i = getelementptr inbounds %struct.omfs_sb_info, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %s_block_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_block_shift.i.i, align 8
  %sh_prom.i.i = zext i32 %25 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %searched.048.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %.pre53.i, %for.inc.i.for.body.i_crit_edge ]
  %count.addr.047.i = phi i32 [ %17, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %ent.addr.045.i = phi ptr [ %e_entry, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %e_blocks.i = getelementptr inbounds %struct.omfs_extent_entry, ptr %ent.addr.045.i, i32 0, i32 1
  %26 = ptrtoint ptr %e_blocks.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %e_blocks.i, align 8
  %shl.i.i = shl i64 %27, %sh_prom.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %searched.048.i, i64 %block)
  %cmp2.not.i = icmp ule i64 %searched.048.i, %block
  %28 = shl i64 %shl.i.i, 32
  %.pre.i = ashr exact i64 %28, 32
  %.pre53.i = add i64 %.pre.i, %searched.048.i
  call void @__sanitizer_cov_trace_cmp8(i64 %.pre53.i, i64 %block)
  %cmp5.i = icmp ugt i64 %.pre53.i, %block
  %or.cond.i = select i1 %cmp2.not.i, i1 %cmp5.i, i1 false
  br i1 %or.cond.i, label %find_block.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.omfs_extent_entry, ptr %ent.addr.045.i, i32 1
  %dec.i = add nsw i32 %count.addr.047.i, -1
  %cmp.i = icmp sgt i32 %count.addr.047.i, 2
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end28_crit_edge

for.inc.i.if.end28_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

find_block.exit:                                  ; preds = %for.body.i
  %29 = ptrtoint ptr %ent.addr.045.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ent.addr.045.i, align 8
  %shl.i34.i = shl i64 %30, %sh_prom.i.i
  %add13.i = sub i64 %block, %searched.048.i
  %sub14.i = add i64 %shl.i34.i, %add13.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub14.i)
  %cmp17.not = icmp eq i64 %sub14.i, 0
  br i1 %cmp17.not, label %find_block.exit.if.end28_crit_edge, label %if.then19

find_block.exit.if.end28_crit_edge:               ; preds = %find_block.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then19:                                        ; preds = %find_block.exit
  %conv.le.i.le = trunc i64 %shl.i.i to i32
  %sub.neg.i.le = sub i64 %searched.048.i, %block
  %31 = trunc i64 %sub.neg.i.le to i32
  %conv9.i.le = add i32 %conv.le.i.le, %31
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %34 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %bh_result, align 4
  %36 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then19.map_bh.exit_crit_edge

if.then19.map_bh.exit_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #6
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %if.then19.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 26
  %37 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %39 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %40 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %sub14.i, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 3
  %41 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_blocksize.i, align 16
  %43 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %b_size, align 8
  %44 = tail call i32 @llvm.smin.i32(i32 %conv9.i.le, i32 %shr)
  %45 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %i_blkbits, align 2
  %conv26 = zext i8 %46 to i32
  %shl = shl i32 %44, %conv26
  %47 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shl, ptr %b_size, align 8
  br label %brelse.exit108

if.end28:                                         ; preds = %find_block.exit.if.end28_crit_edge, %for.inc.i.if.end28_crit_edge, %if.end15.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %19)
  %cmp29 = icmp eq i64 %19, -1
  br i1 %cmp29, label %for.end, label %brelse.exit

brelse.exit:                                      ; preds = %if.end28
  tail call void @__brelse(ptr noundef nonnull %bh.0134) #6
  %48 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb, align 4
  %call34 = tail call ptr @omfs_bread(ptr noundef %49, i64 noundef %19) #6
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %brelse.exit.out_crit_edge, label %if.end37

brelse.exit.out_crit_edge:                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end37:                                         ; preds = %brelse.exit
  %b_data38 = getelementptr inbounds %struct.buffer_head, ptr %call34, i32 0, i32 5
  %50 = ptrtoint ptr %b_data38 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %b_data38, align 4
  %arrayidx39 = getelementptr i8, ptr %51, i32 64
  %52 = ptrtoint ptr %s_sys_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_sys_blocksize.i, align 8
  %sub1.i86 = add i32 %53, -96
  %call9 = tail call i32 @omfs_is_bad(ptr noundef %3, ptr noundef %51, i64 noundef %19) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end37.if.end12_crit_edge, label %if.end37.brelse.exit108_crit_edge

if.end37.brelse.exit108_crit_edge:                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit108

if.end37.if.end12_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.end:                                          ; preds = %if.end28
  %e_extent_count.le = getelementptr inbounds %struct.omfs_extent, ptr %oe.0136, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool41.not = icmp eq i32 %create, 0
  br i1 %tobool41.not, label %for.end.brelse.exit108_crit_edge, label %if.then42

for.end.brelse.exit108_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit108

if.then42:                                        ; preds = %for.end
  %54 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i90 = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 33
  %56 = ptrtoint ptr %s_fs_info.i.i90 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_fs_info.i.i90, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_block.i) #6
  %58 = ptrtoint ptr %new_block.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 0, ptr %new_block.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_count.i) #6
  %59 = ptrtoint ptr %new_count.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %new_count.i, align 4, !annotation !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i91 = icmp eq i32 %17, 0
  br i1 %cmp.i91, label %if.then42.omfs_grow_extent.exit.thread_crit_edge, label %if.end.i

if.then42.omfs_grow_extent.exit.thread_crit_edge: ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %omfs_grow_extent.exit.thread

if.end.i:                                         ; preds = %if.then42
  %add.ptr.i = getelementptr %struct.omfs_extent_entry, ptr %e_entry, i32 %17
  %add.ptr2.i = getelementptr %struct.omfs_extent_entry, ptr %add.ptr.i, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp3.not.i = icmp eq i32 %17, 1
  br i1 %cmp3.not.i, label %if.end.i.if.end15.i_crit_edge, label %if.then4.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then4.i:                                       ; preds = %if.end.i
  %add.ptr5.i = getelementptr %struct.omfs_extent_entry, ptr %add.ptr2.i, i32 -1
  %60 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %add.ptr5.i, align 8
  %e_blocks.i92 = getelementptr inbounds %struct.omfs_extent_entry, ptr %add.ptr5.i, i32 0, i32 1
  %62 = ptrtoint ptr %e_blocks.i92 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %e_blocks.i92, align 8
  %add.i93 = add i64 %63, %61
  %64 = ptrtoint ptr %new_block.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %add.i93, ptr %new_block.i, align 8
  %call7.i = tail call i32 @omfs_allocate_block(ptr noundef %55, i64 noundef %add.i93) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i94 = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i94, label %if.then4.i.if.end15.i_crit_edge, label %if.then8.i

if.then4.i.if.end15.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then8.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %e_blocks.i92 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %e_blocks.i92, align 8
  %add.i.i = add i64 %66, 1
  store i64 %add.i.i, ptr %e_blocks.i92, align 8
  %e_blocks10.i = getelementptr inbounds %struct.omfs_extent_entry, ptr %add.ptr2.i, i32 0, i32 1
  %67 = ptrtoint ptr %e_blocks10.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %e_blocks10.i, align 8
  %neg12.i = add i64 %68, -1
  store i64 %neg12.i, ptr %e_blocks10.i, align 8
  br label %if.then46

if.end15.i:                                       ; preds = %if.then4.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %s_sys_blocksize.i.i = getelementptr inbounds %struct.omfs_sb_info, ptr %57, i32 0, i32 5
  %69 = ptrtoint ptr %s_sys_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %s_sys_blocksize.i.i, align 8
  %sub1.i.i = add i32 %70, -496
  %div2.i.i = lshr i32 %sub1.i.i, 4
  %71 = ptrtoint ptr %e_extent_count.le to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %e_extent_count.le, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %div2.i.i)
  %cmp18.i = icmp ugt i32 %72, %div2.i.i
  br i1 %cmp18.i, label %if.end15.i.omfs_grow_extent.exit.thread_crit_edge, label %if.end20.i

if.end15.i.omfs_grow_extent.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %omfs_grow_extent.exit.thread

if.end20.i:                                       ; preds = %if.end15.i
  %73 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i_sb, align 4
  %s_clustersize.i = getelementptr inbounds %struct.omfs_sb_info, ptr %57, i32 0, i32 6
  %75 = ptrtoint ptr %s_clustersize.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %s_clustersize.i, align 4
  %call22.i = call i32 @omfs_allocate_range(ptr noundef %74, i32 noundef 1, i32 noundef %76, ptr noundef nonnull %new_block.i, ptr noundef nonnull %new_count.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end20.i.omfs_grow_extent.exit.thread_crit_edge

if.end20.i.omfs_grow_extent.exit.thread_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %omfs_grow_extent.exit.thread

if.end25.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i95 = getelementptr %struct.omfs_extent_entry, ptr %add.ptr2.i, i32 1
  %77 = call ptr @memcpy(ptr %incdec.ptr.i95, ptr %add.ptr2.i, i32 16)
  %78 = ptrtoint ptr %new_block.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %new_block.i, align 8
  %80 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %add.ptr2.i, align 8
  %81 = ptrtoint ptr %new_count.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %new_count.i, align 4
  %conv.i = sext i32 %82 to i64
  %e_blocks27.i = getelementptr inbounds %struct.omfs_extent_entry, ptr %add.ptr2.i, i32 0, i32 1
  %83 = ptrtoint ptr %e_blocks27.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv.i, ptr %e_blocks27.i, align 8
  %e_blocks28.i = getelementptr inbounds %struct.omfs_extent_entry, ptr %incdec.ptr.i95, i32 0, i32 1
  %84 = ptrtoint ptr %e_blocks28.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %e_blocks28.i, align 8
  %neg32.i = sub i64 %85, %conv.i
  store i64 %neg32.i, ptr %e_blocks28.i, align 8
  %86 = ptrtoint ptr %e_extent_count.le to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %e_extent_count.le, align 4
  %add.i65.i = add i32 %87, 1
  store i32 %add.i65.i, ptr %e_extent_count.le, align 4
  br label %if.then46

omfs_grow_extent.exit.thread:                     ; preds = %if.end20.i.omfs_grow_extent.exit.thread_crit_edge, %if.end15.i.omfs_grow_extent.exit.thread_crit_edge, %if.then42.omfs_grow_extent.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call22.i, %if.end20.i.omfs_grow_extent.exit.thread_crit_edge ], [ -5, %if.end15.i.omfs_grow_extent.exit.thread_crit_edge ], [ -5, %if.then42.omfs_grow_extent.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_count.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_block.i) #6
  br label %brelse.exit108

if.then46:                                        ; preds = %if.end25.i, %if.then8.i
  %88 = ptrtoint ptr %new_block.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %new_block.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_count.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_block.i) #6
  call void @mark_buffer_dirty(ptr noundef nonnull %bh.0134) #6
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #6
  %90 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i_sb, align 4
  %s_block_shift.i = getelementptr inbounds %struct.omfs_sb_info, ptr %3, i32 0, i32 7
  %92 = ptrtoint ptr %s_block_shift.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %s_block_shift.i, align 8
  %sh_prom.i = zext i32 %93 to i64
  %shl.i = shl i64 %89, %sh_prom.i
  %94 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %bh_result, align 4
  %96 = and i32 %95, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i.i97 = icmp eq i32 %96, 0
  br i1 %tobool.not.i.i97, label %if.then.i.i98, label %if.then46.map_bh.exit104_crit_edge

if.then46.map_bh.exit104_crit_edge:               ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %map_bh.exit104

if.then.i.i98:                                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #6
  br label %map_bh.exit104

map_bh.exit104:                                   ; preds = %if.then.i.i98, %if.then46.map_bh.exit104_crit_edge
  %s_bdev.i99 = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 26
  %97 = ptrtoint ptr %s_bdev.i99 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %s_bdev.i99, align 4
  %b_bdev.i100 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %99 = ptrtoint ptr %b_bdev.i100 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %b_bdev.i100, align 8
  %b_blocknr.i101 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %100 = ptrtoint ptr %b_blocknr.i101 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %shl.i, ptr %b_blocknr.i101, align 8
  %s_blocksize.i102 = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 3
  %101 = ptrtoint ptr %s_blocksize.i102 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %s_blocksize.i102, align 16
  %103 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %b_size, align 8
  br label %brelse.exit108

brelse.exit108:                                   ; preds = %map_bh.exit104, %omfs_grow_extent.exit.thread, %for.end.brelse.exit108_crit_edge, %if.end37.brelse.exit108_crit_edge, %map_bh.exit, %if.end12.brelse.exit108_crit_edge, %if.end.brelse.exit108_crit_edge
  %bh.0123 = phi ptr [ %bh.0134, %map_bh.exit ], [ %bh.0134, %map_bh.exit104 ], [ %bh.0134, %for.end.brelse.exit108_crit_edge ], [ %bh.0134, %omfs_grow_extent.exit.thread ], [ %call4, %if.end.brelse.exit108_crit_edge ], [ %call34, %if.end37.brelse.exit108_crit_edge ], [ %bh.0134, %if.end12.brelse.exit108_crit_edge ]
  %ret.0 = phi i32 [ 0, %map_bh.exit ], [ 0, %map_bh.exit104 ], [ -5, %for.end.brelse.exit108_crit_edge ], [ %retval.0.i.ph, %omfs_grow_extent.exit.thread ], [ -5, %if.end.brelse.exit108_crit_edge ], [ -5, %if.end12.brelse.exit108_crit_edge ], [ -5, %if.end37.brelse.exit108_crit_edge ]
  call void @__brelse(ptr noundef nonnull %bh.0123) #6
  br label %out

out:                                              ; preds = %brelse.exit108, %brelse.exit.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %brelse.exit108 ], [ -5, %entry.out_crit_edge ], [ -5, %brelse.exit.out_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omfs_allocate_block(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omfs_allocate_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_writepages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_begin(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omfs_write_failed(ptr nocapture noundef readonly %mapping, i64 noundef %to) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %to)
  %cmp = icmp slt i64 %3, %to
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @truncate_pagecache(ptr noundef %1, i64 noundef %3) #6
  %call.i = tail call i32 @omfs_shrink_inode(ptr noundef %1) #6
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @omfs_file_operations, !1, !"omfs_file_operations", i1 false, i1 false}
!1 = !{!"../fs/omfs/file.c", i32 337, i32 30}
!2 = !{ptr @omfs_file_inops, !3, !"omfs_file_inops", i1 false, i1 false}
!3 = !{!"../fs/omfs/file.c", i32 370, i32 31}
!4 = !{ptr @omfs_aops, !5, !"omfs_aops", i1 false, i1 false}
!5 = !{!"../fs/omfs/file.c", i32 374, i32 39}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 751188, i64 751249}
!16 = !{i64 753920}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 754205}
!19 = !{i64 2152710612}
!20 = !{i64 2152710454}
!21 = !{i64 2152710782}
!22 = !{i64 2149979314}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{!"auto-init"}
