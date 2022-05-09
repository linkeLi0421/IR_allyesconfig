; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/opcodes.c_pt.bc'
source_filename = "../arch/arm/kernel/opcodes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+arm_check_condition\22, \22a\22\09"
module asm "\09.weak\09__crc_arm_check_condition\09\09\09\09"
module asm "\09.long\09__crc_arm_check_condition\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_check_condition:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_check_condition\22\09\09\09\09\09"
module asm "__kstrtabns_arm_check_condition:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@cc_map = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 -3856, i16 3855, i16 -13108, i16 13107, i16 -256, i16 255, i16 -21846, i16 21845, i16 3084, i16 -3085, i16 -21931, i16 21930, i16 2565, i16 -2566, i16 -1, i16 0], [32 x i8] zeroinitializer }, align 32
@__kstrtab_arm_check_condition = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_check_condition = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_check_condition = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_check_condition to i32), ptr @__kstrtab_arm_check_condition, ptr @__kstrtabns_arm_check_condition }, section "___ksymtab_gpl+arm_check_condition", align 4
@___asan_gen_.1 = private unnamed_addr constant [7 x i8] c"cc_map\00", align 1
@___asan_gen_.2 = private constant [29 x i8] c"../arch/arm/kernel/opcodes.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 19, i32 29 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_arm_check_condition, ptr @cc_map], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @arm_check_condition(i32 noundef %opcode, i32 noundef %psr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %opcode, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr)
  %cmp.not = icmp eq i32 %shr, 15
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %shr1 = lshr i32 %psr, 28
  %arrayidx = getelementptr [16 x i16], ptr @cc_map, i32 0, i32 %shr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %2 = lshr i32 %conv, %shr1
  %3 = and i32 %2, 1
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ %3, %if.then ], [ 2, %entry.if.end5_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_arm_check_condition, !1, !"__ksymtab_arm_check_condition", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/opcodes.c", i32 69, i32 1}
!2 = !{ptr @cc_map, !3, !"cc_map", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/opcodes.c", i32 19, i32 29}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
