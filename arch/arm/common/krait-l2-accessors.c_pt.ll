; ModuleID = '/llk/IR_all_yes/arch/arm/common/krait-l2-accessors.c_pt.bc'
source_filename = "../arch/arm/common/krait-l2-accessors.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+krait_set_l2_indirect_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_krait_set_l2_indirect_reg\09\09\09\09"
module asm "\09.long\09__crc_krait_set_l2_indirect_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_krait_set_l2_indirect_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22krait_set_l2_indirect_reg\22\09\09\09\09\09"
module asm "__kstrtabns_krait_set_l2_indirect_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+krait_get_l2_indirect_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_krait_get_l2_indirect_reg\09\09\09\09"
module asm "\09.long\09__crc_krait_get_l2_indirect_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_krait_get_l2_indirect_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22krait_get_l2_indirect_reg\22\09\09\09\09\09"
module asm "__kstrtabns_krait_get_l2_indirect_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }

@krait_l2_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_krait_set_l2_indirect_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_krait_set_l2_indirect_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_krait_set_l2_indirect_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @krait_set_l2_indirect_reg to i32), ptr @__kstrtab_krait_set_l2_indirect_reg, ptr @__kstrtabns_krait_set_l2_indirect_reg }, section "___ksymtab+krait_set_l2_indirect_reg", align 4
@__kstrtab_krait_get_l2_indirect_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_krait_get_l2_indirect_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_krait_get_l2_indirect_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @krait_get_l2_indirect_reg to i32), ptr @__kstrtab_krait_get_l2_indirect_reg, ptr @__kstrtabns_krait_get_l2_indirect_reg }, section "___ksymtab+krait_get_l2_indirect_reg", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"krait_l2_lock\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"krait_l2_lock\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [40 x i8] c"../arch/arm/common/krait-l2-accessors.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 10, i32 8 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_krait_get_l2_indirect_reg, ptr @__ksymtab_krait_set_l2_indirect_reg, ptr @krait_l2_lock, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krait_l2_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @krait_set_l2_indirect_reg(i32 noundef %addr, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @krait_l2_lock) #2
  tail call void asm sideeffect "mcr p15, 3, $0, c15, c0, 6 @ l2cpselr", "r"(i32 %addr) #2, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #2, !srcloc !17
  tail call void asm sideeffect "mcr p15, 3, $0, c15, c0, 7 @ l2cpdr", "r"(i32 %val) #2, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #2, !srcloc !19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @krait_l2_lock, i32 noundef %call) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @krait_get_l2_indirect_reg(i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @krait_l2_lock) #2
  tail call void asm sideeffect "mcr p15, 3, $0, c15, c0, 6 @ l2cpselr", "r"(i32 %addr) #2, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #2, !srcloc !21
  %0 = tail call i32 asm sideeffect "mrc p15, 3, $0, c15, c0, 7 @ l2cpdr", "=r"() #2, !srcloc !22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @krait_l2_lock, i32 noundef %call) #2
  ret i32 %0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__ksymtab_krait_set_l2_indirect_reg, !1, !"__ksymtab_krait_set_l2_indirect_reg", i1 false, i1 false}
!1 = !{!"../arch/arm/common/krait-l2-accessors.c", i32 28, i32 1}
!2 = !{ptr @__ksymtab_krait_get_l2_indirect_reg, !3, !"__ksymtab_krait_get_l2_indirect_reg", i1 false, i1 false}
!3 = !{!"../arch/arm/common/krait-l2-accessors.c", i32 48, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/common/krait-l2-accessors.c", i32 10, i32 8}
!6 = !{ptr @krait_l2_lock, !5, !"krait_l2_lock", i1 false, i1 false}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i64 498}
!17 = !{i64 2149187285}
!18 = !{i64 578}
!19 = !{i64 2149187369}
!20 = !{i64 971}
!21 = !{i64 2149189602}
!22 = !{i64 1051}
