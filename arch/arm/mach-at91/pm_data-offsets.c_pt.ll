; ModuleID = '/llk/IR_all_yes/arch/arm/mach-at91/pm_data-offsets.c_pt.bc'
source_filename = "../arch/arm/mach-at91/pm_data-offsets.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @main() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_PMC $0 offsetof(struct at91_pm_data, pmc)\22", "i"(i32 0) #1, !srcloc !9
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_RAMC0 $0 offsetof(struct at91_pm_data, ramc[0])\22", "i"(i32 4) #1, !srcloc !10
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_RAMC1 $0 offsetof(struct at91_pm_data, ramc[1])\22", "i"(i32 8) #1, !srcloc !11
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_RAMC_PHY $0 offsetof(struct at91_pm_data, ramc_phy)\22", "i"(i32 12) #1, !srcloc !12
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_MEMCTRL $0 offsetof(struct at91_pm_data, memctrl)\22", "i"(i32 20) #1, !srcloc !13
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_MODE $0 offsetof(struct at91_pm_data, mode)\22", "i"(i32 24) #1, !srcloc !14
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_SHDWC $0 offsetof(struct at91_pm_data, shdwc)\22", "i"(i32 28) #1, !srcloc !15
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_SFRBU $0 offsetof(struct at91_pm_data, sfrbu)\22", "i"(i32 32) #1, !srcloc !16
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_PMC_MCKR_OFFSET $0 offsetof(struct at91_pm_data, pmc_mckr_offset)\22", "i"(i32 44) #1, !srcloc !17
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_PMC_VERSION $0 offsetof(struct at91_pm_data, pmc_version)\22", "i"(i32 48) #1, !srcloc !18
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 2149095451, i64 2149095454}
!10 = !{i64 2149095723, i64 2149095726}
!11 = !{i64 2149096013, i64 2149096016}
!12 = !{i64 2149096303, i64 2149096306}
!13 = !{i64 2149096600, i64 2149096603}
!14 = !{i64 2149096892, i64 2149096895}
!15 = !{i64 2149097169, i64 2149097172}
!16 = !{i64 2149097451, i64 2149097454}
!17 = !{i64 2149097733, i64 2149097736}
!18 = !{i64 2149098065, i64 2149098068}
