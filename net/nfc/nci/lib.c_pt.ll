; ModuleID = '/llk/IR_all_yes/net/nfc/nci/lib.c_pt.bc'
source_filename = "../net/nfc/nci/lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+nci_to_errno\22, \22a\22\09"
module asm "\09.weak\09__crc_nci_to_errno\09\09\09\09"
module asm "\09.long\09__crc_nci_to_errno\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_to_errno:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_to_errno\22\09\09\09\09\09"
module asm "__kstrtabns_nci_to_errno:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_nci_to_errno = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_to_errno = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_to_errno = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_to_errno to i32), ptr @__kstrtab_nci_to_errno, ptr @__kstrtabns_nci_to_errno }, section "___ksymtab+nci_to_errno", align 4
@__sancov_gen_cov_switch_values = internal global [21 x i64] [i64 19, i64 8, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 160, i64 161, i64 176, i64 177, i64 178, i64 192, i64 193, i64 194, i64 195]
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_nci_to_errno], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nci_to_errno(i8 noundef zeroext %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %code, label %sw.default [
    i8 0, label %entry.return_crit_edge
    i8 1, label %sw.bb1
    i8 2, label %sw.bb2
    i8 4, label %sw.bb3
    i8 5, label %entry.sw.bb4_crit_edge
    i8 6, label %entry.sw.bb4_crit_edge12
    i8 9, label %entry.sw.bb4_crit_edge13
    i8 -79, label %entry.sw.bb4_crit_edge14
    i8 -62, label %entry.sw.bb4_crit_edge15
    i8 7, label %entry.sw.bb5_crit_edge
    i8 8, label %entry.sw.bb5_crit_edge16
    i8 10, label %sw.bb6
    i8 -96, label %sw.bb7
    i8 -95, label %entry.sw.bb8_crit_edge
    i8 -64, label %entry.sw.bb8_crit_edge17
    i8 -80, label %entry.sw.bb9_crit_edge
    i8 -63, label %entry.sw.bb9_crit_edge18
    i8 -78, label %entry.sw.bb10_crit_edge
    i8 -61, label %entry.sw.bb10_crit_edge19
  ]

entry.sw.bb10_crit_edge19:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb10

entry.sw.bb9_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb9

entry.sw.bb8_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb8

entry.sw.bb5_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb5

entry.sw.bb4_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb4

entry.sw.bb4_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb4

entry.sw.bb4_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb4

entry.sw.bb4_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.bb4

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge12, %entry.sw.bb4_crit_edge13, %entry.sw.bb4_crit_edge14, %entry.sw.bb4_crit_edge15
  br label %return

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge16
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge17
  br label %return

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge18
  br label %return

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge19
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

return:                                           ; preds = %sw.default, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ -38, %sw.default ], [ -110, %sw.bb10 ], [ -70, %sw.bb9 ], [ -111, %sw.bb8 ], [ -114, %sw.bb7 ], [ -90, %sw.bb6 ], [ -56, %sw.bb5 ], [ -71, %sw.bb4 ], [ -112, %sw.bb3 ], [ -74, %sw.bb2 ], [ -16, %sw.bb1 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_nci_to_errno, !1, !"__ksymtab_nci_to_errno", i1 false, i1 false}
!1 = !{!"../net/nfc/nci/lib.c", i32 73, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
