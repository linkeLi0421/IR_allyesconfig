; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu_mmc_timing.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_mmc_timing.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sunxi_ccu_set_mmc_timing_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_sunxi_ccu_set_mmc_timing_mode\09\09\09\09"
module asm "\09.long\09__crc_sunxi_ccu_set_mmc_timing_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunxi_ccu_set_mmc_timing_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22sunxi_ccu_set_mmc_timing_mode\22\09\09\09\09\09"
module asm "__kstrtabns_sunxi_ccu_set_mmc_timing_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sunxi_ccu_get_mmc_timing_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_sunxi_ccu_get_mmc_timing_mode\09\09\09\09"
module asm "\09.long\09__crc_sunxi_ccu_get_mmc_timing_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunxi_ccu_get_mmc_timing_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22sunxi_ccu_get_mmc_timing_mode\22\09\09\09\09\09"
module asm "__kstrtabns_sunxi_ccu_get_mmc_timing_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_sunxi_ccu_set_mmc_timing_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunxi_ccu_set_mmc_timing_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_sunxi_ccu_set_mmc_timing_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunxi_ccu_set_mmc_timing_mode to i32), ptr @__kstrtab_sunxi_ccu_set_mmc_timing_mode, ptr @__kstrtabns_sunxi_ccu_set_mmc_timing_mode }, section "___ksymtab_gpl+sunxi_ccu_set_mmc_timing_mode", align 4
@__kstrtab_sunxi_ccu_get_mmc_timing_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunxi_ccu_get_mmc_timing_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_sunxi_ccu_get_mmc_timing_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunxi_ccu_get_mmc_timing_mode to i32), ptr @__kstrtab_sunxi_ccu_get_mmc_timing_mode, ptr @__kstrtabns_sunxi_ccu_get_mmc_timing_mode }, section "___ksymtab_gpl+sunxi_ccu_get_mmc_timing_mode", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_sunxi_ccu_get_mmc_timing_mode, ptr @__ksymtab_sunxi_ccu_set_mmc_timing_mode], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sunxi_ccu_set_mmc_timing_mode(ptr noundef %clk, i1 noundef zeroext %new_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__clk_get_hw(ptr noundef %clk) #3
  %features = getelementptr i8, ptr %call, i32 -8
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i = getelementptr i8, ptr %call, i32 -20
  %lock = getelementptr i8, ptr %call, i32 -4
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #3
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %reg = getelementptr i8, ptr %call, i32 -16
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg, align 4
  %conv7 = zext i16 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %9 = and i32 %8, -65
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %masksel = select i1 %new_mode, i32 1073741824, i32 0
  %val.0 = or i32 %10, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %11 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %reg, align 4
  %conv20 = zext i16 %15 to i32
  %add.ptr21 = getelementptr i8, ptr %13, i32 %conv20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %11) #3, !srcloc !16
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %call4) #3
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body2 ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sunxi_ccu_get_mmc_timing_mode(ptr noundef %clk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__clk_get_hw(ptr noundef %clk) #3
  %features = getelementptr i8, ptr %call, i32 -8
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i = getelementptr i8, ptr %call, i32 -20
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %reg = getelementptr i8, ptr %call, i32 -16
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg, align 4
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %7 = lshr i32 %6, 6
  %.lobit = and i32 %7, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %.lobit, %if.end ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_sunxi_ccu_set_mmc_timing_mode, !1, !"__ksymtab_sunxi_ccu_set_mmc_timing_mode", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu_mmc_timing.c", i32 43, i32 1}
!2 = !{ptr @__ksymtab_sunxi_ccu_get_mmc_timing_mode, !3, !"__ksymtab_sunxi_ccu_get_mmc_timing_mode", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi-ng/ccu_mmc_timing.c", i32 63, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 4027021}
!14 = !{i64 2151589620}
!15 = !{i64 2151590003}
!16 = !{i64 4026603}
!17 = !{i64 2151592550}
