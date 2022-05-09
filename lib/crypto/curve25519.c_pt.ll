; ModuleID = '/llk/IR_all_yes/lib/crypto/curve25519.c_pt.bc'
source_filename = "../lib/crypto/curve25519.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@__initcall__kmod_libcurve25519__173_28_curve25519_init6 = internal global ptr @curve25519_init, section ".initcall6.init", align 4
@__exitcall_curve25519_exit = internal global ptr @curve25519_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [44 x i8] c"libcurve25519.file=lib/crypto/libcurve25519\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [29 x i8] c"libcurve25519.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [59 x i8] c"libcurve25519.description=Curve25519 scalar multiplication\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [58 x i8] c"libcurve25519.author=Jason A. Donenfeld <Jason@zx2c4.com>\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_curve25519_exit, ptr @__initcall__kmod_libcurve25519__173_28_curve25519_init6, ptr @curve25519_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @curve25519_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @curve25519_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__initcall__kmod_libcurve25519__173_28_curve25519_init6, !1, !"__initcall__kmod_libcurve25519__173_28_curve25519_init6", i1 false, i1 false}
!1 = !{!"../lib/crypto/curve25519.c", i32 28, i32 1}
!2 = !{ptr @__exitcall_curve25519_exit, !3, !"__exitcall_curve25519_exit", i1 false, i1 false}
!3 = !{!"../lib/crypto/curve25519.c", i32 29, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../lib/crypto/curve25519.c", i32 31, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description176, !8, !"__UNIQUE_ID_description176", i1 false, i1 false}
!8 = !{!"../lib/crypto/curve25519.c", i32 32, i32 1}
!9 = !{ptr @__UNIQUE_ID_author177, !10, !"__UNIQUE_ID_author177", i1 false, i1 false}
!10 = !{!"../lib/crypto/curve25519.c", i32 33, i32 1}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
