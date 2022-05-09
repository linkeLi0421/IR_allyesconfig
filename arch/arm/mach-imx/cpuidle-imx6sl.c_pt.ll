; ModuleID = '/llk/IR_all_yes/arch/arm/mach-imx/cpuidle-imx6sl.c_pt.bc'
source_filename = "../arch/arm/mach-imx/cpuidle-imx6sl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx6sl_cpuidle\00", [17 x i8] zeroinitializer }, align 32
@imx6sl_cpuidle_driver = internal global { { ptr, ptr, i8, [7 x i8], <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }>, i32, i32, ptr, ptr }, [224 x i8] } { { ptr, ptr, i8, [7 x i8], <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }>, i32, i32, ptr, ptr } { ptr @.str, ptr null, i8 0, [7 x i8] undef, <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }> <{ %struct.cpuidle_state { [16 x i8] c"WFI\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ARM WFI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 1, i32 -1, i32 1, ptr @arm_cpuidle_simple_enter, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"WAIT\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Clock off\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 4, i32 50, i32 0, i32 75, ptr @imx6sl_enter_wait, ptr null, ptr null }, [8 x %struct.cpuidle_state] zeroinitializer }>, i32 2, i32 0, ptr null, ptr null }, [224 x i8] zeroinitializer }, align 32
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 31, i32 10 }
@___asan_gen_.5 = private unnamed_addr constant [22 x i8] c"imx6sl_cpuidle_driver\00", align 1
@___asan_gen_.6 = private constant [38 x i8] c"../arch/arm/mach-imx/cpuidle-imx6sl.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 30, i32 30 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @imx6sl_cpuidle_driver], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6sl_cpuidle_driver to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx6sl_cpuidle_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpuidle_register(ptr noundef nonnull @imx6sl_cpuidle_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_cpuidle_simple_enter(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6sl_enter_wait(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %drv, i32 noundef returned %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @imx6_set_lpm(i32 noundef 1) #4
  tail call void @imx6sl_set_wait_clk(i1 noundef zeroext true) #4
  %0 = tail call i32 @llvm.read_register.i32(metadata !4) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_do_idle, align 4
  %call2 = tail call i32 %7() #4
  tail call void @imx6sl_set_wait_clk(i1 noundef zeroext false) #4
  %call3 = tail call i32 @imx6_set_lpm(i32 noundef 0) #4
  ret i32 %index
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx6_set_lpm(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6sl_set_wait_clk(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.named.register.sp = !{!4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-imx/cpuidle-imx6sl.c", i32 31, i32 10}
!2 = !{ptr @imx6sl_cpuidle_driver, !3, !"imx6sl_cpuidle_driver", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-imx/cpuidle-imx6sl.c", i32 30, i32 30}
!4 = !{!"sp"}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
