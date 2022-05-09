; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mt8516.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt8516.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_fixed_clk = type { i32, ptr, ptr, i32 }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.mtk_fixed_factor = type { i32, ptr, ptr, i32, i32 }
%struct.mtk_composite = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mtk_clk_divider = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_pll_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8 }
%struct.mtk_pll_div_table = type { i32, i32 }

@__of_table_mtk_topckgen = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8516-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_topckgen_init }, section "__clk_of_table", align 4
@__of_table_mtk_infracfg = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8516-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_infracfg_init }, section "__clk_of_table", align 4
@__of_table_mtk_apmixedsys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8516-apmixedsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_apmixedsys_init }, section "__clk_of_table", align 4
@mtk_topckgen_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s(): ioremap failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_topckgen_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/mediatek/clk-mt8516.c\00", [62 x i8] zeroinitializer }, align 32
@mtk_topckgen_init._entry_ptr = internal global ptr @mtk_topckgen_init._entry, section ".printk_index", align 4
@fixed_clks = internal constant [3 x %struct.mtk_fixed_clk] [%struct.mtk_fixed_clk { i32 0, ptr @.str.6, ptr null, i32 0 }, %struct.mtk_fixed_clk { i32 1, ptr @.str.7, ptr @.str.6, i32 26000000 }, %struct.mtk_fixed_clk { i32 2, ptr @.str.8, ptr @.str.9, i32 800000000 }], section ".init.rodata", align 4
@top_clks = internal constant [86 x %struct.mtk_gate] [%struct.mtk_gate { i32 46, ptr @.str.10, ptr @.str.11, ptr @top1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 47, ptr @.str.12, ptr @.str.11, ptr @top1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 48, ptr @.str.13, ptr @.str.14, ptr @top1_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 49, ptr @.str.15, ptr @.str.16, ptr @top1_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 50, ptr @.str.17, ptr @.str.11, ptr @top1_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 51, ptr @.str.18, ptr @.str.19, ptr @top1_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 52, ptr @.str.20, ptr @.str.21, ptr @top1_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 53, ptr @.str.22, ptr @.str.23, ptr @top1_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 54, ptr @.str.24, ptr @.str.11, ptr @top1_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 55, ptr @.str.25, ptr @.str.26, ptr @top1_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 56, ptr @.str.27, ptr @.str.28, ptr @top1_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 57, ptr @.str.29, ptr @.str.11, ptr @top1_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 58, ptr @.str.30, ptr @.str.31, ptr @top1_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 59, ptr @.str.32, ptr @.str.33, ptr @top1_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 60, ptr @.str.34, ptr @.str.11, ptr @top1_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 61, ptr @.str.35, ptr @.str.36, ptr @top1_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 62, ptr @.str.37, ptr @.str.38, ptr @top1_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 63, ptr @.str.39, ptr @.str.40, ptr @top1_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 64, ptr @.str.41, ptr @.str.42, ptr @top1_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 65, ptr @.str.43, ptr @.str.33, ptr @top1_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 66, ptr @.str.44, ptr @.str.11, ptr @top1_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 67, ptr @.str.45, ptr @.str.33, ptr @top1_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 68, ptr @.str.46, ptr @.str.47, ptr @top1_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 69, ptr @.str.48, ptr @.str.33, ptr @top1_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 70, ptr @.str.49, ptr @.str.33, ptr @top1_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 71, ptr @.str.50, ptr @.str.33, ptr @top1_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 72, ptr @.str.51, ptr @.str.33, ptr @top1_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 73, ptr @.str.52, ptr @.str.33, ptr @top1_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 74, ptr @.str.53, ptr @.str.33, ptr @top1_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 75, ptr @.str.54, ptr @.str.33, ptr @top1_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 76, ptr @.str.55, ptr @.str.11, ptr @top2_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 77, ptr @.str.56, ptr @.str.57, ptr @top2_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 78, ptr @.str.58, ptr @.str.11, ptr @top2_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 79, ptr @.str.59, ptr @.str.11, ptr @top2_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 80, ptr @.str.60, ptr @.str.11, ptr @top2_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 81, ptr @.str.61, ptr @.str.33, ptr @top2_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 82, ptr @.str.62, ptr @.str.11, ptr @top2_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 83, ptr @.str.63, ptr @.str.64, ptr @top2_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 84, ptr @.str.65, ptr @.str.64, ptr @top2_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 85, ptr @.str.66, ptr @.str.64, ptr @top2_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 86, ptr @.str.67, ptr @.str.64, ptr @top2_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 87, ptr @.str.68, ptr @.str.64, ptr @top2_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 88, ptr @.str.69, ptr @.str.64, ptr @top2_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 89, ptr @.str.70, ptr @.str.31, ptr @top2_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 90, ptr @.str.71, ptr @.str.11, ptr @top2_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 91, ptr @.str.72, ptr @.str.73, ptr @top2_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 92, ptr @.str.74, ptr @.str.11, ptr @top2_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 93, ptr @.str.75, ptr @.str.76, ptr @top2_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 94, ptr @.str.77, ptr @.str.78, ptr @top2_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 95, ptr @.str.79, ptr @.str.11, ptr @top2_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 96, ptr @.str.80, ptr @.str.11, ptr @top2_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 97, ptr @.str.81, ptr @.str.82, ptr @top2_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 98, ptr @.str.83, ptr @.str.11, ptr @top2_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 174, ptr @.str.84, ptr @.str.37, ptr @top2_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 175, ptr @.str.85, ptr @.str.39, ptr @top2_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 176, ptr @.str.86, ptr @.str.87, ptr @top2_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 173, ptr @.str.31, ptr @.str.88, ptr @top2_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 99, ptr @.str.89, ptr @.str.90, ptr @top3_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 100, ptr @.str.87, ptr @.str.91, ptr @top3_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 101, ptr @.str.78, ptr @.str.92, ptr @top3_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 102, ptr @.str.93, ptr @.str.94, ptr @top3_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 103, ptr @.str.95, ptr @.str.96, ptr @top3_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 104, ptr @.str.97, ptr @.str.98, ptr @top3_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 105, ptr @.str.99, ptr @.str.100, ptr @top3_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 106, ptr @.str.101, ptr @.str.102, ptr @top3_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 107, ptr @.str.64, ptr @.str.103, ptr @top3_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 108, ptr @.str.104, ptr @.str.105, ptr @top3_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 109, ptr @.str.82, ptr @.str.106, ptr @top3_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 110, ptr @.str.107, ptr @.str.108, ptr @top3_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 111, ptr @.str.23, ptr @.str.109, ptr @top3_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 112, ptr @.str.21, ptr @.str.110, ptr @top3_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 113, ptr @.str.111, ptr @.str.112, ptr @top4_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 114, ptr @.str.113, ptr @.str.114, ptr @top4_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 115, ptr @.str.115, ptr @.str.116, ptr @top4_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 116, ptr @.str.117, ptr @.str.118, ptr @top4_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 117, ptr @.str.119, ptr @.str.120, ptr @top4_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 118, ptr @.str.121, ptr @.str.122, ptr @top4_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 119, ptr @.str.123, ptr @.str.124, ptr @top5_cg_regs, i32 0, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 120, ptr @.str.125, ptr @.str.126, ptr @top5_cg_regs, i32 1, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 121, ptr @.str.127, ptr @.str.128, ptr @top5_cg_regs, i32 2, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 122, ptr @.str.129, ptr @.str.130, ptr @top5_cg_regs, i32 3, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 123, ptr @.str.131, ptr @.str.132, ptr @top5_cg_regs, i32 4, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 124, ptr @.str.133, ptr @.str.134, ptr @top5_cg_regs, i32 5, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 125, ptr @.str.135, ptr @.str.136, ptr @top5_cg_regs, i32 6, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 126, ptr @.str.137, ptr @.str.138, ptr @top5_cg_regs, i32 7, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 127, ptr @.str.139, ptr @.str.140, ptr @top5_cg_regs, i32 8, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }], section ".init.rodata", align 4
@top_divs = internal constant [43 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 3, ptr @.str.141, ptr @.str.8, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 4, ptr @.str.142, ptr @.str.143, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 5, ptr @.str.144, ptr @.str.143, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 6, ptr @.str.145, ptr @.str.143, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 7, ptr @.str.146, ptr @.str.143, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 8, ptr @.str.147, ptr @.str.143, i32 1, i32 11 }, %struct.mtk_fixed_factor { i32 9, ptr @.str.148, ptr @.str.143, i32 1, i32 22 }, %struct.mtk_fixed_factor { i32 10, ptr @.str.149, ptr @.str.143, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 11, ptr @.str.150, ptr @.str.143, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 12, ptr @.str.151, ptr @.str.143, i32 1, i32 12 }, %struct.mtk_fixed_factor { i32 13, ptr @.str.152, ptr @.str.143, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 14, ptr @.str.153, ptr @.str.143, i32 1, i32 10 }, %struct.mtk_fixed_factor { i32 15, ptr @.str.154, ptr @.str.143, i32 1, i32 20 }, %struct.mtk_fixed_factor { i32 16, ptr @.str.155, ptr @.str.143, i32 1, i32 40 }, %struct.mtk_fixed_factor { i32 17, ptr @.str.156, ptr @.str.143, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 18, ptr @.str.157, ptr @.str.143, i32 1, i32 14 }, %struct.mtk_fixed_factor { i32 19, ptr @.str.158, ptr @.str.159, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 20, ptr @.str.160, ptr @.str.159, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 21, ptr @.str.161, ptr @.str.159, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 22, ptr @.str.162, ptr @.str.159, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 23, ptr @.str.163, ptr @.str.159, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 24, ptr @.str.164, ptr @.str.159, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 25, ptr @.str.57, ptr @.str.159, i32 1, i32 12 }, %struct.mtk_fixed_factor { i32 26, ptr @.str.165, ptr @.str.159, i32 1, i32 24 }, %struct.mtk_fixed_factor { i32 27, ptr @.str.166, ptr @.str.159, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 28, ptr @.str.167, ptr @.str.159, i32 1, i32 20 }, %struct.mtk_fixed_factor { i32 29, ptr @.str.168, ptr @.str.169, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 30, ptr @.str.170, ptr @.str.169, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 31, ptr @.str.171, ptr @.str.169, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 32, ptr @.str.172, ptr @.str.159, i32 1, i32 26 }, %struct.mtk_fixed_factor { i32 33, ptr @.str.173, ptr @.str.174, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 34, ptr @.str.112, ptr @.str.173, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 35, ptr @.str.114, ptr @.str.111, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 36, ptr @.str.116, ptr @.str.113, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 37, ptr @.str.175, ptr @.str.176, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 38, ptr @.str.118, ptr @.str.175, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 39, ptr @.str.120, ptr @.str.117, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 40, ptr @.str.122, ptr @.str.119, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 41, ptr @.str.33, ptr @.str.9, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 42, ptr @.str.177, ptr @.str.9, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 43, ptr @.str.73, ptr @.str.11, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 44, ptr @.str.178, ptr @.str.42, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 45, ptr @.str.179, ptr @.str.92, i32 1, i32 2 }], section ".init.rodata", align 4
@top_muxes = internal global [34 x %struct.mtk_composite] [%struct.mtk_composite { i32 128, ptr @.str.26, ptr @uart0_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 130, ptr @.str.11, ptr @ahb_infra_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 4, i8 4, i8 -1, i8 -1, i8 0, i8 0, i8 13 }, %struct.mtk_composite { i32 131, ptr @.str.38, ptr @msdc0_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 11, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 132, ptr @.str.28, ptr @uart1_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 19, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 133, ptr @.str.40, ptr @msdc1_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 20, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 134, ptr @.str.180, ptr @pmicspi_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 24, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 135, ptr @.str.181, ptr @qaxi_aud26m_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 26, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 136, ptr @.str.182, ptr @aud_intbus_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 27, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 137, ptr @.str.42, ptr @nfi2x_pad_parents, ptr null, i32 4, i32 4, i32 0, i32 0, i8 0, i8 7, i8 -1, i8 -1, i8 0, i8 0, i8 85 }, %struct.mtk_composite { i32 138, ptr @.str.19, ptr @nfi1x_pad_parents, ptr null, i32 4, i32 4, i32 0, i32 0, i8 7, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 140, ptr @.str.88, ptr @usb_78m_parents, ptr null, i32 4, i32 4, i32 0, i32 0, i8 20, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 141, ptr @.str.90, ptr @spinor_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 0, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 142, ptr @.str.91, ptr @msdc2_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 3, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 143, ptr @.str.92, ptr @eth_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 6, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 144, ptr @.str.94, ptr @aud1_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 22, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 145, ptr @.str.96, ptr @aud2_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 23, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 146, ptr @.str.98, ptr @aud_engen1_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 24, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 147, ptr @.str.100, ptr @aud_engen2_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 26, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 148, ptr @.str.102, ptr @i2c_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 28, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 149, ptr @.str.183, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 12, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 150, ptr @.str.184, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 13, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 151, ptr @.str.185, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 14, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 152, ptr @.str.186, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 15, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 153, ptr @.str.187, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 16, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 154, ptr @.str.188, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 17, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 155, ptr @.str.189, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 18, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 156, ptr @.str.103, ptr @pwm_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 157, ptr @.str.47, ptr @spi_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 1, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 158, ptr @.str.105, ptr @aud_spdifin_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 3, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 159, ptr @.str.106, ptr @uart2_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 4, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 160, ptr @.str.108, ptr @bsi_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 5, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 161, ptr @.str.109, ptr @dbg_atclk_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 7, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 162, ptr @.str.190, ptr @csw_nfiecc_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 10, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 163, ptr @.str.110, ptr @nfiecc_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 13, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }], section ".init.data", align 4
@mt8516_clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.191, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@top_adj_divs = internal constant { [9 x %struct.mtk_clk_divider], [36 x i8] } { [9 x %struct.mtk_clk_divider] [%struct.mtk_clk_divider { i32 164, ptr @.str.124, ptr @.str.183, i32 0, i32 72, i8 0, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 165, ptr @.str.126, ptr @.str.184, i32 0, i32 72, i8 8, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 166, ptr @.str.128, ptr @.str.185, i32 0, i32 72, i8 16, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 167, ptr @.str.130, ptr @.str.186, i32 0, i32 72, i8 24, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 168, ptr @.str.132, ptr @.str.187, i32 0, i32 76, i8 0, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 169, ptr @.str.134, ptr @.str.131, i32 0, i32 76, i8 8, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 170, ptr @.str.136, ptr @.str.188, i32 0, i32 76, i8 16, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 171, ptr @.str.138, ptr @.str.135, i32 0, i32 76, i8 24, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 172, ptr @.str.140, ptr @.str.189, i32 0, i32 120, i8 0, i8 8, i8 0, ptr null }], [36 x i8] zeroinitializer }, align 32
@mtk_topckgen_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s(): could not register clock provider: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mtk_topckgen_init._entry_ptr.5 = internal global ptr @mtk_topckgen_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_null\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2s_infra_bck\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mempll\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk26m\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"them\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ahb_infra_sel\00", [18 x i8] zeroinitializer }, align 32
@top1_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 36, i32 132, i32 84 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apdma\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c0\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_i2c0_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_i2c1_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"auxadc1\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfi\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfi1x_pad_sel\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nfiecc\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rg_nfiecc\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"debugsys\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rg_dbg_atclk\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"btif\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_78m\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flashif_26m\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk26m_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"auxadc2\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_i2c2_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"msdc0\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msdc0_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"msdc1\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msdc1_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nfi2x\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfi2x_pad_sel\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwrap_ap\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sej\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"memslp_dlyer\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"apxgpt\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwrap_md\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwrap_conn\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwrap_26m\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aux_adc\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"aux_tp\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"msdc2\00", [26 x i8] zeroinitializer }, align 32
@top2_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 60, i32 156, i32 108 }, [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rbist\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_d12\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nfi_bus\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gce\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"trng\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sej_13m\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aes\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm_b\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rg_pwm_infra\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm1_fb\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm2_fb\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm3_fb\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm4_fb\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm5_fb\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usb_1p\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"flashif_freerun\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eth_66m\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ahb_infra_d2\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eth_133m\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"feth_25m\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ifr_eth_25m_sel\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"feth_50m\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rg_eth\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flashif_axi\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usbif\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rg_uart2\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bsi\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc0_infra\00", [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_setclr_inv = external dso_local constant %struct.clk_ops, align 4
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc1_infra\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc2_infra\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rg_msdc2\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_78m_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rg_spinor\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spinor_sel\00", [21 x i8] zeroinitializer }, align 32
@top3_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 112, i32 176, i32 160 }, [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msdc2_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eth_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rg_aud1\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aud1_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rg_aud2\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aud2_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rg_aud_engen1\00", [18 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_engen1_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rg_aud_engen2\00", [18 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_engen2_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rg_i2c\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rg_aud_spdif_in\00", [16 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aud_spdifin_sel\00", [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rg_bsi\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bsi_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dbg_atclk_sel\00", [18 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nfiecc_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rg_apll1_d2_en\00", [17 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d2\00", [23 x i8] zeroinitializer }, align 32
@top4_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 116, i32 180, i32 164 }, [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rg_apll1_d4_en\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d4\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rg_apll1_d8_en\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d8\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rg_apll2_d2_en\00", [17 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rg_apll2_d4_en\00", [17 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_d4\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rg_apll2_d8_en\00", [17 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_d8\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div0\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apll12_ck_div0\00", [17 x i8] zeroinitializer }, align 32
@top5_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 68, i32 68, i32 68 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_no_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div1\00", [20 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apll12_ck_div1\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div2\00", [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apll12_ck_div2\00", [17 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div3\00", [20 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apll12_ck_div3\00", [17 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div4\00", [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apll12_ck_div4\00", [17 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apll12_div4b\00", [19 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apll12_ck_div4b\00", [16 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div5\00", [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apll12_ck_div5\00", [17 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apll12_div5b\00", [19 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apll12_ck_div5b\00", [16 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div6\00", [20 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apll12_ck_div6\00", [17 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmpll_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mainpll\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mainpll_d16\00", [20 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mainpll_d11\00", [20 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mainpll_d22\00", [20 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d3\00", [21 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d6\00", [21 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mainpll_d12\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d5\00", [21 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mainpll_d10\00", [20 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mainpll_d20\00", [20 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mainpll_d40\00", [20 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d7\00", [21 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mainpll_d14\00", [20 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"univpll\00", [24 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_d16\00", [20 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d3\00", [21 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d6\00", [21 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_d24\00", [20 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d5\00", [21 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_d20\00", [20 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmpll380m\00", [22 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mmpll\00", [26 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmpll_200m\00", [21 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb_phy48m_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apll1\00", [26 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apll2\00", [26 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk26m_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nfi1x_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eth_d2_ck\00", [22 x i8] zeroinitializer }, align 32
@uart0_parents = internal constant [2 x ptr] [ptr @.str.33, ptr @.str.165], section ".init.rodata", align 4
@ahb_infra_parents = internal constant [13 x ptr] [ptr @.str.6, ptr @.str.33, ptr @.str.147, ptr @.str.6, ptr @.str.151, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.153], section ".init.rodata", align 4
@msdc0_parents = internal constant [8 x ptr] [ptr @.str.33, ptr @.str.164, ptr @.str.145, ptr @.str.161, ptr @.str.146, ptr @.str.171, ptr @.str.151, ptr @.str.170], section ".init.rodata", align 4
@uart1_parents = internal constant [2 x ptr] [ptr @.str.33, ptr @.str.165], section ".init.rodata", align 4
@msdc1_parents = internal constant [8 x ptr] [ptr @.str.33, ptr @.str.164, ptr @.str.145, ptr @.str.161, ptr @.str.146, ptr @.str.171, ptr @.str.151, ptr @.str.170], section ".init.rodata", align 4
@.str.180 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pmicspi_sel\00", [20 x i8] zeroinitializer }, align 32
@pmicspi_parents = internal constant [4 x ptr] [ptr @.str.167, ptr @.str.172, ptr @.str.162, ptr @.str.33], section ".init.rodata", align 4
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qaxi_aud26m_sel\00", [16 x i8] zeroinitializer }, align 32
@qaxi_aud26m_parents = internal constant [2 x ptr] [ptr @.str.33, ptr @.str.11], section ".init.rodata", align 4
@.str.182 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_intbus_sel\00", [17 x i8] zeroinitializer }, align 32
@aud_intbus_parents = internal constant [5 x ptr] [ptr @.str.6, ptr @.str.33, ptr @.str.148, ptr @.str.6, ptr @.str.147], section ".init.rodata", align 4
@nfi2x_pad_parents = internal constant [85 x ptr] [ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.33, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.151, ptr @.str.145, ptr @.str.6, ptr @.str.150, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.144, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.153, ptr @.str.156, ptr @.str.6, ptr @.str.152], section ".init.rodata", align 4
@nfi1x_pad_parents = internal constant [2 x ptr] [ptr @.str.11, ptr @.str.178], section ".init.rodata", align 4
@usb_78m_parents = internal constant [5 x ptr] [ptr @.str.6, ptr @.str.33, ptr @.str.162, ptr @.str.6, ptr @.str.154], section ".init.rodata", align 4
@spinor_parents = internal constant [8 x ptr] [ptr @.str.177, ptr @.str.33, ptr @.str.155, ptr @.str.165, ptr @.str.167, ptr @.str.154, ptr @.str.146, ptr @.str.57], section ".init.rodata", align 4
@msdc2_parents = internal constant [8 x ptr] [ptr @.str.33, ptr @.str.164, ptr @.str.145, ptr @.str.161, ptr @.str.146, ptr @.str.171, ptr @.str.151, ptr @.str.170], section ".init.rodata", align 4
@eth_parents = internal constant [5 x ptr] [ptr @.str.33, ptr @.str.155, ptr @.str.165, ptr @.str.167, ptr @.str.154], section ".init.rodata", align 4
@aud1_parents = internal constant [2 x ptr] [ptr @.str.33, ptr @.str.173], section ".init.rodata", align 4
@aud2_parents = internal constant [2 x ptr] [ptr @.str.33, ptr @.str.175], section ".init.rodata", align 4
@aud_engen1_parents = internal constant [4 x ptr] [ptr @.str.33, ptr @.str.111, ptr @.str.113, ptr @.str.115], section ".init.rodata", align 4
@aud_engen2_parents = internal constant [4 x ptr] [ptr @.str.33, ptr @.str.117, ptr @.str.119, ptr @.str.121], section ".init.rodata", align 4
@i2c_parents = internal constant [4 x ptr] [ptr @.str.33, ptr @.str.167, ptr @.str.162, ptr @.str.57], section ".init.rodata", align 4
@.str.183 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_i2s0_m_sel\00", [17 x i8] zeroinitializer }, align 32
@aud_i2s0_m_parents = internal constant [2 x ptr] [ptr @.str.93, ptr @.str.95], section ".init.rodata", align 4
@.str.184 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_i2s1_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_i2s2_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_i2s3_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_i2s4_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_i2s5_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aud_spdif_b_sel\00", [16 x i8] zeroinitializer }, align 32
@pwm_parents = internal constant [2 x ptr] [ptr @.str.33, ptr @.str.57], section ".init.rodata", align 4
@spi_parents = internal constant [4 x ptr] [ptr @.str.33, ptr @.str.57, ptr @.str.161, ptr @.str.164], section ".init.rodata", align 4
@aud_spdifin_parents = internal constant [2 x ptr] [ptr @.str.33, ptr @.str.158], section ".init.rodata", align 4
@uart2_parents = internal constant [2 x ptr] [ptr @.str.33, ptr @.str.165], section ".init.rodata", align 4
@bsi_parents = internal constant [4 x ptr] [ptr @.str.33, ptr @.str.153, ptr @.str.151, ptr @.str.154], section ".init.rodata", align 4
@dbg_atclk_parents = internal constant [5 x ptr] [ptr @.str.6, ptr @.str.33, ptr @.str.152, ptr @.str.6, ptr @.str.166], section ".init.rodata", align 4
@.str.190 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"csw_nfiecc_sel\00", [17 x i8] zeroinitializer }, align 32
@csw_nfiecc_parents = internal constant [5 x ptr] [ptr @.str.6, ptr @.str.156, ptr @.str.150, ptr @.str.6, ptr @.str.152], section ".init.rodata", align 4
@nfiecc_parents = internal constant [5 x ptr] [ptr @.str.6, ptr @.str.42, ptr @.str.144, ptr @.str.6, ptr @.str.190], section ".init.rodata", align 4
@.str.191 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt8516_clk_lock\00", [16 x i8] zeroinitializer }, align 32
@mtk_infracfg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.192, ptr @.str.2, i32 716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_infracfg_init\00", [46 x i8] zeroinitializer }, align 32
@mtk_infracfg_init._entry_ptr = internal global ptr @mtk_infracfg_init._entry, section ".printk_index", align 4
@ifr_muxes = internal constant [5 x %struct.mtk_composite] [%struct.mtk_composite { i32 0, ptr @.str.195, ptr @ifr_mux1_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 2, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 1, ptr @.str.76, ptr @ifr_eth_25m_parents, ptr null, i32 4, i32 128, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 2, ptr @.str.14, ptr @ifr_i2c0_parents, ptr null, i32 4, i32 128, i32 0, i32 0, i8 1, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 3, ptr @.str.16, ptr @ifr_i2c0_parents, ptr null, i32 4, i32 128, i32 0, i32 0, i8 2, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 4, ptr @.str.36, ptr @ifr_i2c0_parents, ptr null, i32 4, i32 128, i32 0, i32 0, i8 3, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }], section ".init.rodata", align 4
@mtk_infracfg_init._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.192, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtk_infracfg_init._entry_ptr.194 = internal global ptr @mtk_infracfg_init._entry.193, section ".printk_index", align 4
@.str.195 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_mux1_sel\00", [19 x i8] zeroinitializer }, align 32
@ifr_mux1_parents = internal constant [4 x ptr] [ptr @.str.33, ptr @.str.196, ptr @.str.159, ptr @.str.142], section ".init.rodata", align 4
@ifr_eth_25m_parents = internal constant [2 x ptr] [ptr @.str.179, ptr @.str.78], section ".init.rodata", align 4
@ifr_i2c0_parents = internal constant [2 x ptr] [ptr @.str.73, ptr @.str.101], section ".init.rodata", align 4
@.str.196 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"armpll\00", [25 x i8] zeroinitializer }, align 32
@mtk_apmixedsys_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.197, ptr @.str.2, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_apmixedsys_init\00", [44 x i8] zeroinitializer }, align 32
@mtk_apmixedsys_init._entry_ptr = internal global ptr @mtk_apmixedsys_init._entry, section ".printk_index", align 4
@plls = internal constant { [6 x %struct.mtk_pll_data], [128 x i8] } { [6 x %struct.mtk_pll_data] [%struct.mtk_pll_data { i32 0, ptr @.str.196, i32 256, i32 272, i32 1, i32 260, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 134217728, i32 0, i32 1502000000, i32 21, i32 0, i32 260, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 1, ptr @.str.143, i32 288, i32 304, i32 1, i32 292, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 134217728, i32 0, i32 1502000000, i32 21, i32 0, i32 292, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 2, ptr @.str.159, i32 320, i32 336, i32 805306369, i32 324, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 134217728, i32 0, i32 1502000000, i32 7, i32 0, i32 324, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 3, ptr @.str.169, i32 352, i32 368, i32 1, i32 356, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 134217728, i32 0, i32 1502000000, i32 21, i32 0, i32 356, i32 0, i32 0, ptr @mmpll_div_table, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 4, ptr @.str.174, i32 384, i32 400, i32 1, i32 384, i32 404, i32 0, i8 0, i32 1, i32 0, ptr null, i32 134217728, i32 0, i32 1502000000, i32 31, i32 0, i32 388, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 5, ptr @.str.176, i32 416, i32 432, i32 1, i32 416, i32 436, i32 0, i8 0, i32 1, i32 0, ptr null, i32 134217728, i32 0, i32 1502000000, i32 31, i32 0, i32 420, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }], [128 x i8] zeroinitializer }, align 32
@mtk_apmixedsys_init._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.197, ptr @.str.2, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtk_apmixedsys_init._entry_ptr.199 = internal global ptr @mtk_apmixedsys_init._entry.198, section ".printk_index", align 4
@mmpll_div_table = internal constant { [6 x %struct.mtk_pll_div_table], [48 x i8] } { [6 x %struct.mtk_pll_div_table] [%struct.mtk_pll_div_table { i32 0, i32 1502000000 }, %struct.mtk_pll_div_table { i32 1, i32 1000000000 }, %struct.mtk_pll_div_table { i32 2, i32 604500000 }, %struct.mtk_pll_div_table { i32 3, i32 253500000 }, %struct.mtk_pll_div_table { i32 4, i32 126750000 }, %struct.mtk_pll_div_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 685, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [16 x i8] c"mt8516_clk_lock\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [13 x i8] c"top_adj_divs\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 476, i32 37 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 703, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 22, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 23, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 24, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 583, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [13 x i8] c"top1_cg_regs\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 497, i32 35 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 584, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 585, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 586, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 587, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 588, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 589, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 590, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 591, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 592, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 593, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 594, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 595, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 596, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 597, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 598, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 599, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 600, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 601, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 602, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 603, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 604, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 605, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 606, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 607, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 608, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 609, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 610, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 611, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 612, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 614, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant [13 x i8] c"top2_cg_regs\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 503, i32 35 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 615, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 616, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 617, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 618, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 619, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 620, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 621, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 622, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 623, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 624, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 625, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 626, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 627, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 628, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 630, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 631, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 632, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 633, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 634, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 635, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 636, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 637, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 638, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 639, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 640, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 641, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 643, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [13 x i8] c"top3_cg_regs\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 509, i32 35 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 644, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 645, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 646, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 647, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 648, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 649, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 650, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 651, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 652, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 654, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 655, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 656, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 657, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 659, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant [13 x i8] c"top4_cg_regs\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 515, i32 35 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 660, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 661, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 662, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 663, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 664, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 666, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant [13 x i8] c"top5_cg_regs\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 521, i32 35 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 667, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 668, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 669, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 670, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 671, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 672, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 673, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 674, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 28, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 29, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 30, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 31, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 32, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 33, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 34, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 35, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 36, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 37, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 38, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 39, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 40, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 41, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 42, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 43, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 44, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 45, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 46, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 47, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 48, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 49, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 51, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 52, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 53, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 54, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 55, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 56, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 57, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 58, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 62, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 67, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 69, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 70, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 373, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 375, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 377, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 404, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 406, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 408, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 410, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 412, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 414, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 416, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 431, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 19, i32 8 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 716, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 727, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 455, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 439, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 795, i32 3 }
@___asan_gen_.818 = private unnamed_addr constant [5 x i8] c"plls\00", align 1
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 772, i32 34 }
@___asan_gen_.821 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 805, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant [16 x i8] c"mmpll_div_table\00", align 1
@___asan_gen_.825 = private constant [37 x i8] c"../drivers/clk/mediatek/clk-mt8516.c\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 763, i32 39 }
@llvm.compiler.used = appending global [218 x ptr] [ptr @__of_table_mtk_apmixedsys, ptr @__of_table_mtk_infracfg, ptr @__of_table_mtk_topckgen, ptr @mtk_apmixedsys_init._entry, ptr @mtk_apmixedsys_init._entry.198, ptr @mtk_apmixedsys_init._entry_ptr, ptr @mtk_apmixedsys_init._entry_ptr.199, ptr @mtk_infracfg_init._entry, ptr @mtk_infracfg_init._entry.193, ptr @mtk_infracfg_init._entry_ptr, ptr @mtk_infracfg_init._entry_ptr.194, ptr @mtk_topckgen_init._entry, ptr @mtk_topckgen_init._entry.3, ptr @mtk_topckgen_init._entry_ptr, ptr @mtk_topckgen_init._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mt8516_clk_lock, ptr @top_adj_divs, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @top1_cg_regs, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @top2_cg_regs, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @top3_cg_regs, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @top4_cg_regs, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @top5_cg_regs, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @plls, ptr @mmpll_div_table], section "llvm.metadata"
@0 = internal global [209 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_topckgen_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8516_clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_adj_divs to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_topckgen_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top1_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top2_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top3_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top4_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top5_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_infracfg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_infracfg_init._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_apmixedsys_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plls to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_apmixedsys_init._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpll_div_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_topckgen_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 177) #3
  tail call void @mtk_clk_register_fixed_clks(ptr noundef nonnull @fixed_clks, i32 noundef 3, ptr noundef %call2) #3
  %call3 = tail call i32 @mtk_clk_register_gates(ptr noundef %node, ptr noundef nonnull @top_clks, i32 noundef 86, ptr noundef %call2) #3
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_divs, i32 noundef 43, ptr noundef %call2) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @top_muxes, i32 noundef 34, ptr noundef nonnull %call, ptr noundef nonnull @mt8516_clk_lock, ptr noundef %call2) #3
  tail call void @mtk_clk_register_dividers(ptr noundef nonnull @top_adj_divs, i32 noundef 9, ptr noundef nonnull %call, ptr noundef nonnull @mt8516_clk_lock, ptr noundef %call2) #3
  %call4 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_infracfg_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.192) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 5) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @ifr_muxes, i32 noundef 5, ptr noundef nonnull %call, ptr noundef nonnull @mt8516_clk_lock, ptr noundef %call2) #3
  %call3 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.192, i32 noundef %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_apmixedsys_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.197) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 6) #3
  tail call void @mtk_clk_register_plls(ptr noundef %node, ptr noundef nonnull @plls, i32 noundef 6, ptr noundef %call2) #3
  %call3 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.197, i32 noundef %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_alloc_clk_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_fixed_clks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_gates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_factors(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_composites(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_dividers(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_plls(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 209)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 209)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !36, !38, !40, !41, !43, !44, !46, !47, !49, !51, !52, !54, !55, !57, !59, !60, !62, !63, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !81, !83, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !107, !109, !111, !113, !115, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !137, !139, !140, !142, !143, !145, !147, !149, !150, !152, !154, !156, !158, !159, !161, !163, !164, !166, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !187, !188, !190, !192, !193, !195, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !246, !248, !250, !252, !254, !256, !258, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !309, !311, !313, !315, !317, !318, !320, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !412, !414, !416, !417, !418, !420, !421, !423, !425, !427, !429, !431, !433, !435, !436, !437, !439, !440, !442}
!llvm.module.flags = !{!444, !445, !446, !447, !448, !449, !450, !451}
!llvm.ident = !{!452}

!0 = !{ptr @__of_table_mtk_topckgen, !1, !"__of_table_mtk_topckgen", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 706, i32 1}
!2 = !{ptr @__of_table_mtk_infracfg, !3, !"__of_table_mtk_infracfg", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 730, i32 1}
!4 = !{ptr @__of_table_mtk_apmixedsys, !5, !"__of_table_mtk_apmixedsys", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 809, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 685, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mtk_topckgen_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @mtk_topckgen_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 703, i32 3}
!14 = !{ptr @mtk_topckgen_init._entry.3, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mtk_topckgen_init._entry_ptr.5, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 22, i32 2}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 23, i32 2}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 24, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @fixed_clks, !24, !"fixed_clks", i1 false, i1 false}
!24 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 21, i32 35}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 583, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 584, i32 2}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 585, i32 2}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 586, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 587, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 588, i32 2}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 589, i32 2}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 590, i32 2}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 591, i32 2}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 592, i32 2}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 593, i32 2}
!54 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 594, i32 2}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 595, i32 2}
!59 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 596, i32 2}
!62 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 597, i32 2}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 598, i32 2}
!67 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 599, i32 2}
!70 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 600, i32 2}
!73 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 601, i32 2}
!76 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 602, i32 2}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 603, i32 2}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 604, i32 2}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 605, i32 2}
!85 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 606, i32 2}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 607, i32 2}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 608, i32 2}
!92 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 609, i32 2}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 610, i32 2}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 611, i32 2}
!98 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 612, i32 2}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 614, i32 2}
!102 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 615, i32 2}
!104 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 616, i32 2}
!107 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 617, i32 2}
!109 = !{ptr @.str.60, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 618, i32 2}
!111 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 619, i32 2}
!113 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 620, i32 2}
!115 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 621, i32 2}
!117 = !{ptr @.str.64, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.65, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 622, i32 2}
!120 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 623, i32 2}
!122 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 624, i32 2}
!124 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 625, i32 2}
!126 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 626, i32 2}
!128 = !{ptr @.str.70, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 627, i32 2}
!130 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 628, i32 2}
!132 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 630, i32 2}
!134 = !{ptr @.str.73, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 631, i32 2}
!137 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 632, i32 2}
!139 = !{ptr @.str.76, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 633, i32 2}
!142 = !{ptr @.str.78, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.79, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 634, i32 2}
!145 = !{ptr @.str.80, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 635, i32 2}
!147 = !{ptr @.str.81, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 636, i32 2}
!149 = !{ptr @.str.82, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.83, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 637, i32 2}
!152 = !{ptr @.str.84, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 638, i32 2}
!154 = !{ptr @.str.85, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 639, i32 2}
!156 = !{ptr @.str.86, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 640, i32 2}
!158 = !{ptr @.str.87, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.88, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 641, i32 2}
!161 = !{ptr @.str.89, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 643, i32 2}
!163 = !{ptr @.str.90, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.91, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 644, i32 2}
!166 = !{ptr @.str.92, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 645, i32 2}
!168 = !{ptr @.str.93, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 646, i32 2}
!170 = !{ptr @.str.94, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.95, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 647, i32 2}
!173 = !{ptr @.str.96, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.97, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 648, i32 2}
!176 = !{ptr @.str.98, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.99, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 649, i32 2}
!179 = !{ptr @.str.100, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.101, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 650, i32 2}
!182 = !{ptr @.str.102, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.103, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 651, i32 2}
!185 = !{ptr @.str.104, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 652, i32 2}
!187 = !{ptr @.str.105, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.106, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 654, i32 2}
!190 = !{ptr @.str.107, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 655, i32 2}
!192 = !{ptr @.str.108, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.109, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 656, i32 2}
!195 = !{ptr @.str.110, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 657, i32 2}
!197 = !{ptr @.str.111, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 659, i32 2}
!199 = !{ptr @.str.112, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.113, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 660, i32 2}
!202 = !{ptr @.str.114, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.115, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 661, i32 2}
!205 = !{ptr @.str.116, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.117, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 662, i32 2}
!208 = !{ptr @.str.118, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.119, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 663, i32 2}
!211 = !{ptr @.str.120, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.121, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 664, i32 2}
!214 = !{ptr @.str.122, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.123, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 666, i32 2}
!217 = !{ptr @.str.124, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.125, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 667, i32 2}
!220 = !{ptr @.str.126, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.127, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 668, i32 2}
!223 = !{ptr @.str.128, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.129, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 669, i32 2}
!226 = !{ptr @.str.130, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.131, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 670, i32 2}
!229 = !{ptr @.str.132, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.133, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 671, i32 2}
!232 = !{ptr @.str.134, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.135, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 672, i32 2}
!235 = !{ptr @.str.136, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.137, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 673, i32 2}
!238 = !{ptr @.str.138, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.139, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 674, i32 2}
!241 = !{ptr @.str.140, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @top_clks, !243, !"top_clks", i1 false, i1 false}
!243 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 581, i32 30}
!244 = !{ptr @top1_cg_regs, !245, !"top1_cg_regs", i1 false, i1 false}
!245 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 497, i32 35}
!246 = !{ptr @top2_cg_regs, !247, !"top2_cg_regs", i1 false, i1 false}
!247 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 503, i32 35}
!248 = !{ptr @top3_cg_regs, !249, !"top3_cg_regs", i1 false, i1 false}
!249 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 509, i32 35}
!250 = !{ptr @top4_cg_regs, !251, !"top4_cg_regs", i1 false, i1 false}
!251 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 515, i32 35}
!252 = !{ptr @top5_cg_regs, !253, !"top5_cg_regs", i1 false, i1 false}
!253 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 521, i32 35}
!254 = !{ptr @.str.141, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 28, i32 2}
!256 = !{ptr @.str.142, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 29, i32 2}
!258 = !{ptr @.str.143, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.144, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 30, i32 2}
!261 = !{ptr @.str.145, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 31, i32 2}
!263 = !{ptr @.str.146, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 32, i32 2}
!265 = !{ptr @.str.147, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 33, i32 2}
!267 = !{ptr @.str.148, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 34, i32 2}
!269 = !{ptr @.str.149, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 35, i32 2}
!271 = !{ptr @.str.150, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 36, i32 2}
!273 = !{ptr @.str.151, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 37, i32 2}
!275 = !{ptr @.str.152, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 38, i32 2}
!277 = !{ptr @.str.153, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 39, i32 2}
!279 = !{ptr @.str.154, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 40, i32 2}
!281 = !{ptr @.str.155, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 41, i32 2}
!283 = !{ptr @.str.156, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 42, i32 2}
!285 = !{ptr @.str.157, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 43, i32 2}
!287 = !{ptr @.str.158, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 44, i32 2}
!289 = !{ptr @.str.159, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.160, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 45, i32 2}
!292 = !{ptr @.str.161, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 46, i32 2}
!294 = !{ptr @.str.162, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 47, i32 2}
!296 = !{ptr @.str.163, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 48, i32 2}
!298 = !{ptr @.str.164, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 49, i32 2}
!300 = !{ptr @.str.165, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 51, i32 2}
!302 = !{ptr @.str.166, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 52, i32 2}
!304 = !{ptr @.str.167, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 53, i32 2}
!306 = !{ptr @.str.168, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 54, i32 2}
!308 = !{ptr @.str.169, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.170, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 55, i32 2}
!311 = !{ptr @.str.171, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 56, i32 2}
!313 = !{ptr @.str.172, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 57, i32 2}
!315 = !{ptr @.str.173, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 58, i32 2}
!317 = !{ptr @.str.174, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.175, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 62, i32 2}
!320 = !{ptr @.str.176, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.177, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 67, i32 2}
!323 = !{ptr @.str.178, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 69, i32 2}
!325 = !{ptr @.str.179, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 70, i32 2}
!327 = !{ptr @top_divs, !328, !"top_divs", i1 false, i1 false}
!328 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 27, i32 38}
!329 = !{ptr @.str.180, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 373, i32 2}
!331 = !{ptr @.str.181, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 375, i32 2}
!333 = !{ptr @.str.182, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 377, i32 2}
!335 = !{ptr @.str.183, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 404, i32 2}
!337 = !{ptr @.str.184, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 406, i32 2}
!339 = !{ptr @.str.185, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 408, i32 2}
!341 = !{ptr @.str.186, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 410, i32 2}
!343 = !{ptr @.str.187, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 412, i32 2}
!345 = !{ptr @.str.188, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 414, i32 2}
!347 = !{ptr @.str.189, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 416, i32 2}
!349 = !{ptr @.str.190, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 431, i32 2}
!351 = !{ptr @top_muxes, !352, !"top_muxes", i1 false, i1 false}
!352 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 361, i32 29}
!353 = !{ptr @uart0_parents, !354, !"uart0_parents", i1 false, i1 false}
!354 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 73, i32 27}
!355 = !{ptr @ahb_infra_parents, !356, !"ahb_infra_parents", i1 false, i1 false}
!356 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 78, i32 27}
!357 = !{ptr @msdc0_parents, !358, !"msdc0_parents", i1 false, i1 false}
!358 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 94, i32 27}
!359 = !{ptr @uart1_parents, !360, !"uart1_parents", i1 false, i1 false}
!360 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 105, i32 27}
!361 = !{ptr @msdc1_parents, !362, !"msdc1_parents", i1 false, i1 false}
!362 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 110, i32 27}
!363 = !{ptr @pmicspi_parents, !364, !"pmicspi_parents", i1 false, i1 false}
!364 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 121, i32 27}
!365 = !{ptr @qaxi_aud26m_parents, !366, !"qaxi_aud26m_parents", i1 false, i1 false}
!366 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 128, i32 27}
!367 = !{ptr @aud_intbus_parents, !368, !"aud_intbus_parents", i1 false, i1 false}
!368 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 133, i32 27}
!369 = !{ptr @nfi2x_pad_parents, !370, !"nfi2x_pad_parents", i1 false, i1 false}
!370 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 141, i32 27}
!371 = !{ptr @nfi1x_pad_parents, !372, !"nfi1x_pad_parents", i1 false, i1 false}
!372 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 229, i32 27}
!373 = !{ptr @usb_78m_parents, !374, !"usb_78m_parents", i1 false, i1 false}
!374 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 234, i32 27}
!375 = !{ptr @spinor_parents, !376, !"spinor_parents", i1 false, i1 false}
!376 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 242, i32 27}
!377 = !{ptr @msdc2_parents, !378, !"msdc2_parents", i1 false, i1 false}
!378 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 253, i32 27}
!379 = !{ptr @eth_parents, !380, !"eth_parents", i1 false, i1 false}
!380 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 264, i32 27}
!381 = !{ptr @aud1_parents, !382, !"aud1_parents", i1 false, i1 false}
!382 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 272, i32 27}
!383 = !{ptr @aud2_parents, !384, !"aud2_parents", i1 false, i1 false}
!384 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 277, i32 27}
!385 = !{ptr @aud_engen1_parents, !386, !"aud_engen1_parents", i1 false, i1 false}
!386 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 282, i32 27}
!387 = !{ptr @aud_engen2_parents, !388, !"aud_engen2_parents", i1 false, i1 false}
!388 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 289, i32 27}
!389 = !{ptr @i2c_parents, !390, !"i2c_parents", i1 false, i1 false}
!390 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 296, i32 27}
!391 = !{ptr @aud_i2s0_m_parents, !392, !"aud_i2s0_m_parents", i1 false, i1 false}
!392 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 303, i32 27}
!393 = !{ptr @pwm_parents, !394, !"pwm_parents", i1 false, i1 false}
!394 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 308, i32 27}
!395 = !{ptr @spi_parents, !396, !"spi_parents", i1 false, i1 false}
!396 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 313, i32 27}
!397 = !{ptr @aud_spdifin_parents, !398, !"aud_spdifin_parents", i1 false, i1 false}
!398 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 320, i32 27}
!399 = !{ptr @uart2_parents, !400, !"uart2_parents", i1 false, i1 false}
!400 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 325, i32 27}
!401 = !{ptr @bsi_parents, !402, !"bsi_parents", i1 false, i1 false}
!402 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 330, i32 27}
!403 = !{ptr @dbg_atclk_parents, !404, !"dbg_atclk_parents", i1 false, i1 false}
!404 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 337, i32 27}
!405 = !{ptr @csw_nfiecc_parents, !406, !"csw_nfiecc_parents", i1 false, i1 false}
!406 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 345, i32 27}
!407 = !{ptr @nfiecc_parents, !408, !"nfiecc_parents", i1 false, i1 false}
!408 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 353, i32 27}
!409 = !{ptr @.str.191, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 19, i32 8}
!411 = !{ptr @mt8516_clk_lock, !410, !"mt8516_clk_lock", i1 false, i1 false}
!412 = !{ptr @top_adj_divs, !413, !"top_adj_divs", i1 false, i1 false}
!413 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 476, i32 37}
!414 = !{ptr @.str.192, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 716, i32 3}
!416 = !{ptr @mtk_infracfg_init._entry, !415, !"_entry", i1 false, i1 false}
!417 = !{ptr @mtk_infracfg_init._entry_ptr, !415, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @mtk_infracfg_init._entry.193, !419, !"_entry", i1 false, i1 false}
!419 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 727, i32 3}
!420 = !{ptr @mtk_infracfg_init._entry_ptr.194, !419, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.195, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 455, i32 2}
!423 = !{ptr @ifr_muxes, !424, !"ifr_muxes", i1 false, i1 false}
!424 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 454, i32 35}
!425 = !{ptr @.str.196, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 439, i32 2}
!427 = !{ptr @ifr_mux1_parents, !428, !"ifr_mux1_parents", i1 false, i1 false}
!428 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 437, i32 27}
!429 = !{ptr @ifr_eth_25m_parents, !430, !"ifr_eth_25m_parents", i1 false, i1 false}
!430 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 444, i32 27}
!431 = !{ptr @ifr_i2c0_parents, !432, !"ifr_i2c0_parents", i1 false, i1 false}
!432 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 449, i32 27}
!433 = !{ptr @.str.197, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 795, i32 3}
!435 = !{ptr @mtk_apmixedsys_init._entry, !434, !"_entry", i1 false, i1 false}
!436 = !{ptr @mtk_apmixedsys_init._entry_ptr, !434, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @mtk_apmixedsys_init._entry.198, !438, !"_entry", i1 false, i1 false}
!438 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 805, i32 3}
!439 = !{ptr @mtk_apmixedsys_init._entry_ptr.199, !438, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @plls, !441, !"plls", i1 false, i1 false}
!441 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 772, i32 34}
!442 = !{ptr @mmpll_div_table, !443, !"mmpll_div_table", i1 false, i1 false}
!443 = !{!"../drivers/clk/mediatek/clk-mt8516.c", i32 763, i32 39}
!444 = !{i32 1, !"wchar_size", i32 2}
!445 = !{i32 1, !"min_enum_size", i32 4}
!446 = !{i32 8, !"branch-target-enforcement", i32 0}
!447 = !{i32 8, !"sign-return-address", i32 0}
!448 = !{i32 8, !"sign-return-address-all", i32 0}
!449 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!450 = !{i32 7, !"uwtable", i32 1}
!451 = !{i32 7, !"frame-pointer", i32 2}
!452 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
