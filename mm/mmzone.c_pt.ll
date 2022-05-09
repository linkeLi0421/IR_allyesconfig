; ModuleID = '/llk/IR_all_yes/mm/mmzone.c_pt.bc'
source_filename = "../mm/mmzone.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }

@lruvec_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&lruvec->lru_lock\00", [46 x i8] zeroinitializer }, align 32
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [15 x i8] c"../mm/mmzone.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 80, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @lruvec_init.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lruvec_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @first_online_pgdat() local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @contig_page_data
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local noalias ptr @next_online_pgdat(ptr nocapture readnone %pgdat) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @next_zone(ptr noundef readonly %zone) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_pgdat = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 4
  %0 = ptrtoint ptr %zone_pgdat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zone_pgdat, align 4
  %add.ptr1 = getelementptr %struct.zone, ptr %1, i32 3
  %cmp = icmp ugt ptr %add.ptr1, %zone
  %incdec.ptr = getelementptr %struct.zone, ptr %zone, i32 1
  %spec.select = select i1 %cmp, ptr %incdec.ptr, ptr null
  ret ptr %spec.select
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__next_zones_zonelist(ptr noundef readonly %z, i32 noundef %highest_zoneidx, ptr noundef readnone %nodes) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %nodes, null
  br i1 %cmp, label %while.cond, label %while.cond3, !prof !12

while.cond:                                       ; preds = %while.cond, %entry
  %z.addr.0 = phi ptr [ %incdec.ptr, %while.cond ], [ %z, %entry ]
  %zone_idx.i = getelementptr inbounds %struct.zoneref, ptr %z.addr.0, i32 0, i32 1
  %0 = ptrtoint ptr %zone_idx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zone_idx.i, align 4
  %cmp2 = icmp ugt i32 %1, %highest_zoneidx
  %incdec.ptr = getelementptr %struct.zoneref, ptr %z.addr.0, i32 1
  br i1 %cmp2, label %while.cond, label %if.end

while.cond3:                                      ; preds = %while.cond3, %entry
  %z.addr.1 = phi ptr [ %incdec.ptr12, %while.cond3 ], [ %z, %entry ]
  %zone_idx.i22 = getelementptr inbounds %struct.zoneref, ptr %z.addr.1, i32 0, i32 1
  %2 = ptrtoint ptr %zone_idx.i22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zone_idx.i22, align 4
  %cmp5 = icmp ugt i32 %3, %highest_zoneidx
  %incdec.ptr12 = getelementptr %struct.zoneref, ptr %z.addr.1, i32 1
  br i1 %cmp5, label %while.cond3, label %if.end

if.end:                                           ; preds = %while.cond3, %while.cond
  %z.addr.2 = phi ptr [ %z.addr.0, %while.cond ], [ %z.addr.1, %while.cond3 ]
  ret ptr %z.addr.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lruvec_init(ptr noundef %lruvec) local_unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %lruvec, i32 0, i32 112)
  %lru_lock = getelementptr inbounds %struct.lruvec, ptr %lruvec, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lru_lock, ptr noundef nonnull @.str, ptr noundef nonnull @lruvec_init.__key, i16 noundef signext 3) #5
  %1 = ptrtoint ptr %lruvec to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %lruvec, ptr %lruvec, align 4
  %prev.i = getelementptr [5 x %struct.list_head], ptr %lruvec, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %lruvec, ptr %prev.i, align 4
  %arrayidx.1 = getelementptr [5 x %struct.list_head], ptr %lruvec, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i.1 = getelementptr [5 x %struct.list_head], ptr %lruvec, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx.1, ptr %prev.i.1, align 4
  %arrayidx.2 = getelementptr [5 x %struct.list_head], ptr %lruvec, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 4
  %prev.i.2 = getelementptr [5 x %struct.list_head], ptr %lruvec, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx.2, ptr %prev.i.2, align 4
  %arrayidx.3 = getelementptr [5 x %struct.list_head], ptr %lruvec, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %arrayidx.3, ptr %arrayidx.3, align 4
  %prev.i.3 = getelementptr [5 x %struct.list_head], ptr %lruvec, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.3, ptr %prev.i.3, align 4
  %arrayidx.4 = getelementptr [5 x %struct.list_head], ptr %lruvec, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %arrayidx.4, ptr %arrayidx.4, align 4
  %prev.i.4 = getelementptr [5 x %struct.list_head], ptr %lruvec, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i.4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.4, ptr %prev.i.4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @lruvec_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../mm/mmzone.c", i32 80, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"branch_weights", i32 1, i32 2000}
