; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mt8135.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt8135.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@__of_table_mtk_topckgen = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8135-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_topckgen_init }, section "__clk_of_table", align 4
@__of_table_mtk_infrasys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8135-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_infrasys_init }, section "__clk_of_table", align 4
@__of_table_mtk_pericfg = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8135-pericfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_pericfg_init }, section "__clk_of_table", align 4
@__of_table_mtk_apmixedsys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8135-apmixedsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_apmixedsys_init }, section "__clk_of_table", align 4
@mtk_topckgen_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s(): ioremap failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_topckgen_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/mediatek/clk-mt8135.c\00", [62 x i8] zeroinitializer }, align 32
@mtk_topckgen_init._entry_ptr = internal global ptr @mtk_topckgen_init._entry, section ".printk_index", align 4
@root_clk_alias = internal constant [4 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 1, ptr @.str.6, ptr @.str.7, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 2, ptr @.str.8, ptr @.str.7, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 3, ptr @.str.9, ptr @.str.7, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 4, ptr @.str.10, ptr @.str.7, i32 1, i32 1 }], section ".init.rodata", align 4
@top_divs = internal constant [57 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 5, ptr @.str.11, ptr @.str.12, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 6, ptr @.str.13, ptr @.str.12, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 7, ptr @.str.14, ptr @.str.12, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 8, ptr @.str.15, ptr @.str.12, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 9, ptr @.str.16, ptr @.str.17, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 10, ptr @.str.18, ptr @.str.17, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 11, ptr @.str.19, ptr @.str.17, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 12, ptr @.str.20, ptr @.str.17, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 13, ptr @.str.21, ptr @.str.17, i32 1, i32 26 }, %struct.mtk_fixed_factor { i32 14, ptr @.str.22, ptr @.str.23, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 15, ptr @.str.24, ptr @.str.23, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 16, ptr @.str.25, ptr @.str.23, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 17, ptr @.str.26, ptr @.str.23, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 18, ptr @.str.27, ptr @.str.22, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 19, ptr @.str.28, ptr @.str.24, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 20, ptr @.str.29, ptr @.str.11, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 21, ptr @.str.30, ptr @.str.11, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 22, ptr @.str.31, ptr @.str.11, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 23, ptr @.str.32, ptr @.str.11, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 24, ptr @.str.33, ptr @.str.11, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 25, ptr @.str.34, ptr @.str.11, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 26, ptr @.str.35, ptr @.str.11, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 27, ptr @.str.36, ptr @.str.11, i32 1, i32 12 }, %struct.mtk_fixed_factor { i32 28, ptr @.str.37, ptr @.str.13, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 29, ptr @.str.38, ptr @.str.14, i32 2, i32 1 }, %struct.mtk_fixed_factor { i32 30, ptr @.str.39, ptr @.str.14, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 31, ptr @.str.40, ptr @.str.15, i32 2, i32 1 }, %struct.mtk_fixed_factor { i32 32, ptr @.str.41, ptr @.str.16, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 33, ptr @.str.42, ptr @.str.16, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 34, ptr @.str.43, ptr @.str.16, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 35, ptr @.str.44, ptr @.str.16, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 36, ptr @.str.45, ptr @.str.16, i32 1, i32 10 }, %struct.mtk_fixed_factor { i32 37, ptr @.str.46, ptr @.str.18, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 38, ptr @.str.47, ptr @.str.18, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 39, ptr @.str.48, ptr @.str.18, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 40, ptr @.str.49, ptr @.str.18, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 41, ptr @.str.50, ptr @.str.18, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 42, ptr @.str.51, ptr @.str.19, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 43, ptr @.str.52, ptr @.str.20, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 44, ptr @.str.53, ptr @.str.19, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 45, ptr @.str.54, ptr @.str.21, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 46, ptr @.str.55, ptr @.str.56, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 47, ptr @.str.57, ptr @.str.56, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 48, ptr @.str.58, ptr @.str.56, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 49, ptr @.str.59, ptr @.str.56, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 50, ptr @.str.60, ptr @.str.56, i32 1, i32 24 }, %struct.mtk_fixed_factor { i32 51, ptr @.str.61, ptr @.str.62, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 52, ptr @.str.63, ptr @.str.62, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 53, ptr @.str.64, ptr @.str.62, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 54, ptr @.str.65, ptr @.str.62, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 55, ptr @.str.66, ptr @.str.62, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 56, ptr @.str.67, ptr @.str.68, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 57, ptr @.str.69, ptr @.str.8, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 58, ptr @.str.70, ptr @.str.8, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 59, ptr @.str.71, ptr @.str.67, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 60, ptr @.str.72, ptr @.str.67, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 61, ptr @.str.73, ptr @.str.9, i32 1, i32 4 }], section ".init.rodata", align 4
@top_muxes = internal constant [31 x %struct.mtk_composite] [%struct.mtk_composite { i32 62, ptr @.str.74, ptr @axi_parents, ptr null, i32 4, i32 320, i32 0, i32 320, i8 0, i8 3, i8 32, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 63, ptr @.str.75, ptr @smi_parents, ptr null, i32 4, i32 320, i32 0, i32 320, i8 8, i8 4, i8 15, i8 -1, i8 0, i8 0, i8 15 }, %struct.mtk_composite { i32 64, ptr @.str.76, ptr @mfg_parents, ptr null, i32 4, i32 320, i32 0, i32 320, i8 16, i8 4, i8 23, i8 -1, i8 0, i8 0, i8 13 }, %struct.mtk_composite { i32 65, ptr @.str.77, ptr @irda_parents, ptr null, i32 4, i32 320, i32 0, i32 320, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 66, ptr @.str.78, ptr @cam_parents, ptr null, i32 4, i32 324, i32 0, i32 324, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 67, ptr @.str.79, ptr @aud_intbus_parents, ptr null, i32 4, i32 324, i32 0, i32 324, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 68, ptr @.str.80, ptr @jpg_parents, ptr null, i32 4, i32 324, i32 0, i32 324, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 69, ptr @.str.81, ptr @disp_parents, ptr null, i32 4, i32 324, i32 0, i32 324, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 70, ptr @.str.82, ptr @msdc30_parents, ptr null, i32 4, i32 328, i32 0, i32 328, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 71, ptr @.str.83, ptr @msdc30_parents, ptr null, i32 4, i32 328, i32 0, i32 328, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 72, ptr @.str.84, ptr @msdc30_parents, ptr null, i32 4, i32 328, i32 0, i32 328, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 73, ptr @.str.85, ptr @msdc30_parents, ptr null, i32 4, i32 328, i32 0, i32 328, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 74, ptr @.str.86, ptr @usb20_parents, ptr null, i32 4, i32 332, i32 0, i32 332, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 75, ptr @.str.87, ptr @venc_parents, ptr null, i32 4, i32 336, i32 0, i32 336, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 76, ptr @.str.88, ptr @spi_parents, ptr null, i32 4, i32 336, i32 0, i32 336, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 77, ptr @.str.89, ptr @uart_parents, ptr null, i32 4, i32 336, i32 0, i32 336, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 78, ptr @.str.90, ptr @mem_parents, ptr null, i32 4, i32 344, i32 0, i32 344, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 79, ptr @.str.91, ptr @camtg_parents, ptr null, i32 4, i32 344, i32 0, i32 344, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 80, ptr @.str.92, ptr @audio_parents, ptr null, i32 4, i32 344, i32 0, i32 344, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 81, ptr @.str.93, ptr @fix_parents, ptr null, i32 4, i32 348, i32 0, i32 348, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 82, ptr @.str.94, ptr @vdec_parents, ptr null, i32 4, i32 348, i32 0, i32 348, i8 8, i8 4, i8 15, i8 -1, i8 0, i8 0, i8 16 }, %struct.mtk_composite { i32 83, ptr @.str.95, ptr @ddrphycfg_parents, ptr null, i32 4, i32 348, i32 0, i32 348, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 84, ptr @.str.96, ptr @dpilvds_parents, ptr null, i32 4, i32 348, i32 0, i32 348, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 85, ptr @.str.97, ptr @pmicspi_parents, ptr null, i32 4, i32 356, i32 0, i32 356, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 86, ptr @.str.98, ptr @msdc30_parents, ptr null, i32 4, i32 356, i32 0, i32 356, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 87, ptr @.str.99, ptr @smi_mfg_as_parents, ptr null, i32 4, i32 356, i32 0, i32 356, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 88, ptr @.str.100, ptr @gcpu_parents, ptr null, i32 4, i32 356, i32 0, i32 356, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 89, ptr @.str.101, ptr @dpi1_parents, ptr null, i32 4, i32 360, i32 0, i32 360, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 90, ptr @.str.102, ptr @cci_parents, ptr null, i32 4, i32 360, i32 0, i32 360, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 91, ptr @.str.103, ptr @apll_parents, ptr null, i32 4, i32 360, i32 0, i32 360, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 92, ptr @.str.104, ptr @hdmipll_parents, ptr null, i32 4, i32 360, i32 0, i32 360, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }], section ".init.rodata", align 4
@mt8135_clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.109, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@mtk_topckgen_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s(): could not register clock provider: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mtk_topckgen_init._entry_ptr.5 = internal global ptr @mtk_topckgen_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dsi0_lntc_dsiclk\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_null\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hdmitx_clkdig_cts\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clkph_mck\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cpum_tck_in\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mainpll_806m\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mainpll\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mainpll_537p3m\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mainpll_322p4m\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mainpll_230p3m\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univpll_624m\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"univpll\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univpll_416m\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"univpll_249p6m\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"univpll_178p3m\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_48m\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mmpll\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d3\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d5\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d7\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d4\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d6\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d4\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d6\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d8\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll_d10\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll_d12\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll_d16\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll_d24\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d3\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"syspll_d2p5\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d5\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"syspll_d3p5\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d6\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univpll1_d10\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d6\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d3\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d5\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d7\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_d10\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_d26\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"apll_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audpll\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"apll_d4\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"apll_d8\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll_d16\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll_d24\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lvdspll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lvdspll\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lvdspll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lvdspll_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lvdstx_clkdig_cts\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vpll_dpix_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tvhdmi_h_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tvdpll\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmitx_clkdig_d2\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmitx_clkdig_d3\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvhdmi_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvhdmi_d4\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mempll_mck_d4\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axi_sel\00", [24 x i8] zeroinitializer }, align 32
@axi_parents = internal constant [7 x ptr] [ptr @.str.105, ptr @.str.37, ptr @.str.30, ptr @.str.31, ptr @.str.51, ptr @.str.46, ptr @.str.40], section ".init.rodata", align 4
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smi_sel\00", [24 x i8] zeroinitializer }, align 32
@smi_parents = internal constant [15 x ptr] [ptr @.str.105, ptr @.str.9, ptr @.str.38, ptr @.str.37, ptr @.str.32, ptr @.str.51, ptr @.str.41, ptr @.str.43, ptr @.str.24, ptr @.str.27, ptr @.str.25, ptr @.str.28, ptr @.str.26, ptr @.str.106, ptr @.str.62], section ".init.rodata", align 4
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfg_sel\00", [24 x i8] zeroinitializer }, align 32
@mfg_parents = internal constant [13 x ptr] [ptr @.str.105, ptr @.str.42, ptr @.str.29, ptr @.str.38, ptr @.str.37, ptr @.str.51, ptr @.str.41, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.25, ptr @.str.28, ptr @.str.26], section ".init.rodata", align 4
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irda_sel\00", [23 x i8] zeroinitializer }, align 32
@irda_parents = internal constant [3 x ptr] [ptr @.str.105, ptr @.str.49, ptr @.str.43], section ".init.rodata", align 4
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cam_sel\00", [24 x i8] zeroinitializer }, align 32
@cam_parents = internal constant [8 x ptr] [ptr @.str.105, ptr @.str.37, ptr @.str.40, ptr @.str.30, ptr @.str.51, ptr @.str.46, ptr @.str.52, ptr @.str.42], section ".init.rodata", align 4
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_intbus_sel\00", [17 x i8] zeroinitializer }, align 32
@aud_intbus_parents = internal constant [3 x ptr] [ptr @.str.105, ptr @.str.31, ptr @.str.53], section ".init.rodata", align 4
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"jpg_sel\00", [24 x i8] zeroinitializer }, align 32
@jpg_parents = internal constant [7 x ptr] [ptr @.str.105, ptr @.str.39, ptr @.str.30, ptr @.str.37, ptr @.str.52, ptr @.str.46, ptr @.str.51], section ".init.rodata", align 4
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disp_sel\00", [23 x i8] zeroinitializer }, align 32
@disp_parents = internal constant [8 x ptr] [ptr @.str.105, ptr @.str.40, ptr @.str.37, ptr @.str.46, ptr @.str.51, ptr @.str.41, ptr @.str.62, ptr @.str.106], section ".init.rodata", align 4
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_1_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc30_parents = internal constant [6 x ptr] [ptr @.str.105, ptr @.str.31, ptr @.str.39, ptr @.str.42, ptr @.str.47, ptr @.str.107], section ".init.rodata", align 4
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_2_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_3_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_4_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb20_sel\00", [22 x i8] zeroinitializer }, align 32
@usb20_parents = internal constant [3 x ptr] [ptr @.str.105, ptr @.str.48, ptr @.str.45], section ".init.rodata", align 4
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"venc_sel\00", [23 x i8] zeroinitializer }, align 32
@venc_parents = internal constant [8 x ptr] [ptr @.str.105, ptr @.str.37, ptr @.str.32, ptr @.str.51, ptr @.str.43, ptr @.str.27, ptr @.str.25, ptr @.str.28], section ".init.rodata", align 4
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_sel\00", [24 x i8] zeroinitializer }, align 32
@spi_parents = internal constant [6 x ptr] [ptr @.str.105, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.43, ptr @.str.44], section ".init.rodata", align 4
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_sel\00", [23 x i8] zeroinitializer }, align 32
@uart_parents = internal constant [2 x ptr] [ptr @.str.105, ptr @.str.49], section ".init.rodata", align 4
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mem_sel\00", [24 x i8] zeroinitializer }, align 32
@mem_parents = internal constant [2 x ptr] [ptr @.str.105, ptr @.str.9], section ".init.rodata", align 4
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"camtg_sel\00", [22 x i8] zeroinitializer }, align 32
@camtg_parents = internal constant [5 x ptr] [ptr @.str.105, ptr @.str.54, ptr @.str.43, ptr @.str.35, ptr @.str.32], section ".init.rodata", align 4
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_sel\00", [22 x i8] zeroinitializer }, align 32
@audio_parents = internal constant [2 x ptr] [ptr @.str.105, ptr @.str.36], section ".init.rodata", align 4
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fix_sel\00", [24 x i8] zeroinitializer }, align 32
@fix_parents = internal constant [8 x ptr] [ptr @.str.108, ptr @.str.105, ptr @.str.51, ptr @.str.52, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section ".init.rodata", align 4
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdec_sel\00", [23 x i8] zeroinitializer }, align 32
@vdec_parents = internal constant [16 x ptr] [ptr @.str.105, ptr @.str.106, ptr @.str.9, ptr @.str.38, ptr @.str.37, ptr @.str.40, ptr @.str.30, ptr @.str.39, ptr @.str.31, ptr @.str.32, ptr @.str.41, ptr @.str.46, ptr @.str.52, ptr @.str.53, ptr @.str.47, ptr @.str.62], section ".init.rodata", align 4
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ddrphycfg_sel\00", [18 x i8] zeroinitializer }, align 32
@ddrphycfg_parents = internal constant [3 x ptr] [ptr @.str.105, ptr @.str.74, ptr @.str.34], section ".init.rodata", align 4
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpilvds_sel\00", [20 x i8] zeroinitializer }, align 32
@dpilvds_parents = internal constant [5 x ptr] [ptr @.str.105, ptr @.str.62, ptr @.str.61, ptr @.str.63, ptr @.str.64], section ".init.rodata", align 4
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pmicspi_sel\00", [20 x i8] zeroinitializer }, align 32
@pmicspi_parents = internal constant [8 x ptr] [ptr @.str.105, ptr @.str.48, ptr @.str.32, ptr @.str.33, ptr @.str.45, ptr @.str.73, ptr @.str.54, ptr @.str.36], section ".init.rodata", align 4
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_0_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smi_mfg_as_sel\00", [17 x i8] zeroinitializer }, align 32
@smi_mfg_as_parents = internal constant [4 x ptr] [ptr @.str.105, ptr @.str.75, ptr @.str.76, ptr @.str.90], section ".init.rodata", align 4
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gcpu_sel\00", [23 x i8] zeroinitializer }, align 32
@gcpu_parents = internal constant [5 x ptr] [ptr @.str.105, ptr @.str.30, ptr @.str.52, ptr @.str.39, ptr @.str.31], section ".init.rodata", align 4
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpi1_sel\00", [23 x i8] zeroinitializer }, align 32
@dpi1_parents = internal constant [4 x ptr] [ptr @.str.105, ptr @.str.67, ptr @.str.71, ptr @.str.72], section ".init.rodata", align 4
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cci_sel\00", [24 x i8] zeroinitializer }, align 32
@cci_parents = internal constant [6 x ptr] [ptr @.str.105, ptr @.str.13, ptr @.str.50, ptr @.str.38, ptr @.str.37, ptr @.str.39], section ".init.rodata", align 4
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll_sel\00", [23 x i8] zeroinitializer }, align 32
@apll_parents = internal constant [6 x ptr] [ptr @.str.105, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section ".init.rodata", align 4
@.str.104 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hdmipll_sel\00", [20 x i8] zeroinitializer }, align 32
@hdmipll_parents = internal constant [4 x ptr] [ptr @.str.105, ptr @.str.8, ptr @.str.69, ptr @.str.70], section ".init.rodata", align 4
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk26m\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdecpll\00", [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msdcpll\00", [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rtc32k\00", [25 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt8135_clk_lock\00", [16 x i8] zeroinitializer }, align 32
@infra_clks = internal constant [13 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.111, ptr @.str.74, ptr @infra_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.112, ptr @.str.97, ptr @infra_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.113, ptr @.str.74, ptr @infra_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.114, ptr @.str.74, ptr @infra_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.115, ptr @.str.74, ptr @infra_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.116, ptr @.str.10, ptr @infra_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.117, ptr @.str.90, ptr @infra_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.118, ptr @.str.74, ptr @infra_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.119, ptr @.str.74, ptr @infra_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.120, ptr @.str.79, ptr @infra_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.121, ptr @.str.74, ptr @infra_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.122, ptr @.str.75, ptr @infra_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.123, ptr @.str.74, ptr @infra_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }], section ".init.rodata", align 4
@mtk_infrasys_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.110, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_infrasys_init\00", [46 x i8] zeroinitializer }, align 32
@mtk_infrasys_init._entry_ptr = internal global ptr @mtk_infrasys_init._entry, section ".printk_index", align 4
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pmic_wrap_ck\00", [19 x i8] zeroinitializer }, align 32
@infra_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 72, i32 68, i32 64 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pmicspi_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ccif1_ap_ctrl\00", [18 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ccif0_ap_ctrl\00", [18 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"kp_ck\00", [26 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpum_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m4u_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mfgaxi_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"devapc_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"audio_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mfg_bus_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smi_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dbgclk_ck\00", [22 x i8] zeroinitializer }, align 32
@mtk_pericfg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.124, ptr @.str.2, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_pericfg_init\00", [47 x i8] zeroinitializer }, align 32
@mtk_pericfg_init._entry_ptr = internal global ptr @mtk_pericfg_init._entry, section ".printk_index", align 4
@peri_gates = internal constant [41 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.127, ptr @.str.74, ptr @peri0_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.128, ptr @.str.74, ptr @peri0_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.129, ptr @.str.74, ptr @peri0_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.130, ptr @.str.74, ptr @peri0_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.131, ptr @.str.74, ptr @peri0_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.132, ptr @.str.74, ptr @peri0_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.133, ptr @.str.74, ptr @peri0_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.134, ptr @.str.74, ptr @peri0_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.135, ptr @.str.74, ptr @peri0_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.136, ptr @.str.74, ptr @peri0_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.137, ptr @.str.77, ptr @peri0_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.138, ptr @.str.74, ptr @peri0_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.139, ptr @.str.74, ptr @peri0_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.140, ptr @.str.74, ptr @peri0_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.141, ptr @.str.85, ptr @peri0_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.142, ptr @.str.84, ptr @peri0_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.143, ptr @.str.83, ptr @peri0_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.144, ptr @.str.82, ptr @peri0_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.145, ptr @.str.98, ptr @peri0_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.146, ptr @.str.74, ptr @peri0_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.147, ptr @.str.86, ptr @peri0_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 22, ptr @.str.148, ptr @.str.86, ptr @peri0_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 23, ptr @.str.149, ptr @.str.74, ptr @peri0_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 24, ptr @.str.150, ptr @.str.74, ptr @peri0_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 25, ptr @.str.151, ptr @.str.74, ptr @peri0_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 26, ptr @.str.152, ptr @.str.74, ptr @peri0_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 27, ptr @.str.153, ptr @.str.74, ptr @peri0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 28, ptr @.str.154, ptr @.str.74, ptr @peri0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 29, ptr @.str.155, ptr @.str.74, ptr @peri0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 30, ptr @.str.156, ptr @.str.74, ptr @peri0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 31, ptr @.str.157, ptr @.str.74, ptr @peri0_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 32, ptr @.str.158, ptr @.str.74, ptr @peri0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 33, ptr @.str.159, ptr @.str.74, ptr @peri1_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 34, ptr @.str.160, ptr @.str.74, ptr @peri1_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 35, ptr @.str.161, ptr @.str.74, ptr @peri1_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 36, ptr @.str.162, ptr @.str.100, ptr @peri1_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 37, ptr @.str.163, ptr @.str.105, ptr @peri1_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 38, ptr @.str.164, ptr @.str.88, ptr @peri1_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 39, ptr @.str.165, ptr @.str.105, ptr @peri1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 40, ptr @.str.166, ptr @.str.74, ptr @peri1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 41, ptr @.str.167, ptr @.str.74, ptr @peri1_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }], section ".init.rodata", align 4
@peri_clks = internal constant [4 x %struct.mtk_composite] [%struct.mtk_composite { i32 42, ptr @.str.168, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 43, ptr @.str.169, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 1, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 44, ptr @.str.170, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 2, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 45, ptr @.str.171, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 3, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }], section ".init.rodata", align 4
@mtk_pericfg_init._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.124, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtk_pericfg_init._entry_ptr.126 = internal global ptr @mtk_pericfg_init._entry.125, section ".printk_index", align 4
@.str.127 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c5_ck\00", [24 x i8] zeroinitializer }, align 32
@peri0_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 24, i32 16, i32 8 }, [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c4_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c3_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c2_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c1_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c0_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart3_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart2_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart1_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart0_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"irda_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nli_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"md_hif_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ap_hif_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc30_3_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc30_2_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc30_1_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc20_2_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc20_1_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ap_dma_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb1_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb0_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pwm_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm7_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm6_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm5_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm4_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm3_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm2_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm1_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"therm_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nfi_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usbslv_ck\00", [22 x i8] zeroinitializer }, align 32
@peri1_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 28, i32 20, i32 12 }, [20 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb1_mcu_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb0_mcu_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gcpu_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fhctl_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi1_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"auxadc_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peri_pwrap_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c6_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart0_ck_sel\00", [19 x i8] zeroinitializer }, align 32
@uart_ck_sel_parents = internal constant [2 x ptr] [ptr @.str.105, ptr @.str.89], section ".init.rodata", align 4
@.str.169 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart1_ck_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart2_ck_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart3_ck_sel\00", [19 x i8] zeroinitializer }, align 32
@plls = internal constant { [10 x %struct.mtk_pll_data], [224 x i8] } { [10 x %struct.mtk_pll_data] [%struct.mtk_pll_data { i32 1, ptr @.str.172, i32 512, i32 536, i32 -2147483647, i32 516, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 516, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 2, ptr @.str.173, i32 716, i32 740, i32 -2147483647, i32 720, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 720, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 3, ptr @.str.12, i32 540, i32 564, i32 -268435455, i32 540, i32 0, i32 0, i8 0, i32 6, i32 1, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 544, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 4, ptr @.str.17, i32 568, i32 592, i32 -218103807, i32 568, i32 0, i32 0, i8 0, i32 6, i32 1, ptr null, i32 134217728, i32 0, i32 2000000000, i32 7, i32 0, i32 568, i32 9, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 5, ptr @.str.23, i32 596, i32 620, i32 -268435455, i32 596, i32 0, i32 0, i8 0, i32 6, i32 1, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 600, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 6, ptr @.str.107, i32 632, i32 656, i32 -2147483647, i32 632, i32 0, i32 0, i8 0, i32 6, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 636, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 7, ptr @.str.68, i32 660, i32 684, i32 -2147483647, i32 660, i32 0, i32 0, i8 0, i32 6, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 31, i32 0, i32 664, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 8, ptr @.str.62, i32 688, i32 712, i32 -2147483647, i32 688, i32 0, i32 0, i8 0, i32 6, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 692, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 9, ptr @.str.56, i32 744, i32 768, i32 -2147483647, i32 744, i32 760, i32 0, i8 0, i32 6, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 31, i32 0, i32 748, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 10, ptr @.str.106, i32 772, i32 796, i32 -2147483647, i32 688, i32 0, i32 0, i8 0, i32 6, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 776, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }], [224 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"armpll1\00", [24 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"armpll2\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 524, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [16 x i8] c"mt8135_clk_lock\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 539, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 20, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 21, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 22, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 23, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 27, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 28, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 29, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 30, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 32, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 33, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 34, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 35, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 36, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 38, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 39, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 40, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 41, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 42, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 43, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 45, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 46, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 47, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 48, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 49, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 50, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 51, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 52, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 54, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 56, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 57, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 59, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 61, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 62, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 63, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 64, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 65, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 67, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 68, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 69, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 70, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 72, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 73, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 74, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 75, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 76, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 78, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 79, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 80, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 81, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 82, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 84, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 85, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 86, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 88, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 89, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 91, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 93, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 94, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 96, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 97, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 99, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 352, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 354, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 355, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 356, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 358, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 359, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 361, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 362, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 364, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 365, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 366, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 367, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 369, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 371, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 372, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 373, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 375, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 376, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 377, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 379, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 380, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 381, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 383, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 385, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 386, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 387, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 389, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 391, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 392, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 393, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 394, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 103, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 126, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 196, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 249, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 17, i32 8 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 558, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 413, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [14 x i8] c"infra_cg_regs\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 397, i32 35 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 414, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 415, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 416, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 417, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 418, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 419, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 420, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 421, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 422, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 423, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 424, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 425, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 573, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 586, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 460, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant [14 x i8] c"peri0_cg_regs\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 428, i32 35 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 461, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 462, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 463, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 464, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 465, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 466, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 467, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 468, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 469, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 470, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 471, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 472, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 473, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 474, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 475, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 476, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 477, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 478, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 479, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 480, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 481, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 482, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 483, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 484, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 485, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 486, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 487, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 488, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 489, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 490, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 491, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 493, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant [14 x i8] c"peri1_cg_regs\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 434, i32 35 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 494, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 495, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 496, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 497, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 498, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 499, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 500, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 501, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 510, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 511, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 512, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 513, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant [5 x i8] c"plls\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 613, i32 34 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 614, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.712 = private constant [37 x i8] c"../drivers/clk/mediatek/clk-mt8135.c\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 615, i32 2 }
@llvm.compiler.used = appending global [189 x ptr] [ptr @__of_table_mtk_apmixedsys, ptr @__of_table_mtk_infrasys, ptr @__of_table_mtk_pericfg, ptr @__of_table_mtk_topckgen, ptr @mtk_infrasys_init._entry, ptr @mtk_infrasys_init._entry_ptr, ptr @mtk_pericfg_init._entry, ptr @mtk_pericfg_init._entry.125, ptr @mtk_pericfg_init._entry_ptr, ptr @mtk_pericfg_init._entry_ptr.126, ptr @mtk_topckgen_init._entry, ptr @mtk_topckgen_init._entry.3, ptr @mtk_topckgen_init._entry_ptr, ptr @mtk_topckgen_init._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mt8135_clk_lock, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @infra_cg_regs, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.127, ptr @peri0_cg_regs, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @peri1_cg_regs, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @plls, ptr @.str.172, ptr @.str.173], section "llvm.metadata"
@0 = internal global [180 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_topckgen_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8135_clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_topckgen_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_infrasys_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pericfg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pericfg_init._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri0_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri1_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plls to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }]
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
  %call2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 93) #3
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @root_clk_alias, i32 noundef 4, ptr noundef %call2) #3
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_divs, i32 noundef 57, ptr noundef %call2) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @top_muxes, i32 noundef 31, ptr noundef nonnull %call, ptr noundef nonnull @mt8135_clk_lock, ptr noundef %call2) #3
  %0 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call2, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 90
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %3) #3
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %call4 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %clk_prepare_enable.exit.cleanup_crit_edge, label %do.end9

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end9:                                          ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %clk_prepare_enable.exit.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_infrasys_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 14) #3
  %call1 = tail call i32 @mtk_clk_register_gates(ptr noundef %node, ptr noundef nonnull @infra_clks, i32 noundef 13, ptr noundef %call) #3
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %3) #3
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %call3 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %clk_prepare_enable.exit.if.end_crit_edge, label %do.end

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.110, i32 noundef %call3) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %clk_prepare_enable.exit.if.end_crit_edge
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
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.124) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 46) #3
  %call3 = tail call i32 @mtk_clk_register_gates(ptr noundef %node, ptr noundef nonnull @peri_gates, i32 noundef 41, ptr noundef %call2) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @peri_clks, i32 noundef 4, ptr noundef nonnull %call, ptr noundef nonnull @mt8135_clk_lock, ptr noundef %call2) #3
  %call4 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %do.end9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.124, i32 noundef %call4) #6
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
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 11) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mtk_clk_register_plls(ptr noundef %node, ptr noundef nonnull @plls, i32 noundef 10, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_alloc_clk_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_factors(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_composites(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_gates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_register_reset_controller(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_plls(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31, !32, !34, !36, !38, !40, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !119, !121, !123, !125, !127, !128, !130, !132, !134, !136, !138, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !280, !282, !283, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !317, !318, !320, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425}
!llvm.module.flags = !{!427, !428, !429, !430, !431, !432, !433, !434}
!llvm.ident = !{!435}

!0 = !{ptr @__of_table_mtk_topckgen, !1, !"__of_table_mtk_topckgen", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 542, i32 1}
!2 = !{ptr @__of_table_mtk_infrasys, !3, !"__of_table_mtk_infrasys", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 563, i32 1}
!4 = !{ptr @__of_table_mtk_pericfg, !5, !"__of_table_mtk_pericfg", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 591, i32 1}
!6 = !{ptr @__of_table_mtk_apmixedsys, !7, !"__of_table_mtk_apmixedsys", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 636, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 524, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mtk_topckgen_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @mtk_topckgen_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 539, i32 3}
!16 = !{ptr @mtk_topckgen_init._entry.3, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mtk_topckgen_init._entry_ptr.5, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 20, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 21, i32 2}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 22, i32 2}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 23, i32 2}
!27 = !{ptr @root_clk_alias, !28, !"root_clk_alias", i1 false, i1 false}
!28 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 19, i32 38}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 27, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 28, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 29, i32 2}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 30, i32 2}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 32, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 33, i32 2}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 34, i32 2}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 35, i32 2}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 36, i32 2}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 38, i32 2}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 39, i32 2}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 40, i32 2}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 41, i32 2}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 42, i32 2}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 43, i32 2}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 45, i32 2}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 46, i32 2}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 47, i32 2}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 48, i32 2}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 49, i32 2}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 50, i32 2}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 51, i32 2}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 52, i32 2}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 54, i32 2}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 56, i32 2}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 57, i32 2}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 59, i32 2}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 61, i32 2}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 62, i32 2}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 63, i32 2}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 64, i32 2}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 65, i32 2}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 67, i32 2}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 68, i32 2}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 69, i32 2}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 70, i32 2}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 72, i32 2}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 73, i32 2}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 74, i32 2}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 75, i32 2}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 76, i32 2}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 78, i32 2}
!116 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 79, i32 2}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 80, i32 2}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 81, i32 2}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 82, i32 2}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 84, i32 2}
!127 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 85, i32 2}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 86, i32 2}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 88, i32 2}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 89, i32 2}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 91, i32 2}
!138 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 93, i32 2}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 94, i32 2}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 96, i32 2}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 97, i32 2}
!147 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 99, i32 2}
!149 = !{ptr @top_divs, !150, !"top_divs", i1 false, i1 false}
!150 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 26, i32 38}
!151 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 352, i32 2}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 354, i32 2}
!155 = !{ptr @.str.76, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 355, i32 2}
!157 = !{ptr @.str.77, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 356, i32 2}
!159 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 358, i32 2}
!161 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 359, i32 2}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 361, i32 2}
!165 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 362, i32 2}
!167 = !{ptr @.str.82, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 364, i32 2}
!169 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 365, i32 2}
!171 = !{ptr @.str.84, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 366, i32 2}
!173 = !{ptr @.str.85, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 367, i32 2}
!175 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 369, i32 2}
!177 = !{ptr @.str.87, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 371, i32 2}
!179 = !{ptr @.str.88, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 372, i32 2}
!181 = !{ptr @.str.89, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 373, i32 2}
!183 = !{ptr @.str.90, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 375, i32 2}
!185 = !{ptr @.str.91, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 376, i32 2}
!187 = !{ptr @.str.92, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 377, i32 2}
!189 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 379, i32 2}
!191 = !{ptr @.str.94, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 380, i32 2}
!193 = !{ptr @.str.95, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 381, i32 2}
!195 = !{ptr @.str.96, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 383, i32 2}
!197 = !{ptr @.str.97, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 385, i32 2}
!199 = !{ptr @.str.98, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 386, i32 2}
!201 = !{ptr @.str.99, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 387, i32 2}
!203 = !{ptr @.str.100, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 389, i32 2}
!205 = !{ptr @.str.101, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 391, i32 2}
!207 = !{ptr @.str.102, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 392, i32 2}
!209 = !{ptr @.str.103, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 393, i32 2}
!211 = !{ptr @.str.104, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 394, i32 2}
!213 = !{ptr @top_muxes, !214, !"top_muxes", i1 false, i1 false}
!214 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 350, i32 35}
!215 = !{ptr @.str.105, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 103, i32 2}
!217 = !{ptr @axi_parents, !218, !"axi_parents", i1 false, i1 false}
!218 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 102, i32 27}
!219 = !{ptr @.str.106, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 126, i32 2}
!221 = !{ptr @smi_parents, !222, !"smi_parents", i1 false, i1 false}
!222 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 112, i32 27}
!223 = !{ptr @mfg_parents, !224, !"mfg_parents", i1 false, i1 false}
!224 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 130, i32 27}
!225 = !{ptr @irda_parents, !226, !"irda_parents", i1 false, i1 false}
!226 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 146, i32 27}
!227 = !{ptr @cam_parents, !228, !"cam_parents", i1 false, i1 false}
!228 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 152, i32 27}
!229 = !{ptr @aud_intbus_parents, !230, !"aud_intbus_parents", i1 false, i1 false}
!230 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 163, i32 27}
!231 = !{ptr @jpg_parents, !232, !"jpg_parents", i1 false, i1 false}
!232 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 169, i32 27}
!233 = !{ptr @disp_parents, !234, !"disp_parents", i1 false, i1 false}
!234 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 179, i32 27}
!235 = !{ptr @.str.107, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 196, i32 2}
!237 = !{ptr @msdc30_parents, !238, !"msdc30_parents", i1 false, i1 false}
!238 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 190, i32 27}
!239 = !{ptr @usb20_parents, !240, !"usb20_parents", i1 false, i1 false}
!240 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 199, i32 27}
!241 = !{ptr @venc_parents, !242, !"venc_parents", i1 false, i1 false}
!242 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 205, i32 27}
!243 = !{ptr @spi_parents, !244, !"spi_parents", i1 false, i1 false}
!244 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 216, i32 27}
!245 = !{ptr @uart_parents, !246, !"uart_parents", i1 false, i1 false}
!246 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 225, i32 27}
!247 = !{ptr @mem_parents, !248, !"mem_parents", i1 false, i1 false}
!248 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 230, i32 27}
!249 = !{ptr @camtg_parents, !250, !"camtg_parents", i1 false, i1 false}
!250 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 235, i32 27}
!251 = !{ptr @audio_parents, !252, !"audio_parents", i1 false, i1 false}
!252 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 243, i32 27}
!253 = !{ptr @.str.108, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 249, i32 2}
!255 = !{ptr @fix_parents, !256, !"fix_parents", i1 false, i1 false}
!256 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 248, i32 27}
!257 = !{ptr @vdec_parents, !258, !"vdec_parents", i1 false, i1 false}
!258 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 259, i32 27}
!259 = !{ptr @ddrphycfg_parents, !260, !"ddrphycfg_parents", i1 false, i1 false}
!260 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 278, i32 27}
!261 = !{ptr @dpilvds_parents, !262, !"dpilvds_parents", i1 false, i1 false}
!262 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 284, i32 27}
!263 = !{ptr @pmicspi_parents, !264, !"pmicspi_parents", i1 false, i1 false}
!264 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 292, i32 27}
!265 = !{ptr @smi_mfg_as_parents, !266, !"smi_mfg_as_parents", i1 false, i1 false}
!266 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 303, i32 27}
!267 = !{ptr @gcpu_parents, !268, !"gcpu_parents", i1 false, i1 false}
!268 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 310, i32 27}
!269 = !{ptr @dpi1_parents, !270, !"dpi1_parents", i1 false, i1 false}
!270 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 318, i32 27}
!271 = !{ptr @cci_parents, !272, !"cci_parents", i1 false, i1 false}
!272 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 325, i32 27}
!273 = !{ptr @apll_parents, !274, !"apll_parents", i1 false, i1 false}
!274 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 334, i32 27}
!275 = !{ptr @hdmipll_parents, !276, !"hdmipll_parents", i1 false, i1 false}
!276 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 343, i32 27}
!277 = !{ptr @.str.109, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 17, i32 8}
!279 = !{ptr @mt8135_clk_lock, !278, !"mt8135_clk_lock", i1 false, i1 false}
!280 = !{ptr @.str.110, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 558, i32 3}
!282 = !{ptr @mtk_infrasys_init._entry, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @mtk_infrasys_init._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.111, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 413, i32 2}
!286 = !{ptr @.str.112, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 414, i32 2}
!288 = !{ptr @.str.113, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 415, i32 2}
!290 = !{ptr @.str.114, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 416, i32 2}
!292 = !{ptr @.str.115, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 417, i32 2}
!294 = !{ptr @.str.116, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 418, i32 2}
!296 = !{ptr @.str.117, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 419, i32 2}
!298 = !{ptr @.str.118, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 420, i32 2}
!300 = !{ptr @.str.119, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 421, i32 2}
!302 = !{ptr @.str.120, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 422, i32 2}
!304 = !{ptr @.str.121, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 423, i32 2}
!306 = !{ptr @.str.122, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 424, i32 2}
!308 = !{ptr @.str.123, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 425, i32 2}
!310 = !{ptr @infra_clks, !311, !"infra_clks", i1 false, i1 false}
!311 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 412, i32 30}
!312 = !{ptr @infra_cg_regs, !313, !"infra_cg_regs", i1 false, i1 false}
!313 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 397, i32 35}
!314 = !{ptr @.str.124, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 573, i32 3}
!316 = !{ptr @mtk_pericfg_init._entry, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @mtk_pericfg_init._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @mtk_pericfg_init._entry.125, !319, !"_entry", i1 false, i1 false}
!319 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 586, i32 3}
!320 = !{ptr @mtk_pericfg_init._entry_ptr.126, !319, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.127, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 460, i32 2}
!323 = !{ptr @.str.128, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 461, i32 2}
!325 = !{ptr @.str.129, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 462, i32 2}
!327 = !{ptr @.str.130, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 463, i32 2}
!329 = !{ptr @.str.131, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 464, i32 2}
!331 = !{ptr @.str.132, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 465, i32 2}
!333 = !{ptr @.str.133, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 466, i32 2}
!335 = !{ptr @.str.134, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 467, i32 2}
!337 = !{ptr @.str.135, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 468, i32 2}
!339 = !{ptr @.str.136, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 469, i32 2}
!341 = !{ptr @.str.137, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 470, i32 2}
!343 = !{ptr @.str.138, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 471, i32 2}
!345 = !{ptr @.str.139, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 472, i32 2}
!347 = !{ptr @.str.140, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 473, i32 2}
!349 = !{ptr @.str.141, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 474, i32 2}
!351 = !{ptr @.str.142, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 475, i32 2}
!353 = !{ptr @.str.143, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 476, i32 2}
!355 = !{ptr @.str.144, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 477, i32 2}
!357 = !{ptr @.str.145, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 478, i32 2}
!359 = !{ptr @.str.146, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 479, i32 2}
!361 = !{ptr @.str.147, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 480, i32 2}
!363 = !{ptr @.str.148, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 481, i32 2}
!365 = !{ptr @.str.149, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 482, i32 2}
!367 = !{ptr @.str.150, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 483, i32 2}
!369 = !{ptr @.str.151, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 484, i32 2}
!371 = !{ptr @.str.152, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 485, i32 2}
!373 = !{ptr @.str.153, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 486, i32 2}
!375 = !{ptr @.str.154, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 487, i32 2}
!377 = !{ptr @.str.155, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 488, i32 2}
!379 = !{ptr @.str.156, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 489, i32 2}
!381 = !{ptr @.str.157, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 490, i32 2}
!383 = !{ptr @.str.158, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 491, i32 2}
!385 = !{ptr @.str.159, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 493, i32 2}
!387 = !{ptr @.str.160, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 494, i32 2}
!389 = !{ptr @.str.161, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 495, i32 2}
!391 = !{ptr @.str.162, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 496, i32 2}
!393 = !{ptr @.str.163, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 497, i32 2}
!395 = !{ptr @.str.164, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 498, i32 2}
!397 = !{ptr @.str.165, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 499, i32 2}
!399 = !{ptr @.str.166, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 500, i32 2}
!401 = !{ptr @.str.167, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 501, i32 2}
!403 = !{ptr @peri_gates, !404, !"peri_gates", i1 false, i1 false}
!404 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 458, i32 30}
!405 = !{ptr @peri0_cg_regs, !406, !"peri0_cg_regs", i1 false, i1 false}
!406 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 428, i32 35}
!407 = !{ptr @peri1_cg_regs, !408, !"peri1_cg_regs", i1 false, i1 false}
!408 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 434, i32 35}
!409 = !{ptr @.str.168, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 510, i32 2}
!411 = !{ptr @.str.169, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 511, i32 2}
!413 = !{ptr @.str.170, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 512, i32 2}
!415 = !{ptr @.str.171, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 513, i32 2}
!417 = !{ptr @peri_clks, !418, !"peri_clks", i1 false, i1 false}
!418 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 509, i32 35}
!419 = !{ptr @uart_ck_sel_parents, !420, !"uart_ck_sel_parents", i1 false, i1 false}
!420 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 504, i32 27}
!421 = !{ptr @.str.172, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 614, i32 2}
!423 = !{ptr @.str.173, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 615, i32 2}
!425 = !{ptr @plls, !426, !"plls", i1 false, i1 false}
!426 = !{!"../drivers/clk/mediatek/clk-mt8135.c", i32 613, i32 34}
!427 = !{i32 1, !"wchar_size", i32 2}
!428 = !{i32 1, !"min_enum_size", i32 4}
!429 = !{i32 8, !"branch-target-enforcement", i32 0}
!430 = !{i32 8, !"sign-return-address", i32 0}
!431 = !{i32 8, !"sign-return-address-all", i32 0}
!432 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!433 = !{i32 7, !"uwtable", i32 1}
!434 = !{i32 7, !"frame-pointer", i32 2}
!435 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
