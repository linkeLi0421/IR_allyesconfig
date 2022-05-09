; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_kprobe_selftest.c_pt.bc'
source_filename = "../kernel/trace/trace_kprobe_selftest.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

@__llvm_gcov_ctr = internal global [1 x i64] zeroinitializer
@0 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_kprobe_selftest.gcda\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [40 x i8] c"../kernel/trace/trace_kprobe_selftest.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @kprobe_trace_selftest_target(i32 noundef %a1, i32 noundef %a2, i32 noundef %a3, i32 noundef %a4, i32 noundef %a5, i32 noundef %a6) local_unnamed_addr #0 align 64 !dbg !13 {
entry:
  call void @__sanitizer_cov_trace_pc() #5, !dbg !16
  call void @llvm.arm.gnu.eabi.mcount(), !dbg !16
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr, align 8
  %add = add i32 %a2, %a1, !dbg !17
  %add1 = add i32 %add, %a3, !dbg !18
  %add2 = add i32 %add1, %a4, !dbg !19
  %add3 = add i32 %add2, %a5, !dbg !20
  %add4 = add i32 %add3, %a6, !dbg !21
  ret i32 %add4, !dbg !22
}

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #1 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 1526341860) #3
  tail call void @llvm_gcda_emit_function(i32 0, i32 -618740328, i32 1526341860) #3
  tail call void @llvm_gcda_emit_arcs(i32 1, ptr nonnull @__llvm_gcov_ctr) #3
  tail call void @llvm_gcda_summary_info() #3
  tail call void @llvm_gcda_end_file() #3
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #2 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  store i64 0, ptr @__llvm_gcov_ctr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #1 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #3
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { noinline nounwind uwtable(sync) "frame-pointer"="all" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.gcov = !{!11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_kprobe_selftest.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_kprobe_selftest.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_kprobe_selftest.gcda", !0}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = distinct !DISubprogram(name: "kprobe_trace_selftest_target", scope: !1, file: !1, line: 7, type: !14, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 8, scope: !13)
!17 = !DILocation(line: 9, column: 12, scope: !13)
!18 = !DILocation(line: 9, column: 17, scope: !13)
!19 = !DILocation(line: 9, column: 22, scope: !13)
!20 = !DILocation(line: 9, column: 27, scope: !13)
!21 = !DILocation(line: 9, column: 32, scope: !13)
!22 = !DILocation(line: 9, column: 2, scope: !13)
