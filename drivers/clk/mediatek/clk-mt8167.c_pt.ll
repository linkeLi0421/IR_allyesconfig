; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mt8167.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt8167.c"
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

@__of_table_mtk_topckgen = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_topckgen_init }, section "__clk_of_table", align 4
@__of_table_mtk_infracfg = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_infracfg_init }, section "__clk_of_table", align 4
@__of_table_mtk_apmixedsys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167-apmixedsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_apmixedsys_init }, section "__clk_of_table", align 4
@mtk_topckgen_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s(): ioremap failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_topckgen_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/mediatek/clk-mt8167.c\00", [62 x i8] zeroinitializer }, align 32
@mtk_topckgen_init._entry_ptr = internal global ptr @mtk_topckgen_init._entry, section ".printk_index", align 4
@fixed_clks = internal constant [6 x %struct.mtk_fixed_clk] [%struct.mtk_fixed_clk { i32 0, ptr @.str.6, ptr null, i32 0 }, %struct.mtk_fixed_clk { i32 1, ptr @.str.7, ptr @.str.6, i32 26000000 }, %struct.mtk_fixed_clk { i32 2, ptr @.str.8, ptr @.str.9, i32 800000000 }, %struct.mtk_fixed_clk { i32 177, ptr @.str.10, ptr @.str.9, i32 75000000 }, %struct.mtk_fixed_clk { i32 178, ptr @.str.11, ptr @.str.9, i32 75000000 }, %struct.mtk_fixed_clk { i32 179, ptr @.str.12, ptr @.str.9, i32 52500000 }], section ".init.rodata", align 4
@top_clks = internal constant [102 x %struct.mtk_gate] [%struct.mtk_gate { i32 191, ptr @.str.13, ptr @.str.14, ptr @top0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 192, ptr @.str.15, ptr @.str.16, ptr @top0_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 193, ptr @.str.17, ptr @.str.18, ptr @top0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 194, ptr @.str.19, ptr @.str.20, ptr @top0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 195, ptr @.str.21, ptr @.str.22, ptr @top0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 196, ptr @.str.23, ptr @.str.24, ptr @top0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 197, ptr @.str.25, ptr @.str.26, ptr @top0_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 46, ptr @.str.27, ptr @.str.28, ptr @top1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 47, ptr @.str.29, ptr @.str.28, ptr @top1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 48, ptr @.str.30, ptr @.str.31, ptr @top1_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 49, ptr @.str.32, ptr @.str.33, ptr @top1_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 50, ptr @.str.34, ptr @.str.28, ptr @top1_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 51, ptr @.str.35, ptr @.str.36, ptr @top1_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 52, ptr @.str.37, ptr @.str.38, ptr @top1_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 53, ptr @.str.39, ptr @.str.40, ptr @top1_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 54, ptr @.str.41, ptr @.str.28, ptr @top1_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 55, ptr @.str.42, ptr @.str.43, ptr @top1_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 56, ptr @.str.44, ptr @.str.45, ptr @top1_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 57, ptr @.str.46, ptr @.str.28, ptr @top1_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 58, ptr @.str.47, ptr @.str.48, ptr @top1_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 59, ptr @.str.49, ptr @.str.50, ptr @top1_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 60, ptr @.str.51, ptr @.str.28, ptr @top1_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 61, ptr @.str.52, ptr @.str.53, ptr @top1_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 62, ptr @.str.54, ptr @.str.55, ptr @top1_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 63, ptr @.str.56, ptr @.str.57, ptr @top1_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 64, ptr @.str.58, ptr @.str.59, ptr @top1_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 65, ptr @.str.60, ptr @.str.50, ptr @top1_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 66, ptr @.str.61, ptr @.str.28, ptr @top1_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 67, ptr @.str.62, ptr @.str.50, ptr @top1_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 68, ptr @.str.63, ptr @.str.64, ptr @top1_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 69, ptr @.str.65, ptr @.str.50, ptr @top1_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 70, ptr @.str.66, ptr @.str.50, ptr @top1_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 71, ptr @.str.67, ptr @.str.50, ptr @top1_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 72, ptr @.str.68, ptr @.str.50, ptr @top1_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 73, ptr @.str.69, ptr @.str.50, ptr @top1_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 74, ptr @.str.70, ptr @.str.50, ptr @top1_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 75, ptr @.str.71, ptr @.str.50, ptr @top1_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 76, ptr @.str.72, ptr @.str.28, ptr @top2_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 77, ptr @.str.73, ptr @.str.74, ptr @top2_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 78, ptr @.str.75, ptr @.str.28, ptr @top2_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 79, ptr @.str.76, ptr @.str.28, ptr @top2_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 80, ptr @.str.77, ptr @.str.28, ptr @top2_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 81, ptr @.str.78, ptr @.str.50, ptr @top2_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 82, ptr @.str.79, ptr @.str.28, ptr @top2_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 83, ptr @.str.80, ptr @.str.81, ptr @top2_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 84, ptr @.str.82, ptr @.str.81, ptr @top2_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 85, ptr @.str.83, ptr @.str.81, ptr @top2_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 86, ptr @.str.84, ptr @.str.81, ptr @top2_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 87, ptr @.str.85, ptr @.str.81, ptr @top2_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 88, ptr @.str.86, ptr @.str.81, ptr @top2_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 89, ptr @.str.87, ptr @.str.48, ptr @top2_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 90, ptr @.str.88, ptr @.str.28, ptr @top2_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 198, ptr @.str.89, ptr @.str.50, ptr @top2_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 199, ptr @.str.90, ptr @.str.50, ptr @top2_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 200, ptr @.str.91, ptr @.str.92, ptr @top2_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 91, ptr @.str.93, ptr @.str.94, ptr @top2_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 92, ptr @.str.95, ptr @.str.28, ptr @top2_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 93, ptr @.str.96, ptr @.str.97, ptr @top2_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 94, ptr @.str.98, ptr @.str.99, ptr @top2_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 95, ptr @.str.100, ptr @.str.28, ptr @top2_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 96, ptr @.str.101, ptr @.str.28, ptr @top2_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 97, ptr @.str.102, ptr @.str.103, ptr @top2_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 98, ptr @.str.104, ptr @.str.28, ptr @top2_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 201, ptr @.str.105, ptr @.str.28, ptr @top2_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 174, ptr @.str.106, ptr @.str.54, ptr @top2_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 175, ptr @.str.107, ptr @.str.56, ptr @top2_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 176, ptr @.str.108, ptr @.str.109, ptr @top2_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 173, ptr @.str.48, ptr @.str.110, ptr @top2_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 99, ptr @.str.111, ptr @.str.112, ptr @top3_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 100, ptr @.str.109, ptr @.str.113, ptr @top3_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 101, ptr @.str.99, ptr @.str.114, ptr @top3_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 202, ptr @.str.115, ptr @.str.116, ptr @top3_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 203, ptr @.str.117, ptr @.str.118, ptr @top3_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 204, ptr @.str.119, ptr @.str.120, ptr @top3_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 205, ptr @.str.121, ptr @.str.122, ptr @top3_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 206, ptr @.str.123, ptr @.str.124, ptr @top3_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 102, ptr @.str.125, ptr @.str.126, ptr @top3_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 103, ptr @.str.127, ptr @.str.128, ptr @top3_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 104, ptr @.str.129, ptr @.str.130, ptr @top3_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 105, ptr @.str.131, ptr @.str.132, ptr @top3_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 106, ptr @.str.133, ptr @.str.134, ptr @top3_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 107, ptr @.str.81, ptr @.str.135, ptr @top3_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 108, ptr @.str.136, ptr @.str.137, ptr @top3_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 109, ptr @.str.103, ptr @.str.138, ptr @top3_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 110, ptr @.str.139, ptr @.str.140, ptr @top3_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 111, ptr @.str.40, ptr @.str.141, ptr @top3_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 112, ptr @.str.38, ptr @.str.142, ptr @top3_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 113, ptr @.str.143, ptr @.str.144, ptr @top4_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 114, ptr @.str.145, ptr @.str.146, ptr @top4_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 115, ptr @.str.147, ptr @.str.148, ptr @top4_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 116, ptr @.str.149, ptr @.str.150, ptr @top4_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 117, ptr @.str.151, ptr @.str.152, ptr @top4_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 118, ptr @.str.153, ptr @.str.154, ptr @top4_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 119, ptr @.str.155, ptr @.str.156, ptr @top5_cg_regs, i32 0, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 120, ptr @.str.157, ptr @.str.158, ptr @top5_cg_regs, i32 1, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 121, ptr @.str.159, ptr @.str.160, ptr @top5_cg_regs, i32 2, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 122, ptr @.str.161, ptr @.str.162, ptr @top5_cg_regs, i32 3, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 123, ptr @.str.163, ptr @.str.164, ptr @top5_cg_regs, i32 4, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 124, ptr @.str.165, ptr @.str.166, ptr @top5_cg_regs, i32 5, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 125, ptr @.str.167, ptr @.str.168, ptr @top5_cg_regs, i32 6, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 126, ptr @.str.169, ptr @.str.170, ptr @top5_cg_regs, i32 7, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 127, ptr @.str.171, ptr @.str.172, ptr @top5_cg_regs, i32 8, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }], section ".init.rodata", align 4
@top_divs = internal constant [53 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 3, ptr @.str.173, ptr @.str.8, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 4, ptr @.str.174, ptr @.str.175, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 5, ptr @.str.176, ptr @.str.175, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 6, ptr @.str.177, ptr @.str.175, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 7, ptr @.str.178, ptr @.str.175, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 8, ptr @.str.179, ptr @.str.175, i32 1, i32 11 }, %struct.mtk_fixed_factor { i32 9, ptr @.str.180, ptr @.str.175, i32 1, i32 22 }, %struct.mtk_fixed_factor { i32 10, ptr @.str.181, ptr @.str.175, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 11, ptr @.str.182, ptr @.str.175, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 12, ptr @.str.183, ptr @.str.175, i32 1, i32 12 }, %struct.mtk_fixed_factor { i32 13, ptr @.str.184, ptr @.str.175, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 14, ptr @.str.185, ptr @.str.175, i32 1, i32 10 }, %struct.mtk_fixed_factor { i32 15, ptr @.str.186, ptr @.str.175, i32 1, i32 20 }, %struct.mtk_fixed_factor { i32 16, ptr @.str.187, ptr @.str.175, i32 1, i32 40 }, %struct.mtk_fixed_factor { i32 17, ptr @.str.188, ptr @.str.175, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 18, ptr @.str.189, ptr @.str.175, i32 1, i32 14 }, %struct.mtk_fixed_factor { i32 19, ptr @.str.190, ptr @.str.191, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 20, ptr @.str.192, ptr @.str.191, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 21, ptr @.str.193, ptr @.str.191, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 22, ptr @.str.194, ptr @.str.191, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 23, ptr @.str.195, ptr @.str.191, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 24, ptr @.str.196, ptr @.str.191, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 25, ptr @.str.74, ptr @.str.191, i32 1, i32 12 }, %struct.mtk_fixed_factor { i32 26, ptr @.str.197, ptr @.str.191, i32 1, i32 24 }, %struct.mtk_fixed_factor { i32 27, ptr @.str.198, ptr @.str.191, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 28, ptr @.str.199, ptr @.str.191, i32 1, i32 20 }, %struct.mtk_fixed_factor { i32 29, ptr @.str.200, ptr @.str.201, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 30, ptr @.str.202, ptr @.str.201, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 31, ptr @.str.203, ptr @.str.201, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 181, ptr @.str.204, ptr @.str.205, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 182, ptr @.str.206, ptr @.str.205, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 183, ptr @.str.207, ptr @.str.205, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 184, ptr @.str.208, ptr @.str.205, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 32, ptr @.str.209, ptr @.str.191, i32 1, i32 26 }, %struct.mtk_fixed_factor { i32 33, ptr @.str.210, ptr @.str.211, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 34, ptr @.str.144, ptr @.str.210, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 35, ptr @.str.146, ptr @.str.143, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 36, ptr @.str.148, ptr @.str.145, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 37, ptr @.str.212, ptr @.str.213, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 38, ptr @.str.150, ptr @.str.212, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 39, ptr @.str.152, ptr @.str.149, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 40, ptr @.str.154, ptr @.str.151, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 41, ptr @.str.50, ptr @.str.9, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 42, ptr @.str.214, ptr @.str.9, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 185, ptr @.str.22, ptr @.str.9, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 186, ptr @.str.215, ptr @.str.216, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 187, ptr @.str.217, ptr @.str.215, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 188, ptr @.str.218, ptr @.str.215, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 189, ptr @.str.219, ptr @.str.215, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 190, ptr @.str.220, ptr @.str.215, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 43, ptr @.str.94, ptr @.str.28, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 44, ptr @.str.221, ptr @.str.59, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 45, ptr @.str.222, ptr @.str.114, i32 1, i32 2 }], section ".init.rodata", align 4
@top_muxes = internal global [49 x %struct.mtk_composite] [%struct.mtk_composite { i32 128, ptr @.str.43, ptr @uart0_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 207, ptr @.str.223, ptr @gfmux_emi1x_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 1, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 129, ptr @.str.224, ptr @emi_ddrphy_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 2, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 130, ptr @.str.28, ptr @ahb_infra_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 4, i8 4, i8 -1, i8 -1, i8 0, i8 0, i8 13 }, %struct.mtk_composite { i32 208, ptr @.str.225, ptr @csw_mux_mfg_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 8, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 131, ptr @.str.55, ptr @msdc0_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 11, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 209, ptr @.str.16, ptr @camtg_mm_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 15, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 210, ptr @.str.14, ptr @pwm_mm_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 18, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 132, ptr @.str.45, ptr @uart1_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 19, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 133, ptr @.str.57, ptr @msdc1_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 20, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 211, ptr @.str.20, ptr @spm_52m_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 23, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 134, ptr @.str.226, ptr @pmicspi_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 24, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 135, ptr @.str.227, ptr @qaxi_aud26m_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 26, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 136, ptr @.str.228, ptr @aud_intbus_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 27, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 137, ptr @.str.59, ptr @nfi2x_pad_parents, ptr null, i32 4, i32 4, i32 0, i32 0, i8 0, i8 7, i8 -1, i8 -1, i8 0, i8 0, i8 85 }, %struct.mtk_composite { i32 138, ptr @.str.36, ptr @nfi1x_pad_parents, ptr null, i32 4, i32 4, i32 0, i32 0, i8 7, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 212, ptr @.str.18, ptr @mfg_mm_parents, ptr null, i32 4, i32 4, i32 0, i32 0, i8 8, i8 6, i8 -1, i8 -1, i8 0, i8 0, i8 37 }, %struct.mtk_composite { i32 139, ptr @.str.229, ptr @ddrphycfg_parents, ptr null, i32 4, i32 4, i32 0, i32 0, i8 15, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 213, ptr @.str.26, ptr @smi_mm_parents, ptr null, i32 4, i32 4, i32 0, i32 0, i8 16, i8 4, i8 -1, i8 -1, i8 0, i8 0, i8 13 }, %struct.mtk_composite { i32 140, ptr @.str.110, ptr @usb_78m_parents, ptr null, i32 4, i32 4, i32 0, i32 0, i8 20, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 214, ptr @.str.24, ptr @scam_mm_parents, ptr null, i32 4, i32 4, i32 0, i32 0, i8 23, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 141, ptr @.str.112, ptr @spinor_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 0, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 142, ptr @.str.113, ptr @msdc2_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 3, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 143, ptr @.str.114, ptr @eth_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 6, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 215, ptr @.str.116, ptr @vdec_mm_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 9, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 216, ptr @.str.118, ptr @dpi0_mm_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 12, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 217, ptr @.str.120, ptr @dpi1_mm_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 15, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 218, ptr @.str.122, ptr @axi_mfg_in_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 18, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 219, ptr @.str.124, ptr @slow_mfg_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 20, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 144, ptr @.str.126, ptr @aud1_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 22, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 145, ptr @.str.128, ptr @aud2_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 23, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 146, ptr @.str.130, ptr @aud_engen1_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 24, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 147, ptr @.str.132, ptr @aud_engen2_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 26, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 148, ptr @.str.134, ptr @i2c_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 28, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 149, ptr @.str.230, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 12, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 150, ptr @.str.231, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 13, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 151, ptr @.str.232, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 14, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 152, ptr @.str.233, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 15, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 153, ptr @.str.234, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 16, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 154, ptr @.str.235, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 17, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 155, ptr @.str.236, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 18, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 156, ptr @.str.135, ptr @pwm_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 157, ptr @.str.64, ptr @spi_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 1, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 158, ptr @.str.137, ptr @aud_spdifin_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 3, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 159, ptr @.str.138, ptr @uart2_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 4, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 160, ptr @.str.140, ptr @bsi_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 5, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 161, ptr @.str.141, ptr @dbg_atclk_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 7, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 162, ptr @.str.237, ptr @csw_nfiecc_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 10, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 163, ptr @.str.142, ptr @nfiecc_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 13, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }], section ".init.data", align 4
@mt8167_clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.238, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@top_adj_divs = internal constant { [9 x %struct.mtk_clk_divider], [36 x i8] } { [9 x %struct.mtk_clk_divider] [%struct.mtk_clk_divider { i32 164, ptr @.str.156, ptr @.str.230, i32 0, i32 72, i8 0, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 165, ptr @.str.158, ptr @.str.231, i32 0, i32 72, i8 8, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 166, ptr @.str.160, ptr @.str.232, i32 0, i32 72, i8 16, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 167, ptr @.str.162, ptr @.str.233, i32 0, i32 72, i8 24, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 168, ptr @.str.164, ptr @.str.234, i32 0, i32 76, i8 0, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 169, ptr @.str.166, ptr @.str.163, i32 0, i32 76, i8 8, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 170, ptr @.str.168, ptr @.str.235, i32 0, i32 76, i8 16, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 171, ptr @.str.170, ptr @.str.167, i32 0, i32 76, i8 24, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 172, ptr @.str.172, ptr @.str.236, i32 0, i32 120, i8 0, i8 8, i8 0, ptr null }], [36 x i8] zeroinitializer }, align 32
@mtk_topckgen_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s(): could not register clock provider: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mtk_topckgen_init._entry_ptr.5 = internal global ptr @mtk_topckgen_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_null\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2s_infra_bck\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mempll\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk26m\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dsi0_lntc_dsick\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpll_dpix\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lvdstx_dig_cts\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pwm_mm\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwm_mm_sel\00", [21 x i8] zeroinitializer }, align 32
@top0_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 32, i32 128, i32 80 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cam_mm\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"camtg_mm_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfg_mm\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mfg_mm_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spm_52m\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spm_52m_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mipi_26m_dbg\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mipi_26m\00", [23 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_setclr_inv = external dso_local constant %struct.clk_ops, align 4
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"scam_mm\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scam_mm_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smi_mm\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"smi_mm_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"them\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ahb_infra_sel\00", [18 x i8] zeroinitializer }, align 32
@top1_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 36, i32 132, i32 84 }, [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apdma\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c0\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_i2c0_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_i2c1_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"auxadc1\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfi\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfi1x_pad_sel\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nfiecc\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rg_nfiecc\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"debugsys\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rg_dbg_atclk\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"btif\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_78m\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flashif_26m\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk26m_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"auxadc2\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_i2c2_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"msdc0\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msdc0_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"msdc1\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msdc1_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nfi2x\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfi2x_pad_sel\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwrap_ap\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sej\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"memslp_dlyer\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"apxgpt\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwrap_md\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwrap_conn\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwrap_26m\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aux_adc\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"aux_tp\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"msdc2\00", [26 x i8] zeroinitializer }, align 32
@top2_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 60, i32 156, i32 108 }, [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rbist\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_d12\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nfi_bus\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gce\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"trng\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sej_13m\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aes\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm_b\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rg_pwm_infra\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm1_fb\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm2_fb\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm3_fb\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm4_fb\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm5_fb\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usb_1p\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"flashif_freerun\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hdmi_sifm_26m\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cec_26m\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cec_32k\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk32k\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eth_66m\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ahb_infra_d2\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eth_133m\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"feth_25m\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ifr_eth_25m_sel\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"feth_50m\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rg_eth\00", [25 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flashif_axi\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usbif\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rg_uart2\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bsi\00", [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gcpu_b\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc0_infra\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc1_infra\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc2_infra\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rg_msdc2\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_78m_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rg_spinor\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spinor_sel\00", [21 x i8] zeroinitializer }, align 32
@top3_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 112, i32 176, i32 160 }, [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msdc2_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eth_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rg_vdec\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdec_mm_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rg_fdpi0\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpi0_mm_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rg_fdpi1\00", [23 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpi1_mm_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rg_axi_mfg\00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axi_mfg_in_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rg_slow_mfg\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slow_mfg_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rg_aud1\00", [24 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aud1_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rg_aud2\00", [24 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aud2_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rg_aud_engen1\00", [18 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_engen1_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rg_aud_engen2\00", [18 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_engen2_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rg_i2c\00", [25 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rg_aud_spdif_in\00", [16 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aud_spdifin_sel\00", [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rg_bsi\00", [25 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bsi_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dbg_atclk_sel\00", [18 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nfiecc_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rg_apll1_d2_en\00", [17 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d2\00", [23 x i8] zeroinitializer }, align 32
@top4_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 116, i32 180, i32 164 }, [20 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rg_apll1_d4_en\00", [17 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d4\00", [23 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rg_apll1_d8_en\00", [17 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d8\00", [23 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rg_apll2_d2_en\00", [17 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rg_apll2_d4_en\00", [17 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_d4\00", [23 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rg_apll2_d8_en\00", [17 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_d8\00", [23 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div0\00", [20 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apll12_ck_div0\00", [17 x i8] zeroinitializer }, align 32
@top5_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 68, i32 68, i32 68 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_no_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.157 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div1\00", [20 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apll12_ck_div1\00", [17 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div2\00", [20 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apll12_ck_div2\00", [17 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div3\00", [20 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apll12_ck_div3\00", [17 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div4\00", [20 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apll12_ck_div4\00", [17 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apll12_div4b\00", [19 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apll12_ck_div4b\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div5\00", [20 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apll12_ck_div5\00", [17 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apll12_div5b\00", [19 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apll12_ck_div5b\00", [16 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div6\00", [20 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apll12_ck_div6\00", [17 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmpll_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mainpll\00", [24 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mainpll_d16\00", [20 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mainpll_d11\00", [20 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mainpll_d22\00", [20 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d3\00", [21 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d6\00", [21 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mainpll_d12\00", [20 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d5\00", [21 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mainpll_d10\00", [20 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mainpll_d20\00", [20 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mainpll_d40\00", [20 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d7\00", [21 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mainpll_d14\00", [20 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"univpll\00", [24 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_d16\00", [20 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d3\00", [21 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d6\00", [21 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_d24\00", [20 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d5\00", [21 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_d20\00", [20 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmpll380m\00", [22 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mmpll\00", [26 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmpll_200m\00", [21 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lvdspll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lvdspll\00", [24 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lvdspll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lvdspll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lvdspll_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb_phy48m_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apll1\00", [26 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apll2\00", [26 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk26m_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tvdpll\00", [25 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d4\00", [22 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d8\00", [22 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tvdpll_d16\00", [21 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nfi1x_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eth_d2_ck\00", [22 x i8] zeroinitializer }, align 32
@uart0_parents = internal constant [2 x ptr] [ptr @.str.50, ptr @.str.197], section ".init.rodata", align 4
@.str.223 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gfmux_emi1x_sel\00", [16 x i8] zeroinitializer }, align 32
@gfmux_emi1x_parents = internal constant [2 x ptr] [ptr @.str.50, ptr @.str.173], section ".init.rodata", align 4
@.str.224 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"emi_ddrphy_sel\00", [17 x i8] zeroinitializer }, align 32
@emi_ddrphy_parents = internal constant [2 x ptr] [ptr @.str.223, ptr @.str.223], section ".init.rodata", align 4
@ahb_infra_parents = internal constant [13 x ptr] [ptr @.str.6, ptr @.str.50, ptr @.str.179, ptr @.str.6, ptr @.str.183, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.185], section ".init.rodata", align 4
@.str.225 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csw_mux_mfg_sel\00", [16 x i8] zeroinitializer }, align 32
@csw_mux_mfg_parents = internal constant [8 x ptr] [ptr @.str.6, ptr @.str.6, ptr @.str.195, ptr @.str.190, ptr @.str.50, ptr @.str.176, ptr @.str.197, ptr @.str.200], section ".init.rodata", align 4
@msdc0_parents = internal constant [8 x ptr] [ptr @.str.50, ptr @.str.196, ptr @.str.177, ptr @.str.193, ptr @.str.178, ptr @.str.203, ptr @.str.183, ptr @.str.202], section ".init.rodata", align 4
@camtg_mm_parents = internal constant [5 x ptr] [ptr @.str.6, ptr @.str.50, ptr @.str.209, ptr @.str.6, ptr @.str.196], section ".init.rodata", align 4
@pwm_mm_parents = internal constant [2 x ptr] [ptr @.str.50, ptr @.str.74], section ".init.rodata", align 4
@uart1_parents = internal constant [2 x ptr] [ptr @.str.50, ptr @.str.197], section ".init.rodata", align 4
@msdc1_parents = internal constant [8 x ptr] [ptr @.str.50, ptr @.str.196, ptr @.str.177, ptr @.str.193, ptr @.str.178, ptr @.str.203, ptr @.str.183, ptr @.str.202], section ".init.rodata", align 4
@spm_52m_parents = internal constant [2 x ptr] [ptr @.str.50, ptr @.str.197], section ".init.rodata", align 4
@.str.226 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pmicspi_sel\00", [20 x i8] zeroinitializer }, align 32
@pmicspi_parents = internal constant [4 x ptr] [ptr @.str.199, ptr @.str.209, ptr @.str.194, ptr @.str.50], section ".init.rodata", align 4
@.str.227 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qaxi_aud26m_sel\00", [16 x i8] zeroinitializer }, align 32
@qaxi_aud26m_parents = internal constant [2 x ptr] [ptr @.str.50, ptr @.str.28], section ".init.rodata", align 4
@.str.228 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_intbus_sel\00", [17 x i8] zeroinitializer }, align 32
@aud_intbus_parents = internal constant [5 x ptr] [ptr @.str.6, ptr @.str.50, ptr @.str.180, ptr @.str.6, ptr @.str.179], section ".init.rodata", align 4
@nfi2x_pad_parents = internal constant [85 x ptr] [ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.50, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.183, ptr @.str.177, ptr @.str.6, ptr @.str.182, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.176, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.185, ptr @.str.188, ptr @.str.6, ptr @.str.184], section ".init.rodata", align 4
@nfi1x_pad_parents = internal constant [2 x ptr] [ptr @.str.28, ptr @.str.221], section ".init.rodata", align 4
@mfg_mm_parents = internal constant [37 x ptr] [ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.225, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.181, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.184, ptr @.str.188, ptr @.str.6, ptr @.str.189], section ".init.rodata", align 4
@.str.229 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ddrphycfg_sel\00", [18 x i8] zeroinitializer }, align 32
@ddrphycfg_parents = internal constant [2 x ptr] [ptr @.str.50, ptr @.str.178], section ".init.rodata", align 4
@smi_mm_parents = internal constant [13 x ptr] [ptr @.str.50, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.192, ptr @.str.188, ptr @.str.6, ptr @.str.189], section ".init.rodata", align 4
@usb_78m_parents = internal constant [5 x ptr] [ptr @.str.6, ptr @.str.50, ptr @.str.194, ptr @.str.6, ptr @.str.186], section ".init.rodata", align 4
@scam_mm_parents = internal constant [5 x ptr] [ptr @.str.6, ptr @.str.50, ptr @.str.189, ptr @.str.6, ptr @.str.183], section ".init.rodata", align 4
@spinor_parents = internal constant [8 x ptr] [ptr @.str.214, ptr @.str.50, ptr @.str.187, ptr @.str.197, ptr @.str.199, ptr @.str.186, ptr @.str.178, ptr @.str.74], section ".init.rodata", align 4
@msdc2_parents = internal constant [8 x ptr] [ptr @.str.50, ptr @.str.196, ptr @.str.177, ptr @.str.193, ptr @.str.178, ptr @.str.203, ptr @.str.183, ptr @.str.202], section ".init.rodata", align 4
@eth_parents = internal constant [5 x ptr] [ptr @.str.50, ptr @.str.187, ptr @.str.197, ptr @.str.199, ptr @.str.186], section ".init.rodata", align 4
@vdec_mm_parents = internal constant [6 x ptr] [ptr @.str.50, ptr @.str.192, ptr @.str.176, ptr @.str.198, ptr @.str.196, ptr @.str.182], section ".init.rodata", align 4
@dpi0_mm_parents = internal constant [5 x ptr] [ptr @.str.50, ptr @.str.204, ptr @.str.206, ptr @.str.207, ptr @.str.208], section ".init.rodata", align 4
@dpi1_mm_parents = internal constant [5 x ptr] [ptr @.str.50, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220], section ".init.rodata", align 4
@axi_mfg_in_parents = internal constant [4 x ptr] [ptr @.str.50, ptr @.str.179, ptr @.str.197, ptr @.str.200], section ".init.rodata", align 4
@slow_mfg_parents = internal constant [3 x ptr] [ptr @.str.50, ptr @.str.74, ptr @.str.197], section ".init.rodata", align 4
@aud1_parents = internal constant [2 x ptr] [ptr @.str.50, ptr @.str.210], section ".init.rodata", align 4
@aud2_parents = internal constant [2 x ptr] [ptr @.str.50, ptr @.str.212], section ".init.rodata", align 4
@aud_engen1_parents = internal constant [4 x ptr] [ptr @.str.50, ptr @.str.143, ptr @.str.145, ptr @.str.147], section ".init.rodata", align 4
@aud_engen2_parents = internal constant [4 x ptr] [ptr @.str.50, ptr @.str.149, ptr @.str.151, ptr @.str.153], section ".init.rodata", align 4
@i2c_parents = internal constant [4 x ptr] [ptr @.str.50, ptr @.str.199, ptr @.str.194, ptr @.str.74], section ".init.rodata", align 4
@.str.230 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_i2s0_m_sel\00", [17 x i8] zeroinitializer }, align 32
@aud_i2s0_m_parents = internal constant [2 x ptr] [ptr @.str.125, ptr @.str.127], section ".init.rodata", align 4
@.str.231 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_i2s1_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_i2s2_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_i2s3_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_i2s4_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_i2s5_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aud_spdif_b_sel\00", [16 x i8] zeroinitializer }, align 32
@pwm_parents = internal constant [2 x ptr] [ptr @.str.50, ptr @.str.74], section ".init.rodata", align 4
@spi_parents = internal constant [4 x ptr] [ptr @.str.50, ptr @.str.74, ptr @.str.193, ptr @.str.196], section ".init.rodata", align 4
@aud_spdifin_parents = internal constant [2 x ptr] [ptr @.str.50, ptr @.str.190], section ".init.rodata", align 4
@uart2_parents = internal constant [2 x ptr] [ptr @.str.50, ptr @.str.197], section ".init.rodata", align 4
@bsi_parents = internal constant [4 x ptr] [ptr @.str.50, ptr @.str.185, ptr @.str.183, ptr @.str.186], section ".init.rodata", align 4
@dbg_atclk_parents = internal constant [5 x ptr] [ptr @.str.6, ptr @.str.50, ptr @.str.184, ptr @.str.6, ptr @.str.198], section ".init.rodata", align 4
@.str.237 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"csw_nfiecc_sel\00", [17 x i8] zeroinitializer }, align 32
@csw_nfiecc_parents = internal constant [5 x ptr] [ptr @.str.6, ptr @.str.188, ptr @.str.182, ptr @.str.6, ptr @.str.184], section ".init.rodata", align 4
@nfiecc_parents = internal constant [5 x ptr] [ptr @.str.6, ptr @.str.59, ptr @.str.176, ptr @.str.6, ptr @.str.237], section ".init.rodata", align 4
@.str.238 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt8167_clk_lock\00", [16 x i8] zeroinitializer }, align 32
@mtk_infracfg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.239, ptr @.str.2, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_infracfg_init\00", [46 x i8] zeroinitializer }, align 32
@mtk_infracfg_init._entry_ptr = internal global ptr @mtk_infracfg_init._entry, section ".printk_index", align 4
@ifr_muxes = internal constant [5 x %struct.mtk_composite] [%struct.mtk_composite { i32 0, ptr @.str.242, ptr @ifr_mux1_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 2, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 1, ptr @.str.97, ptr @ifr_eth_25m_parents, ptr null, i32 4, i32 128, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 2, ptr @.str.31, ptr @ifr_i2c0_parents, ptr null, i32 4, i32 128, i32 0, i32 0, i8 1, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 3, ptr @.str.33, ptr @ifr_i2c0_parents, ptr null, i32 4, i32 128, i32 0, i32 0, i8 2, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 4, ptr @.str.53, ptr @ifr_i2c0_parents, ptr null, i32 4, i32 128, i32 0, i32 0, i8 3, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }], section ".init.rodata", align 4
@mtk_infracfg_init._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.239, ptr @.str.2, i32 974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtk_infracfg_init._entry_ptr.241 = internal global ptr @mtk_infracfg_init._entry.240, section ".printk_index", align 4
@.str.242 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_mux1_sel\00", [19 x i8] zeroinitializer }, align 32
@ifr_mux1_parents = internal constant [4 x ptr] [ptr @.str.50, ptr @.str.243, ptr @.str.191, ptr @.str.174], section ".init.rodata", align 4
@ifr_eth_25m_parents = internal constant [2 x ptr] [ptr @.str.222, ptr @.str.99], section ".init.rodata", align 4
@ifr_i2c0_parents = internal constant [2 x ptr] [ptr @.str.94, ptr @.str.133], section ".init.rodata", align 4
@.str.243 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"armpll\00", [25 x i8] zeroinitializer }, align 32
@mtk_apmixedsys_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.244, ptr @.str.2, i32 1045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_apmixedsys_init\00", [44 x i8] zeroinitializer }, align 32
@mtk_apmixedsys_init._entry_ptr = internal global ptr @mtk_apmixedsys_init._entry, section ".printk_index", align 4
@plls = internal constant { [8 x %struct.mtk_pll_data], [192 x i8] } { [8 x %struct.mtk_pll_data] [%struct.mtk_pll_data { i32 0, ptr @.str.243, i32 256, i32 272, i32 1, i32 260, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 21, i32 0, i32 260, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 1, ptr @.str.175, i32 288, i32 304, i32 1, i32 292, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 21, i32 0, i32 292, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 2, ptr @.str.191, i32 320, i32 336, i32 805306369, i32 324, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 7, i32 0, i32 324, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 3, ptr @.str.201, i32 352, i32 368, i32 1, i32 356, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 21, i32 0, i32 356, i32 0, i32 0, ptr @mmpll_div_table, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 4, ptr @.str.211, i32 384, i32 400, i32 1, i32 384, i32 404, i32 0, i8 0, i32 1, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 31, i32 0, i32 388, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 5, ptr @.str.213, i32 416, i32 432, i32 1, i32 416, i32 436, i32 0, i8 0, i32 1, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 31, i32 0, i32 420, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 6, ptr @.str.216, i32 448, i32 464, i32 1, i32 452, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 21, i32 0, i32 452, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 7, ptr @.str.205, i32 480, i32 496, i32 1, i32 484, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 21, i32 0, i32 484, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }], [192 x i8] zeroinitializer }, align 32
@apmixed_adj_divs = internal constant { [1 x %struct.mtk_clk_divider], [36 x i8] } { [1 x %struct.mtk_clk_divider] [%struct.mtk_clk_divider { i32 8, ptr @.str.247, ptr @.str.216, i32 0, i32 452, i8 24, i8 3, i8 2, ptr null }], [36 x i8] zeroinitializer }, align 32
@mtk_apmixedsys_init._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.244, ptr @.str.2, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtk_apmixedsys_init._entry_ptr.246 = internal global ptr @mtk_apmixedsys_init._entry.245, section ".printk_index", align 4
@mmpll_div_table = internal constant { [6 x %struct.mtk_pll_div_table], [48 x i8] } { [6 x %struct.mtk_pll_div_table] [%struct.mtk_pll_div_table { i32 0, i32 -1794967296 }, %struct.mtk_pll_div_table { i32 1, i32 1000000000 }, %struct.mtk_pll_div_table { i32 2, i32 604500000 }, %struct.mtk_pll_div_table { i32 3, i32 253500000 }, %struct.mtk_pll_div_table { i32 4, i32 126750000 }, %struct.mtk_pll_div_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_ref\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 931, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [16 x i8] c"mt8167_clk_lock\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [13 x i8] c"top_adj_divs\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 666, i32 37 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 949, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 23, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 24, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 25, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 26, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 27, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 28, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 812, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [13 x i8] c"top0_cg_regs\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 702, i32 35 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 813, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 814, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 815, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 816, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 817, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 818, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 820, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant [13 x i8] c"top1_cg_regs\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 708, i32 35 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 821, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 822, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 823, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 824, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 825, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 826, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 827, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 828, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 829, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 830, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 831, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 832, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 833, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 834, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 835, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 836, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 837, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 838, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 839, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 840, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 841, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 842, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 843, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 844, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 845, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 846, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 847, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 848, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 849, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 851, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [13 x i8] c"top2_cg_regs\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 714, i32 35 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 852, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 853, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 854, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 855, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 856, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 857, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 858, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 859, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 860, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 861, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 862, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 863, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 864, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 865, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 867, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 868, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 869, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 870, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 871, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 872, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 873, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 874, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 875, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 876, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 877, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 878, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 879, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 880, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 881, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 882, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 884, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant [13 x i8] c"top3_cg_regs\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 720, i32 35 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 885, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 886, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 887, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 888, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 889, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 890, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 891, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 892, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 893, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 894, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 895, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 896, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 897, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 898, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 900, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 901, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 902, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 903, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 905, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant [13 x i8] c"top4_cg_regs\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 726, i32 35 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 906, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 907, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 908, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 909, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 910, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 912, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant [13 x i8] c"top5_cg_regs\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 732, i32 35 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 913, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 914, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 915, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 916, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 917, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 918, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 919, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 920, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 32, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 33, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 34, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 35, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 36, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 37, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 38, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 39, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 40, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 41, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 42, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 43, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 44, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 45, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 46, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 47, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 48, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 49, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 50, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 51, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 52, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 53, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 55, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 56, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 57, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 58, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 59, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 60, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 61, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 62, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 63, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 64, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 65, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 66, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 70, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 75, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 77, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 78, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 79, i32 2 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 80, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 81, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 83, i32 2 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 84, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 525, i32 2 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 527, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 531, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 545, i32 2 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 547, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 549, i32 2 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 558, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 594, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 596, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 598, i32 2 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 600, i32 2 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 602, i32 2 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 604, i32 2 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 606, i32 2 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 621, i32 2 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 20, i32 8 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 962, i32 3 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 973, i32 3 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 645, i32 2 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 629, i32 2 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 1045, i32 3 }
@___asan_gen_.1010 = private unnamed_addr constant [5 x i8] c"plls\00", align 1
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 1018, i32 34 }
@___asan_gen_.1013 = private unnamed_addr constant [17 x i8] c"apmixed_adj_divs\00", align 1
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 697, i32 37 }
@___asan_gen_.1016 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 1057, i32 3 }
@___asan_gen_.1019 = private unnamed_addr constant [16 x i8] c"mmpll_div_table\00", align 1
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 1009, i32 39 }
@___asan_gen_.1022 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1023 = private constant [37 x i8] c"../drivers/clk/mediatek/clk-mt8167.c\00", align 1
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 698, i32 2 }
@llvm.compiler.used = appending global [268 x ptr] [ptr @__of_table_mtk_apmixedsys, ptr @__of_table_mtk_infracfg, ptr @__of_table_mtk_topckgen, ptr @mtk_apmixedsys_init._entry, ptr @mtk_apmixedsys_init._entry.245, ptr @mtk_apmixedsys_init._entry_ptr, ptr @mtk_apmixedsys_init._entry_ptr.246, ptr @mtk_infracfg_init._entry, ptr @mtk_infracfg_init._entry.240, ptr @mtk_infracfg_init._entry_ptr, ptr @mtk_infracfg_init._entry_ptr.241, ptr @mtk_topckgen_init._entry, ptr @mtk_topckgen_init._entry.3, ptr @mtk_topckgen_init._entry_ptr, ptr @mtk_topckgen_init._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mt8167_clk_lock, ptr @top_adj_divs, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @top0_cg_regs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @top1_cg_regs, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @top2_cg_regs, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @top3_cg_regs, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @top4_cg_regs, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @top5_cg_regs, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @plls, ptr @apmixed_adj_divs, ptr @mmpll_div_table, ptr @.str.247], section "llvm.metadata"
@0 = internal global [259 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_topckgen_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8167_clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_adj_divs to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_topckgen_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top0_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top1_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top2_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top3_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top4_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top5_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_infracfg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_infracfg_init._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_apmixedsys_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plls to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmixed_adj_divs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_apmixedsys_init._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpll_div_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }]
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
  %call2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 220) #3
  tail call void @mtk_clk_register_fixed_clks(ptr noundef nonnull @fixed_clks, i32 noundef 6, ptr noundef %call2) #3
  %call3 = tail call i32 @mtk_clk_register_gates(ptr noundef %node, ptr noundef nonnull @top_clks, i32 noundef 102, ptr noundef %call2) #3
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_divs, i32 noundef 53, ptr noundef %call2) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @top_muxes, i32 noundef 49, ptr noundef nonnull %call, ptr noundef nonnull @mt8167_clk_lock, ptr noundef %call2) #3
  tail call void @mtk_clk_register_dividers(ptr noundef nonnull @top_adj_divs, i32 noundef 9, ptr noundef nonnull %call, ptr noundef nonnull @mt8167_clk_lock, ptr noundef %call2) #3
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
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.239) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 5) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @ifr_muxes, i32 noundef 5, ptr noundef nonnull %call, ptr noundef nonnull @mt8167_clk_lock, ptr noundef %call2) #3
  %call3 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.239, i32 noundef %call3) #6
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
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.244) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 9) #3
  tail call void @mtk_clk_register_plls(ptr noundef %node, ptr noundef nonnull @plls, i32 noundef 8, ptr noundef %call2) #3
  tail call void @mtk_clk_register_dividers(ptr noundef nonnull @apmixed_adj_divs, i32 noundef 1, ptr noundef nonnull %call, ptr noundef nonnull @mt8167_clk_lock, ptr noundef %call2) #3
  %call3 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.244, i32 noundef %call3) #6
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 259)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 259)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !59, !60, !62, !63, !65, !67, !68, !70, !71, !73, !74, !76, !78, !79, !81, !82, !84, !86, !87, !89, !90, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !108, !110, !112, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !134, !136, !138, !140, !142, !144, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !168, !169, !171, !173, !174, !176, !177, !179, !181, !183, !184, !186, !188, !190, !192, !194, !195, !197, !199, !200, !202, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !238, !239, !241, !243, !244, !246, !248, !250, !251, !253, !254, !256, !257, !259, !260, !262, !263, !265, !266, !268, !269, !271, !272, !274, !275, !277, !278, !280, !281, !283, !284, !286, !287, !289, !290, !292, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !362, !364, !366, !368, !369, !371, !373, !375, !377, !379, !380, !382, !383, !385, !387, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !523, !525, !527, !528, !529, !531, !532, !534, !536, !538, !540, !542, !544, !546, !547, !548, !550, !551, !553, !555, !557}
!llvm.module.flags = !{!559, !560, !561, !562, !563, !564, !565, !566}
!llvm.ident = !{!567}

!0 = !{ptr @__of_table_mtk_topckgen, !1, !"__of_table_mtk_topckgen", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 952, i32 1}
!2 = !{ptr @__of_table_mtk_infracfg, !3, !"__of_table_mtk_infracfg", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 976, i32 1}
!4 = !{ptr @__of_table_mtk_apmixedsys, !5, !"__of_table_mtk_apmixedsys", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 1061, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 931, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mtk_topckgen_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @mtk_topckgen_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 949, i32 3}
!14 = !{ptr @mtk_topckgen_init._entry.3, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mtk_topckgen_init._entry_ptr.5, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 23, i32 2}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 24, i32 2}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 25, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 26, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 27, i32 2}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 28, i32 2}
!29 = !{ptr @fixed_clks, !30, !"fixed_clks", i1 false, i1 false}
!30 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 22, i32 35}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 812, i32 2}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 813, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 814, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 815, i32 2}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 816, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 817, i32 2}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 818, i32 2}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 820, i32 2}
!54 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 821, i32 2}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 822, i32 2}
!59 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 823, i32 2}
!62 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 824, i32 2}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 825, i32 2}
!67 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 826, i32 2}
!70 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 827, i32 2}
!73 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 828, i32 2}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 829, i32 2}
!78 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 830, i32 2}
!81 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 831, i32 2}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 832, i32 2}
!86 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 833, i32 2}
!89 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 834, i32 2}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 835, i32 2}
!94 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 836, i32 2}
!97 = !{ptr @.str.55, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 837, i32 2}
!100 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 838, i32 2}
!103 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.60, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 839, i32 2}
!106 = !{ptr @.str.61, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 840, i32 2}
!108 = !{ptr @.str.62, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 841, i32 2}
!110 = !{ptr @.str.63, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 842, i32 2}
!112 = !{ptr @.str.64, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.65, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 843, i32 2}
!115 = !{ptr @.str.66, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 844, i32 2}
!117 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 845, i32 2}
!119 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 846, i32 2}
!121 = !{ptr @.str.69, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 847, i32 2}
!123 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 848, i32 2}
!125 = !{ptr @.str.71, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 849, i32 2}
!127 = !{ptr @.str.72, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 851, i32 2}
!129 = !{ptr @.str.73, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 852, i32 2}
!131 = !{ptr @.str.74, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.75, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 853, i32 2}
!134 = !{ptr @.str.76, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 854, i32 2}
!136 = !{ptr @.str.77, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 855, i32 2}
!138 = !{ptr @.str.78, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 856, i32 2}
!140 = !{ptr @.str.79, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 857, i32 2}
!142 = !{ptr @.str.80, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 858, i32 2}
!144 = !{ptr @.str.81, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.82, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 859, i32 2}
!147 = !{ptr @.str.83, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 860, i32 2}
!149 = !{ptr @.str.84, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 861, i32 2}
!151 = !{ptr @.str.85, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 862, i32 2}
!153 = !{ptr @.str.86, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 863, i32 2}
!155 = !{ptr @.str.87, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 864, i32 2}
!157 = !{ptr @.str.88, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 865, i32 2}
!159 = !{ptr @.str.89, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 867, i32 2}
!161 = !{ptr @.str.90, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 868, i32 2}
!163 = !{ptr @.str.91, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 869, i32 2}
!165 = !{ptr @.str.92, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.93, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 870, i32 2}
!168 = !{ptr @.str.94, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.95, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 871, i32 2}
!171 = !{ptr @.str.96, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 872, i32 2}
!173 = !{ptr @.str.97, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.98, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 873, i32 2}
!176 = !{ptr @.str.99, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.100, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 874, i32 2}
!179 = !{ptr @.str.101, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 875, i32 2}
!181 = !{ptr @.str.102, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 876, i32 2}
!183 = !{ptr @.str.103, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.104, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 877, i32 2}
!186 = !{ptr @.str.105, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 878, i32 2}
!188 = !{ptr @.str.106, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 879, i32 2}
!190 = !{ptr @.str.107, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 880, i32 2}
!192 = !{ptr @.str.108, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 881, i32 2}
!194 = !{ptr @.str.109, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.110, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 882, i32 2}
!197 = !{ptr @.str.111, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 884, i32 2}
!199 = !{ptr @.str.112, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.113, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 885, i32 2}
!202 = !{ptr @.str.114, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 886, i32 2}
!204 = !{ptr @.str.115, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 887, i32 2}
!206 = !{ptr @.str.116, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.117, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 888, i32 2}
!209 = !{ptr @.str.118, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.119, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 889, i32 2}
!212 = !{ptr @.str.120, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.121, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 890, i32 2}
!215 = !{ptr @.str.122, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.123, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 891, i32 2}
!218 = !{ptr @.str.124, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.125, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 892, i32 2}
!221 = !{ptr @.str.126, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.127, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 893, i32 2}
!224 = !{ptr @.str.128, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.129, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 894, i32 2}
!227 = !{ptr @.str.130, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.131, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 895, i32 2}
!230 = !{ptr @.str.132, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.133, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 896, i32 2}
!233 = !{ptr @.str.134, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.135, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 897, i32 2}
!236 = !{ptr @.str.136, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 898, i32 2}
!238 = !{ptr @.str.137, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.138, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 900, i32 2}
!241 = !{ptr @.str.139, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 901, i32 2}
!243 = !{ptr @.str.140, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.141, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 902, i32 2}
!246 = !{ptr @.str.142, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 903, i32 2}
!248 = !{ptr @.str.143, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 905, i32 2}
!250 = !{ptr @.str.144, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.145, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 906, i32 2}
!253 = !{ptr @.str.146, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.147, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 907, i32 2}
!256 = !{ptr @.str.148, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.149, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 908, i32 2}
!259 = !{ptr @.str.150, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.151, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 909, i32 2}
!262 = !{ptr @.str.152, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.153, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 910, i32 2}
!265 = !{ptr @.str.154, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.155, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 912, i32 2}
!268 = !{ptr @.str.156, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.157, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 913, i32 2}
!271 = !{ptr @.str.158, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.159, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 914, i32 2}
!274 = !{ptr @.str.160, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @.str.161, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 915, i32 2}
!277 = !{ptr @.str.162, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @.str.163, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 916, i32 2}
!280 = !{ptr @.str.164, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.165, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 917, i32 2}
!283 = !{ptr @.str.166, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.167, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 918, i32 2}
!286 = !{ptr @.str.168, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.169, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 919, i32 2}
!289 = !{ptr @.str.170, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.171, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 920, i32 2}
!292 = !{ptr @.str.172, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @top_clks, !294, !"top_clks", i1 false, i1 false}
!294 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 810, i32 30}
!295 = !{ptr @top0_cg_regs, !296, !"top0_cg_regs", i1 false, i1 false}
!296 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 702, i32 35}
!297 = !{ptr @top1_cg_regs, !298, !"top1_cg_regs", i1 false, i1 false}
!298 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 708, i32 35}
!299 = !{ptr @top2_cg_regs, !300, !"top2_cg_regs", i1 false, i1 false}
!300 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 714, i32 35}
!301 = !{ptr @top3_cg_regs, !302, !"top3_cg_regs", i1 false, i1 false}
!302 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 720, i32 35}
!303 = !{ptr @top4_cg_regs, !304, !"top4_cg_regs", i1 false, i1 false}
!304 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 726, i32 35}
!305 = !{ptr @top5_cg_regs, !306, !"top5_cg_regs", i1 false, i1 false}
!306 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 732, i32 35}
!307 = !{ptr @.str.173, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 32, i32 2}
!309 = !{ptr @.str.174, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 33, i32 2}
!311 = !{ptr @.str.175, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.176, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 34, i32 2}
!314 = !{ptr @.str.177, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 35, i32 2}
!316 = !{ptr @.str.178, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 36, i32 2}
!318 = !{ptr @.str.179, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 37, i32 2}
!320 = !{ptr @.str.180, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 38, i32 2}
!322 = !{ptr @.str.181, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 39, i32 2}
!324 = !{ptr @.str.182, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 40, i32 2}
!326 = !{ptr @.str.183, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 41, i32 2}
!328 = !{ptr @.str.184, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 42, i32 2}
!330 = !{ptr @.str.185, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 43, i32 2}
!332 = !{ptr @.str.186, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 44, i32 2}
!334 = !{ptr @.str.187, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 45, i32 2}
!336 = !{ptr @.str.188, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 46, i32 2}
!338 = !{ptr @.str.189, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 47, i32 2}
!340 = !{ptr @.str.190, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 48, i32 2}
!342 = !{ptr @.str.191, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @.str.192, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 49, i32 2}
!345 = !{ptr @.str.193, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 50, i32 2}
!347 = !{ptr @.str.194, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 51, i32 2}
!349 = !{ptr @.str.195, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 52, i32 2}
!351 = !{ptr @.str.196, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 53, i32 2}
!353 = !{ptr @.str.197, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 55, i32 2}
!355 = !{ptr @.str.198, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 56, i32 2}
!357 = !{ptr @.str.199, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 57, i32 2}
!359 = !{ptr @.str.200, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 58, i32 2}
!361 = !{ptr @.str.201, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @.str.202, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 59, i32 2}
!364 = !{ptr @.str.203, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 60, i32 2}
!366 = !{ptr @.str.204, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 61, i32 2}
!368 = !{ptr @.str.205, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @.str.206, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 62, i32 2}
!371 = !{ptr @.str.207, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 63, i32 2}
!373 = !{ptr @.str.208, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 64, i32 2}
!375 = !{ptr @.str.209, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 65, i32 2}
!377 = !{ptr @.str.210, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 66, i32 2}
!379 = !{ptr @.str.211, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @.str.212, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 70, i32 2}
!382 = !{ptr @.str.213, !381, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @.str.214, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 75, i32 2}
!385 = !{ptr @.str.215, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 77, i32 2}
!387 = !{ptr @.str.216, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @.str.217, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 78, i32 2}
!390 = !{ptr @.str.218, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 79, i32 2}
!392 = !{ptr @.str.219, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 80, i32 2}
!394 = !{ptr @.str.220, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 81, i32 2}
!396 = !{ptr @.str.221, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 83, i32 2}
!398 = !{ptr @.str.222, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 84, i32 2}
!400 = !{ptr @top_divs, !401, !"top_divs", i1 false, i1 false}
!401 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 31, i32 38}
!402 = !{ptr @.str.223, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 525, i32 2}
!404 = !{ptr @.str.224, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 527, i32 2}
!406 = !{ptr @.str.225, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 531, i32 2}
!408 = !{ptr @.str.226, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 545, i32 2}
!410 = !{ptr @.str.227, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 547, i32 2}
!412 = !{ptr @.str.228, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 549, i32 2}
!414 = !{ptr @.str.229, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 558, i32 2}
!416 = !{ptr @.str.230, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 594, i32 2}
!418 = !{ptr @.str.231, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 596, i32 2}
!420 = !{ptr @.str.232, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 598, i32 2}
!422 = !{ptr @.str.233, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 600, i32 2}
!424 = !{ptr @.str.234, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 602, i32 2}
!426 = !{ptr @.str.235, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 604, i32 2}
!428 = !{ptr @.str.236, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 606, i32 2}
!430 = !{ptr @.str.237, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 621, i32 2}
!432 = !{ptr @top_muxes, !433, !"top_muxes", i1 false, i1 false}
!433 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 521, i32 29}
!434 = !{ptr @uart0_parents, !435, !"uart0_parents", i1 false, i1 false}
!435 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 87, i32 27}
!436 = !{ptr @gfmux_emi1x_parents, !437, !"gfmux_emi1x_parents", i1 false, i1 false}
!437 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 92, i32 27}
!438 = !{ptr @emi_ddrphy_parents, !439, !"emi_ddrphy_parents", i1 false, i1 false}
!439 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 97, i32 27}
!440 = !{ptr @ahb_infra_parents, !441, !"ahb_infra_parents", i1 false, i1 false}
!441 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 102, i32 27}
!442 = !{ptr @csw_mux_mfg_parents, !443, !"csw_mux_mfg_parents", i1 false, i1 false}
!443 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 118, i32 27}
!444 = !{ptr @msdc0_parents, !445, !"msdc0_parents", i1 false, i1 false}
!445 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 129, i32 27}
!446 = !{ptr @camtg_mm_parents, !447, !"camtg_mm_parents", i1 false, i1 false}
!447 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 140, i32 27}
!448 = !{ptr @pwm_mm_parents, !449, !"pwm_mm_parents", i1 false, i1 false}
!449 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 148, i32 27}
!450 = !{ptr @uart1_parents, !451, !"uart1_parents", i1 false, i1 false}
!451 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 153, i32 27}
!452 = !{ptr @msdc1_parents, !453, !"msdc1_parents", i1 false, i1 false}
!453 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 158, i32 27}
!454 = !{ptr @spm_52m_parents, !455, !"spm_52m_parents", i1 false, i1 false}
!455 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 169, i32 27}
!456 = !{ptr @pmicspi_parents, !457, !"pmicspi_parents", i1 false, i1 false}
!457 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 174, i32 27}
!458 = !{ptr @qaxi_aud26m_parents, !459, !"qaxi_aud26m_parents", i1 false, i1 false}
!459 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 181, i32 27}
!460 = !{ptr @aud_intbus_parents, !461, !"aud_intbus_parents", i1 false, i1 false}
!461 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 186, i32 27}
!462 = !{ptr @nfi2x_pad_parents, !463, !"nfi2x_pad_parents", i1 false, i1 false}
!463 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 194, i32 27}
!464 = !{ptr @nfi1x_pad_parents, !465, !"nfi1x_pad_parents", i1 false, i1 false}
!465 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 282, i32 27}
!466 = !{ptr @mfg_mm_parents, !467, !"mfg_mm_parents", i1 false, i1 false}
!467 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 287, i32 27}
!468 = !{ptr @ddrphycfg_parents, !469, !"ddrphycfg_parents", i1 false, i1 false}
!469 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 327, i32 27}
!470 = !{ptr @smi_mm_parents, !471, !"smi_mm_parents", i1 false, i1 false}
!471 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 332, i32 27}
!472 = !{ptr @usb_78m_parents, !473, !"usb_78m_parents", i1 false, i1 false}
!473 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 348, i32 27}
!474 = !{ptr @scam_mm_parents, !475, !"scam_mm_parents", i1 false, i1 false}
!475 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 356, i32 27}
!476 = !{ptr @spinor_parents, !477, !"spinor_parents", i1 false, i1 false}
!477 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 364, i32 27}
!478 = !{ptr @msdc2_parents, !479, !"msdc2_parents", i1 false, i1 false}
!479 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 375, i32 27}
!480 = !{ptr @eth_parents, !481, !"eth_parents", i1 false, i1 false}
!481 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 386, i32 27}
!482 = !{ptr @vdec_mm_parents, !483, !"vdec_mm_parents", i1 false, i1 false}
!483 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 394, i32 27}
!484 = !{ptr @dpi0_mm_parents, !485, !"dpi0_mm_parents", i1 false, i1 false}
!485 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 403, i32 27}
!486 = !{ptr @dpi1_mm_parents, !487, !"dpi1_mm_parents", i1 false, i1 false}
!487 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 411, i32 27}
!488 = !{ptr @axi_mfg_in_parents, !489, !"axi_mfg_in_parents", i1 false, i1 false}
!489 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 419, i32 27}
!490 = !{ptr @slow_mfg_parents, !491, !"slow_mfg_parents", i1 false, i1 false}
!491 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 426, i32 27}
!492 = !{ptr @aud1_parents, !493, !"aud1_parents", i1 false, i1 false}
!493 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 432, i32 27}
!494 = !{ptr @aud2_parents, !495, !"aud2_parents", i1 false, i1 false}
!495 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 437, i32 27}
!496 = !{ptr @aud_engen1_parents, !497, !"aud_engen1_parents", i1 false, i1 false}
!497 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 442, i32 27}
!498 = !{ptr @aud_engen2_parents, !499, !"aud_engen2_parents", i1 false, i1 false}
!499 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 449, i32 27}
!500 = !{ptr @i2c_parents, !501, !"i2c_parents", i1 false, i1 false}
!501 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 456, i32 27}
!502 = !{ptr @aud_i2s0_m_parents, !503, !"aud_i2s0_m_parents", i1 false, i1 false}
!503 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 463, i32 27}
!504 = !{ptr @pwm_parents, !505, !"pwm_parents", i1 false, i1 false}
!505 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 468, i32 27}
!506 = !{ptr @spi_parents, !507, !"spi_parents", i1 false, i1 false}
!507 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 473, i32 27}
!508 = !{ptr @aud_spdifin_parents, !509, !"aud_spdifin_parents", i1 false, i1 false}
!509 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 480, i32 27}
!510 = !{ptr @uart2_parents, !511, !"uart2_parents", i1 false, i1 false}
!511 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 485, i32 27}
!512 = !{ptr @bsi_parents, !513, !"bsi_parents", i1 false, i1 false}
!513 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 490, i32 27}
!514 = !{ptr @dbg_atclk_parents, !515, !"dbg_atclk_parents", i1 false, i1 false}
!515 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 497, i32 27}
!516 = !{ptr @csw_nfiecc_parents, !517, !"csw_nfiecc_parents", i1 false, i1 false}
!517 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 505, i32 27}
!518 = !{ptr @nfiecc_parents, !519, !"nfiecc_parents", i1 false, i1 false}
!519 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 513, i32 27}
!520 = !{ptr @.str.238, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 20, i32 8}
!522 = !{ptr @mt8167_clk_lock, !521, !"mt8167_clk_lock", i1 false, i1 false}
!523 = !{ptr @top_adj_divs, !524, !"top_adj_divs", i1 false, i1 false}
!524 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 666, i32 37}
!525 = !{ptr @.str.239, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 962, i32 3}
!527 = !{ptr @mtk_infracfg_init._entry, !526, !"_entry", i1 false, i1 false}
!528 = !{ptr @mtk_infracfg_init._entry_ptr, !526, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @mtk_infracfg_init._entry.240, !530, !"_entry", i1 false, i1 false}
!530 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 973, i32 3}
!531 = !{ptr @mtk_infracfg_init._entry_ptr.241, !530, !"_entry_ptr", i1 false, i1 false}
!532 = !{ptr @.str.242, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 645, i32 2}
!534 = !{ptr @ifr_muxes, !535, !"ifr_muxes", i1 false, i1 false}
!535 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 644, i32 35}
!536 = !{ptr @.str.243, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 629, i32 2}
!538 = !{ptr @ifr_mux1_parents, !539, !"ifr_mux1_parents", i1 false, i1 false}
!539 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 627, i32 27}
!540 = !{ptr @ifr_eth_25m_parents, !541, !"ifr_eth_25m_parents", i1 false, i1 false}
!541 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 634, i32 27}
!542 = !{ptr @ifr_i2c0_parents, !543, !"ifr_i2c0_parents", i1 false, i1 false}
!543 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 639, i32 27}
!544 = !{ptr @.str.244, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 1045, i32 3}
!546 = !{ptr @mtk_apmixedsys_init._entry, !545, !"_entry", i1 false, i1 false}
!547 = !{ptr @mtk_apmixedsys_init._entry_ptr, !545, !"_entry_ptr", i1 false, i1 false}
!548 = !{ptr @mtk_apmixedsys_init._entry.245, !549, !"_entry", i1 false, i1 false}
!549 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 1057, i32 3}
!550 = !{ptr @mtk_apmixedsys_init._entry_ptr.246, !549, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @plls, !552, !"plls", i1 false, i1 false}
!552 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 1018, i32 34}
!553 = !{ptr @mmpll_div_table, !554, !"mmpll_div_table", i1 false, i1 false}
!554 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 1009, i32 39}
!555 = !{ptr @.str.247, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 698, i32 2}
!557 = !{ptr @apmixed_adj_divs, !558, !"apmixed_adj_divs", i1 false, i1 false}
!558 = !{!"../drivers/clk/mediatek/clk-mt8167.c", i32 697, i32 37}
!559 = !{i32 1, !"wchar_size", i32 2}
!560 = !{i32 1, !"min_enum_size", i32 4}
!561 = !{i32 8, !"branch-target-enforcement", i32 0}
!562 = !{i32 8, !"sign-return-address", i32 0}
!563 = !{i32 8, !"sign-return-address-all", i32 0}
!564 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!565 = !{i32 7, !"uwtable", i32 1}
!566 = !{i32 7, !"frame-pointer", i32 2}
!567 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
