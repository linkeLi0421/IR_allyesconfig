; ModuleID = '/llk/IR_all_yes/arch/arm/mm/physaddr.c_pt.bc'
source_filename = "../arch/arm/mm/physaddr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__virt_to_phys\22, \22a\22\09"
module asm "\09.weak\09__crc___virt_to_phys\09\09\09\09"
module asm "\09.long\09__crc___virt_to_phys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___virt_to_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22__virt_to_phys\22\09\09\09\09\09"
module asm "__kstrtabns___virt_to_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__phys_addr_symbol\22, \22a\22\09"
module asm "\09.weak\09__crc___phys_addr_symbol\09\09\09\09"
module asm "\09.long\09__crc___phys_addr_symbol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___phys_addr_symbol:\09\09\09\09\09"
module asm "\09.asciz \09\22__phys_addr_symbol\22\09\09\09\09\09"
module asm "__kstrtabns___phys_addr_symbol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [23 x i8] c"arch/arm/mm/physaddr.c\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"virt_to_phys used for non-linear address: %pK (%pS)\0A\00", align 1
@__kstrtab___virt_to_phys = external dso_local constant [0 x i8], align 1
@__kstrtabns___virt_to_phys = external dso_local constant [0 x i8], align 1
@__ksymtab___virt_to_phys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__virt_to_phys to i32), ptr @__kstrtab___virt_to_phys, ptr @__kstrtabns___virt_to_phys }, section "___ksymtab+__virt_to_phys", align 4
@_stext = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@__kstrtab___phys_addr_symbol = external dso_local constant [0 x i8], align 1
@__kstrtabns___phys_addr_symbol = external dso_local constant [0 x i8], align 1
@__ksymtab___phys_addr_symbol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__phys_addr_symbol to i32), ptr @__kstrtab___phys_addr_symbol, ptr @__kstrtabns___phys_addr_symbol }, section "___ksymtab+__phys_addr_symbol", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@arm_dma_zone_size = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab___phys_addr_symbol, ptr @__ksymtab___virt_to_phys], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__virt_to_phys(i32 noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @high_memory, align 4
  %tobool.i = icmp eq ptr %0, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %x)
  %cmp.i = icmp ugt i32 %x, -1073741825
  %or.cond.i = and i1 %cmp.i, %tobool.i
  br i1 %or.cond.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end

if.end.i:                                         ; preds = %entry
  %tobool1.i = icmp ne ptr %0, null
  %or.cond14.i = and i1 %cmp.i, %tobool1.i
  %1 = ptrtoint ptr %0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %x)
  %cmp5.i = icmp ugt i32 %1, %x
  %or.cond19.i = and i1 %or.cond14.i, %cmp5.i
  br i1 %or.cond19.i, label %if.end.i.if.end_crit_edge, label %__virt_addr_valid.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end

__virt_addr_valid.exit:                           ; preds = %if.end.i
  %2 = load i32, ptr @arm_dma_zone_size, align 4
  %3 = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1342177279, i32 %3)
  %4 = icmp ult i32 %3, 1342177279
  %add.i = add i32 %2, -1073741824
  %cond.i = select i1 %4, i32 %add.i, i32 -1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %x)
  %cmp11.i = icmp eq i32 %cond.i, %x
  br i1 %cmp11.i, label %__virt_addr_valid.exit.if.end_crit_edge, label %do.end, !prof !9

__virt_addr_valid.exit.if.end_crit_edge:          ; preds = %__virt_addr_valid.exit
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end

do.end:                                           ; preds = %__virt_addr_valid.exit
  call void @__sanitizer_cov_trace_pc() #3
  %5 = inttoptr i32 %x to ptr
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %5, ptr noundef %5) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %__virt_addr_valid.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %x, i32 -2130706432, i32 8454144) #5, !srcloc !10
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__phys_addr_symbol(i32 noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %x, i32 ptrtoint (ptr @_stext to i32))
  %cmp = icmp ult i32 %x, ptrtoint (ptr @_stext to i32)
  call void @__sanitizer_cov_trace_cmp4(i32 %x, i32 ptrtoint (ptr @_end to i32))
  %cmp1 = icmp ugt i32 %x, ptrtoint (ptr @_end to i32)
  %0 = or i1 %cmp, %cmp1
  br i1 %0, label %do.body3, label %do.end6, !prof !11

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/physaddr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #2, !srcloc !12
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %1 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %x, i32 -2130706432, i32 8454144) #5, !srcloc !10
  ret i32 %1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nomerge }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2149071290, i64 2149071313, i64 2149071345, i64 2149071377, i64 2149071415, i64 2149071445}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2153289588, i64 2153294135, i64 2153289625, i64 2153289681, i64 2153289715, i64 2153289739, i64 2153289780, i64 2153289801, i64 2153289829, i64 2153289863}
