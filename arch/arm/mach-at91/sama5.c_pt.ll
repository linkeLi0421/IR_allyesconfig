; ModuleID = '/llk/IR_all_yes/arch/arm/mach-at91/sama5.c_pt.bc'
source_filename = "../arch/arm/mach-at91/sama5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Atmel SAMA5\00", [20 x i8] zeroinitializer }, align 32
@sama5_dt_board_compat = internal constant [2 x ptr] [ptr @.str.1, ptr null], section ".init.rodata", align 4
@__mach_desc_sama5_dt = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @sama5_dt_board_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sama5_dt_device_init, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@sama5_alt_dt_board_compat = internal constant [2 x ptr] [ptr @.str.2, ptr null], section ".init.rodata", align 4
@__mach_desc_sama5_alt_dt = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @sama5_alt_dt_board_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 -1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sama5_dt_device_init, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@sama5d2_compat = internal constant [2 x ptr] [ptr @.str.3, ptr null], section ".init.rodata", align 4
@__mach_desc_sama5d2 = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @sama5d2_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 -1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sama5d2_init, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atmel,sama5\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmel,sama5d4\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmel,sama5d2\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 29, i32 1 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 25, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 36, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [30 x i8] c"../arch/arm/mach-at91/sama5.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 54, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__mach_desc_sama5_alt_dt, ptr @__mach_desc_sama5_dt, ptr @__mach_desc_sama5d2, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sama5_dt_device_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_platform_default_populate(ptr noundef null, ptr noundef null, ptr noundef null) #3
  tail call void @sama5_pm_init() #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sama5d2_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_platform_default_populate(ptr noundef null, ptr noundef null, ptr noundef null) #3
  tail call void @sama5d2_pm_init() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @sama5_pm_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @sama5d2_pm_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-at91/sama5.c", i32 29, i32 1}
!2 = !{ptr @__mach_desc_sama5_dt, !1, !"__mach_desc_sama5_dt", i1 false, i1 false}
!3 = !{ptr @__mach_desc_sama5_alt_dt, !4, !"__mach_desc_sama5_alt_dt", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-at91/sama5.c", i32 40, i32 1}
!5 = !{ptr @__mach_desc_sama5d2, !6, !"__mach_desc_sama5d2", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-at91/sama5.c", i32 58, i32 1}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../arch/arm/mach-at91/sama5.c", i32 25, i32 2}
!9 = !{ptr @sama5_dt_board_compat, !10, !"sama5_dt_board_compat", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-at91/sama5.c", i32 24, i32 26}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-at91/sama5.c", i32 36, i32 2}
!13 = !{ptr @sama5_alt_dt_board_compat, !14, !"sama5_alt_dt_board_compat", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-at91/sama5.c", i32 35, i32 26}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-at91/sama5.c", i32 54, i32 2}
!17 = !{ptr @sama5d2_compat, !18, !"sama5d2_compat", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-at91/sama5.c", i32 53, i32 26}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
