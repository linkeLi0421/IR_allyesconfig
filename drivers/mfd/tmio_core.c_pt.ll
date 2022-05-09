; ModuleID = '/llk/IR_all_yes/drivers/mfd/tmio_core.c_pt.bc'
source_filename = "../drivers/mfd/tmio_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tmio_core_mmc_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_tmio_core_mmc_enable\09\09\09\09"
module asm "\09.long\09__crc_tmio_core_mmc_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tmio_core_mmc_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22tmio_core_mmc_enable\22\09\09\09\09\09"
module asm "__kstrtabns_tmio_core_mmc_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tmio_core_mmc_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_tmio_core_mmc_resume\09\09\09\09"
module asm "\09.long\09__crc_tmio_core_mmc_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tmio_core_mmc_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22tmio_core_mmc_resume\22\09\09\09\09\09"
module asm "__kstrtabns_tmio_core_mmc_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tmio_core_mmc_pwr\22, \22a\22\09"
module asm "\09.weak\09__crc_tmio_core_mmc_pwr\09\09\09\09"
module asm "\09.long\09__crc_tmio_core_mmc_pwr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tmio_core_mmc_pwr:\09\09\09\09\09"
module asm "\09.asciz \09\22tmio_core_mmc_pwr\22\09\09\09\09\09"
module asm "__kstrtabns_tmio_core_mmc_pwr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tmio_core_mmc_clk_div\22, \22a\22\09"
module asm "\09.weak\09__crc_tmio_core_mmc_clk_div\09\09\09\09"
module asm "\09.long\09__crc_tmio_core_mmc_clk_div\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tmio_core_mmc_clk_div:\09\09\09\09\09"
module asm "\09.asciz \09\22tmio_core_mmc_clk_div\22\09\09\09\09\09"
module asm "__kstrtabns_tmio_core_mmc_clk_div:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_tmio_core_mmc_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_tmio_core_mmc_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_tmio_core_mmc_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tmio_core_mmc_enable to i32), ptr @__kstrtab_tmio_core_mmc_enable, ptr @__kstrtabns_tmio_core_mmc_enable }, section "___ksymtab+tmio_core_mmc_enable", align 4
@__kstrtab_tmio_core_mmc_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_tmio_core_mmc_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_tmio_core_mmc_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tmio_core_mmc_resume to i32), ptr @__kstrtab_tmio_core_mmc_resume, ptr @__kstrtabns_tmio_core_mmc_resume }, section "___ksymtab+tmio_core_mmc_resume", align 4
@__kstrtab_tmio_core_mmc_pwr = external dso_local constant [0 x i8], align 1
@__kstrtabns_tmio_core_mmc_pwr = external dso_local constant [0 x i8], align 1
@__ksymtab_tmio_core_mmc_pwr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tmio_core_mmc_pwr to i32), ptr @__kstrtab_tmio_core_mmc_pwr, ptr @__kstrtabns_tmio_core_mmc_pwr }, section "___ksymtab+tmio_core_mmc_pwr", align 4
@__kstrtab_tmio_core_mmc_clk_div = external dso_local constant [0 x i8], align 1
@__kstrtabns_tmio_core_mmc_clk_div = external dso_local constant [0 x i8], align 1
@__ksymtab_tmio_core_mmc_clk_div = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tmio_core_mmc_clk_div to i32), ptr @__kstrtab_tmio_core_mmc_clk_div, ptr @__kstrtabns_tmio_core_mmc_clk_div }, section "___ksymtab+tmio_core_mmc_clk_div", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_tmio_core_mmc_clk_div, ptr @__ksymtab_tmio_core_mmc_enable, ptr @__ksymtab_tmio_core_mmc_pwr, ptr @__ksymtab_tmio_core_mmc_resume], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tmio_core_mmc_enable(ptr noundef %cnf, i32 noundef %shift, i32 noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %shl = shl i32 4, %shift
  %add.ptr = getelementptr i8, ptr %cnf, i32 %shl
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 512) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  %0 = trunc i32 %base to i16
  %conv = and i16 %0, -2
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %shl4 = shl i32 16, %shift
  %add.ptr5 = getelementptr i8, ptr %cnf, i32 %shl4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 %1) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %shl10 = shl i32 18, %shift
  %add.ptr11 = getelementptr i8, ptr %cnf, i32 %shl10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11, i16 0) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %shl15 = shl i32 74, %shift
  %add.ptr16 = getelementptr i8, ptr %cnf, i32 %shl15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 1) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %shl19 = shl i32 64, %shift
  %add.ptr20 = getelementptr i8, ptr %cnf, i32 %shl19
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 31) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %shl23 = shl i32 73, %shift
  %add.ptr24 = getelementptr i8, ptr %cnf, i32 %shl23
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24, i8 0) #3, !srcloc !22
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tmio_core_mmc_resume(ptr noundef %cnf, i32 noundef %shift, i32 noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %shl = shl i32 4, %shift
  %add.ptr = getelementptr i8, ptr %cnf, i32 %shl
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 512) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %0 = trunc i32 %base to i16
  %conv = and i16 %0, -2
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %shl4 = shl i32 16, %shift
  %add.ptr5 = getelementptr i8, ptr %cnf, i32 %shl4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 %1) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %shl10 = shl i32 18, %shift
  %add.ptr11 = getelementptr i8, ptr %cnf, i32 %shl10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11, i16 0) #3, !srcloc !18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tmio_core_mmc_pwr(ptr noundef %cnf, i32 noundef %shift, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %conv = select i1 %tobool.not, i8 0, i8 2
  %shl = shl i32 73, %shift
  %add.ptr = getelementptr i8, ptr %cnf, i32 %shl
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #3, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tmio_core_mmc_clk_div(ptr noundef %cnf, i32 noundef %shift, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @arm_heavy_mb() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp ne i32 %state, 0
  %conv = zext i1 %tobool.not to i8
  %shl = shl i32 66, %shift
  %add.ptr = getelementptr i8, ptr %cnf, i32 %shl
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #3, !srcloc !22
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_tmio_core_mmc_enable, !1, !"__ksymtab_tmio_core_mmc_enable", i1 false, i1 false}
!1 = !{!"../drivers/mfd/tmio_core.c", i32 46, i32 1}
!2 = !{ptr @__ksymtab_tmio_core_mmc_resume, !3, !"__ksymtab_tmio_core_mmc_resume", i1 false, i1 false}
!3 = !{!"../drivers/mfd/tmio_core.c", i32 57, i32 1}
!4 = !{ptr @__ksymtab_tmio_core_mmc_pwr, !5, !"__ksymtab_tmio_core_mmc_pwr", i1 false, i1 false}
!5 = !{!"../drivers/mfd/tmio_core.c", i32 63, i32 1}
!6 = !{ptr @__ksymtab_tmio_core_mmc_clk_div, !7, !"__ksymtab_tmio_core_mmc_clk_div", i1 false, i1 false}
!7 = !{!"../drivers/mfd/tmio_core.c", i32 69, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2155877474}
!18 = !{i64 4960699}
!19 = !{i64 2155878226}
!20 = !{i64 2155878819}
!21 = !{i64 2155879472}
!22 = !{i64 4961122}
!23 = !{i64 2155879937}
!24 = !{i64 2155880402}
!25 = !{i64 2155882411}
!26 = !{i64 2155883163}
!27 = !{i64 2155883756}
!28 = !{i64 2155885996}
!29 = !{i64 2155887970}
