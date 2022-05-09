; ModuleID = '/llk/IR_all_yes/net/rds/tcp_stats.c_pt.bc'
source_filename = "../net/rds/tcp_stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.rds_tcp_statistics = type { i64, i64, i64, i64, i64 }

@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@rds_tcp_stats = weak dso_local global %struct.rds_tcp_statistics zeroinitializer, section ".data..percpu", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rds_tcp_stat_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], [44 x i8] zeroinitializer }, align 32
@__pcpu_scope_rds_tcp_stats = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_rds_tcp_stats = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tcp_data_ready_calls\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tcp_write_space_calls\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcp_sndbuf_full\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tcp_connect_raced\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tcp_listen_closed_stale\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"rds_tcp_stat_names\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 43, i32 27 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 44, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 45, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 46, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 47, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [23 x i8] c"../net/rds/tcp_stats.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 48, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @rds_tcp_stat_names, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_tcp_stat_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_tcp_stats_info_copy(ptr noundef %iter, i32 noundef %avail) local_unnamed_addr #0 align 64 {
entry:
  %stats = alloca %struct.rds_tcp_statistics, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %stats) #4
  %0 = call ptr @memset(ptr %stats, i32 0, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %avail)
  %cmp = icmp ult i32 %avail, 5
  br i1 %cmp, label %entry.out_crit_edge, label %for.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

for.cond.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call15 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %1)
  %cmp116 = icmp ult i32 %call15, %1
  br i1 %cmp116, label %do.body.preheader, label %for.cond.preheader.for.end8_crit_edge

for.cond.preheader.for.end8_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end8

do.body.preheader:                                ; preds = %for.cond.preheader
  %incdec.ptr6 = getelementptr inbounds i64, ptr %stats, i32 1
  %incdec.ptr6.1 = getelementptr inbounds i64, ptr %stats, i32 2
  %incdec.ptr6.2 = getelementptr inbounds i64, ptr %stats, i32 3
  %incdec.ptr6.3 = getelementptr inbounds i64, ptr %stats, i32 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %call17 = phi i32 [ %call, %do.body.do.body_crit_edge ], [ %call15, %do.body.preheader ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call17
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @rds_tcp_stats to i32)
  %4 = inttoptr i32 %add to ptr
  %incdec.ptr = getelementptr i64, ptr %4, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  %7 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %stats, align 8
  %add7 = add i64 %8, %6
  store i64 %add7, ptr %stats, align 8
  %incdec.ptr.1 = getelementptr i64, ptr %4, i32 2
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %incdec.ptr, align 8
  %11 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %incdec.ptr6, align 8
  %add7.1 = add i64 %12, %10
  store i64 %add7.1, ptr %incdec.ptr6, align 8
  %incdec.ptr.2 = getelementptr i64, ptr %4, i32 3
  %13 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %incdec.ptr.1, align 8
  %15 = ptrtoint ptr %incdec.ptr6.1 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %incdec.ptr6.1, align 8
  %add7.2 = add i64 %16, %14
  store i64 %add7.2, ptr %incdec.ptr6.1, align 8
  %incdec.ptr.3 = getelementptr i64, ptr %4, i32 4
  %17 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %incdec.ptr.2, align 8
  %19 = ptrtoint ptr %incdec.ptr6.2 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %incdec.ptr6.2, align 8
  %add7.3 = add i64 %20, %18
  store i64 %add7.3, ptr %incdec.ptr6.2, align 8
  %21 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %incdec.ptr.3, align 8
  %23 = ptrtoint ptr %incdec.ptr6.3 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %incdec.ptr6.3, align 8
  %add7.4 = add i64 %24, %22
  store i64 %add7.4, ptr %incdec.ptr6.3, align 8
  %call = tail call i32 @cpumask_next(i32 noundef %call17, ptr noundef nonnull @__cpu_online_mask) #7
  %cmp1 = icmp ult i32 %call, %1
  br i1 %cmp1, label %do.body.do.body_crit_edge, label %do.body.for.end8_crit_edge

do.body.for.end8_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end8

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.end8:                                         ; preds = %do.body.for.end8_crit_edge, %for.cond.preheader.for.end8_crit_edge
  call void @rds_stats_info_copy(ptr noundef %iter, ptr noundef nonnull %stats, ptr noundef nonnull @rds_tcp_stat_names, i32 noundef 5) #4
  br label %out

out:                                              ; preds = %for.end8, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %stats) #4
  ret i32 5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_stats_info_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__pcpu_scope_rds_tcp_stats, !1, !"__pcpu_scope_rds_tcp_stats", i1 false, i1 false}
!1 = !{!"../net/rds/tcp_stats.c", i32 40, i32 1}
!2 = !{ptr @__pcpu_unique_rds_tcp_stats, !1, !"__pcpu_unique_rds_tcp_stats", i1 false, i1 false}
!3 = !{ptr @rds_tcp_stats, !1, !"rds_tcp_stats", i1 false, i1 false}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/rds/tcp_stats.c", i32 44, i32 2}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rds/tcp_stats.c", i32 45, i32 2}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/rds/tcp_stats.c", i32 46, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/rds/tcp_stats.c", i32 47, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/rds/tcp_stats.c", i32 48, i32 2}
!14 = !{ptr @rds_tcp_stat_names, !15, !"rds_tcp_stat_names", i1 false, i1 false}
!15 = !{!"../net/rds/tcp_stats.c", i32 43, i32 27}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
