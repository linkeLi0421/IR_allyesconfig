; ModuleID = '/llk/IR_all_yes/fs/squashfs/xattr_id.c_pt.bc'
source_filename = "../fs/squashfs/xattr_id.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.squashfs_xattr_id = type { i64, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.squashfs_xattr_id_table = type { i64, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @squashfs_xattr_lookup(ptr noundef %sb, i32 noundef %index, ptr nocapture noundef writeonly %count, ptr nocapture noundef writeonly %size, ptr nocapture noundef writeonly %xattr) local_unnamed_addr #0 align 64 {
entry:
  %offset = alloca i32, align 4
  %start_block = alloca i64, align 8
  %id = alloca %struct.squashfs_xattr_id, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %mul = shl i32 %index, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #4
  %rem = and i32 %mul, 8176
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rem, ptr %offset, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start_block) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %id) #4
  %3 = getelementptr inbounds %struct.squashfs_xattr_id, ptr %id, i32 0, i32 1
  %4 = getelementptr inbounds %struct.squashfs_xattr_id, ptr %id, i32 0, i32 2
  %xattr_ids = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 22
  %5 = call ptr @memset(ptr %id, i32 255, i32 16)
  %6 = ptrtoint ptr %xattr_ids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xattr_ids, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %index)
  %cmp.not = icmp ugt i32 %7, %index
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %div18 = lshr i32 %mul, 13
  %xattr_id_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %xattr_id_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xattr_id_table, align 4
  %arrayidx = getelementptr i64, ptr %9, i32 %div18
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %13 = ptrtoint ptr %start_block to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %start_block, align 8
  %call = call i32 @squashfs_read_metadata(ptr noundef %sb, ptr noundef nonnull %id, ptr noundef nonnull %start_block, ptr noundef nonnull %offset, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %id, align 8
  %16 = call i64 @llvm.bswap.i64(i64 %15)
  %17 = ptrtoint ptr %xattr to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %xattr, align 8
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %4, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %size, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 8
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %id) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start_block) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @squashfs_read_xattr_id_table(ptr noundef %sb, i64 noundef %table_start, ptr nocapture noundef %xattr_table_start, ptr nocapture noundef %xattr_ids) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %call = tail call ptr @squashfs_read_table(ptr noundef %sb, i64 noundef %table_start, i32 noundef 16) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %call, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3)
  %5 = ptrtoint ptr %xattr_table_start to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %xattr_table_start, align 8
  %xattr_ids3 = getelementptr inbounds %struct.squashfs_xattr_id_table, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %xattr_ids3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xattr_ids3, align 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %xattr_ids to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %xattr_ids, align 4
  tail call void @kfree(ptr noundef %call) #4
  %10 = ptrtoint ptr %xattr_ids to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xattr_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mul = shl i32 %11, 4
  %sub = add i32 %mul, 8191
  %div97 = lshr i32 %sub, 13
  %mul7 = shl nuw nsw i32 %div97, 3
  %add12 = add i64 %table_start, 16
  %bytes_used = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %bytes_used to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bytes_used, align 8
  %conv = zext i32 %mul7 to i64
  %sub13 = sub i64 %13, %add12
  call void @__sanitizer_cov_trace_cmp8(i64 %sub13, i64 %conv)
  %cmp14.not = icmp eq i64 %sub13, %conv
  br i1 %cmp14.not, label %if.end18, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %call19 = tail call ptr @squashfs_read_table(ptr noundef %sb, i64 noundef %add12, i32 noundef %mul7) #4
  %cmp.i99 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %if.end18.cleanup_crit_edge, label %for.cond.preheader

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end18
  %sub23 = add nsw i32 %div97, -1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %n.0 = phi i32 [ %add26, %for.body.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0, i32 %sub23)
  %exitcond.not = icmp eq i32 %n.0, %sub23
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr i64, ptr %call19, i32 %n.0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  %add26 = add i32 %n.0, 1
  %arrayidx27 = getelementptr i64, ptr %call19, i32 %add26
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx27, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %16)
  %cmp28.not = icmp ule i64 %19, %16
  %sub30 = sub i64 %19, %16
  call void @__sanitizer_cov_trace_const_cmp8(i64 8194, i64 %sub30)
  %cmp31 = icmp ugt i64 %sub30, 8194
  %or.cond = or i1 %cmp28.not, %cmp31
  br i1 %or.cond, label %for.body.cleanup.sink.split_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond
  %arrayidx37 = getelementptr i64, ptr %call19, i32 %sub23
  %20 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx37, align 8
  %22 = tail call i64 @llvm.bswap.i64(i64 %21)
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %table_start)
  %cmp38.not = icmp uge i64 %22, %table_start
  %sub41 = sub i64 %table_start, %22
  call void @__sanitizer_cov_trace_const_cmp8(i64 8194, i64 %sub41)
  %cmp42 = icmp ugt i64 %sub41, 8194
  %or.cond98 = or i1 %cmp38.not, %cmp42
  br i1 %or.cond98, label %for.end.cleanup.sink.split_crit_edge, label %if.end46

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end46:                                         ; preds = %for.end
  %23 = ptrtoint ptr %xattr_table_start to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %xattr_table_start, align 8
  %25 = ptrtoint ptr %call19 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %call19, align 8
  %27 = tail call i64 @llvm.bswap.i64(i64 %26)
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %27)
  %cmp48.not = icmp ult i64 %24, %27
  br i1 %cmp48.not, label %if.end46.cleanup_crit_edge, label %if.end46.cleanup.sink.split_crit_edge

if.end46.cleanup.sink.split_crit_edge:            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end46.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  tail call void @kfree(ptr noundef %call19) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end46.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call19, %if.end46.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_read_table(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
