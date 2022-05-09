; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_panel_orientation_quirks.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_panel_orientation_quirks.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_get_panel_orientation_quirk\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_get_panel_orientation_quirk\09\09\09\09"
module asm "\09.long\09__crc_drm_get_panel_orientation_quirk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_get_panel_orientation_quirk:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_get_panel_orientation_quirk\22\09\09\09\09\09"
module asm "__kstrtabns_drm_get_panel_orientation_quirk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_drm_get_panel_orientation_quirk = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_get_panel_orientation_quirk = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_get_panel_orientation_quirk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_get_panel_orientation_quirk to i32), ptr @__kstrtab_drm_get_panel_orientation_quirk, ptr @__kstrtabns_drm_get_panel_orientation_quirk }, section "___ksymtab+drm_get_panel_orientation_quirk", align 4
@__UNIQUE_ID_file246 = internal constant [79 x i8] c"drm_panel_orientation_quirks.file=drivers/gpu/drm/drm_panel_orientation_quirks\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [50 x i8] c"drm_panel_orientation_quirks.license=Dual MIT/GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__ksymtab_drm_get_panel_orientation_quirk], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_get_panel_orientation_quirk(i32 %width, i32 %height) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @__ksymtab_drm_get_panel_orientation_quirk, !1, !"__ksymtab_drm_get_panel_orientation_quirk", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_panel_orientation_quirks.c", i32 371, i32 1}
!2 = !{ptr @__UNIQUE_ID_file246, !3, !"__UNIQUE_ID_file246", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_panel_orientation_quirks.c", i32 375, i32 1}
!4 = !{ptr @__UNIQUE_ID_license247, !3, !"__UNIQUE_ID_license247", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
