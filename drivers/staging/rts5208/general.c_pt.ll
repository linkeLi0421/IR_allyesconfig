; ModuleID = '/llk/IR_all_yes/drivers/staging/rts5208/general.c_pt.bc'
source_filename = "../drivers/staging/rts5208/general.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bit1cnt_long(i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %data, 1
  %shr = lshr i32 %data, 1
  %and.1 = and i32 %shr, 1
  %spec.select.1 = add nuw nsw i32 %and, %and.1
  %shr.1 = lshr i32 %data, 2
  %and.2 = and i32 %shr.1, 1
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %and.2
  %shr.2 = lshr i32 %data, 3
  %and.3 = and i32 %shr.2, 1
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %and.3
  %shr.3 = lshr i32 %data, 4
  %and.4 = and i32 %shr.3, 1
  %spec.select.4 = add nuw nsw i32 %spec.select.3, %and.4
  %shr.4 = lshr i32 %data, 5
  %and.5 = and i32 %shr.4, 1
  %spec.select.5 = add nuw nsw i32 %spec.select.4, %and.5
  %shr.5 = lshr i32 %data, 6
  %and.6 = and i32 %shr.5, 1
  %spec.select.6 = add nuw nsw i32 %spec.select.5, %and.6
  %shr.6 = lshr i32 %data, 7
  %and.7 = and i32 %shr.6, 1
  %spec.select.7 = add nuw nsw i32 %spec.select.6, %and.7
  %shr.7 = lshr i32 %data, 8
  %and.8 = and i32 %shr.7, 1
  %spec.select.8 = add nuw nsw i32 %spec.select.7, %and.8
  %shr.8 = lshr i32 %data, 9
  %and.9 = and i32 %shr.8, 1
  %spec.select.9 = add nuw nsw i32 %spec.select.8, %and.9
  %shr.9 = lshr i32 %data, 10
  %and.10 = and i32 %shr.9, 1
  %spec.select.10 = add nuw nsw i32 %spec.select.9, %and.10
  %shr.10 = lshr i32 %data, 11
  %and.11 = and i32 %shr.10, 1
  %spec.select.11 = add nuw nsw i32 %spec.select.10, %and.11
  %shr.11 = lshr i32 %data, 12
  %and.12 = and i32 %shr.11, 1
  %spec.select.12 = add nuw nsw i32 %spec.select.11, %and.12
  %shr.12 = lshr i32 %data, 13
  %and.13 = and i32 %shr.12, 1
  %spec.select.13 = add nuw nsw i32 %spec.select.12, %and.13
  %shr.13 = lshr i32 %data, 14
  %and.14 = and i32 %shr.13, 1
  %spec.select.14 = add nuw nsw i32 %spec.select.13, %and.14
  %shr.14 = lshr i32 %data, 15
  %and.15 = and i32 %shr.14, 1
  %spec.select.15 = add nuw nsw i32 %spec.select.14, %and.15
  %shr.15 = lshr i32 %data, 16
  %and.16 = and i32 %shr.15, 1
  %spec.select.16 = add nuw nsw i32 %spec.select.15, %and.16
  %shr.16 = lshr i32 %data, 17
  %and.17 = and i32 %shr.16, 1
  %spec.select.17 = add nuw nsw i32 %spec.select.16, %and.17
  %shr.17 = lshr i32 %data, 18
  %and.18 = and i32 %shr.17, 1
  %spec.select.18 = add nuw nsw i32 %spec.select.17, %and.18
  %shr.18 = lshr i32 %data, 19
  %and.19 = and i32 %shr.18, 1
  %spec.select.19 = add nuw nsw i32 %spec.select.18, %and.19
  %shr.19 = lshr i32 %data, 20
  %and.20 = and i32 %shr.19, 1
  %spec.select.20 = add nuw nsw i32 %spec.select.19, %and.20
  %shr.20 = lshr i32 %data, 21
  %and.21 = and i32 %shr.20, 1
  %spec.select.21 = add nuw nsw i32 %spec.select.20, %and.21
  %shr.21 = lshr i32 %data, 22
  %and.22 = and i32 %shr.21, 1
  %spec.select.22 = add nuw nsw i32 %spec.select.21, %and.22
  %shr.22 = lshr i32 %data, 23
  %and.23 = and i32 %shr.22, 1
  %spec.select.23 = add nuw nsw i32 %spec.select.22, %and.23
  %shr.23 = lshr i32 %data, 24
  %and.24 = and i32 %shr.23, 1
  %spec.select.24 = add nuw nsw i32 %spec.select.23, %and.24
  %shr.24 = lshr i32 %data, 25
  %and.25 = and i32 %shr.24, 1
  %spec.select.25 = add nuw nsw i32 %spec.select.24, %and.25
  %shr.25 = lshr i32 %data, 26
  %and.26 = and i32 %shr.25, 1
  %spec.select.26 = add nuw nsw i32 %spec.select.25, %and.26
  %shr.26 = lshr i32 %data, 27
  %and.27 = and i32 %shr.26, 1
  %spec.select.27 = add nuw nsw i32 %spec.select.26, %and.27
  %shr.27 = lshr i32 %data, 28
  %and.28 = and i32 %shr.27, 1
  %spec.select.28 = add nuw nsw i32 %spec.select.27, %and.28
  %shr.28 = lshr i32 %data, 29
  %and.29 = and i32 %shr.28, 1
  %spec.select.29 = add nuw nsw i32 %spec.select.28, %and.29
  %shr.29 = lshr i32 %data, 30
  %and.30 = and i32 %shr.29, 1
  %spec.select.30 = add nuw nsw i32 %spec.select.29, %and.30
  %shr.30 = lshr i32 %data, 31
  %spec.select.31 = add nuw nsw i32 %spec.select.30, %shr.30
  ret i32 %spec.select.31
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

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
