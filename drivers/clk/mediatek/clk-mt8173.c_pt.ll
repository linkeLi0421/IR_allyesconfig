; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mt8173.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt8173.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_fixed_clk = type { i32, ptr, ptr, i32 }
%struct.mtk_fixed_factor = type { i32, ptr, ptr, i32, i32 }
%struct.mtk_composite = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_pll_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8 }
%struct.mtk_pll_div_table = type { i32, i32 }

@__of_table_mtk_topckgen = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_topckgen_init }, section "__clk_of_table", align 4
@__of_table_mtk_infrasys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_infrasys_init }, section "__clk_of_table", align 4
@__of_table_mtk_pericfg = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-pericfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_pericfg_init }, section "__clk_of_table", align 4
@__of_table_mtk_apmixedsys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-apmixedsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_apmixedsys_init }, section "__clk_of_table", align 4
@__of_table_mtk_imgsys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-imgsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_imgsys_init }, section "__clk_of_table", align 4
@__of_table_mtk_vdecsys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-vdecsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_vdecsys_init }, section "__clk_of_table", align 4
@__of_table_mtk_vencsys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-vencsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_vencsys_init }, section "__clk_of_table", align 4
@__of_table_mtk_vencltsys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-vencltsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_vencltsys_init }, section "__clk_of_table", align 4
@mtk_topckgen_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s(): ioremap failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_topckgen_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/mediatek/clk-mt8173.c\00", [62 x i8] zeroinitializer }, align 32
@mtk_topckgen_init._entry_ptr = internal global ptr @mtk_topckgen_init._entry, section ".printk_index", align 4
@mt8173_top_clk_data = internal unnamed_addr global ptr null, section ".init.data", align 4
@fixed_clks = internal constant [6 x %struct.mtk_fixed_clk] [%struct.mtk_fixed_clk { i32 1, ptr @.str.6, ptr @.str.7, i32 0 }, %struct.mtk_fixed_clk { i32 3, ptr @.str.8, ptr @.str.7, i32 125000000 }, %struct.mtk_fixed_clk { i32 138, ptr @.str.9, ptr @.str.7, i32 0 }, %struct.mtk_fixed_clk { i32 139, ptr @.str.10, ptr @.str.7, i32 0 }, %struct.mtk_fixed_clk { i32 140, ptr @.str.11, ptr @.str.12, i32 0 }, %struct.mtk_fixed_clk { i32 141, ptr @.str.13, ptr @.str.12, i32 0 }], section ".init.rodata", align 4
@top_divs = internal constant [77 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 5, ptr @.str.14, ptr @.str.15, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 6, ptr @.str.16, ptr @.str.15, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 7, ptr @.str.17, ptr @.str.18, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 8, ptr @.str.19, ptr @.str.18, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 9, ptr @.str.20, ptr @.str.18, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 10, ptr @.str.21, ptr @.str.18, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 11, ptr @.str.22, ptr @.str.23, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 12, ptr @.str.24, ptr @.str.23, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 13, ptr @.str.25, ptr @.str.26, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 14, ptr @.str.27, ptr @.str.26, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 15, ptr @.str.28, ptr @.str.26, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 16, ptr @.str.29, ptr @.str.26, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 17, ptr @.str.30, ptr @.str.26, i32 1, i32 26 }, %struct.mtk_fixed_factor { i32 18, ptr @.str.31, ptr @.str.32, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 19, ptr @.str.33, ptr @.str.7, i32 1, i32 793 }, %struct.mtk_fixed_factor { i32 20, ptr @.str.34, ptr @.str.7, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 21, ptr @.str.35, ptr @.str.36, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 22, ptr @.str.37, ptr @.str.36, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 23, ptr @.str.38, ptr @.str.14, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 24, ptr @.str.39, ptr @.str.16, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 25, ptr @.str.40, ptr @.str.41, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 26, ptr @.str.42, ptr @.str.43, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 27, ptr @.str.44, ptr @.str.6, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 28, ptr @.str.45, ptr @.str.6, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 29, ptr @.str.46, ptr @.str.6, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 30, ptr @.str.47, ptr @.str.6, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 31, ptr @.str.48, ptr @.str.6, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 32, ptr @.str.49, ptr @.str.12, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 33, ptr @.str.50, ptr @.str.12, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 34, ptr @.str.51, ptr @.str.12, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 35, ptr @.str.52, ptr @.str.53, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 36, ptr @.str.54, ptr @.str.53, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 37, ptr @.str.55, ptr @.str.56, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 38, ptr @.str.57, ptr @.str.56, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 39, ptr @.str.58, ptr @.str.56, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 40, ptr @.str.59, ptr @.str.60, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 41, ptr @.str.61, ptr @.str.60, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 42, ptr @.str.62, ptr @.str.60, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 43, ptr @.str.63, ptr @.str.17, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 44, ptr @.str.64, ptr @.str.17, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 45, ptr @.str.65, ptr @.str.17, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 46, ptr @.str.66, ptr @.str.17, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 47, ptr @.str.67, ptr @.str.17, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 48, ptr @.str.68, ptr @.str.19, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 49, ptr @.str.69, ptr @.str.19, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 50, ptr @.str.70, ptr @.str.19, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 51, ptr @.str.71, ptr @.str.20, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 52, ptr @.str.72, ptr @.str.20, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 53, ptr @.str.73, ptr @.str.20, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 54, ptr @.str.74, ptr @.str.21, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 55, ptr @.str.75, ptr @.str.21, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 56, ptr @.str.76, ptr @.str.21, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 57, ptr @.str.77, ptr @.str.24, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 58, ptr @.str.78, ptr @.str.24, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 59, ptr @.str.79, ptr @.str.24, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 60, ptr @.str.80, ptr @.str.24, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 61, ptr @.str.81, ptr @.str.24, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 62, ptr @.str.82, ptr @.str.25, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 63, ptr @.str.83, ptr @.str.25, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 64, ptr @.str.84, ptr @.str.25, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 65, ptr @.str.85, ptr @.str.25, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 66, ptr @.str.86, ptr @.str.27, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 67, ptr @.str.87, ptr @.str.27, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 68, ptr @.str.88, ptr @.str.27, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 69, ptr @.str.89, ptr @.str.27, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 70, ptr @.str.90, ptr @.str.28, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 71, ptr @.str.91, ptr @.str.28, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 72, ptr @.str.92, ptr @.str.28, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 73, ptr @.str.93, ptr @.str.28, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 74, ptr @.str.94, ptr @.str.29, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 75, ptr @.str.95, ptr @.str.30, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 76, ptr @.str.96, ptr @.str.30, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 77, ptr @.str.97, ptr @.str.98, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 78, ptr @.str.99, ptr @.str.98, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 79, ptr @.str.100, ptr @.str.101, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 80, ptr @.str.102, ptr @.str.101, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 81, ptr @.str.103, ptr @.str.101, i32 1, i32 4 }], section ".init.rodata", align 4
@top_muxes = internal constant [56 x %struct.mtk_composite] [%struct.mtk_composite { i32 82, ptr @.str.104, ptr @axi_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 0, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 83, ptr @.str.105, ptr @mem_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 8, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 84, ptr @.str.106, ptr @ddrphycfg_parents, ptr null, i32 4, i32 64, i32 0, i32 64, i8 16, i8 1, i8 23, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 85, ptr @.str.107, ptr @mm_parents, ptr null, i32 4, i32 64, i32 0, i32 64, i8 24, i8 4, i8 31, i8 -1, i8 0, i8 0, i8 9 }, %struct.mtk_composite { i32 86, ptr @.str.108, ptr @pwm_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 87, ptr @.str.109, ptr @vdec_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 8, i8 4, i8 15, i8 -1, i8 0, i8 0, i8 10 }, %struct.mtk_composite { i32 88, ptr @.str.110, ptr @venc_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 16, i8 4, i8 23, i8 -1, i8 0, i8 0, i8 10 }, %struct.mtk_composite { i32 89, ptr @.str.111, ptr @mfg_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 24, i8 4, i8 31, i8 -1, i8 0, i8 0, i8 16 }, %struct.mtk_composite { i32 90, ptr @.str.112, ptr @camtg_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 91, ptr @.str.113, ptr @uart_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 8, i8 1, i8 15, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 92, ptr @.str.114, ptr @spi_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 93, ptr @.str.115, ptr @usb20_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 94, ptr @.str.116, ptr @usb30_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 95, ptr @.str.117, ptr @msdc50_0_h_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 96, ptr @.str.118, ptr @msdc50_0_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 16, i8 4, i8 23, i8 -1, i8 0, i8 0, i8 15 }, %struct.mtk_composite { i32 97, ptr @.str.119, ptr @msdc30_1_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 98, ptr @.str.120, ptr @msdc30_2_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 99, ptr @.str.121, ptr @msdc30_3_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 8, i8 4, i8 15, i8 -1, i8 0, i8 0, i8 14 }, %struct.mtk_composite { i32 100, ptr @.str.122, ptr @audio_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 101, ptr @.str.123, ptr @aud_intbus_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 102, ptr @.str.124, ptr @pmicspi_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 103, ptr @.str.125, ptr @scp_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 104, ptr @.str.126, ptr @atb_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 105, ptr @.str.127, ptr @venc_lt_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 24, i8 4, i8 31, i8 -1, i8 0, i8 0, i8 12 }, %struct.mtk_composite { i32 106, ptr @.str.128, ptr @dpi0_parents, ptr null, i32 0, i32 160, i32 0, i32 160, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 107, ptr @.str.129, ptr @irda_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 108, ptr @.str.130, ptr @cci400_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 109, ptr @.str.131, ptr @aud_1_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 110, ptr @.str.132, ptr @aud_2_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 111, ptr @.str.133, ptr @mem_mfg_in_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 112, ptr @.str.134, ptr @axi_mfg_in_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 113, ptr @.str.135, ptr @scam_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 114, ptr @.str.136, ptr @spinfi_ifr_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 115, ptr @.str.137, ptr @hdmi_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 116, ptr @.str.138, ptr @dpilvds_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 117, ptr @.str.139, ptr @msdc50_2_h_parents, ptr null, i32 4, i32 208, i32 0, i32 208, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 118, ptr @.str.140, ptr @hdcp_parents, ptr null, i32 4, i32 208, i32 0, i32 208, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 119, ptr @.str.141, ptr @hdcp_24m_parents, ptr null, i32 4, i32 208, i32 0, i32 208, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 120, ptr @.str.142, ptr @rtc_parents, ptr null, i32 4, i32 208, i32 0, i32 0, i8 24, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 121, ptr @.str.143, ptr null, ptr @.str.131, i32 0, i32 0, i32 288, i32 300, i8 -1, i8 0, i8 8, i8 24, i8 4, i8 0, i8 0 }, %struct.mtk_composite { i32 122, ptr @.str.144, ptr null, ptr @.str.131, i32 0, i32 0, i32 292, i32 300, i8 -1, i8 0, i8 9, i8 0, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 123, ptr @.str.145, ptr null, ptr @.str.131, i32 0, i32 0, i32 292, i32 300, i8 -1, i8 0, i8 10, i8 8, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 124, ptr @.str.146, ptr null, ptr @.str.131, i32 0, i32 0, i32 292, i32 300, i8 -1, i8 0, i8 11, i8 16, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 125, ptr @.str.147, ptr null, ptr @.str.131, i32 0, i32 0, i32 292, i32 300, i8 -1, i8 0, i8 12, i8 24, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 126, ptr @.str.148, ptr null, ptr @.str.147, i32 0, i32 0, i32 300, i32 300, i8 -1, i8 0, i8 13, i8 0, i8 4, i8 0, i8 0 }, %struct.mtk_composite { i32 127, ptr @.str.149, ptr null, ptr @.str.132, i32 0, i32 0, i32 288, i32 300, i8 -1, i8 0, i8 16, i8 28, i8 4, i8 0, i8 0 }, %struct.mtk_composite { i32 128, ptr @.str.150, ptr null, ptr @.str.132, i32 0, i32 0, i32 296, i32 300, i8 -1, i8 0, i8 17, i8 0, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 129, ptr @.str.151, ptr null, ptr @.str.132, i32 0, i32 0, i32 296, i32 300, i8 -1, i8 0, i8 18, i8 8, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 130, ptr @.str.152, ptr null, ptr @.str.132, i32 0, i32 0, i32 296, i32 300, i8 -1, i8 0, i8 19, i8 16, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 131, ptr @.str.153, ptr null, ptr @.str.132, i32 0, i32 0, i32 296, i32 300, i8 -1, i8 0, i8 20, i8 24, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 132, ptr @.str.154, ptr null, ptr @.str.153, i32 0, i32 0, i32 300, i32 300, i8 -1, i8 0, i8 21, i8 4, i8 4, i8 0, i8 0 }, %struct.mtk_composite { i32 133, ptr @.str.155, ptr @i2s0_m_ck_parents, ptr null, i32 4, i32 288, i32 0, i32 0, i8 4, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 134, ptr @.str.156, ptr @i2s1_m_ck_parents, ptr null, i32 4, i32 288, i32 0, i32 0, i8 5, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 135, ptr @.str.157, ptr @i2s2_m_ck_parents, ptr null, i32 4, i32 288, i32 0, i32 0, i8 6, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 136, ptr @.str.158, ptr @i2s3_m_ck_parents, ptr null, i32 4, i32 288, i32 0, i32 0, i8 7, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 137, ptr @.str.159, ptr @i2s3_b_ck_parents, ptr null, i32 4, i32 288, i32 0, i32 0, i8 8, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }], section ".init.rodata", align 4
@mt8173_clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.160, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@mtk_topckgen_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s(): could not register clock provider: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mtk_topckgen_init._entry_ptr.5 = internal global ptr @mtk_topckgen_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clkph_mck_o\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk26m\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb_syspll_125m\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi0_dig\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi1_dig\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lvds_pxl\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lvdspll\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lvds_cts\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"armca7pll_754m\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"armca7pll\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"armca7pll_502m\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"main_h546m\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mainpll\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"main_h364m\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"main_h218p4m\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"main_h156m\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tvdpll_445p5m\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tvdpll\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tvdpll_594m\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"univ_624m\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"univpll\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"univ_416m\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univ_249p6m\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univ_178p3m\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"univ_48m\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clkrtc_ext\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk32k\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clkrtc_int\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fpc_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hdmitxpll_d2\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdmitx_dig_cts\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hdmitxpll_d3\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"armca7pll_d2\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"armca7pll_d3\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apll1\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apll2\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmpll_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmpll_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmpll_d4\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmpll_d8\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dmpll_d16\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lvdspll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lvdspll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lvdspll_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mmpll\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msdcpll\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdcpll2_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"msdcpll2\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdcpll2_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdcpll2_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"syspll1_d16\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d3\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll2_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll2_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d5\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll3_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll3_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d7\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll4_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll4_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d4\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d8\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tvdpll_d16\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d3\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d5\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll3_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll3_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll3_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d7\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_d26\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_d52\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vcodecpll_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vcodecpll\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vcodecpll_370p5\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vencpll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vencpll\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vencpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vencpll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axi_sel\00", [24 x i8] zeroinitializer }, align 32
@axi_parents = internal constant [8 x ptr] [ptr @.str.7, ptr @.str.64, ptr @.str.71, ptr @.str.65, ptr @.str.90, ptr @.str.87, ptr @.str.45, ptr @.str.46], section ".init.rodata", align 4
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mem_sel\00", [24 x i8] zeroinitializer }, align 32
@mem_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.44], section ".init.rodata", align 4
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ddrphycfg_sel\00", [18 x i8] zeroinitializer }, align 32
@ddrphycfg_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.66], section ".init.rodata", align 4
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mm_sel\00", [25 x i8] zeroinitializer }, align 32
@mm_parents = internal constant [9 x ptr] [ptr @.str.7, ptr @.str.102, ptr @.str.19, ptr @.str.64, ptr @.str.71, ptr @.str.65, ptr @.str.83, ptr @.str.87, ptr @.str.45], section ".init.rodata", align 4
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_sel\00", [24 x i8] zeroinitializer }, align 32
@pwm_parents = internal constant [4 x ptr] [ptr @.str.7, ptr @.str.88, ptr @.str.91, ptr @.str.84], section ".init.rodata", align 4
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdec_sel\00", [23 x i8] zeroinitializer }, align 32
@vdec_parents = internal constant [10 x ptr] [ptr @.str.7, ptr @.str.97, ptr @.str.22, ptr @.str.86, ptr @.str.102, ptr @.str.68, ptr @.str.83, ptr @.str.54, ptr @.str.45, ptr @.str.46], section ".init.rodata", align 4
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"venc_sel\00", [23 x i8] zeroinitializer }, align 32
@venc_parents = internal constant [10 x ptr] [ptr @.str.7, ptr @.str.97, ptr @.str.22, ptr @.str.86, ptr @.str.102, ptr @.str.68, ptr @.str.83, ptr @.str.87, ptr @.str.45, ptr @.str.46], section ".init.rodata", align 4
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfg_sel\00", [24 x i8] zeroinitializer }, align 32
@mfg_parents = internal constant [16 x ptr] [ptr @.str.7, ptr @.str.52, ptr @.str.44, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.68, ptr @.str.64, ptr @.str.71, ptr @.str.86, ptr @.str.83, ptr @.str.90, ptr @.str.87], section ".init.rodata", align 4
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"camtg_sel\00", [22 x i8] zeroinitializer }, align 32
@camtg_parents = internal constant [6 x ptr] [ptr @.str.7, ptr @.str.95, ptr @.str.87, ptr @.str.72, ptr @.str.73, ptr @.str.84], section ".init.rodata", align 4
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_sel\00", [23 x i8] zeroinitializer }, align 32
@uart_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.89], section ".init.rodata", align 4
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_sel\00", [24 x i8] zeroinitializer }, align 32
@spi_parents = internal constant [7 x ptr] [ptr @.str.7, ptr @.str.72, ptr @.str.65, ptr @.str.75, ptr @.str.91, ptr @.str.88, ptr @.str.85], section ".init.rodata", align 4
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb20_sel\00", [22 x i8] zeroinitializer }, align 32
@usb20_parents = internal constant [3 x ptr] [ptr @.str.7, ptr @.str.85, ptr @.str.92], section ".init.rodata", align 4
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb30_sel\00", [22 x i8] zeroinitializer }, align 32
@usb30_parents = internal constant [4 x ptr] [ptr @.str.7, ptr @.str.91, ptr @.str.8, ptr @.str.88], section ".init.rodata", align 4
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msdc50_0_h_sel\00", [17 x i8] zeroinitializer }, align 32
@msdc50_0_h_parents = internal constant [6 x ptr] [ptr @.str.7, ptr @.str.64, ptr @.str.69, ptr @.str.75, ptr @.str.90, ptr @.str.84], section ".init.rodata", align 4
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc50_0_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc50_0_parents = internal constant [15 x ptr] [ptr @.str.7, ptr @.str.55, ptr @.str.57, ptr @.str.84, ptr @.str.69, ptr @.str.74, ptr @.str.58, ptr @.str.103, ptr @.str.77, ptr @.str.82, ptr @.str.83, ptr @.str.52, ptr @.str.59, ptr @.str.61, ptr @.str.62], section ".init.rodata", align 4
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_1_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc30_1_parents = internal constant [8 x ptr] [ptr @.str.7, ptr @.str.87, ptr @.str.58, ptr @.str.84, ptr @.str.69, ptr @.str.74, ptr @.str.94, ptr @.str.103], section ".init.rodata", align 4
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_2_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc30_2_parents = internal constant [8 x ptr] [ptr @.str.7, ptr @.str.87, ptr @.str.58, ptr @.str.84, ptr @.str.69, ptr @.str.74, ptr @.str.94, ptr @.str.102], section ".init.rodata", align 4
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_3_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc30_3_parents = internal constant [14 x ptr] [ptr @.str.7, ptr @.str.59, ptr @.str.61, ptr @.str.87, ptr @.str.62, ptr @.str.58, ptr @.str.84, ptr @.str.69, ptr @.str.74, ptr @.str.94, ptr @.str.103, ptr @.str.55, ptr @.str.57, ptr @.str.58], section ".init.rodata", align 4
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_sel\00", [22 x i8] zeroinitializer }, align 32
@audio_parents = internal constant [4 x ptr] [ptr @.str.7, ptr @.str.73, ptr @.str.76, ptr @.str.67], section ".init.rodata", align 4
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_intbus_sel\00", [17 x i8] zeroinitializer }, align 32
@aud_intbus_parents = internal constant [7 x ptr] [ptr @.str.7, ptr @.str.65, ptr @.str.75, ptr @.str.91, ptr @.str.89, ptr @.str.46, ptr @.str.47], section ".init.rodata", align 4
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pmicspi_sel\00", [20 x i8] zeroinitializer }, align 32
@pmicspi_parents = internal constant [8 x ptr] [ptr @.str.7, ptr @.str.66, ptr @.str.73, ptr @.str.67, ptr @.str.92, ptr @.str.95, ptr @.str.47, ptr @.str.48], section ".init.rodata", align 4
@.str.125 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"scp_sel\00", [24 x i8] zeroinitializer }, align 32
@scp_parents = internal constant [6 x ptr] [ptr @.str.7, ptr @.str.64, ptr @.str.90, ptr @.str.71, ptr @.str.45, ptr @.str.46], section ".init.rodata", align 4
@.str.126 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"atb_sel\00", [24 x i8] zeroinitializer }, align 32
@atb_parents = internal constant [4 x ptr] [ptr @.str.7, ptr @.str.64, ptr @.str.90, ptr @.str.45], section ".init.rodata", align 4
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"venclt_sel\00", [21 x i8] zeroinitializer }, align 32
@venc_lt_parents = internal constant [12 x ptr] [ptr @.str.7, ptr @.str.86, ptr @.str.97, ptr @.str.22, ptr @.str.102, ptr @.str.68, ptr @.str.83, ptr @.str.87, ptr @.str.64, ptr @.str.90, ptr @.str.99, ptr @.str.44], section ".init.rodata", align 4
@.str.128 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpi0_sel\00", [23 x i8] zeroinitializer }, align 32
@dpi0_parents = internal constant [7 x ptr] [ptr @.str.7, ptr @.str.78, ptr @.str.79, ptr @.str.7, ptr @.str.7, ptr @.str.80, ptr @.str.81], section ".init.rodata", align 4
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irda_sel\00", [23 x i8] zeroinitializer }, align 32
@irda_parents = internal constant [3 x ptr] [ptr @.str.7, ptr @.str.88, ptr @.str.70], section ".init.rodata", align 4
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cci400_sel\00", [21 x i8] zeroinitializer }, align 32
@cci400_parents = internal constant [8 x ptr] [ptr @.str.7, ptr @.str.100, ptr @.str.14, ptr @.str.16, ptr @.str.82, ptr @.str.63, ptr @.str.55, ptr @.str.44], section ".init.rodata", align 4
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aud_1_sel\00", [22 x i8] zeroinitializer }, align 32
@aud_1_parents = internal constant [4 x ptr] [ptr @.str.7, ptr @.str.40, ptr @.str.88, ptr @.str.89], section ".init.rodata", align 4
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aud_2_sel\00", [22 x i8] zeroinitializer }, align 32
@aud_2_parents = internal constant [4 x ptr] [ptr @.str.7, ptr @.str.42, ptr @.str.88, ptr @.str.89], section ".init.rodata", align 4
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mem_mfg_in_sel\00", [17 x i8] zeroinitializer }, align 32
@mem_mfg_in_parents = internal constant [4 x ptr] [ptr @.str.7, ptr @.str.52, ptr @.str.44, ptr @.str.7], section ".init.rodata", align 4
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axi_mfg_in_sel\00", [17 x i8] zeroinitializer }, align 32
@axi_mfg_in_parents = internal constant [3 x ptr] [ptr @.str.7, ptr @.str.104, ptr @.str.45], section ".init.rodata", align 4
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scam_sel\00", [23 x i8] zeroinitializer }, align 32
@scam_parents = internal constant [4 x ptr] [ptr @.str.7, ptr @.str.72, ptr @.str.88, ptr @.str.46], section ".init.rodata", align 4
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spinfi_ifr_sel\00", [17 x i8] zeroinitializer }, align 32
@spinfi_ifr_parents = internal constant [8 x ptr] [ptr @.str.7, ptr @.str.89, ptr @.str.92, ptr @.str.75, ptr @.str.88, ptr @.str.91, ptr @.str.65, ptr @.str.84], section ".init.rodata", align 4
@.str.137 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_sel\00", [23 x i8] zeroinitializer }, align 32
@hdmi_parents = internal constant [4 x ptr] [ptr @.str.7, ptr @.str.36, ptr @.str.35, ptr @.str.37], section ".init.rodata", align 4
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpilvds_sel\00", [20 x i8] zeroinitializer }, align 32
@dpilvds_parents = internal constant [6 x ptr] [ptr @.str.7, ptr @.str.12, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.34], section ".init.rodata", align 4
@.str.139 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msdc50_2_h_sel\00", [17 x i8] zeroinitializer }, align 32
@msdc50_2_h_parents = internal constant [6 x ptr] [ptr @.str.7, ptr @.str.64, ptr @.str.69, ptr @.str.75, ptr @.str.90, ptr @.str.84], section ".init.rodata", align 4
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdcp_sel\00", [23 x i8] zeroinitializer }, align 32
@hdcp_parents = internal constant [4 x ptr] [ptr @.str.7, ptr @.str.75, ptr @.str.73, ptr @.str.88], section ".init.rodata", align 4
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hdcp_24m_sel\00", [19 x i8] zeroinitializer }, align 32
@hdcp_24m_parents = internal constant [4 x ptr] [ptr @.str.7, ptr @.str.95, ptr @.str.96, ptr @.str.89], section ".init.rodata", align 4
@.str.142 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtc_sel\00", [24 x i8] zeroinitializer }, align 32
@rtc_parents = internal constant [4 x ptr] [ptr @.str.33, ptr @.str.31, ptr @.str.7, ptr @.str.93], section ".init.rodata", align 4
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apll1_div0\00", [21 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apll1_div1\00", [21 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apll1_div2\00", [21 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apll1_div3\00", [21 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apll1_div4\00", [21 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apll1_div5\00", [21 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apll2_div0\00", [21 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apll2_div1\00", [21 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apll2_div2\00", [21 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apll2_div3\00", [21 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apll2_div4\00", [21 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"apll2_div5\00", [21 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2s0_m_ck_sel\00", [18 x i8] zeroinitializer }, align 32
@i2s0_m_ck_parents = internal constant [2 x ptr] [ptr @.str.144, ptr @.str.150], section ".init.rodata", align 4
@.str.156 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2s1_m_ck_sel\00", [18 x i8] zeroinitializer }, align 32
@i2s1_m_ck_parents = internal constant [2 x ptr] [ptr @.str.145, ptr @.str.151], section ".init.rodata", align 4
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2s2_m_ck_sel\00", [18 x i8] zeroinitializer }, align 32
@i2s2_m_ck_parents = internal constant [2 x ptr] [ptr @.str.146, ptr @.str.152], section ".init.rodata", align 4
@.str.158 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2s3_m_ck_sel\00", [18 x i8] zeroinitializer }, align 32
@i2s3_m_ck_parents = internal constant [2 x ptr] [ptr @.str.147, ptr @.str.153], section ".init.rodata", align 4
@.str.159 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2s3_b_ck_sel\00", [18 x i8] zeroinitializer }, align 32
@i2s3_b_ck_parents = internal constant [2 x ptr] [ptr @.str.148, ptr @.str.154], section ".init.rodata", align 4
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt8173_clk_lock\00", [16 x i8] zeroinitializer }, align 32
@mt8173_pll_clk_data = internal unnamed_addr global ptr null, section ".init.data", align 4
@infra_clks = internal constant [11 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.162, ptr @.str.104, ptr @infra_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.163, ptr @.str.107, ptr @infra_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.164, ptr @.str.123, ptr @infra_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.165, ptr @.str.104, ptr @infra_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.166, ptr @.str.104, ptr @infra_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.167, ptr @.str.105, ptr @infra_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.168, ptr @.str.169, ptr @infra_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.170, ptr @.str.104, ptr @infra_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.171, ptr @.str.7, ptr @infra_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.172, ptr @.str.124, ptr @infra_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.173, ptr @.str.104, ptr @infra_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }], section ".init.rodata", align 4
@infra_divs = internal constant [1 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 12, ptr @.str.174, ptr @.str.7, i32 1, i32 2 }], section ".init.rodata", align 4
@cpu_muxes = internal constant [2 x %struct.mtk_composite] [%struct.mtk_composite { i32 13, ptr @.str.175, ptr @ca53_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 0, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 14, ptr @.str.176, ptr @ca72_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 2, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }], section ".init.rodata", align 4
@mtk_infrasys_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.161, ptr @.str.2, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_infrasys_init\00", [46 x i8] zeroinitializer }, align 32
@mtk_infrasys_init._entry_ptr = internal global ptr @mtk_infrasys_init._entry, section ".printk_index", align 4
@.str.162 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"infra_dbgclk\00", [19 x i8] zeroinitializer }, align 32
@infra_cg_regs = internal constant %struct.mtk_gate_regs { i32 72, i32 68, i32 64 }, section ".init.rodata", align 4
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.163 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_smi\00", [22 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_audio\00", [20 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_gce\00", [22 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_l2c_sram\00", [17 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_m4u\00", [22 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_cpum\00", [21 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpum_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"infra_kp\00", [23 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_cec\00", [22 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_pmicspi\00", [18 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_pmicwrap\00", [17 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk13m\00", [25 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ca53_sel\00", [17 x i8] zeroinitializer }, align 32
@ca53_parents = internal constant [4 x ptr] [ptr @.str.7, ptr @.str.15, ptr @.str.18, ptr @.str.26], section ".init.rodata", align 4
@.str.176 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ca72_sel\00", [17 x i8] zeroinitializer }, align 32
@ca72_parents = internal constant [4 x ptr] [ptr @.str.7, ptr @.str.177, ptr @.str.18, ptr @.str.26], section ".init.rodata", align 4
@.str.177 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"armca15pll\00", [21 x i8] zeroinitializer }, align 32
@mtk_pericfg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.178, ptr @.str.2, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_pericfg_init\00", [47 x i8] zeroinitializer }, align 32
@mtk_pericfg_init._entry_ptr = internal global ptr @mtk_pericfg_init._entry, section ".printk_index", align 4
@peri_gates = internal constant [35 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.181, ptr @.str.104, ptr @peri0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.182, ptr @.str.104, ptr @peri0_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.183, ptr @.str.104, ptr @peri0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.184, ptr @.str.104, ptr @peri0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.185, ptr @.str.104, ptr @peri0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.186, ptr @.str.104, ptr @peri0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.187, ptr @.str.104, ptr @peri0_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.188, ptr @.str.104, ptr @peri0_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.189, ptr @.str.104, ptr @peri0_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.190, ptr @.str.104, ptr @peri0_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.191, ptr @.str.115, ptr @peri0_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.192, ptr @.str.115, ptr @peri0_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.193, ptr @.str.104, ptr @peri0_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.194, ptr @.str.118, ptr @peri0_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.195, ptr @.str.119, ptr @peri0_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.196, ptr @.str.120, ptr @peri0_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.197, ptr @.str.121, ptr @peri0_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.198, ptr @.str.104, ptr @peri0_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.199, ptr @.str.129, ptr @peri0_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.200, ptr @.str.104, ptr @peri0_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.201, ptr @.str.104, ptr @peri0_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 22, ptr @.str.202, ptr @.str.104, ptr @peri0_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 23, ptr @.str.203, ptr @.str.104, ptr @peri0_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 24, ptr @.str.204, ptr @.str.104, ptr @peri0_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 25, ptr @.str.205, ptr @.str.104, ptr @peri0_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 26, ptr @.str.206, ptr @.str.104, ptr @peri0_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 27, ptr @.str.207, ptr @.str.104, ptr @peri0_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 28, ptr @.str.208, ptr @.str.104, ptr @peri0_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 29, ptr @.str.209, ptr @.str.7, ptr @peri0_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 30, ptr @.str.210, ptr @.str.114, ptr @peri0_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 31, ptr @.str.211, ptr @.str.104, ptr @peri0_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 32, ptr @.str.212, ptr @.str.104, ptr @peri0_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 33, ptr @.str.213, ptr @.str.114, ptr @peri1_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 34, ptr @.str.214, ptr @.str.114, ptr @peri1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 35, ptr @.str.215, ptr @.str.104, ptr @peri1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }], section ".init.rodata", align 4
@peri_clks = internal constant [4 x %struct.mtk_composite] [%struct.mtk_composite { i32 36, ptr @.str.216, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 37, ptr @.str.217, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 1, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 38, ptr @.str.218, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 2, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 39, ptr @.str.219, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 3, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }], section ".init.rodata", align 4
@mtk_pericfg_init._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.178, ptr @.str.2, i32 910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtk_pericfg_init._entry_ptr.180 = internal global ptr @mtk_pericfg_init._entry.179, section ".printk_index", align 4
@.str.181 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"peri_nfi\00", [23 x i8] zeroinitializer }, align 32
@peri0_cg_regs = internal constant %struct.mtk_gate_regs { i32 24, i32 16, i32 8 }, section ".init.rodata", align 4
@.str.182 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peri_therm\00", [21 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_pwm1\00", [22 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_pwm2\00", [22 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_pwm3\00", [22 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_pwm4\00", [22 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_pwm5\00", [22 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_pwm6\00", [22 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_pwm7\00", [22 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"peri_pwm\00", [23 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_usb0\00", [22 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_usb1\00", [22 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"peri_ap_dma\00", [20 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peri_msdc30_0\00", [18 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peri_msdc30_1\00", [18 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peri_msdc30_2\00", [18 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peri_msdc30_3\00", [18 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peri_nli_arb\00", [19 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_irda\00", [22 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peri_uart0\00", [21 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peri_uart1\00", [21 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peri_uart2\00", [21 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peri_uart3\00", [21 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_i2c0\00", [22 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_i2c1\00", [22 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_i2c2\00", [22 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_i2c3\00", [22 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_i2c4\00", [22 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"peri_auxadc\00", [20 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_spi0\00", [22 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_i2c5\00", [22 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"peri_nfiecc\00", [20 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"peri_spi\00", [23 x i8] zeroinitializer }, align 32
@peri1_cg_regs = internal constant %struct.mtk_gate_regs { i32 28, i32 20, i32 12 }, section ".init.rodata", align 4
@.str.214 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_irrx\00", [22 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"peri_i2c6\00", [22 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart0_ck_sel\00", [19 x i8] zeroinitializer }, align 32
@uart_ck_sel_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.113], section ".init.rodata", align 4
@.str.217 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart1_ck_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart2_ck_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart3_ck_sel\00", [19 x i8] zeroinitializer }, align 32
@mtk_apmixedsys_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.220, ptr @.str.2, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_apmixedsys_init\00", [44 x i8] zeroinitializer }, align 32
@mtk_apmixedsys_init._entry_ptr = internal global ptr @mtk_apmixedsys_init._entry, section ".printk_index", align 4
@plls = internal constant { [14 x %struct.mtk_pll_data], [320 x i8] } { [14 x %struct.mtk_pll_data] [%struct.mtk_pll_data { i32 1, ptr @.str.177, i32 512, i32 524, i32 1, i32 516, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 516, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 2, ptr @.str.15, i32 528, i32 540, i32 1, i32 532, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 532, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 3, ptr @.str.18, i32 544, i32 556, i32 -268435199, i32 544, i32 0, i32 0, i8 0, i32 4, i32 1, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 548, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 4, ptr @.str.26, i32 560, i32 572, i32 -33554431, i32 560, i32 0, i32 0, i8 0, i32 4, i32 1, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 7, i32 0, i32 564, i32 14, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 5, ptr @.str.53, i32 576, i32 588, i32 1, i32 580, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 580, i32 0, i32 0, ptr @mmpll_div_table, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 6, ptr @.str.56, i32 592, i32 604, i32 1, i32 592, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 596, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 7, ptr @.str.101, i32 608, i32 620, i32 1, i32 608, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 612, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 8, ptr @.str.23, i32 624, i32 636, i32 1, i32 624, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 628, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 9, ptr @.str.227, i32 640, i32 652, i32 1, i32 640, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 644, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 10, ptr @.str.98, i32 656, i32 668, i32 1, i32 656, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 660, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 11, ptr @.str.41, i32 672, i32 688, i32 1, i32 672, i32 676, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 676, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 12, ptr @.str.43, i32 692, i32 708, i32 1, i32 692, i32 696, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 696, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 13, ptr @.str.12, i32 720, i32 732, i32 1, i32 720, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 724, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 14, ptr @.str.60, i32 752, i32 764, i32 1, i32 752, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 756, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }], [320 x i8] zeroinitializer }, align 32
@mtk_apmixedsys_init._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.220, ptr @.str.2, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Failed to register clk %s: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@mtk_apmixedsys_init._entry_ptr.223 = internal global ptr @mtk_apmixedsys_init._entry.221, section ".printk_index", align 4
@.str.224 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_ref\00", [23 x i8] zeroinitializer }, align 32
@mtk_apmixedsys_init._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.220, ptr @.str.2, i32 1035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtk_apmixedsys_init._entry_ptr.226 = internal global ptr @mtk_apmixedsys_init._entry.225, section ".printk_index", align 4
@mmpll_div_table = internal constant { [6 x %struct.mtk_pll_div_table], [48 x i8] } { [6 x %struct.mtk_pll_div_table] [%struct.mtk_pll_div_table { i32 0, i32 -1294967296 }, %struct.mtk_pll_div_table { i32 1, i32 1000000000 }, %struct.mtk_pll_div_table { i32 2, i32 702000000 }, %struct.mtk_pll_div_table { i32 3, i32 253500000 }, %struct.mtk_pll_div_table { i32 4, i32 126750000 }, %struct.mtk_pll_div_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpll\00", [27 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ref2usb_tx\00", [21 x i8] zeroinitializer }, align 32
@img_clks = internal constant [7 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.230, ptr @.str.107, ptr @cg_regs_4_8_0, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.231, ptr @.str.107, ptr @cg_regs_4_8_0, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.232, ptr @.str.107, ptr @cg_regs_4_8_0, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.233, ptr @.str.112, ptr @cg_regs_4_8_0, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.234, ptr @.str.107, ptr @cg_regs_4_8_0, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.235, ptr @.str.107, ptr @cg_regs_4_8_0, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.236, ptr @.str.107, ptr @cg_regs_4_8_0, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }], section ".init.rodata", align 4
@mtk_imgsys_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.229, ptr @.str.2, i32 1056, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtk_imgsys_init\00", [16 x i8] zeroinitializer }, align 32
@mtk_imgsys_init._entry_ptr = internal global ptr @mtk_imgsys_init._entry, section ".printk_index", align 4
@.str.230 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"img_larb2_smi\00", [18 x i8] zeroinitializer }, align 32
@cg_regs_4_8_0 = internal constant %struct.mtk_gate_regs { i32 0, i32 8, i32 4 }, section ".init.rodata", align 4
@.str.231 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"img_cam_smi\00", [20 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"img_cam_cam\00", [20 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"img_sen_tg\00", [21 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"img_sen_cam\00", [20 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"img_cam_sv\00", [21 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"img_fd\00", [25 x i8] zeroinitializer }, align 32
@vdec_clks = internal constant [2 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.238, ptr @.str.109, ptr @vdec0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.239, ptr @.str.107, ptr @vdec1_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }], section ".init.rodata", align 4
@mtk_vdecsys_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.237, ptr @.str.2, i32 1073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_vdecsys_init\00", [47 x i8] zeroinitializer }, align 32
@mtk_vdecsys_init._entry_ptr = internal global ptr @mtk_vdecsys_init._entry, section ".printk_index", align 4
@.str.238 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdec_cken\00", [22 x i8] zeroinitializer }, align 32
@vdec0_cg_regs = internal constant %struct.mtk_gate_regs { i32 0, i32 4, i32 0 }, section ".init.rodata", align 4
@mtk_clk_gate_ops_setclr_inv = external dso_local constant %struct.clk_ops, align 4
@.str.239 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdec_larb_cken\00", [17 x i8] zeroinitializer }, align 32
@vdec1_cg_regs = internal constant %struct.mtk_gate_regs { i32 8, i32 12, i32 8 }, section ".init.rodata", align 4
@venc_clks = internal constant [4 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.241, ptr @.str.107, ptr @cg_regs_4_8_0, i32 0, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.242, ptr @.str.110, ptr @cg_regs_4_8_0, i32 4, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.243, ptr @.str.110, ptr @cg_regs_4_8_0, i32 8, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.244, ptr @.str.110, ptr @cg_regs_4_8_0, i32 12, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }], section ".init.rodata", align 4
@mtk_vencsys_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.240, ptr @.str.2, i32 1090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_vencsys_init\00", [47 x i8] zeroinitializer }, align 32
@mtk_vencsys_init._entry_ptr = internal global ptr @mtk_vencsys_init._entry, section ".printk_index", align 4
@.str.241 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"venc_cke0\00", [22 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"venc_cke1\00", [22 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"venc_cke2\00", [22 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"venc_cke3\00", [22 x i8] zeroinitializer }, align 32
@venclt_clks = internal constant [2 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.246, ptr @.str.107, ptr @cg_regs_4_8_0, i32 0, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.247, ptr @.str.127, ptr @cg_regs_4_8_0, i32 4, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }], section ".init.rodata", align 4
@mtk_vencltsys_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.245, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk_vencltsys_init\00", [45 x i8] zeroinitializer }, align 32
@mtk_vencltsys_init._entry_ptr = internal global ptr @mtk_vencltsys_init._entry, section ".printk_index", align 4
@.str.246 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"venclt_cke0\00", [20 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"venclt_cke1\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 845, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [16 x i8] c"mt8173_clk_lock\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 858, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 27, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 28, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 29, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 30, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 31, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 32, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 36, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 37, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 39, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 40, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 41, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 42, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 44, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 45, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 47, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 48, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 49, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 50, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 51, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 53, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 54, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 55, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 57, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 58, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 60, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 61, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 63, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 64, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 66, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 67, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 68, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 69, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 70, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 72, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 73, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 74, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 76, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 77, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 79, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 80, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 81, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 82, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 83, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 84, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 86, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 87, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 88, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 89, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 90, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 91, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 92, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 93, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 94, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 95, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 96, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 97, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 98, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 99, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 101, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 102, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 103, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 104, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 105, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 107, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 108, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 109, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 110, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 111, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 112, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 113, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 114, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 115, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 116, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 117, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 118, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 119, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 120, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 121, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 123, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 124, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 126, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 127, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 128, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 542, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 543, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 544, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 545, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 547, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 548, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 549, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 550, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 552, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 553, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 554, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 555, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 557, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 558, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 559, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 560, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 562, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 563, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 564, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 565, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 567, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 568, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 569, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 570, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 576, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 577, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 578, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 579, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 581, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 582, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 583, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 584, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 586, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 587, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 588, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 590, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 591, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 592, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 593, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 595, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 596, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 597, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 598, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 599, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 600, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 602, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 603, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 604, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 605, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 606, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 607, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 609, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 610, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 611, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 612, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 613, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 24, i32 8 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 881, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 632, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 633, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 634, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 635, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 636, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 637, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 638, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 639, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 640, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 641, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 642, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 646, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 536, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 537, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 530, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 896, i32 3 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 909, i32 3 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 681, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 682, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 683, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 684, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 685, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 686, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 687, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 688, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 689, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 690, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 691, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 692, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 693, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 694, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 695, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 696, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 697, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 698, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 699, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 700, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 701, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 702, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 703, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 704, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 705, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 706, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 707, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 708, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 709, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 710, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 711, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 712, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 714, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 715, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 716, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 725, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 726, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 727, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 728, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1000, i32 3 }
@___asan_gen_.920 = private unnamed_addr constant [5 x i8] c"plls\00", align 1
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 974, i32 34 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1019, i32 4 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1027, i32 8 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1034, i32 3 }
@___asan_gen_.935 = private unnamed_addr constant [16 x i8] c"mmpll_div_table\00", align 1
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 965, i32 39 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 983, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 931, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1055, i32 3 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 747, i32 2 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 748, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 749, i32 2 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 750, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 751, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 752, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 753, i32 2 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1072, i32 3 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 787, i32 2 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 788, i32 2 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1089, i32 3 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 801, i32 2 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 802, i32 2 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 803, i32 2 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 804, i32 2 }
@___asan_gen_.1001 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 1106, i32 3 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 817, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1011 = private constant [37 x i8] c"../drivers/clk/mediatek/clk-mt8173.c\00", align 1
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1011, i32 818, i32 2 }
@llvm.compiler.used = appending global [275 x ptr] [ptr @__of_table_mtk_apmixedsys, ptr @__of_table_mtk_imgsys, ptr @__of_table_mtk_infrasys, ptr @__of_table_mtk_pericfg, ptr @__of_table_mtk_topckgen, ptr @__of_table_mtk_vdecsys, ptr @__of_table_mtk_vencltsys, ptr @__of_table_mtk_vencsys, ptr @mtk_apmixedsys_init._entry, ptr @mtk_apmixedsys_init._entry.221, ptr @mtk_apmixedsys_init._entry.225, ptr @mtk_apmixedsys_init._entry_ptr, ptr @mtk_apmixedsys_init._entry_ptr.223, ptr @mtk_apmixedsys_init._entry_ptr.226, ptr @mtk_imgsys_init._entry, ptr @mtk_imgsys_init._entry_ptr, ptr @mtk_infrasys_init._entry, ptr @mtk_infrasys_init._entry_ptr, ptr @mtk_pericfg_init._entry, ptr @mtk_pericfg_init._entry.179, ptr @mtk_pericfg_init._entry_ptr, ptr @mtk_pericfg_init._entry_ptr.180, ptr @mtk_topckgen_init._entry, ptr @mtk_topckgen_init._entry.3, ptr @mtk_topckgen_init._entry_ptr, ptr @mtk_topckgen_init._entry_ptr.5, ptr @mtk_vdecsys_init._entry, ptr @mtk_vdecsys_init._entry_ptr, ptr @mtk_vencltsys_init._entry, ptr @mtk_vencltsys_init._entry_ptr, ptr @mtk_vencsys_init._entry, ptr @mtk_vencsys_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mt8173_clk_lock, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @plls, ptr @.str.222, ptr @.str.224, ptr @mmpll_div_table, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247], section "llvm.metadata"
@0 = internal global [255 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_topckgen_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_topckgen_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_infrasys_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pericfg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pericfg_init._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_apmixedsys_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plls to i32), i32 1344, i32 1664, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_apmixedsys_init._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_apmixedsys_init._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpll_div_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_imgsys_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vdecsys_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vencsys_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vencltsys_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }]
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
  %call2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 142) #3
  store ptr %call2, ptr @mt8173_top_clk_data, align 4
  tail call void @mtk_clk_register_fixed_clks(ptr noundef nonnull @fixed_clks, i32 noundef 6, ptr noundef %call2) #3
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_divs, i32 noundef 77, ptr noundef %call2) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @top_muxes, i32 noundef 56, ptr noundef nonnull %call, ptr noundef nonnull @mt8173_clk_lock, ptr noundef %call2) #3
  %call3 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %do.end8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call3) #6
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %if.end.if.end11_crit_edge
  tail call fastcc void @mtk_clk_enable_critical() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_infrasys_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 15) #3
  %call1 = tail call i32 @mtk_clk_register_gates(ptr noundef %node, ptr noundef nonnull @infra_clks, i32 noundef 11, ptr noundef %call) #3
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @infra_divs, i32 noundef 1, ptr noundef %call) #3
  %call2 = tail call i32 @mtk_clk_register_cpumuxes(ptr noundef %node, ptr noundef nonnull @cpu_muxes, i32 noundef 2, ptr noundef %call) #3
  %call3 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.161, i32 noundef %call3) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mtk_register_reset_controller(ptr noundef %node, i32 noundef 2, i32 noundef 48) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_pericfg_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.178) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 40) #3
  %call3 = tail call i32 @mtk_clk_register_gates(ptr noundef %node, ptr noundef nonnull @peri_gates, i32 noundef 35, ptr noundef %call2) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @peri_clks, i32 noundef 4, ptr noundef nonnull %call, ptr noundef nonnull @mt8173_clk_lock, ptr noundef %call2) #3
  %call4 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %do.end9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.178, i32 noundef %call4) #6
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.end.if.end12_crit_edge
  tail call void @mtk_register_reset_controller(ptr noundef %node, i32 noundef 2, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end
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
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.220) #6
  br label %cleanup31

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 17) #3
  store ptr %call2, ptr @mt8173_pll_clk_data, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @iounmap(ptr noundef nonnull %call) #3
  br label %cleanup31

if.end5:                                          ; preds = %if.end
  tail call void @mtk_clk_register_plls(ptr noundef %node, ptr noundef nonnull @plls, i32 noundef 14, ptr noundef nonnull %call2) #3
  %add.ptr = getelementptr i8, ptr %call, i32 8
  %call6 = tail call ptr @mtk_clk_register_ref2usb_tx(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.7, ptr noundef %add.ptr) #3
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end11, label %if.end16

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call6 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.228, i32 noundef %0) #6
  br label %for.end

if.end16:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call2, align 4
  %arrayidx17 = getelementptr ptr, ptr %2, i32 15
  %3 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %arrayidx17, align 4
  br label %for.end

for.end:                                          ; preds = %if.end16, %do.end11
  %add.ptr18 = getelementptr i8, ptr %call, i32 64
  %call19 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef %add.ptr18, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 2, ptr noundef null, ptr noundef null) #3
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call2, align 4
  %arrayidx21 = getelementptr ptr, ptr %5, i32 16
  %6 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call19, ptr %arrayidx21, align 4
  %call22 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.end.if.end30_crit_edge, label %do.end27

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

do.end27:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.220, i32 noundef %call22) #6
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %for.end.if.end30_crit_edge
  tail call fastcc void @mtk_clk_enable_critical() #7
  br label %cleanup31

cleanup31:                                        ; preds = %if.end30, %if.then4, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_imgsys_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 8) #3
  %call1 = tail call i32 @mtk_clk_register_gates(ptr noundef %node, ptr noundef nonnull @img_clks, i32 noundef 7, ptr noundef %call) #3
  %call2 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.229, i32 noundef %call2) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_vdecsys_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 3) #3
  %call1 = tail call i32 @mtk_clk_register_gates(ptr noundef %node, ptr noundef nonnull @vdec_clks, i32 noundef 2, ptr noundef %call) #3
  %call2 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.237, i32 noundef %call2) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_vencsys_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 5) #3
  %call1 = tail call i32 @mtk_clk_register_gates(ptr noundef %node, ptr noundef nonnull @venc_clks, i32 noundef 4, ptr noundef %call) #3
  %call2 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.240, i32 noundef %call2) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_vencltsys_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 3) #3
  %call1 = tail call i32 @mtk_clk_register_gates(ptr noundef %node, ptr noundef nonnull @venclt_clks, i32 noundef 2, ptr noundef %call) #3
  %call2 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.245, i32 noundef %call2) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
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
declare dso_local void @mtk_clk_register_factors(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_composites(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_clk_enable_critical() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mt8173_top_clk_data, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @mt8173_pll_clk_data, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %5) #3
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %6 = load ptr, ptr @mt8173_pll_clk_data, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %arrayidx3 = getelementptr ptr, ptr %8, i32 2
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3, align 4
  %call.i17 = tail call i32 @clk_prepare(ptr noundef %10) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool.not.i18 = icmp eq i32 %call.i17, 0
  br i1 %tobool.not.i18, label %if.end.i21, label %clk_prepare_enable.exit.clk_prepare_enable.exit23_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit23_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit23

if.end.i21:                                       ; preds = %clk_prepare_enable.exit
  %call1.i19 = tail call i32 @clk_enable(ptr noundef %10) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool2.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool2.not.i20, label %if.end.i21.clk_prepare_enable.exit23_crit_edge, label %if.then3.i22

if.end.i21.clk_prepare_enable.exit23_crit_edge:   ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit23

if.then3.i22:                                     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %10) #3
  br label %clk_prepare_enable.exit23

clk_prepare_enable.exit23:                        ; preds = %if.then3.i22, %if.end.i21.clk_prepare_enable.exit23_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit23_crit_edge
  %11 = load ptr, ptr @mt8173_top_clk_data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %arrayidx6 = getelementptr ptr, ptr %13, i32 83
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6, align 4
  %call.i24 = tail call i32 @clk_prepare(ptr noundef %15) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i25, label %if.end.i28, label %clk_prepare_enable.exit23.clk_prepare_enable.exit30_crit_edge

clk_prepare_enable.exit23.clk_prepare_enable.exit30_crit_edge: ; preds = %clk_prepare_enable.exit23
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit30

if.end.i28:                                       ; preds = %clk_prepare_enable.exit23
  %call1.i26 = tail call i32 @clk_enable(ptr noundef %15) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool2.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool2.not.i27, label %if.end.i28.clk_prepare_enable.exit30_crit_edge, label %if.then3.i29

if.end.i28.clk_prepare_enable.exit30_crit_edge:   ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit30

if.then3.i29:                                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %15) #3
  br label %clk_prepare_enable.exit30

clk_prepare_enable.exit30:                        ; preds = %if.then3.i29, %if.end.i28.clk_prepare_enable.exit30_crit_edge, %clk_prepare_enable.exit23.clk_prepare_enable.exit30_crit_edge
  %16 = load ptr, ptr @mt8173_top_clk_data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %arrayidx9 = getelementptr ptr, ptr %18, i32 84
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx9, align 4
  %call.i31 = tail call i32 @clk_prepare(ptr noundef %20) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool.not.i32 = icmp eq i32 %call.i31, 0
  br i1 %tobool.not.i32, label %if.end.i35, label %clk_prepare_enable.exit30.clk_prepare_enable.exit37_crit_edge

clk_prepare_enable.exit30.clk_prepare_enable.exit37_crit_edge: ; preds = %clk_prepare_enable.exit30
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit37

if.end.i35:                                       ; preds = %clk_prepare_enable.exit30
  %call1.i33 = tail call i32 @clk_enable(ptr noundef %20) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool2.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool2.not.i34, label %if.end.i35.clk_prepare_enable.exit37_crit_edge, label %if.then3.i36

if.end.i35.clk_prepare_enable.exit37_crit_edge:   ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit37

if.then3.i36:                                     ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %20) #3
  br label %clk_prepare_enable.exit37

clk_prepare_enable.exit37:                        ; preds = %if.then3.i36, %if.end.i35.clk_prepare_enable.exit37_crit_edge, %clk_prepare_enable.exit30.clk_prepare_enable.exit37_crit_edge
  %21 = load ptr, ptr @mt8173_top_clk_data, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %arrayidx12 = getelementptr ptr, ptr %23, i32 108
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx12, align 4
  %call.i38 = tail call i32 @clk_prepare(ptr noundef %25) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool.not.i39 = icmp eq i32 %call.i38, 0
  br i1 %tobool.not.i39, label %if.end.i42, label %clk_prepare_enable.exit37.clk_prepare_enable.exit44_crit_edge

clk_prepare_enable.exit37.clk_prepare_enable.exit44_crit_edge: ; preds = %clk_prepare_enable.exit37
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit44

if.end.i42:                                       ; preds = %clk_prepare_enable.exit37
  %call1.i40 = tail call i32 @clk_enable(ptr noundef %25) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i40)
  %tobool2.not.i41 = icmp eq i32 %call1.i40, 0
  br i1 %tobool2.not.i41, label %if.end.i42.clk_prepare_enable.exit44_crit_edge, label %if.then3.i43

if.end.i42.clk_prepare_enable.exit44_crit_edge:   ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit44

if.then3.i43:                                     ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %25) #3
  br label %clk_prepare_enable.exit44

clk_prepare_enable.exit44:                        ; preds = %if.then3.i43, %if.end.i42.clk_prepare_enable.exit44_crit_edge, %clk_prepare_enable.exit37.clk_prepare_enable.exit44_crit_edge
  %26 = load ptr, ptr @mt8173_top_clk_data, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %arrayidx15 = getelementptr ptr, ptr %28, i32 120
  %29 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx15, align 4
  %call.i45 = tail call i32 @clk_prepare(ptr noundef %30) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool.not.i46 = icmp eq i32 %call.i45, 0
  br i1 %tobool.not.i46, label %if.end.i49, label %clk_prepare_enable.exit44.return_crit_edge

clk_prepare_enable.exit44.return_crit_edge:       ; preds = %clk_prepare_enable.exit44
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i49:                                       ; preds = %clk_prepare_enable.exit44
  %call1.i47 = tail call i32 @clk_enable(ptr noundef %30) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47)
  %tobool2.not.i48 = icmp eq i32 %call1.i47, 0
  br i1 %tobool2.not.i48, label %if.end.i49.return_crit_edge, label %if.then3.i50

if.end.i49.return_crit_edge:                      ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then3.i50:                                     ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %30) #3
  br label %return

return:                                           ; preds = %if.then3.i50, %if.end.i49.return_crit_edge, %clk_prepare_enable.exit44.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_gates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_cpumuxes(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_register_reset_controller(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_plls(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_clk_register_ref2usb_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 255)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 255)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }
attributes #7 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !33, !35, !37, !39, !40, !42, !44, !46, !47, !49, !51, !52, !54, !56, !58, !60, !61, !63, !65, !66, !68, !70, !72, !74, !76, !77, !79, !81, !83, !84, !86, !88, !90, !92, !93, !95, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !117, !119, !120, !122, !124, !126, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !202, !204, !206, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !418, !420, !422, !423, !424, !426, !428, !430, !432, !434, !436, !438, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !470, !471, !473, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !565, !566, !568, !569, !570, !572, !574, !575, !577, !579, !581, !583, !585, !587, !588, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !610, !611, !613, !615, !617, !619, !621, !623, !624, !625, !627, !629, !631, !633, !635, !637, !638, !639, !641, !643}
!llvm.module.flags = !{!645, !646, !647, !648, !649, !650, !651, !652}
!llvm.ident = !{!653}

!0 = !{ptr @__of_table_mtk_topckgen, !1, !"__of_table_mtk_topckgen", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 863, i32 1}
!2 = !{ptr @__of_table_mtk_infrasys, !3, !"__of_table_mtk_infrasys", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 886, i32 1}
!4 = !{ptr @__of_table_mtk_pericfg, !5, !"__of_table_mtk_pericfg", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 914, i32 1}
!6 = !{ptr @__of_table_mtk_apmixedsys, !7, !"__of_table_mtk_apmixedsys", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 1039, i32 1}
!8 = !{ptr @__of_table_mtk_imgsys, !9, !"__of_table_mtk_imgsys", i1 false, i1 false}
!9 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 1058, i32 1}
!10 = !{ptr @__of_table_mtk_vdecsys, !11, !"__of_table_mtk_vdecsys", i1 false, i1 false}
!11 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 1075, i32 1}
!12 = !{ptr @__of_table_mtk_vencsys, !13, !"__of_table_mtk_vencsys", i1 false, i1 false}
!13 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 1092, i32 1}
!14 = !{ptr @__of_table_mtk_vencltsys, !15, !"__of_table_mtk_vencltsys", i1 false, i1 false}
!15 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 1109, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 845, i32 3}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mtk_topckgen_init._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @mtk_topckgen_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 858, i32 3}
!24 = !{ptr @mtk_topckgen_init._entry.3, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mtk_topckgen_init._entry_ptr.5, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @mt8173_top_clk_data, !27, !"mt8173_top_clk_data", i1 false, i1 false}
!27 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 821, i32 33}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 27, i32 2}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 28, i32 2}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 29, i32 2}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 30, i32 2}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 31, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 32, i32 2}
!42 = !{ptr @fixed_clks, !43, !"fixed_clks", i1 false, i1 false}
!43 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 26, i32 35}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 36, i32 2}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 37, i32 2}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 39, i32 2}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 40, i32 2}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 41, i32 2}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 42, i32 2}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 44, i32 2}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 45, i32 2}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 47, i32 2}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 48, i32 2}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 49, i32 2}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 50, i32 2}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 51, i32 2}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 53, i32 2}
!76 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 54, i32 2}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 55, i32 2}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 57, i32 2}
!83 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 58, i32 2}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 60, i32 2}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 61, i32 2}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 63, i32 2}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 64, i32 2}
!95 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 66, i32 2}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 67, i32 2}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 68, i32 2}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 69, i32 2}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 70, i32 2}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 72, i32 2}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 73, i32 2}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 74, i32 2}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 76, i32 2}
!114 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 77, i32 2}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 79, i32 2}
!119 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 80, i32 2}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 81, i32 2}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 82, i32 2}
!126 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 83, i32 2}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 84, i32 2}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 86, i32 2}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 87, i32 2}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 88, i32 2}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 89, i32 2}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 90, i32 2}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 91, i32 2}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 92, i32 2}
!145 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 93, i32 2}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 94, i32 2}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 95, i32 2}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 96, i32 2}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 97, i32 2}
!155 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 98, i32 2}
!157 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 99, i32 2}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 101, i32 2}
!161 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 102, i32 2}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 103, i32 2}
!165 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 104, i32 2}
!167 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 105, i32 2}
!169 = !{ptr @.str.82, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 107, i32 2}
!171 = !{ptr @.str.83, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 108, i32 2}
!173 = !{ptr @.str.84, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 109, i32 2}
!175 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 110, i32 2}
!177 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 111, i32 2}
!179 = !{ptr @.str.87, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 112, i32 2}
!181 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 113, i32 2}
!183 = !{ptr @.str.89, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 114, i32 2}
!185 = !{ptr @.str.90, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 115, i32 2}
!187 = !{ptr @.str.91, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 116, i32 2}
!189 = !{ptr @.str.92, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 117, i32 2}
!191 = !{ptr @.str.93, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 118, i32 2}
!193 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 119, i32 2}
!195 = !{ptr @.str.95, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 120, i32 2}
!197 = !{ptr @.str.96, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 121, i32 2}
!199 = !{ptr @.str.97, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 123, i32 2}
!201 = !{ptr @.str.98, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 124, i32 2}
!204 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 126, i32 2}
!206 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.102, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 127, i32 2}
!209 = !{ptr @.str.103, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 128, i32 2}
!211 = !{ptr @top_divs, !212, !"top_divs", i1 false, i1 false}
!212 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 35, i32 38}
!213 = !{ptr @.str.104, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 542, i32 2}
!215 = !{ptr @.str.105, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 543, i32 2}
!217 = !{ptr @.str.106, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 544, i32 2}
!219 = !{ptr @.str.107, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 545, i32 2}
!221 = !{ptr @.str.108, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 547, i32 2}
!223 = !{ptr @.str.109, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 548, i32 2}
!225 = !{ptr @.str.110, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 549, i32 2}
!227 = !{ptr @.str.111, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 550, i32 2}
!229 = !{ptr @.str.112, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 552, i32 2}
!231 = !{ptr @.str.113, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 553, i32 2}
!233 = !{ptr @.str.114, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 554, i32 2}
!235 = !{ptr @.str.115, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 555, i32 2}
!237 = !{ptr @.str.116, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 557, i32 2}
!239 = !{ptr @.str.117, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 558, i32 2}
!241 = !{ptr @.str.118, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 559, i32 2}
!243 = !{ptr @.str.119, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 560, i32 2}
!245 = !{ptr @.str.120, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 562, i32 2}
!247 = !{ptr @.str.121, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 563, i32 2}
!249 = !{ptr @.str.122, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 564, i32 2}
!251 = !{ptr @.str.123, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 565, i32 2}
!253 = !{ptr @.str.124, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 567, i32 2}
!255 = !{ptr @.str.125, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 568, i32 2}
!257 = !{ptr @.str.126, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 569, i32 2}
!259 = !{ptr @.str.127, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 570, i32 2}
!261 = !{ptr @.str.128, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 576, i32 2}
!263 = !{ptr @.str.129, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 577, i32 2}
!265 = !{ptr @.str.130, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 578, i32 2}
!267 = !{ptr @.str.131, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 579, i32 2}
!269 = !{ptr @.str.132, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 581, i32 2}
!271 = !{ptr @.str.133, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 582, i32 2}
!273 = !{ptr @.str.134, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 583, i32 2}
!275 = !{ptr @.str.135, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 584, i32 2}
!277 = !{ptr @.str.136, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 586, i32 2}
!279 = !{ptr @.str.137, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 587, i32 2}
!281 = !{ptr @.str.138, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 588, i32 2}
!283 = !{ptr @.str.139, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 590, i32 2}
!285 = !{ptr @.str.140, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 591, i32 2}
!287 = !{ptr @.str.141, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 592, i32 2}
!289 = !{ptr @.str.142, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 593, i32 2}
!291 = !{ptr @.str.143, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 595, i32 2}
!293 = !{ptr @.str.144, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 596, i32 2}
!295 = !{ptr @.str.145, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 597, i32 2}
!297 = !{ptr @.str.146, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 598, i32 2}
!299 = !{ptr @.str.147, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 599, i32 2}
!301 = !{ptr @.str.148, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 600, i32 2}
!303 = !{ptr @.str.149, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 602, i32 2}
!305 = !{ptr @.str.150, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 603, i32 2}
!307 = !{ptr @.str.151, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 604, i32 2}
!309 = !{ptr @.str.152, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 605, i32 2}
!311 = !{ptr @.str.153, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 606, i32 2}
!313 = !{ptr @.str.154, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 607, i32 2}
!315 = !{ptr @.str.155, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 609, i32 2}
!317 = !{ptr @.str.156, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 610, i32 2}
!319 = !{ptr @.str.157, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 611, i32 2}
!321 = !{ptr @.str.158, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 612, i32 2}
!323 = !{ptr @.str.159, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 613, i32 2}
!325 = !{ptr @top_muxes, !326, !"top_muxes", i1 false, i1 false}
!326 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 540, i32 35}
!327 = !{ptr @axi_parents, !328, !"axi_parents", i1 false, i1 false}
!328 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 131, i32 27}
!329 = !{ptr @mem_parents, !330, !"mem_parents", i1 false, i1 false}
!330 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 142, i32 27}
!331 = !{ptr @ddrphycfg_parents, !332, !"ddrphycfg_parents", i1 false, i1 false}
!332 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 147, i32 27}
!333 = !{ptr @mm_parents, !334, !"mm_parents", i1 false, i1 false}
!334 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 152, i32 27}
!335 = !{ptr @pwm_parents, !336, !"pwm_parents", i1 false, i1 false}
!336 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 164, i32 27}
!337 = !{ptr @vdec_parents, !338, !"vdec_parents", i1 false, i1 false}
!338 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 171, i32 27}
!339 = !{ptr @venc_parents, !340, !"venc_parents", i1 false, i1 false}
!340 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 184, i32 27}
!341 = !{ptr @mfg_parents, !342, !"mfg_parents", i1 false, i1 false}
!342 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 197, i32 27}
!343 = !{ptr @camtg_parents, !344, !"camtg_parents", i1 false, i1 false}
!344 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 216, i32 27}
!345 = !{ptr @uart_parents, !346, !"uart_parents", i1 false, i1 false}
!346 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 225, i32 27}
!347 = !{ptr @spi_parents, !348, !"spi_parents", i1 false, i1 false}
!348 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 230, i32 27}
!349 = !{ptr @usb20_parents, !350, !"usb20_parents", i1 false, i1 false}
!350 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 240, i32 27}
!351 = !{ptr @usb30_parents, !352, !"usb30_parents", i1 false, i1 false}
!352 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 246, i32 27}
!353 = !{ptr @msdc50_0_h_parents, !354, !"msdc50_0_h_parents", i1 false, i1 false}
!354 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 253, i32 27}
!355 = !{ptr @msdc50_0_parents, !356, !"msdc50_0_parents", i1 false, i1 false}
!356 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 262, i32 27}
!357 = !{ptr @msdc30_1_parents, !358, !"msdc30_1_parents", i1 false, i1 false}
!358 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 280, i32 27}
!359 = !{ptr @msdc30_2_parents, !360, !"msdc30_2_parents", i1 false, i1 false}
!360 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 291, i32 27}
!361 = !{ptr @msdc30_3_parents, !362, !"msdc30_3_parents", i1 false, i1 false}
!362 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 302, i32 27}
!363 = !{ptr @audio_parents, !364, !"audio_parents", i1 false, i1 false}
!364 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 319, i32 27}
!365 = !{ptr @aud_intbus_parents, !366, !"aud_intbus_parents", i1 false, i1 false}
!366 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 326, i32 27}
!367 = !{ptr @pmicspi_parents, !368, !"pmicspi_parents", i1 false, i1 false}
!368 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 336, i32 27}
!369 = !{ptr @scp_parents, !370, !"scp_parents", i1 false, i1 false}
!370 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 347, i32 27}
!371 = !{ptr @atb_parents, !372, !"atb_parents", i1 false, i1 false}
!372 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 356, i32 27}
!373 = !{ptr @venc_lt_parents, !374, !"venc_lt_parents", i1 false, i1 false}
!374 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 363, i32 27}
!375 = !{ptr @dpi0_parents, !376, !"dpi0_parents", i1 false, i1 false}
!376 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 378, i32 27}
!377 = !{ptr @irda_parents, !378, !"irda_parents", i1 false, i1 false}
!378 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 388, i32 27}
!379 = !{ptr @cci400_parents, !380, !"cci400_parents", i1 false, i1 false}
!380 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 394, i32 27}
!381 = !{ptr @aud_1_parents, !382, !"aud_1_parents", i1 false, i1 false}
!382 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 405, i32 27}
!383 = !{ptr @aud_2_parents, !384, !"aud_2_parents", i1 false, i1 false}
!384 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 412, i32 27}
!385 = !{ptr @mem_mfg_in_parents, !386, !"mem_mfg_in_parents", i1 false, i1 false}
!386 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 419, i32 27}
!387 = !{ptr @axi_mfg_in_parents, !388, !"axi_mfg_in_parents", i1 false, i1 false}
!388 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 426, i32 27}
!389 = !{ptr @scam_parents, !390, !"scam_parents", i1 false, i1 false}
!390 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 432, i32 27}
!391 = !{ptr @spinfi_ifr_parents, !392, !"spinfi_ifr_parents", i1 false, i1 false}
!392 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 439, i32 27}
!393 = !{ptr @hdmi_parents, !394, !"hdmi_parents", i1 false, i1 false}
!394 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 450, i32 27}
!395 = !{ptr @dpilvds_parents, !396, !"dpilvds_parents", i1 false, i1 false}
!396 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 457, i32 27}
!397 = !{ptr @msdc50_2_h_parents, !398, !"msdc50_2_h_parents", i1 false, i1 false}
!398 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 466, i32 27}
!399 = !{ptr @hdcp_parents, !400, !"hdcp_parents", i1 false, i1 false}
!400 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 475, i32 27}
!401 = !{ptr @hdcp_24m_parents, !402, !"hdcp_24m_parents", i1 false, i1 false}
!402 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 482, i32 27}
!403 = !{ptr @rtc_parents, !404, !"rtc_parents", i1 false, i1 false}
!404 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 489, i32 27}
!405 = !{ptr @i2s0_m_ck_parents, !406, !"i2s0_m_ck_parents", i1 false, i1 false}
!406 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 496, i32 27}
!407 = !{ptr @i2s1_m_ck_parents, !408, !"i2s1_m_ck_parents", i1 false, i1 false}
!408 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 501, i32 27}
!409 = !{ptr @i2s2_m_ck_parents, !410, !"i2s2_m_ck_parents", i1 false, i1 false}
!410 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 506, i32 27}
!411 = !{ptr @i2s3_m_ck_parents, !412, !"i2s3_m_ck_parents", i1 false, i1 false}
!412 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 511, i32 27}
!413 = !{ptr @i2s3_b_ck_parents, !414, !"i2s3_b_ck_parents", i1 false, i1 false}
!414 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 516, i32 27}
!415 = !{ptr @.str.160, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 24, i32 8}
!417 = !{ptr @mt8173_clk_lock, !416, !"mt8173_clk_lock", i1 false, i1 false}
!418 = !{ptr @mt8173_pll_clk_data, !419, !"mt8173_pll_clk_data", i1 false, i1 false}
!419 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 822, i32 33}
!420 = !{ptr @.str.161, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 881, i32 3}
!422 = !{ptr @mtk_infrasys_init._entry, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @mtk_infrasys_init._entry_ptr, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.162, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 632, i32 2}
!426 = !{ptr @.str.163, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 633, i32 2}
!428 = !{ptr @.str.164, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 634, i32 2}
!430 = !{ptr @.str.165, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 635, i32 2}
!432 = !{ptr @.str.166, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 636, i32 2}
!434 = !{ptr @.str.167, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 637, i32 2}
!436 = !{ptr @.str.168, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 638, i32 2}
!438 = !{ptr @.str.169, !437, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @.str.170, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 639, i32 2}
!441 = !{ptr @.str.171, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 640, i32 2}
!443 = !{ptr @.str.172, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 641, i32 2}
!445 = !{ptr @.str.173, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 642, i32 2}
!447 = !{ptr @infra_clks, !448, !"infra_clks", i1 false, i1 false}
!448 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 631, i32 30}
!449 = !{ptr @infra_cg_regs, !450, !"infra_cg_regs", i1 false, i1 false}
!450 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 616, i32 35}
!451 = !{ptr @.str.174, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 646, i32 2}
!453 = !{ptr @infra_divs, !454, !"infra_divs", i1 false, i1 false}
!454 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 645, i32 38}
!455 = !{ptr @.str.175, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 536, i32 2}
!457 = !{ptr @.str.176, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 537, i32 2}
!459 = !{ptr @cpu_muxes, !460, !"cpu_muxes", i1 false, i1 false}
!460 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 535, i32 35}
!461 = !{ptr @ca53_parents, !462, !"ca53_parents", i1 false, i1 false}
!462 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 521, i32 27}
!463 = !{ptr @.str.177, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 530, i32 2}
!465 = !{ptr @ca72_parents, !466, !"ca72_parents", i1 false, i1 false}
!466 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 528, i32 27}
!467 = !{ptr @.str.178, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 896, i32 3}
!469 = !{ptr @mtk_pericfg_init._entry, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @mtk_pericfg_init._entry_ptr, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @mtk_pericfg_init._entry.179, !472, !"_entry", i1 false, i1 false}
!472 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 909, i32 3}
!473 = !{ptr @mtk_pericfg_init._entry_ptr.180, !472, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.181, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 681, i32 2}
!476 = !{ptr @.str.182, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 682, i32 2}
!478 = !{ptr @.str.183, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 683, i32 2}
!480 = !{ptr @.str.184, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 684, i32 2}
!482 = !{ptr @.str.185, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 685, i32 2}
!484 = !{ptr @.str.186, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 686, i32 2}
!486 = !{ptr @.str.187, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 687, i32 2}
!488 = !{ptr @.str.188, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 688, i32 2}
!490 = !{ptr @.str.189, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 689, i32 2}
!492 = !{ptr @.str.190, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 690, i32 2}
!494 = !{ptr @.str.191, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 691, i32 2}
!496 = !{ptr @.str.192, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 692, i32 2}
!498 = !{ptr @.str.193, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 693, i32 2}
!500 = !{ptr @.str.194, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 694, i32 2}
!502 = !{ptr @.str.195, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 695, i32 2}
!504 = !{ptr @.str.196, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 696, i32 2}
!506 = !{ptr @.str.197, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 697, i32 2}
!508 = !{ptr @.str.198, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 698, i32 2}
!510 = !{ptr @.str.199, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 699, i32 2}
!512 = !{ptr @.str.200, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 700, i32 2}
!514 = !{ptr @.str.201, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 701, i32 2}
!516 = !{ptr @.str.202, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 702, i32 2}
!518 = !{ptr @.str.203, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 703, i32 2}
!520 = !{ptr @.str.204, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 704, i32 2}
!522 = !{ptr @.str.205, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 705, i32 2}
!524 = !{ptr @.str.206, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 706, i32 2}
!526 = !{ptr @.str.207, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 707, i32 2}
!528 = !{ptr @.str.208, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 708, i32 2}
!530 = !{ptr @.str.209, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 709, i32 2}
!532 = !{ptr @.str.210, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 710, i32 2}
!534 = !{ptr @.str.211, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 711, i32 2}
!536 = !{ptr @.str.212, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 712, i32 2}
!538 = !{ptr @.str.213, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 714, i32 2}
!540 = !{ptr @.str.214, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 715, i32 2}
!542 = !{ptr @.str.215, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 716, i32 2}
!544 = !{ptr @peri_gates, !545, !"peri_gates", i1 false, i1 false}
!545 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 679, i32 30}
!546 = !{ptr @peri0_cg_regs, !547, !"peri0_cg_regs", i1 false, i1 false}
!547 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 649, i32 35}
!548 = !{ptr @peri1_cg_regs, !549, !"peri1_cg_regs", i1 false, i1 false}
!549 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 655, i32 35}
!550 = !{ptr @.str.216, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 725, i32 2}
!552 = !{ptr @.str.217, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 726, i32 2}
!554 = !{ptr @.str.218, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 727, i32 2}
!556 = !{ptr @.str.219, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 728, i32 2}
!558 = !{ptr @peri_clks, !559, !"peri_clks", i1 false, i1 false}
!559 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 724, i32 35}
!560 = !{ptr @uart_ck_sel_parents, !561, !"uart_ck_sel_parents", i1 false, i1 false}
!561 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 719, i32 27}
!562 = !{ptr @.str.220, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 1000, i32 3}
!564 = !{ptr @mtk_apmixedsys_init._entry, !563, !"_entry", i1 false, i1 false}
!565 = !{ptr @mtk_apmixedsys_init._entry_ptr, !563, !"_entry_ptr", i1 false, i1 false}
!566 = !{ptr @.str.222, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 1019, i32 4}
!568 = !{ptr @mtk_apmixedsys_init._entry.221, !567, !"_entry", i1 false, i1 false}
!569 = !{ptr @mtk_apmixedsys_init._entry_ptr.223, !567, !"_entry_ptr", i1 false, i1 false}
!570 = !{ptr @.str.224, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 1027, i32 8}
!572 = !{ptr @mtk_apmixedsys_init._entry.225, !573, !"_entry", i1 false, i1 false}
!573 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 1034, i32 3}
!574 = !{ptr @mtk_apmixedsys_init._entry_ptr.226, !573, !"_entry_ptr", i1 false, i1 false}
!575 = !{ptr @.str.227, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 983, i32 2}
!577 = !{ptr @plls, !578, !"plls", i1 false, i1 false}
!578 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 974, i32 34}
!579 = !{ptr @mmpll_div_table, !580, !"mmpll_div_table", i1 false, i1 false}
!580 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 965, i32 39}
!581 = !{ptr @.str.228, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 931, i32 2}
!583 = distinct !{null, !584, !"apmixed_usb", i1 false, i1 false}
!584 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 930, i32 33}
!585 = !{ptr @.str.229, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 1055, i32 3}
!587 = !{ptr @mtk_imgsys_init._entry, !586, !"_entry", i1 false, i1 false}
!588 = !{ptr @mtk_imgsys_init._entry_ptr, !586, !"_entry_ptr", i1 false, i1 false}
!589 = !{ptr @.str.230, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 747, i32 2}
!591 = !{ptr @.str.231, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 748, i32 2}
!593 = !{ptr @.str.232, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 749, i32 2}
!595 = !{ptr @.str.233, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 750, i32 2}
!597 = !{ptr @.str.234, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 751, i32 2}
!599 = !{ptr @.str.235, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 752, i32 2}
!601 = !{ptr @.str.236, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 753, i32 2}
!603 = !{ptr @img_clks, !604, !"img_clks", i1 false, i1 false}
!604 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 746, i32 30}
!605 = !{ptr @cg_regs_4_8_0, !606, !"cg_regs_4_8_0", i1 false, i1 false}
!606 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 731, i32 35}
!607 = !{ptr @.str.237, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 1072, i32 3}
!609 = !{ptr @mtk_vdecsys_init._entry, !608, !"_entry", i1 false, i1 false}
!610 = !{ptr @mtk_vdecsys_init._entry_ptr, !608, !"_entry_ptr", i1 false, i1 false}
!611 = !{ptr @.str.238, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 787, i32 2}
!613 = !{ptr @.str.239, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 788, i32 2}
!615 = !{ptr @vdec_clks, !616, !"vdec_clks", i1 false, i1 false}
!616 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 786, i32 30}
!617 = !{ptr @vdec0_cg_regs, !618, !"vdec0_cg_regs", i1 false, i1 false}
!618 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 756, i32 35}
!619 = !{ptr @vdec1_cg_regs, !620, !"vdec1_cg_regs", i1 false, i1 false}
!620 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 762, i32 35}
!621 = !{ptr @.str.240, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 1089, i32 3}
!623 = !{ptr @mtk_vencsys_init._entry, !622, !"_entry", i1 false, i1 false}
!624 = !{ptr @mtk_vencsys_init._entry_ptr, !622, !"_entry_ptr", i1 false, i1 false}
!625 = !{ptr @.str.241, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 801, i32 2}
!627 = !{ptr @.str.242, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 802, i32 2}
!629 = !{ptr @.str.243, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 803, i32 2}
!631 = !{ptr @.str.244, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 804, i32 2}
!633 = !{ptr @venc_clks, !634, !"venc_clks", i1 false, i1 false}
!634 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 800, i32 30}
!635 = !{ptr @.str.245, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 1106, i32 3}
!637 = !{ptr @mtk_vencltsys_init._entry, !636, !"_entry", i1 false, i1 false}
!638 = !{ptr @mtk_vencltsys_init._entry_ptr, !636, !"_entry_ptr", i1 false, i1 false}
!639 = !{ptr @.str.246, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 817, i32 2}
!641 = !{ptr @.str.247, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 818, i32 2}
!643 = !{ptr @venclt_clks, !644, !"venclt_clks", i1 false, i1 false}
!644 = !{!"../drivers/clk/mediatek/clk-mt8173.c", i32 816, i32 30}
!645 = !{i32 1, !"wchar_size", i32 2}
!646 = !{i32 1, !"min_enum_size", i32 4}
!647 = !{i32 8, !"branch-target-enforcement", i32 0}
!648 = !{i32 8, !"sign-return-address", i32 0}
!649 = !{i32 8, !"sign-return-address-all", i32 0}
!650 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!651 = !{i32 7, !"uwtable", i32 1}
!652 = !{i32 7, !"frame-pointer", i32 2}
!653 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
