; ModuleID = '/llk/IR_all_yes/drivers/clk/sifive/fu540-prci.c_pt.bc'
source_filename = "../drivers/clk/sifive/fu540-prci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__prci_wrpll_data = type { %struct.wrpll_cfg, ptr, ptr, i8, i8 }
%struct.wrpll_cfg = type { i8, i8, i8, i8, i16, [6 x i32], i32, i8, i8 }
%struct.__prci_clock = type { ptr, ptr, ptr, %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"corepll\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hfclk\00", [26 x i8] zeroinitializer }, align 32
@sifive_fu540_prci_wrpll_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @sifive_prci_clock_enable, ptr @sifive_prci_clock_disable, ptr @sifive_clk_is_enabled, ptr null, ptr null, ptr null, ptr @sifive_prci_wrpll_recalc_rate, ptr @sifive_prci_wrpll_round_rate, ptr null, ptr null, ptr null, ptr @sifive_prci_wrpll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__prci_corepll_data = internal global %struct.__prci_wrpll_data { %struct.wrpll_cfg zeroinitializer, ptr @sifive_prci_coreclksel_use_hfclk, ptr @sifive_prci_coreclksel_use_corepll, i8 4, i8 8 }, align 4
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ddrpll\00", [25 x i8] zeroinitializer }, align 32
@sifive_fu540_prci_wrpll_ro_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sifive_prci_wrpll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__prci_ddrpll_data = internal global %struct.__prci_wrpll_data { %struct.wrpll_cfg zeroinitializer, ptr null, ptr null, i8 12, i8 16 }, align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gemgxlpll\00", [22 x i8] zeroinitializer }, align 32
@__prci_gemgxlpll_data = internal global %struct.__prci_wrpll_data { %struct.wrpll_cfg zeroinitializer, ptr null, ptr null, i8 28, i8 32 }, align 4
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tlclk\00", [26 x i8] zeroinitializer }, align 32
@sifive_fu540_prci_tlclksel_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sifive_prci_tlclksel_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__prci_init_clocks_fu540 = dso_local local_unnamed_addr global [4 x %struct.__prci_clock] [%struct.__prci_clock { ptr @.str, ptr @.str.1, ptr @sifive_fu540_prci_wrpll_clk_ops, %struct.clk_hw zeroinitializer, ptr @__prci_corepll_data, ptr null }, %struct.__prci_clock { ptr @.str.2, ptr @.str.1, ptr @sifive_fu540_prci_wrpll_ro_clk_ops, %struct.clk_hw zeroinitializer, ptr @__prci_ddrpll_data, ptr null }, %struct.__prci_clock { ptr @.str.3, ptr @.str.1, ptr @sifive_fu540_prci_wrpll_clk_ops, %struct.clk_hw zeroinitializer, ptr @__prci_gemgxlpll_data, ptr null }, %struct.__prci_clock { ptr @.str.4, ptr @.str, ptr @sifive_fu540_prci_tlclksel_clk_ops, %struct.clk_hw zeroinitializer, ptr null, ptr null }], align 4
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 67, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 68, i32 18 }
@___asan_gen_.11 = private unnamed_addr constant [32 x i8] c"sifive_fu540_prci_wrpll_clk_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 47, i32 29 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 73, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [35 x i8] c"sifive_fu540_prci_wrpll_ro_clk_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 56, i32 29 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 79, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 85, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [35 x i8] c"sifive_fu540_prci_tlclksel_clk_ops\00", align 1
@___asan_gen_.27 = private constant [35 x i8] c"../drivers/clk/sifive/fu540-prci.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 60, i32 29 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @sifive_fu540_prci_wrpll_clk_ops, ptr @.str.2, ptr @sifive_fu540_prci_wrpll_ro_clk_ops, ptr @.str.3, ptr @.str.4, ptr @sifive_fu540_prci_tlclksel_clk_ops], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_fu540_prci_wrpll_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_fu540_prci_wrpll_ro_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_fu540_prci_tlclksel_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sifive_prci_clock_enable(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sifive_prci_clock_disable(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sifive_clk_is_enabled(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sifive_prci_wrpll_recalc_rate(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sifive_prci_wrpll_round_rate(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sifive_prci_wrpll_set_rate(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sifive_prci_coreclksel_use_hfclk(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sifive_prci_coreclksel_use_corepll(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sifive_prci_tlclksel_recalc_rate(ptr noundef, i32 noundef) #0

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/sifive/fu540-prci.c", i32 67, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/sifive/fu540-prci.c", i32 68, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/sifive/fu540-prci.c", i32 73, i32 11}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/sifive/fu540-prci.c", i32 79, i32 11}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/sifive/fu540-prci.c", i32 85, i32 11}
!10 = !{ptr @__prci_init_clocks_fu540, !11, !"__prci_init_clocks_fu540", i1 false, i1 false}
!11 = !{!"../drivers/clk/sifive/fu540-prci.c", i32 65, i32 21}
!12 = !{ptr @sifive_fu540_prci_wrpll_clk_ops, !13, !"sifive_fu540_prci_wrpll_clk_ops", i1 false, i1 false}
!13 = !{!"../drivers/clk/sifive/fu540-prci.c", i32 47, i32 29}
!14 = !{ptr @__prci_corepll_data, !15, !"__prci_corepll_data", i1 false, i1 false}
!15 = !{!"../drivers/clk/sifive/fu540-prci.c", i32 28, i32 33}
!16 = !{ptr @sifive_fu540_prci_wrpll_ro_clk_ops, !17, !"sifive_fu540_prci_wrpll_ro_clk_ops", i1 false, i1 false}
!17 = !{!"../drivers/clk/sifive/fu540-prci.c", i32 56, i32 29}
!18 = !{ptr @__prci_ddrpll_data, !19, !"__prci_ddrpll_data", i1 false, i1 false}
!19 = !{!"../drivers/clk/sifive/fu540-prci.c", i32 35, i32 33}
!20 = !{ptr @__prci_gemgxlpll_data, !21, !"__prci_gemgxlpll_data", i1 false, i1 false}
!21 = !{!"../drivers/clk/sifive/fu540-prci.c", i32 40, i32 33}
!22 = !{ptr @sifive_fu540_prci_tlclksel_clk_ops, !23, !"sifive_fu540_prci_tlclksel_clk_ops", i1 false, i1 false}
!23 = !{!"../drivers/clk/sifive/fu540-prci.c", i32 60, i32 29}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
