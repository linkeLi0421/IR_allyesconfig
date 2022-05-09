; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/symlink.c_pt.bc'
source_filename = "../fs/xfs/scrub/symlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_setup_symlink(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1025, i32 noundef 3520, i32 noundef -1) #8
  %buf = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i.i, ptr %buf, align 4
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @xchk_setup_inode_contents(ptr noundef %sc, i32 noundef 0) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_inode_contents(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_symlink(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ip1 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %0 = ptrtoint ptr %ip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #5
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %error, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %i_vnode.i, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %5)
  %cmp = icmp eq i16 %5, -24576
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_disk_size, align 8
  %8 = add i64 %7, -1025
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1024, i64 %8)
  %9 = icmp ult i64 %8, -1024
  br i1 %9, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef 0) #5
  br label %out

if.end8:                                          ; preds = %if.end
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 6
  %10 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp10 = icmp eq i8 %11, 1
  br i1 %cmp10, label %if.then12, label %if.end53

if.then12:                                        ; preds = %if.end8
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp14.not = icmp eq i8 %13, 0
  br i1 %cmp14.not, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %if.then12
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sb_inodesize, align 8
  %conv18 = zext i16 %17 to i32
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %15, i32 0, i32 61
  %18 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond.neg = select i1 %tobool.i.not, i32 -100, i32 -176
  %sub = add nsw i32 %cond.neg, %conv18
  %conv23 = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv23)
  %cmp24 = icmp ugt i64 %7, %conv23
  br i1 %cmp24, label %cond.end.if.then51_crit_edge, label %cond.false35

cond.end.if.then51_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51

cond.end.thread:                                  ; preds = %if.then12
  %conv13 = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %conv13, 3
  %conv2395 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv2395)
  %cmp2496 = icmp ugt i64 %7, %conv2395
  br i1 %cmp2496, label %cond.end.thread.if.then51_crit_edge, label %cond.end.thread.cond.end45_crit_edge

cond.end.thread.cond.end45_crit_edge:             ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end45

cond.end.thread.if.then51_crit_edge:              ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51

cond.false35:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %sb_inodesize38 = getelementptr inbounds %struct.xfs_sb, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %sb_inodesize38 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sb_inodesize38, align 8
  %conv39 = zext i16 %23 to i32
  %m_features.i91 = getelementptr inbounds %struct.xfs_mount, ptr %21, i32 0, i32 61
  %24 = ptrtoint ptr %m_features.i91 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %m_features.i91, align 8
  %and.i92 = and i64 %25, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i92)
  %tobool.i93.not = icmp eq i64 %and.i92, 0
  %cond43.neg = select i1 %tobool.i93.not, i32 -100, i32 -176
  %sub44 = add nsw i32 %cond43.neg, %conv39
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false35, %cond.end.thread.cond.end45_crit_edge
  %cond46 = phi i32 [ %sub44, %cond.false35 ], [ %shl, %cond.end.thread.cond.end45_crit_edge ]
  %.in = getelementptr inbounds %struct.xfs_inode, ptr %1, i32 0, i32 8, i32 4
  %26 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.in, align 4
  %call47 = tail call i32 @strnlen(ptr noundef %27, i32 noundef %cond46) #9
  %conv48 = zext i32 %call47 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv48)
  %cmp49 = icmp ugt i64 %7, %conv48
  br i1 %cmp49, label %cond.end45.if.then51_crit_edge, label %cond.end45.out_crit_edge

cond.end45.out_crit_edge:                         ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

cond.end45.if.then51_crit_edge:                   ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51

if.then51:                                        ; preds = %cond.end45.if.then51_crit_edge, %cond.end.thread.if.then51_crit_edge, %cond.end.if.then51_crit_edge
  tail call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef 0) #5
  br label %out

if.end53:                                         ; preds = %if.end8
  %buf = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 6
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf, align 4
  %call55 = tail call i32 @xfs_readlink_bmap_ilocked(ptr noundef %1, ptr noundef %29) #5
  %30 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call55, ptr %error, align 4
  %call56 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %sc, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %error) #5
  br i1 %call56, label %if.end58, label %if.end53.out_crit_edge

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end58:                                         ; preds = %if.end53
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf, align 4
  %call60 = call i32 @strnlen(ptr noundef %32, i32 noundef 1024) #9
  %conv61 = zext i32 %call60 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv61)
  %cmp62 = icmp ugt i64 %7, %conv61
  br i1 %cmp62, label %if.then64, label %if.end58.out_crit_edge

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then64:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef 0) #5
  br label %out

out:                                              ; preds = %if.then64, %if.end58.out_crit_edge, %if.end53.out_crit_edge, %if.then51, %cond.end45.out_crit_edge, %if.then7
  %33 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %34, %out ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_fblock_set_corrupt(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_readlink_bmap_ilocked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_fblock_process_error(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nobuiltin }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
