; ModuleID = '/llk/IR_all_yes/arch/arm/mach-shmobile/setup-r8a7778.c_pt.bc'
source_filename = "../arch/arm/mach-shmobile/setup-r8a7778.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Generic R8A7778 (Flattened Device Tree)\00", [56 x i8] zeroinitializer }, align 32
@r8a7778_compat_dt = internal constant [2 x ptr] [ptr @.str.1, ptr null], section ".init.rodata", align 4
@__mach_desc_R8A7778_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @r8a7778_compat_dt, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shmobile_init_delay, ptr @r8a7778_init_irq_dt, ptr null, ptr null, ptr @shmobile_init_late, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"renesas,r8a7778\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 49, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [42 x i8] c"../arch/arm/mach-shmobile/setup-r8a7778.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 45, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__mach_desc_R8A7778_DT, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmobile_init_delay() #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @r8a7778_init_irq_dt() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef -26214400, i32 noundef 1048576) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !16

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-shmobile/setup-r8a7778.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !17
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @irqchip_init() #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %add.ptr = getelementptr i8, ptr %call, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -141) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %add.ptr16 = getelementptr i8, ptr %call, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 -1) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %add.ptr20 = getelementptr i8, ptr %call, i32 533128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 1929851656) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  %add.ptr24 = getelementptr i8, ptr %call, i32 533132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 269562112) #3, !srcloc !19
  tail call void @iounmap(ptr noundef nonnull %call) #3
  ret void
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @shmobile_init_late() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @shmobile_suspend_init() #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @irqchip_init() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmobile_suspend_init() local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-shmobile/setup-r8a7778.c", i32 49, i32 1}
!2 = !{ptr @__mach_desc_R8A7778_DT, !1, !"__mach_desc_R8A7778_DT", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-shmobile/setup-r8a7778.c", i32 45, i32 2}
!5 = !{ptr @r8a7778_compat_dt, !6, !"r8a7778_compat_dt", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-shmobile/setup-r8a7778.c", i32 44, i32 26}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2153460572, i64 2153461074, i64 2153460609, i64 2153460665, i64 2153460699, i64 2153460723, i64 2153460764, i64 2153460785, i64 2153460813, i64 2153460847}
!18 = !{i64 2153462060}
!19 = !{i64 684447}
!20 = !{i64 2153462479}
!21 = !{i64 2153462898}
!22 = !{i64 2153463317}
