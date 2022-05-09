; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_selftest_dynamic.c_pt.bc'
source_filename = "../kernel/trace/trace_selftest_dynamic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@__llvm_gcov_ctr = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.1 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_selftest_dynamic.gcda\00", [54 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [41 x i8] c"../kernel/trace/trace_selftest_dynamic.c\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@1 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @trace_selftest_dynamic_test_func() local_unnamed_addr #0 align 64 !dbg !13 {
entry:
  call void @__sanitizer_cov_trace_pc() #5, !dbg !16
  call void @llvm.arm.gnu.eabi.mcount(), !dbg !16
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 8, !dbg !17
  %0 = add i64 %gcov_ctr, 1, !dbg !17
  store i64 %0, ptr @__llvm_gcov_ctr, align 8, !dbg !17
  ret i32 0, !dbg !17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @trace_selftest_dynamic_test_func2() local_unnamed_addr #0 align 64 !dbg !18 {
entry:
  call void @__sanitizer_cov_trace_pc() #5, !dbg !19
  call void @llvm.arm.gnu.eabi.mcount(), !dbg !19
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.1, align 8, !dbg !20
  %0 = add i64 %gcov_ctr, 1, !dbg !20
  store i64 %0, ptr @__llvm_gcov_ctr.1, align 8, !dbg !20
  ret i32 0, !dbg !20
}

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #1 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -801444649) #3
  tail call void @llvm_gcda_emit_function(i32 0, i32 1880044997, i32 -801444649) #3
  tail call void @llvm_gcda_emit_arcs(i32 1, ptr nonnull @__llvm_gcov_ctr) #3
  tail call void @llvm_gcda_emit_function(i32 1, i32 1523202894, i32 -801444649) #3
  tail call void @llvm_gcda_emit_arcs(i32 1, ptr nonnull @__llvm_gcov_ctr.1) #3
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
  store i64 0, ptr @__llvm_gcov_ctr.1, align 8
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

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!1 = !DIFile(filename: "../kernel/trace/trace_selftest_dynamic.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_selftest_dynamic.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_selftest_dynamic.gcda", !0}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = distinct !DISubprogram(name: "trace_selftest_dynamic_test_func", scope: !1, file: !1, line: 5, type: !14, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 6, scope: !13)
!17 = !DILocation(line: 8, column: 2, scope: !13)
!18 = distinct !DISubprogram(name: "trace_selftest_dynamic_test_func2", scope: !1, file: !1, line: 11, type: !14, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!19 = !DILocation(line: 12, scope: !18)
!20 = !DILocation(line: 14, column: 2, scope: !18)
