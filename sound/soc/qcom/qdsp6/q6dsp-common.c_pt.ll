; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/qdsp6/q6dsp-common.c_pt.bc'
source_filename = "../sound/soc/qcom/qdsp6/q6dsp-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+q6dsp_map_channels\22, \22a\22\09"
module asm "\09.weak\09__crc_q6dsp_map_channels\09\09\09\09"
module asm "\09.long\09__crc_q6dsp_map_channels\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_q6dsp_map_channels:\09\09\09\09\09"
module asm "\09.asciz \09\22q6dsp_map_channels\22\09\09\09\09\09"
module asm "__kstrtabns_q6dsp_map_channels:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_q6dsp_map_channels = external dso_local constant [0 x i8], align 1
@__kstrtabns_q6dsp_map_channels = external dso_local constant [0 x i8], align 1
@__ksymtab_q6dsp_map_channels = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @q6dsp_map_channels to i32), ptr @__kstrtab_q6dsp_map_channels, ptr @__kstrtabns_q6dsp_map_channels }, section "___ksymtab_gpl+q6dsp_map_channels", align 4
@__UNIQUE_ID_file106 = internal constant [60 x i8] c"snd_q6dsp_common.file=sound/soc/qcom/qdsp6/snd-q6dsp-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [32 x i8] c"snd_q6dsp_common.license=GPL v2\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8]
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_q6dsp_map_channels], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @q6dsp_map_channels(ptr noundef writeonly %ch_map, i32 noundef %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ch_map to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %ch_map, align 1
  %1 = zext i32 %ch to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ch, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb4
    i32 4, label %sw.bb8
    i32 5, label %sw.bb13
    i32 6, label %sw.bb19
    i32 8, label %sw.bb26
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %2 = ptrtoint ptr %ch_map to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %ch_map, align 1
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %3 = ptrtoint ptr %ch_map to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %ch_map, align 1
  %arrayidx3 = getelementptr i8, ptr %ch_map, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %arrayidx3, align 1
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %5 = ptrtoint ptr %ch_map to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %ch_map, align 1
  %arrayidx6 = getelementptr i8, ptr %ch_map, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr i8, ptr %ch_map, i32 2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %arrayidx7, align 1
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %8 = ptrtoint ptr %ch_map to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %ch_map, align 1
  %arrayidx10 = getelementptr i8, ptr %ch_map, i32 1
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr i8, ptr %ch_map, i32 2
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %arrayidx11, align 1
  %arrayidx12 = getelementptr i8, ptr %ch_map, i32 3
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 5, ptr %arrayidx12, align 1
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %12 = ptrtoint ptr %ch_map to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %ch_map, align 1
  %arrayidx15 = getelementptr i8, ptr %ch_map, i32 1
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr i8, ptr %ch_map, i32 2
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %arrayidx16, align 1
  %arrayidx17 = getelementptr i8, ptr %ch_map, i32 3
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %arrayidx17, align 1
  %arrayidx18 = getelementptr i8, ptr %ch_map, i32 4
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 5, ptr %arrayidx18, align 1
  br label %return

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %17 = ptrtoint ptr %ch_map to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %ch_map, align 1
  %arrayidx21 = getelementptr i8, ptr %ch_map, i32 1
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %arrayidx21, align 1
  %arrayidx22 = getelementptr i8, ptr %ch_map, i32 2
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 6, ptr %arrayidx22, align 1
  %arrayidx23 = getelementptr i8, ptr %ch_map, i32 3
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %arrayidx23, align 1
  %arrayidx24 = getelementptr i8, ptr %ch_map, i32 4
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %arrayidx24, align 1
  %arrayidx25 = getelementptr i8, ptr %ch_map, i32 5
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 5, ptr %arrayidx25, align 1
  br label %return

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %23 = ptrtoint ptr %ch_map to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %ch_map, align 1
  %arrayidx28 = getelementptr i8, ptr %ch_map, i32 1
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %arrayidx28, align 1
  %arrayidx29 = getelementptr i8, ptr %ch_map, i32 2
  %25 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 6, ptr %arrayidx29, align 1
  %arrayidx30 = getelementptr i8, ptr %ch_map, i32 3
  %26 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %arrayidx30, align 1
  %arrayidx31 = getelementptr i8, ptr %ch_map, i32 4
  %27 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %arrayidx31, align 1
  %arrayidx32 = getelementptr i8, ptr %ch_map, i32 5
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 5, ptr %arrayidx32, align 1
  %arrayidx33 = getelementptr i8, ptr %ch_map, i32 6
  %29 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 8, ptr %arrayidx33, align 1
  %arrayidx34 = getelementptr i8, ptr %ch_map, i32 7
  %30 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 9, ptr %arrayidx34, align 1
  br label %return

return:                                           ; preds = %sw.bb26, %sw.bb19, %sw.bb13, %sw.bb8, %sw.bb4, %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %sw.bb26 ], [ 0, %sw.bb19 ], [ 0, %sw.bb13 ], [ 0, %sw.bb8 ], [ 0, %sw.bb4 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @__ksymtab_q6dsp_map_channels, !1, !"__ksymtab_q6dsp_map_channels", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/qdsp6/q6dsp-common.c", i32 65, i32 1}
!2 = !{ptr @__UNIQUE_ID_file106, !3, !"__UNIQUE_ID_file106", i1 false, i1 false}
!3 = !{!"../sound/soc/qcom/qdsp6/q6dsp-common.c", i32 66, i32 1}
!4 = !{ptr @__UNIQUE_ID_license107, !3, !"__UNIQUE_ID_license107", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
