; ModuleID = '/llk/IR_all_yes/drivers/cpuidle/cpuidle-kirkwood.c_pt.bc'
source_filename = "../drivers/cpuidle/cpuidle-kirkwood.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_cpuidle_kirkwood__170_79_kirkwood_cpuidle_driver_init6 = internal global ptr @kirkwood_cpuidle_driver_init, section ".initcall6.init", align 4
@kirkwood_cpuidle_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @kirkwood_cpuidle_probe, ptr @kirkwood_cpuidle_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_kirkwood_cpuidle_driver_exit = internal global ptr @kirkwood_cpuidle_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [53 x i8] c"cpuidle_kirkwood.author=Andrew Lunn <andrew@lunn.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [54 x i8] c"cpuidle_kirkwood.description=Kirkwood cpu idle driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [55 x i8] c"cpuidle_kirkwood.file=drivers/cpuidle/cpuidle-kirkwood\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [32 x i8] c"cpuidle_kirkwood.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [49 x i8] c"cpuidle_kirkwood.alias=platform:kirkwood-cpuidle\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kirkwood_cpuidle\00", [47 x i8] zeroinitializer }, align 32
@ddr_operation_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kirkwood_idle\00", [18 x i8] zeroinitializer }, align 32
@kirkwood_idle_driver = internal global { { ptr, ptr, i8, [7 x i8], <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }>, i32, i32, ptr, ptr }, [224 x i8] } { { ptr, ptr, i8, [7 x i8], <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }>, i32, i32, ptr, ptr } { ptr @.str.1, ptr null, i8 0, [7 x i8] undef, <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }> <{ %struct.cpuidle_state { [16 x i8] c"WFI\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ARM WFI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 1, i32 -1, i32 1, ptr @arm_cpuidle_simple_enter, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"DDR SR\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"WFI and DDR Self Refresh\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 10, i32 0, i32 100000, ptr @kirkwood_enter_idle, ptr null, ptr null }, [8 x %struct.cpuidle_state] zeroinitializer }>, i32 2, i32 0, ptr null, ptr null }, [224 x i8] zeroinitializer }, align 32
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@___asan_gen_.3 = private unnamed_addr constant [24 x i8] c"kirkwood_cpuidle_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 71, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 75, i32 14 }
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"ddr_operation_base\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 28, i32 22 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 42, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"kirkwood_idle_driver\00", align 1
@___asan_gen_.16 = private constant [38 x i8] c"../drivers/cpuidle/cpuidle-kirkwood.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 41, i32 30 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_kirkwood_cpuidle_driver_exit, ptr @__initcall__kmod_cpuidle_kirkwood__170_79_kirkwood_cpuidle_driver_init6, ptr @kirkwood_cpuidle_driver_exit, ptr @kirkwood_cpuidle_driver, ptr @.str, ptr @ddr_operation_base, ptr @.str.1, ptr @kirkwood_idle_driver], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_cpuidle_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_operation_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_idle_driver to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kirkwood_cpuidle_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @kirkwood_cpuidle_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kirkwood_cpuidle_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @kirkwood_cpuidle_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirkwood_cpuidle_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  store ptr %call, ptr @ddr_operation_base, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 @cpuidle_register(ptr noundef nonnull @kirkwood_idle_driver, ptr noundef null) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirkwood_cpuidle_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpuidle_unregister(ptr noundef nonnull @kirkwood_idle_driver) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_cpuidle_simple_enter(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirkwood_enter_idle(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %drv, i32 noundef returned %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %0 = load ptr, ptr @ddr_operation_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 117440512) #4, !srcloc !33
  %1 = tail call i32 @llvm.read_register.i32(metadata !22) #4
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_do_idle, align 4
  %call1 = tail call i32 %8() #4
  ret i32 %index
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_cpuidle_kirkwood__170_79_kirkwood_cpuidle_driver_init6, !1, !"__initcall__kmod_cpuidle_kirkwood__170_79_kirkwood_cpuidle_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpuidle/cpuidle-kirkwood.c", i32 79, i32 1}
!2 = !{ptr @__exitcall_kirkwood_cpuidle_driver_exit, !1, !"__exitcall_kirkwood_cpuidle_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/cpuidle/cpuidle-kirkwood.c", i32 81, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/cpuidle/cpuidle-kirkwood.c", i32 82, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/cpuidle/cpuidle-kirkwood.c", i32 83, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias175, !11, !"__UNIQUE_ID_alias175", i1 false, i1 false}
!11 = !{!"../drivers/cpuidle/cpuidle-kirkwood.c", i32 84, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/cpuidle/cpuidle-kirkwood.c", i32 75, i32 14}
!14 = !{ptr @kirkwood_cpuidle_driver, !15, !"kirkwood_cpuidle_driver", i1 false, i1 false}
!15 = !{!"../drivers/cpuidle/cpuidle-kirkwood.c", i32 71, i32 31}
!16 = !{ptr @ddr_operation_base, !17, !"ddr_operation_base", i1 false, i1 false}
!17 = !{!"../drivers/cpuidle/cpuidle-kirkwood.c", i32 28, i32 22}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/cpuidle/cpuidle-kirkwood.c", i32 42, i32 12}
!20 = !{ptr @kirkwood_idle_driver, !21, !"kirkwood_idle_driver", i1 false, i1 false}
!21 = !{!"../drivers/cpuidle/cpuidle-kirkwood.c", i32 41, i32 30}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2152373618}
!33 = !{i64 4801517}
