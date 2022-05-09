; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_symlink_remote.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_symlink_remote.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.list_head = type { ptr, ptr }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_dsymlink_hdr = type { i32, i32, i32, i32, %struct.uuid_t, i64, i64, i64 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }

@xfs_symlink_buf_ops = dso_local constant { %struct.xfs_buf_ops, [40 x i8] } { %struct.xfs_buf_ops { ptr @.str, %union.anon.87 { [2 x i32] [i32 0, i32 1481854029] }, ptr @xfs_symlink_read_verify, ptr @xfs_symlink_write_verify, ptr @xfs_symlink_verify }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xfs_symlink\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"BBTOB(bp->b_length) >= ifp->if_bytes + sizeof(struct xfs_dsymlink_hdr)\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fs/xfs/libxfs/xfs_symlink_remote.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ifp->if_format == XFS_DINODE_FMT_LOCAL\00", [57 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"xfs_symlink_buf_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 156, i32 26 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 157, i32 10 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 187, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [38 x i8] c"../fs/xfs/libxfs/xfs_symlink_remote.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 212, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @xfs_symlink_buf_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_symlink_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_symlink_blocks(ptr nocapture noundef readonly %mp, i32 noundef %pathlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 1
  %0 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_blocksize, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond.neg = select i1 %tobool.i.not, i32 0, i32 -56
  %sub = add i32 %cond.neg, %1
  %add = add i32 %pathlen, -1
  %sub1 = add i32 %add, %sub
  %div = sdiv i32 %sub1, %sub
  ret i32 %div
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_symlink_hdr_set(ptr nocapture noundef readonly %mp, i64 noundef %ino, i32 noundef %offset, i32 noundef %size, ptr nocapture noundef %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 48)
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1481854029, ptr %3, align 8
  %sl_offset = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %sl_offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %offset, ptr %sl_offset, align 4
  %sl_bytes = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %sl_bytes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %size, ptr %sl_bytes, align 8
  %sl_uuid = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %3, i32 0, i32 4
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 54
  %9 = call ptr @memcpy(ptr %sl_uuid, ptr %sb_meta_uuid, i32 16)
  %sl_owner = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %sl_owner to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %ino, ptr %sl_owner, align 8
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %11 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_maps.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %12, align 8
  %sl_blkno = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %sl_blkno to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %sl_blkno, align 8
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %16 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @xfs_symlink_buf_ops, ptr %b_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 56, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xfs_symlink_hdr_ok(i64 noundef %ino, i32 noundef %offset, i32 noundef %size, ptr nocapture noundef readonly %bp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %0 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_addr, align 4
  %sl_offset = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sl_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sl_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %offset)
  %cmp.not = icmp eq i32 %3, %offset
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sl_bytes = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %sl_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sl_bytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %size)
  %cmp1.not = icmp eq i32 %5, %size
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sl_owner = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %sl_owner to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sl_owner, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %ino)
  %cmp4.not = icmp eq i64 %7, %ino
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ %cmp4.not, %if.end3 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_symlink_read_verify(ptr noundef %bp) #4 align 64 {
entry:
  %zero.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %4 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_addr.i, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %6 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %7, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero.i.i.i) #9
  %8 = ptrtoint ptr %zero.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %zero.i.i.i, align 4
  %call.i.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %5, i32 noundef 12) #9
  %call1.i.i.i = call i32 @crc32c(i32 noundef %call.i.i.i, ptr noundef nonnull %zero.i.i.i, i32 noundef 4) #9
  %arrayidx.i.i.i = getelementptr i8, ptr %5, i32 16
  %sub.i.i.i = add i32 %shl.i, -16
  %call3.i.i.i = call i32 @crc32c(i32 noundef %call1.i.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef %sub.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero.i.i.i) #9
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 12
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %11 = xor i32 %call3.i.i.i, -1
  %12 = call i32 @llvm.bswap.i32(i32 %11) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i.i.not = icmp eq i32 %10, %12
  br i1 %cmp.i.i.not, label %if.else, label %__here

__here:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -74, ptr noundef blockaddress(@xfs_symlink_read_verify, %__here)) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call3 = call ptr @xfs_symlink_verify(ptr noundef %bp)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.else.cleanup_crit_edge, label %if.then5

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.else.cleanup_crit_edge, %__here, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_symlink_write_verify(ptr noundef %bp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %b_log_item = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 19
  %2 = ptrtoint ptr %b_log_item to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_log_item, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @xfs_symlink_verify(ptr noundef %bp)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call1) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %6 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_addr, align 4
  %li_lsn = getelementptr inbounds %struct.xfs_log_item, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %li_lsn to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %li_lsn, align 8
  %sl_lsn = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %sl_lsn to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %sl_lsn, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %b_addr.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %11 = ptrtoint ptr %b_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_addr.i, align 4
  %b_length.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %13 = ptrtoint ptr %b_length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %b_length.i, align 8
  %shl.i = shl i32 %14, 9
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 12
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %add.ptr.i.i.i, align 4
  %call.i.i.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef %12, i32 noundef %shl.i) #9
  %16 = xor i32 %call.i.i.i, -1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %add.ptr.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_symlink_verify(ptr noundef %bp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %__here, label %if.end

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  %call1 = tail call zeroext i1 @xfs_verify_magic(ptr noundef %bp, i32 noundef %7) #9
  br i1 %call1, label %if.end5, label %__here3

__here3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sl_uuid = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %3, i32 0, i32 4
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 54
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sl_uuid, ptr noundef dereferenceable(16) %sb_meta_uuid, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end10, label %__here8

__here8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !21
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %8 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_maps.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  %sl_blkno = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %sl_blkno to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sl_blkno, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp.not = icmp eq i64 %11, %13
  br i1 %cmp.not, label %if.end15, label %__here13

__here13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %sl_offset = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %sl_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sl_offset, align 4
  %sl_bytes = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %sl_bytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sl_bytes, align 8
  %add = add i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add)
  %cmp16 = icmp ugt i32 %add, 1023
  br i1 %cmp16, label %__here18, label %if.end20

__here18:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %sl_owner = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %sl_owner to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sl_owner, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp21 = icmp eq i64 %19, 0
  br i1 %cmp21, label %__here23, label %if.end25

__here23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %sl_lsn = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %3, i32 0, i32 7
  %20 = ptrtoint ptr %sl_lsn to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %sl_lsn, align 8
  %call26 = tail call zeroext i1 @xfs_log_check_lsn(ptr noundef %1, i64 noundef %21) #9
  br i1 %call26, label %if.end25.cleanup_crit_edge, label %__here28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

__here28:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  br label %cleanup

cleanup:                                          ; preds = %__here28, %if.end25.cleanup_crit_edge, %__here23, %__here18, %__here13, %__here8, %__here3, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_symlink_verify, %__here13), %__here13 ], [ blockaddress(@xfs_symlink_verify, %__here18), %__here18 ], [ blockaddress(@xfs_symlink_verify, %__here23), %__here23 ], [ blockaddress(@xfs_symlink_verify, %__here28), %__here28 ], [ blockaddress(@xfs_symlink_verify, %__here8), %__here8 ], [ blockaddress(@xfs_symlink_verify, %__here3), %__here3 ], [ blockaddress(@xfs_symlink_verify, %__here), %__here ], [ null, %if.end25.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_symlink_local_to_remote(ptr noundef %tp, ptr noundef %bp, ptr nocapture noundef readonly %ip, ptr nocapture noundef readonly %ifp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  tail call void @xfs_trans_buf_set_type(ptr noundef %tp, ptr noundef %bp, i32 noundef 9) #9
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %4 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %b_ops, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %5 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_addr, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_length = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 2
  %7 = ptrtoint ptr %b_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %b_length, align 8
  %shl = shl i32 %8, 9
  %conv3 = sext i32 %shl to i64
  %9 = ptrtoint ptr %ifp to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ifp, align 8
  %add = add i64 %10, 56
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv3)
  %cmp.not = icmp sgt i64 %add, %conv3
  br i1 %cmp.not, label %cond.false, label %if.end.cond.end_crit_edge, !prof !26

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 188) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %b_ops7 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 35
  %11 = ptrtoint ptr %b_ops7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @xfs_symlink_buf_ops, ptr %b_ops7, align 4
  %b_addr8 = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %12 = ptrtoint ptr %b_addr8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_addr8, align 4
  %14 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_features.i, align 8
  %and.i.i = and i64 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %cond.end.xfs_symlink_hdr_set.exit_crit_edge, label %if.end.i

cond.end.xfs_symlink_hdr_set.exit_crit_edge:      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfs_symlink_hdr_set.exit

if.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %ifp to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ifp, align 8
  %conv10 = trunc i64 %17 to i32
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_ino, align 8
  %20 = getelementptr inbounds i8, ptr %13, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 48)
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1481854029, ptr %13, align 8
  %sl_offset.i = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %13, i32 0, i32 1
  %23 = ptrtoint ptr %sl_offset.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %sl_offset.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv10, ptr %20, align 8
  %sl_uuid.i = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %13, i32 0, i32 4
  %sb_meta_uuid.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 54
  %25 = call ptr @memcpy(ptr %sl_uuid.i, ptr %sb_meta_uuid.i, i32 16)
  %sl_owner.i = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %13, i32 0, i32 5
  %26 = ptrtoint ptr %sl_owner.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %19, ptr %sl_owner.i, align 8
  %b_maps.i.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %27 = ptrtoint ptr %b_maps.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_maps.i.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %28, align 8
  %sl_blkno.i = getelementptr inbounds %struct.xfs_dsymlink_hdr, ptr %13, i32 0, i32 6
  %31 = ptrtoint ptr %sl_blkno.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %sl_blkno.i, align 8
  %32 = ptrtoint ptr %b_ops7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @xfs_symlink_buf_ops, ptr %b_ops7, align 4
  br label %xfs_symlink_hdr_set.exit

xfs_symlink_hdr_set.exit:                         ; preds = %if.end.i, %cond.end.xfs_symlink_hdr_set.exit_crit_edge
  %retval.0.i = phi i32 [ 56, %if.end.i ], [ 0, %cond.end.xfs_symlink_hdr_set.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %13, i32 %retval.0.i
  br label %cleanup

cleanup:                                          ; preds = %xfs_symlink_hdr_set.exit, %if.then
  %add.ptr.sink = phi ptr [ %add.ptr, %xfs_symlink_hdr_set.exit ], [ %6, %if.then ]
  %.sink40 = phi i32 [ 55, %xfs_symlink_hdr_set.exit ], [ -1, %if.then ]
  %if_u112 = getelementptr inbounds %struct.xfs_ifork, ptr %ifp, i32 0, i32 4
  %33 = ptrtoint ptr %if_u112 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %if_u112, align 4
  %35 = ptrtoint ptr %ifp to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ifp, align 8
  %conv14 = trunc i64 %36 to i32
  %37 = call ptr @memcpy(ptr %add.ptr.sink, ptr %34, i32 %conv14)
  %38 = load i64, ptr %ifp, align 8
  %39 = trunc i64 %38 to i32
  %conv18 = add i32 %.sink40, %39
  tail call void @xfs_trans_log_buf(ptr noundef %tp, ptr noundef %bp, i32 noundef 0, i32 noundef %conv18) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_buf_set_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_buf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_symlink_shortform_verify(ptr nocapture noundef readonly %ip) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  %if_u1 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %if_u1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_u1, align 4
  %2 = ptrtoint ptr %i_df to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_df, align 8
  %conv = trunc i64 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 6
  %4 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !27

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 212) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool4.not = icmp eq i32 %conv, 0
  br i1 %tobool4.not, label %__here, label %if.end

__here:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %conv)
  %6 = icmp ugt i32 %conv, 1024
  br i1 %6, label %__here10, label %if.end12

__here10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %sub = add nsw i32 %conv, -1
  %call = tail call ptr @memchr(ptr noundef %1, i32 noundef 0, i32 noundef %sub) #13
  %tobool13.not = icmp eq ptr %call, null
  br i1 %tobool13.not, label %if.end17, label %__here15

__here15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp19.not = icmp eq i8 %8, 0
  br i1 %cmp19.not, label %if.end17.cleanup_crit_edge, label %__here22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

__here22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  br label %cleanup

cleanup:                                          ; preds = %__here22, %if.end17.cleanup_crit_edge, %__here15, %__here10, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_symlink_shortform_verify, %__here10), %__here10 ], [ blockaddress(@xfs_symlink_shortform_verify, %__here15), %__here15 ], [ blockaddress(@xfs_symlink_shortform_verify, %__here22), %__here22 ], [ blockaddress(@xfs_symlink_shortform_verify, %__here), %__here ], [ null, %if.end17.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_verifier_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_magic(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_log_check_lsn(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_symlink_remote.c", i32 157, i32 10}
!2 = !{ptr @xfs_symlink_buf_ops, !3, !"xfs_symlink_buf_ops", i1 false, i1 false}
!3 = !{!"../fs/xfs/libxfs/xfs_symlink_remote.c", i32 156, i32 26}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/libxfs/xfs_symlink_remote.c", i32 187, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_symlink_remote.c", i32 212, i32 2}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 2155710411}
!19 = !{i64 2155709356}
!20 = !{i64 2155709447}
!21 = !{i64 2155709538}
!22 = !{i64 2155709686}
!23 = !{i64 2155709897}
!24 = !{i64 2155709988}
!25 = !{i64 2155710134}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2155715700}
!29 = !{i64 2155715796}
!30 = !{i64 2155715887}
!31 = !{i64 2155715978}
