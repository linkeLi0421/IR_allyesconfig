; ModuleID = '/llk/IR_all_yes/fs/befs/inode.c_pt.bc'
source_filename = "../fs/befs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.befs_sb_info = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.befs_block_run, i64, i64, %struct.befs_block_run, %struct.befs_block_run, i32, %struct.befs_mount_options, ptr }
%struct.befs_block_run = type { i32, i16, i16 }
%struct.befs_mount_options = type { %struct.kgid_t, %struct.kuid_t, i32, i32, i32, ptr }
%struct.kgid_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.befs_inode = type <{ i32, %struct.befs_disk_block_run, i32, i32, i32, i32, i64, i64, %struct.befs_disk_block_run, %struct.befs_disk_block_run, i32, i32, i32, %union.anon.65, [4 x i32], [1 x %struct.befs_small_data] }>
%struct.befs_disk_block_run = type { i32, i16, i16 }
%union.anon.65 = type { %struct.befs_disk_data_stream }
%struct.befs_disk_data_stream = type { [12 x %struct.befs_disk_block_run], i64, %struct.befs_disk_block_run, i64, %struct.befs_disk_block_run, i64, i64 }
%struct.befs_small_data = type <{ i32, i16, i16, [1 x i8] }>

@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Inode has a bad magic header - inode = %lu\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"inode blocknr field disagrees with vfs VFS: %lu, Inode %lu\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"inode is not used - inode = %lu\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 29, i32 7 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 38, i32 18 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [19 x i8] c"../fs/befs/inode.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 49, i32 18 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @befs_check_inode(ptr noundef %sb, ptr nocapture noundef readonly %raw_inode, i64 noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %raw_inode to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %raw_inode, align 1
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %byte_order.i = getelementptr inbounds %struct.befs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %1) #3
  %retval.0.i = select i1 %cmp.i, i32 %6, i32 %1
  %flags2 = getelementptr inbounds %struct.befs_inode, ptr %raw_inode, i32 0, i32 5
  %7 = ptrtoint ptr %flags2 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %flags2, align 1
  %9 = lshr i32 %8, 24
  %retval.0.i37 = select i1 %cmp.i, i32 %9, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1002310361, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %retval.0.i, 1002310361
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = trunc i64 %inode to i32
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str, i32 noundef %conv) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %.elt29 = getelementptr inbounds %struct.befs_inode, ptr %raw_inode, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %.elt29 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %.unpack30 = load i32, ptr %.elt29, align 1
  %n.sroa.3.4.extract.shift.i = lshr i32 %.unpack30, 16
  %n.sroa.3.4.extract.trunc.i = trunc i32 %n.sroa.3.4.extract.shift.i to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %n.sroa.3.4.extract.trunc.i) #3
  %ino_num.sroa.8.0 = select i1 %cmp.i, i16 %11, i16 %n.sroa.3.4.extract.trunc.i
  %inode_num = getelementptr inbounds %struct.befs_inode, ptr %raw_inode, i32 0, i32 1
  %12 = ptrtoint ptr %inode_num to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %.unpack = load i32, ptr %inode_num, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %.unpack) #3
  %ino_num.sroa.0.0 = select i1 %cmp.i, i32 %13, i32 %.unpack
  %ag_shift.i = getelementptr inbounds %struct.befs_sb_info, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %ag_shift.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ag_shift.i, align 4
  %shl.i = shl i32 %ino_num.sroa.0.0, %15
  %conv.i = zext i16 %ino_num.sroa.8.0 to i32
  %add.i = add i32 %shl.i, %conv.i
  %conv1.i = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv1.i, i64 %inode)
  %cmp5.not = icmp eq i64 %conv1.i, %inode
  br i1 %cmp5.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv8 = trunc i64 %inode to i32
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.1, i32 noundef %conv8, i32 noundef %add.i) #3
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %and = and i32 %retval.0.i37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then12, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %conv13 = trunc i64 %inode to i32
  tail call void (ptr, ptr, ...) @befs_error(ptr noundef %sb, ptr noundef nonnull @.str.2, i32 noundef %conv13) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end11.cleanup_crit_edge, %if.then7, %if.then
  %retval.0 = phi i32 [ 2, %if.then ], [ 2, %if.then7 ], [ 2, %if.then12 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @befs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/befs/inode.c", i32 29, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/befs/inode.c", i32 38, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/befs/inode.c", i32 49, i32 18}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
