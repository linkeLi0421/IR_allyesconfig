; ModuleID = '/llk/IR_all_yes/drivers/clk/sifive/fu740-prci.c_pt.bc'
source_filename = "../drivers/clk/sifive/fu740-prci.c"
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
@sifive_fu740_prci_wrpll_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @sifive_prci_clock_enable, ptr @sifive_prci_clock_disable, ptr @sifive_clk_is_enabled, ptr null, ptr null, ptr null, ptr @sifive_prci_wrpll_recalc_rate, ptr @sifive_prci_wrpll_round_rate, ptr null, ptr null, ptr null, ptr @sifive_prci_wrpll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__prci_corepll_data = internal global %struct.__prci_wrpll_data { %struct.wrpll_cfg zeroinitializer, ptr @sifive_prci_coreclksel_use_hfclk, ptr @sifive_prci_coreclksel_use_final_corepll, i8 4, i8 8 }, align 4
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ddrpll\00", [25 x i8] zeroinitializer }, align 32
@sifive_fu740_prci_wrpll_ro_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sifive_prci_wrpll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__prci_ddrpll_data = internal global %struct.__prci_wrpll_data { %struct.wrpll_cfg zeroinitializer, ptr null, ptr null, i8 12, i8 16 }, align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gemgxlpll\00", [22 x i8] zeroinitializer }, align 32
@__prci_gemgxlpll_data = internal global %struct.__prci_wrpll_data { %struct.wrpll_cfg zeroinitializer, ptr null, ptr null, i8 28, i8 32 }, align 4
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dvfscorepll\00", [20 x i8] zeroinitializer }, align 32
@__prci_dvfscorepll_data = internal global %struct.__prci_wrpll_data { %struct.wrpll_cfg zeroinitializer, ptr @sifive_prci_corepllsel_use_corepll, ptr @sifive_prci_corepllsel_use_dvfscorepll, i8 56, i8 60 }, align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hfpclkpll\00", [22 x i8] zeroinitializer }, align 32
@__prci_hfpclkpll_data = internal global %struct.__prci_wrpll_data { %struct.wrpll_cfg zeroinitializer, ptr @sifive_prci_hfpclkpllsel_use_hfclk, ptr @sifive_prci_hfpclkpllsel_use_hfpclkpll, i8 80, i8 84 }, align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cltxpll\00", [24 x i8] zeroinitializer }, align 32
@__prci_cltxpll_data = internal global %struct.__prci_wrpll_data { %struct.wrpll_cfg zeroinitializer, ptr null, ptr null, i8 48, i8 52 }, align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tlclk\00", [26 x i8] zeroinitializer }, align 32
@sifive_fu740_prci_tlclksel_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sifive_prci_tlclksel_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@sifive_fu740_prci_hfpclkplldiv_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sifive_prci_hfpclkplldiv_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_aux\00", [23 x i8] zeroinitializer }, align 32
@sifive_fu740_prci_pcie_aux_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @sifive_prci_pcie_aux_clock_enable, ptr @sifive_prci_pcie_aux_clock_disable, ptr @sifive_prci_pcie_aux_clock_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__prci_init_clocks_fu740 = dso_local local_unnamed_addr global [9 x %struct.__prci_clock] [%struct.__prci_clock { ptr @.str, ptr @.str.1, ptr @sifive_fu740_prci_wrpll_clk_ops, %struct.clk_hw zeroinitializer, ptr @__prci_corepll_data, ptr null }, %struct.__prci_clock { ptr @.str.2, ptr @.str.1, ptr @sifive_fu740_prci_wrpll_ro_clk_ops, %struct.clk_hw zeroinitializer, ptr @__prci_ddrpll_data, ptr null }, %struct.__prci_clock { ptr @.str.3, ptr @.str.1, ptr @sifive_fu740_prci_wrpll_clk_ops, %struct.clk_hw zeroinitializer, ptr @__prci_gemgxlpll_data, ptr null }, %struct.__prci_clock { ptr @.str.4, ptr @.str.1, ptr @sifive_fu740_prci_wrpll_clk_ops, %struct.clk_hw zeroinitializer, ptr @__prci_dvfscorepll_data, ptr null }, %struct.__prci_clock { ptr @.str.5, ptr @.str.1, ptr @sifive_fu740_prci_wrpll_clk_ops, %struct.clk_hw zeroinitializer, ptr @__prci_hfpclkpll_data, ptr null }, %struct.__prci_clock { ptr @.str.6, ptr @.str.1, ptr @sifive_fu740_prci_wrpll_clk_ops, %struct.clk_hw zeroinitializer, ptr @__prci_cltxpll_data, ptr null }, %struct.__prci_clock { ptr @.str.7, ptr @.str, ptr @sifive_fu740_prci_tlclksel_clk_ops, %struct.clk_hw zeroinitializer, ptr null, ptr null }, %struct.__prci_clock { ptr @.str.8, ptr @.str.5, ptr @sifive_fu740_prci_hfpclkplldiv_clk_ops, %struct.clk_hw zeroinitializer, ptr null, ptr null }, %struct.__prci_clock { ptr @.str.9, ptr @.str.1, ptr @sifive_fu740_prci_pcie_aux_clk_ops, %struct.clk_hw zeroinitializer, ptr null, ptr null }], align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 84, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 85, i32 18 }
@___asan_gen_.16 = private unnamed_addr constant [32 x i8] c"sifive_fu740_prci_wrpll_clk_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 54, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 90, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [35 x i8] c"sifive_fu740_prci_wrpll_ro_clk_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 63, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 96, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 102, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 108, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 114, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 120, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [35 x i8] c"sifive_fu740_prci_tlclksel_clk_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 67, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 125, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [39 x i8] c"sifive_fu740_prci_hfpclkplldiv_clk_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 71, i32 29 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 130, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [35 x i8] c"sifive_fu740_prci_pcie_aux_clk_ops\00", align 1
@___asan_gen_.53 = private constant [35 x i8] c"../drivers/clk/sifive/fu740-prci.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 75, i32 29 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @.str.1, ptr @sifive_fu740_prci_wrpll_clk_ops, ptr @.str.2, ptr @sifive_fu740_prci_wrpll_ro_clk_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sifive_fu740_prci_tlclksel_clk_ops, ptr @.str.8, ptr @sifive_fu740_prci_hfpclkplldiv_clk_ops, ptr @.str.9, ptr @sifive_fu740_prci_pcie_aux_clk_ops], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_fu740_prci_wrpll_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_fu740_prci_wrpll_ro_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_fu740_prci_tlclksel_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_fu740_prci_hfpclkplldiv_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sifive_fu740_prci_pcie_aux_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
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
declare dso_local void @sifive_prci_coreclksel_use_final_corepll(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sifive_prci_corepllsel_use_corepll(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sifive_prci_corepllsel_use_dvfscorepll(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sifive_prci_hfpclkpllsel_use_hfclk(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sifive_prci_hfpclkpllsel_use_hfpclkpll(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sifive_prci_tlclksel_recalc_rate(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sifive_prci_hfpclkplldiv_recalc_rate(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sifive_prci_pcie_aux_clock_enable(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sifive_prci_pcie_aux_clock_disable(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sifive_prci_pcie_aux_clock_is_enabled(ptr noundef) #0

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 84, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 85, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 90, i32 11}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 96, i32 11}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 102, i32 11}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 108, i32 11}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 114, i32 11}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 120, i32 11}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 125, i32 11}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 130, i32 11}
!20 = !{ptr @__prci_init_clocks_fu740, !21, !"__prci_init_clocks_fu740", i1 false, i1 false}
!21 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 82, i32 21}
!22 = !{ptr @sifive_fu740_prci_wrpll_clk_ops, !23, !"sifive_fu740_prci_wrpll_clk_ops", i1 false, i1 false}
!23 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 54, i32 29}
!24 = !{ptr @__prci_corepll_data, !25, !"__prci_corepll_data", i1 false, i1 false}
!25 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 16, i32 33}
!26 = !{ptr @sifive_fu740_prci_wrpll_ro_clk_ops, !27, !"sifive_fu740_prci_wrpll_ro_clk_ops", i1 false, i1 false}
!27 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 63, i32 29}
!28 = !{ptr @__prci_ddrpll_data, !29, !"__prci_ddrpll_data", i1 false, i1 false}
!29 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 23, i32 33}
!30 = !{ptr @__prci_gemgxlpll_data, !31, !"__prci_gemgxlpll_data", i1 false, i1 false}
!31 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 28, i32 33}
!32 = !{ptr @__prci_dvfscorepll_data, !33, !"__prci_dvfscorepll_data", i1 false, i1 false}
!33 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 33, i32 33}
!34 = !{ptr @__prci_hfpclkpll_data, !35, !"__prci_hfpclkpll_data", i1 false, i1 false}
!35 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 40, i32 33}
!36 = !{ptr @__prci_cltxpll_data, !37, !"__prci_cltxpll_data", i1 false, i1 false}
!37 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 47, i32 33}
!38 = !{ptr @sifive_fu740_prci_tlclksel_clk_ops, !39, !"sifive_fu740_prci_tlclksel_clk_ops", i1 false, i1 false}
!39 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 67, i32 29}
!40 = !{ptr @sifive_fu740_prci_hfpclkplldiv_clk_ops, !41, !"sifive_fu740_prci_hfpclkplldiv_clk_ops", i1 false, i1 false}
!41 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 71, i32 29}
!42 = !{ptr @sifive_fu740_prci_pcie_aux_clk_ops, !43, !"sifive_fu740_prci_pcie_aux_clk_ops", i1 false, i1 false}
!43 = !{!"../drivers/clk/sifive/fu740-prci.c", i32 75, i32 29}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
