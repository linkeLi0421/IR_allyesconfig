; ModuleID = '/llk/IR_all_yes/drivers/clk/socfpga/clk.c_pt.bc'
source_filename = "../drivers/clk/socfpga/clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }

@__of_table_socfpga_pll_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @socfpga_pll_init }, section "__clk_of_table", align 4
@__of_table_socfpga_perip_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-perip-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @socfpga_periph_init }, section "__clk_of_table", align 4
@__of_table_socfpga_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-gate-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @socfpga_gate_init }, section "__clk_of_table", align 4
@__of_table_socfpga_a10_pll_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-a10-pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @socfpga_a10_pll_init }, section "__clk_of_table", align 4
@__of_table_socfpga_a10_perip_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-a10-perip-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @socfpga_a10_periph_init }, section "__clk_of_table", align 4
@__of_table_socfpga_a10_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-a10-gate-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @socfpga_a10_gate_init }, section "__clk_of_table", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__of_table_socfpga_a10_gate_clk, ptr @__of_table_socfpga_a10_perip_clk, ptr @__of_table_socfpga_a10_pll_clk, ptr @__of_table_socfpga_gate_clk, ptr @__of_table_socfpga_perip_clk, ptr @__of_table_socfpga_pll_clk], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @socfpga_pll_init(ptr noundef) #0 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @socfpga_periph_init(ptr noundef) #0 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @socfpga_gate_init(ptr noundef) #0 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @socfpga_a10_pll_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @socfpga_a10_periph_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @socfpga_a10_gate_init(ptr noundef) #1

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__of_table_socfpga_pll_clk, !1, !"__of_table_socfpga_pll_clk", i1 false, i1 false}
!1 = !{!"../drivers/clk/socfpga/clk.c", i32 12, i32 1}
!2 = !{ptr @__of_table_socfpga_perip_clk, !3, !"__of_table_socfpga_perip_clk", i1 false, i1 false}
!3 = !{!"../drivers/clk/socfpga/clk.c", i32 13, i32 1}
!4 = !{ptr @__of_table_socfpga_gate_clk, !5, !"__of_table_socfpga_gate_clk", i1 false, i1 false}
!5 = !{!"../drivers/clk/socfpga/clk.c", i32 14, i32 1}
!6 = !{ptr @__of_table_socfpga_a10_pll_clk, !7, !"__of_table_socfpga_a10_pll_clk", i1 false, i1 false}
!7 = !{!"../drivers/clk/socfpga/clk.c", i32 15, i32 1}
!8 = !{ptr @__of_table_socfpga_a10_perip_clk, !9, !"__of_table_socfpga_a10_perip_clk", i1 false, i1 false}
!9 = !{!"../drivers/clk/socfpga/clk.c", i32 17, i32 1}
!10 = !{ptr @__of_table_socfpga_a10_gate_clk, !11, !"__of_table_socfpga_a10_gate_clk", i1 false, i1 false}
!11 = !{!"../drivers/clk/socfpga/clk.c", i32 19, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
