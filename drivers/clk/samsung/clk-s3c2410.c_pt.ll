; ModuleID = '/llk/IR_all_yes/drivers/clk/samsung/clk-s3c2410.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-s3c2410.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.samsung_pll_rate_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.samsung_pll_clock = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.samsung_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8 }
%struct.samsung_div_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.samsung_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8 }
%struct.samsung_fixed_factor_clock = type { i32, ptr, ptr, i32, i32, i32 }
%struct.samsung_clock_alias = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.samsung_clk_provider = type { ptr, ptr, %struct.spinlock, %struct.clk_hw_onecell_data }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@reg_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: failed to map registers\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.s3c2410_common_clk_init = private unnamed_addr constant [24 x i8] c"s3c2410_common_clk_init\00", align 1
@pll_s3c2410_12mhz_tbl = internal global [28 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 270000000, i32 1, i32 127, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 268000000, i32 1, i32 126, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 266000000, i32 1, i32 125, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 226000000, i32 1, i32 105, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 210000000, i32 2, i32 132, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 202800000, i32 3, i32 161, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 192000000, i32 1, i32 88, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 186000000, i32 1, i32 85, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 180000000, i32 1, i32 82, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 170000000, i32 1, i32 77, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 158000000, i32 1, i32 71, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 152000000, i32 1, i32 68, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 147000000, i32 2, i32 90, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 135000000, i32 2, i32 82, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 124000000, i32 1, i32 116, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 118500000, i32 2, i32 150, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 113000000, i32 1, i32 105, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 101250000, i32 2, i32 127, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 90000000, i32 2, i32 112, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 84750000, i32 2, i32 105, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 79000000, i32 1, i32 71, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 67500000, i32 2, i32 82, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 56250000, i32 2, i32 142, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 48000000, i32 2, i32 120, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 50700000, i32 3, i32 161, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 45000000, i32 1, i32 82, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 33750000, i32 2, i32 82, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table zeroinitializer], section ".init.data", align 4
@s3c2410_plls = internal global [2 x %struct.samsung_pll_clock] [%struct.samsung_pll_clock { i32 2, ptr @.str.3, ptr @.str.2, i32 64, i32 4, i32 0, i32 15, ptr null }, %struct.samsung_pll_clock { i32 3, ptr @.str.4, ptr @.str.2, i32 64, i32 8, i32 0, i32 16, ptr null }], section ".init.data", align 4
@pll_s3c244x_12mhz_tbl = internal global [28 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 400000000, i32 1, i32 92, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 390000000, i32 2, i32 122, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 380000000, i32 1, i32 87, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 370000000, i32 4, i32 177, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 360000000, i32 2, i32 112, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 350000000, i32 4, i32 167, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 340000000, i32 1, i32 77, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 330000000, i32 2, i32 102, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 320000000, i32 4, i32 152, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 310000000, i32 4, i32 147, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 300000000, i32 3, i32 117, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 240000000, i32 1, i32 112, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 230000000, i32 1, i32 107, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 220000000, i32 1, i32 102, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 210000000, i32 2, i32 132, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 200000000, i32 1, i32 92, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 190000000, i32 1, i32 87, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 180000000, i32 2, i32 112, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 170000000, i32 1, i32 77, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 160000000, i32 4, i32 152, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 150000000, i32 3, i32 117, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 120000000, i32 1, i32 112, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 110000000, i32 1, i32 102, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 100000000, i32 1, i32 92, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 90000000, i32 2, i32 112, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 80000000, i32 4, i32 152, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 75000000, i32 3, i32 117, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table zeroinitializer], section ".init.data", align 4
@s3c244x_common_plls = internal global [2 x %struct.samsung_pll_clock] [%struct.samsung_pll_clock { i32 2, ptr @.str.3, ptr @.str.2, i32 64, i32 4, i32 0, i32 17, ptr null }, %struct.samsung_pll_clock { i32 3, ptr @.str.4, ptr @.str.2, i32 64, i32 8, i32 0, i32 16, ptr null }], section ".init.data", align 4
@s3c2410_common_muxes = internal global [1 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 4, ptr @.str.5, ptr @fclk_p, i8 2, i32 128, i32 16, i8 4, i8 1, i8 0 }], section ".init.data", align 4
@s3c2410_common_dividers = internal global [2 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 0, ptr @.str.6, ptr @.str.2, i32 0, i32 16, i8 0, i8 3, i8 0, ptr @divslow_d }, %struct.samsung_div_clock { i32 6, ptr @.str.7, ptr @.str.8, i32 0, i32 20, i8 0, i8 1, i8 0, ptr null }], section ".init.data", align 4
@s3c2410_common_gates = internal global [15 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 21, ptr @.str.9, ptr @.str.7, i32 0, i32 12, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 24, ptr @.str.10, ptr @.str.7, i32 0, i32 12, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 19, ptr @.str.11, ptr @.str.7, i32 0, i32 12, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 22, ptr @.str.12, ptr @.str.7, i32 0, i32 12, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 26, ptr @.str.13, ptr @.str.7, i32 0, i32 12, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 27, ptr @.str.14, ptr @.str.7, i32 8, i32 12, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 18, ptr @.str.15, ptr @.str.7, i32 0, i32 12, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 17, ptr @.str.16, ptr @.str.7, i32 0, i32 12, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 16, ptr @.str.17, ptr @.str.7, i32 0, i32 12, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 20, ptr @.str.18, ptr @.str.7, i32 0, i32 12, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 25, ptr @.str.19, ptr @.str.7, i32 0, i32 12, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 34, ptr @.str.20, ptr @.str.8, i32 0, i32 12, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 33, ptr @.str.21, ptr @.str.8, i32 0, i32 12, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 32, ptr @.str.22, ptr @.str.8, i32 0, i32 12, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 35, ptr @.str.23, ptr @.str.8, i32 0, i32 12, i8 4, i8 0 }], section ".init.data", align 4
@s3c244x_common_dividers = internal global [5 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 7, ptr @.str.24, ptr @.str.4, i32 0, i32 20, i8 3, i8 1, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.25, ptr @.str.5, i32 0, i32 20, i8 1, i8 1, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.26, ptr @.str.5, i32 0, i32 24, i8 9, i8 1, i8 0, ptr @div_hclk_4_d }, %struct.samsung_div_clock { i32 0, ptr @.str.27, ptr @.str.5, i32 0, i32 24, i8 8, i8 1, i8 0, ptr @div_hclk_3_d }, %struct.samsung_div_clock { i32 0, ptr @.str.28, ptr @.str.4, i32 0, i32 24, i8 0, i8 3, i8 0, ptr null }], section ".init.data", align 4
@s3c244x_common_gates = internal global [1 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 36, ptr @.str.29, ptr @.str.8, i32 0, i32 12, i8 19, i8 0 }], section ".init.data", align 4
@s3c244x_common_muxes = internal global [2 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 5, ptr @.str.8, ptr @hclk_p, i8 4, i32 128, i32 20, i8 1, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 8, ptr @.str.30, ptr @armclk_p, i8 2, i32 128, i32 24, i8 12, i8 1, i8 0 }], section ".init.data", align 4
@s3c244x_common_ffactor = internal global [2 x %struct.samsung_fixed_factor_clock] [%struct.samsung_fixed_factor_clock { i32 0, ptr @.str.31, ptr @.str.5, i32 1, i32 2, i32 0 }, %struct.samsung_fixed_factor_clock { i32 0, ptr @.str.32, ptr @.str.28, i32 2, i32 1, i32 4 }], section ".init.data", align 4
@s3c2410_dividers = internal global [1 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 5, ptr @.str.8, ptr @.str.3, i32 0, i32 20, i8 1, i8 1, i8 0, ptr null }], section ".init.data", align 4
@s3c2410_ffactor = internal global [2 x %struct.samsung_fixed_factor_clock] [%struct.samsung_fixed_factor_clock { i32 8, ptr @.str.30, ptr @.str.5, i32 1, i32 1, i32 0 }, %struct.samsung_fixed_factor_clock { i32 7, ptr @.str.24, ptr @.str.4, i32 1, i32 1, i32 0 }], section ".init.data", align 4
@s3c2410_aliases = internal global [7 x %struct.samsung_clock_alias] [%struct.samsung_clock_alias { i32 16, ptr @.str.33, ptr @.str.34 }, %struct.samsung_clock_alias { i32 17, ptr @.str.35, ptr @.str.34 }, %struct.samsung_clock_alias { i32 18, ptr @.str.36, ptr @.str.34 }, %struct.samsung_clock_alias { i32 16, ptr @.str.33, ptr @.str.37 }, %struct.samsung_clock_alias { i32 17, ptr @.str.35, ptr @.str.37 }, %struct.samsung_clock_alias { i32 18, ptr @.str.36, ptr @.str.37 }, %struct.samsung_clock_alias { i32 7, ptr null, ptr @.str.38 }], section ".init.data", align 4
@s3c2440_muxes = internal global [1 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 40, ptr @.str.39, ptr @s3c2440_camif_p, i8 2, i32 128, i32 24, i8 4, i8 1, i8 0 }], section ".init.data", align 4
@s3c2440_gates = internal global [1 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 23, ptr @.str.40, ptr @.str.7, i32 0, i32 12, i8 20, i8 0 }], section ".init.data", align 4
@s3c2442_muxes = internal global [1 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 40, ptr @.str.39, ptr @s3c2442_camif_p, i8 4, i32 128, i32 24, i8 4, i8 2, i8 0 }], section ".init.data", align 4
@s3c2442_ffactor = internal global [1 x %struct.samsung_fixed_factor_clock] [%struct.samsung_fixed_factor_clock { i32 0, ptr @.str.41, ptr @.str.4, i32 1, i32 3, i32 0 }], section ".init.data", align 4
@s3c2410_common_aliases = internal global [19 x %struct.samsung_clock_alias] [%struct.samsung_clock_alias { i32 19, ptr @.str.42, ptr @.str.11 }, %struct.samsung_clock_alias { i32 22, ptr null, ptr @.str.12 }, %struct.samsung_clock_alias { i32 26, ptr null, ptr @.str.13 }, %struct.samsung_clock_alias { i32 25, ptr null, ptr @.str.43 }, %struct.samsung_clock_alias { i32 32, ptr null, ptr @.str.22 }, %struct.samsung_clock_alias { i32 34, ptr null, ptr @.str.20 }, %struct.samsung_clock_alias { i32 33, ptr null, ptr @.str.21 }, %struct.samsung_clock_alias { i32 7, ptr null, ptr @.str.44 }, %struct.samsung_clock_alias { i32 7, ptr null, ptr @.str.45 }, %struct.samsung_clock_alias { i32 8, ptr null, ptr @.str.30 }, %struct.samsung_clock_alias { i32 7, ptr null, ptr @.str.24 }, %struct.samsung_clock_alias { i32 5, ptr null, ptr @.str.8 }, %struct.samsung_clock_alias { i32 2, ptr null, ptr @.str.3 }, %struct.samsung_clock_alias { i32 4, ptr null, ptr @.str.5 }, %struct.samsung_clock_alias { i32 6, ptr null, ptr @.str.46 }, %struct.samsung_clock_alias { i32 20, ptr null, ptr @.str.18 }, %struct.samsung_clock_alias { i32 35, ptr null, ptr @.str.23 }, %struct.samsung_clock_alias { i32 24, ptr null, ptr @.str.47 }, %struct.samsung_clock_alias { i32 19, ptr null, ptr @.str.11 }], section ".init.data", align 4
@s3c244x_common_aliases = internal global [8 x %struct.samsung_clock_alias] [%struct.samsung_clock_alias { i32 16, ptr @.str.48, ptr @.str.34 }, %struct.samsung_clock_alias { i32 17, ptr @.str.49, ptr @.str.34 }, %struct.samsung_clock_alias { i32 18, ptr @.str.50, ptr @.str.34 }, %struct.samsung_clock_alias { i32 16, ptr @.str.48, ptr @.str.51 }, %struct.samsung_clock_alias { i32 17, ptr @.str.49, ptr @.str.51 }, %struct.samsung_clock_alias { i32 18, ptr @.str.50, ptr @.str.51 }, %struct.samsung_clock_alias { i32 36, ptr null, ptr @.str.39 }, %struct.samsung_clock_alias { i32 40, ptr null, ptr @.str.52 }], section ".init.data", align 4
@s3c2410_clk_regs = internal global [7 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24], section ".init.data", align 4
@__of_table_s3c2410_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2410_clk_init }, section "__clk_of_table", align 4
@__of_table_s3c2440_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2440-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2440_clk_init }, section "__clk_of_table", align 4
@__of_table_s3c2442_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2442-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2442_clk_init }, section "__clk_of_table", align 4
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xtal\00", [27 x i8] zeroinitializer }, align 32
@__const.s3c2410_common_clk_register_fixed_ext.xti_alias = private unnamed_addr constant %struct.samsung_clock_alias { i32 1, ptr null, ptr @.str.1 }, align 4
@s3c2410_common_frate_clks = internal global [1 x %struct.samsung_fixed_rate_clock] [%struct.samsung_fixed_rate_clock { i32 1, ptr @.str.2, ptr null, i32 0, i32 0 }], section ".init.data", align 4
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xti\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpll\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"upll\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fclk\00", [27 x i8] zeroinitializer }, align 32
@fclk_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.6], section ".init.rodata", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_slow\00", [23 x i8] zeroinitializer }, align 32
@divslow_d = internal global { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 6 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table { i32 5, i32 10 }, %struct.clk_div_table { i32 6, i32 12 }, %struct.clk_div_table { i32 7, i32 14 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2s\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adc\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sdi\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb-device\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb-host\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uclk\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_hclk\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"div_hclk_4\00", [21 x i8] zeroinitializer }, align 32
@div_hclk_4_d = internal global { [3 x %struct.clk_div_table], [40 x i8] } { [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table { i32 1, i32 8 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"div_hclk_3\00", [21 x i8] zeroinitializer }, align 32
@div_hclk_3_d = internal global { [3 x %struct.clk_div_table], [40 x i8] } { [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 3 }, %struct.clk_div_table { i32 1, i32 6 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div_cam\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cam\00", [28 x i8] zeroinitializer }, align 32
@hclk_p = internal constant [4 x ptr] [ptr @.str.5, ptr @.str.31, ptr @.str.26, ptr @.str.27], section ".init.rodata", align 4
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"armclk\00", [25 x i8] zeroinitializer }, align 32
@armclk_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.8], section ".init.rodata", align 4
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"div_hclk_2\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ff_cam\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c2410-uart.0\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c2410-uart.1\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c2410-uart.2\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_uart_baud0\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_uart_baud1\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"camif\00", [26 x i8] zeroinitializer }, align 32
@s3c2440_camif_p = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.32], section ".init.rodata", align 4
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ac97\00", [27 x i8] zeroinitializer }, align 32
@s3c2442_camif_p = internal constant [4 x ptr] [ptr @.str.4, ptr @.str.32, ptr @.str.4, ptr @.str.41], section ".init.rodata", align 4
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"upll_3\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s3c2410-i2c.0\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timers\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb-bus-host\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb-bus-gadget\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iis\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c2440-uart.0\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c2440-uart.1\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c2440-uart.2\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_uart_baud2\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"camif-upll\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.53 = private unnamed_addr constant [9 x i8] c"reg_base\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 38, i32 22 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 332, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 312, i32 41 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 305, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 155, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 157, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 57, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 54, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant [10 x i8] c"divslow_d\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 60, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 74, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 78, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 79, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 80, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 81, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 82, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 83, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 84, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 85, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 86, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 87, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 88, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 89, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 90, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 91, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 92, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 253, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 254, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 255, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [13 x i8] c"div_hclk_4_d\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 240, i32 29 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 256, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [13 x i8] c"div_hclk_3_d\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 246, i32 29 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 257, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 261, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 232, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 227, i32 27 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 237, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 177, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 178, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 179, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 180, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 183, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 280, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 284, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 293, i32 54 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 97, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 100, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 104, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 105, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 111, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 114, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 265, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 266, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 267, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 268, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private constant [37 x i8] c"../drivers/clk/samsung/clk-s3c2410.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 272, i32 2 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__of_table_s3c2410_clk, ptr @__of_table_s3c2440_clk, ptr @__of_table_s3c2442_clk, ptr @reg_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @divslow_d, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @div_hclk_4_d, ptr @.str.27, ptr @div_hclk_3_d, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @divslow_d to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @div_hclk_4_d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @div_hclk_3_d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c2410_common_clk_init(ptr noundef %np, i32 noundef %xti_f, i32 noundef %current_soc, ptr noundef %base) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %base, ptr @reg_base, align 4
  %tobool.not = icmp eq ptr %np, null
  br i1 %tobool.not, label %if.then7, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @of_iomap(ptr noundef nonnull %np, i32 noundef 0) #4
  store ptr %call, ptr @reg_base, align 4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s3c2410_common_clk_init) #7
  unreachable

if.end3:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %0 = load ptr, ptr @reg_base, align 4
  %call4 = tail call ptr @samsung_clk_init(ptr noundef nonnull %np, ptr noundef %0, i32 noundef 41) #4
  br label %if.end8

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = load ptr, ptr @reg_base, align 4
  %call462 = tail call ptr @samsung_clk_init(ptr noundef null, ptr noundef %1, i32 noundef 41) #4
  tail call fastcc void @s3c2410_common_clk_register_fixed_ext(ptr noundef %call462, i32 noundef %xti_f) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3
  %call463 = phi ptr [ %call462, %if.then7 ], [ %call4, %if.end3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %current_soc)
  %cmp = icmp eq i32 %current_soc, 0
  %arrayidx = getelementptr %struct.samsung_clk_provider, ptr %call463, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call10 = tail call i32 @clk_hw_get_rate(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 12000000
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end8
  br i1 %cmp11, label %if.then12, label %if.then9.if.end19.thread_crit_edge

if.then9.if.end19.thread_crit_edge:               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.thread

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  store ptr @pll_s3c2410_12mhz_tbl, ptr getelementptr inbounds ([2 x %struct.samsung_pll_clock], ptr @s3c2410_plls, i32 0, i32 0, i32 7), align 4
  store ptr @pll_s3c2410_12mhz_tbl, ptr getelementptr inbounds ([2 x %struct.samsung_pll_clock], ptr @s3c2410_plls, i32 0, i32 1, i32 7), align 4
  br label %if.end19.thread

if.end19.thread:                                  ; preds = %if.then12, %if.then9.if.end19.thread_crit_edge
  %4 = load ptr, ptr @reg_base, align 4
  tail call void @samsung_clk_register_pll(ptr noundef %call463, ptr noundef nonnull @s3c2410_plls, i32 noundef 2, ptr noundef %4) #4
  tail call void @samsung_clk_register_mux(ptr noundef %call463, ptr noundef nonnull @s3c2410_common_muxes, i32 noundef 1) #4
  tail call void @samsung_clk_register_div(ptr noundef %call463, ptr noundef nonnull @s3c2410_common_dividers, i32 noundef 2) #4
  tail call void @samsung_clk_register_gate(ptr noundef %call463, ptr noundef nonnull @s3c2410_common_gates, i32 noundef 15) #4
  tail call void @samsung_clk_register_div(ptr noundef %call463, ptr noundef nonnull @s3c2410_dividers, i32 noundef 1) #4
  tail call void @samsung_clk_register_fixed_factor(ptr noundef %call463, ptr noundef nonnull @s3c2410_ffactor, i32 noundef 2) #4
  tail call void @samsung_clk_register_alias(ptr noundef %call463, ptr noundef nonnull @s3c2410_aliases, i32 noundef 7) #4
  br label %sw.epilog

if.else:                                          ; preds = %if.end8
  br i1 %cmp11, label %if.then17, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  store ptr @pll_s3c244x_12mhz_tbl, ptr getelementptr inbounds ([2 x %struct.samsung_pll_clock], ptr @s3c244x_common_plls, i32 0, i32 0, i32 7), align 4
  store ptr @pll_s3c2410_12mhz_tbl, ptr getelementptr inbounds ([2 x %struct.samsung_pll_clock], ptr @s3c244x_common_plls, i32 0, i32 1, i32 7), align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.else.if.end19_crit_edge
  %5 = load ptr, ptr @reg_base, align 4
  tail call void @samsung_clk_register_pll(ptr noundef %call463, ptr noundef nonnull @s3c244x_common_plls, i32 noundef 2, ptr noundef %5) #4
  tail call void @samsung_clk_register_mux(ptr noundef %call463, ptr noundef nonnull @s3c2410_common_muxes, i32 noundef 1) #4
  tail call void @samsung_clk_register_div(ptr noundef %call463, ptr noundef nonnull @s3c2410_common_dividers, i32 noundef 2) #4
  tail call void @samsung_clk_register_gate(ptr noundef %call463, ptr noundef nonnull @s3c2410_common_gates, i32 noundef 15) #4
  %current_soc.off74 = add i32 %current_soc, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %current_soc.off74)
  %switch = icmp ult i32 %current_soc.off74, 2
  br i1 %switch, label %if.then22, label %if.end19.sw.epilog_crit_edge

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then22:                                        ; preds = %if.end19
  tail call void @samsung_clk_register_div(ptr noundef %call463, ptr noundef nonnull @s3c244x_common_dividers, i32 noundef 5) #4
  tail call void @samsung_clk_register_gate(ptr noundef %call463, ptr noundef nonnull @s3c244x_common_gates, i32 noundef 1) #4
  tail call void @samsung_clk_register_mux(ptr noundef %call463, ptr noundef nonnull @s3c244x_common_muxes, i32 noundef 2) #4
  tail call void @samsung_clk_register_fixed_factor(ptr noundef %call463, ptr noundef nonnull @s3c244x_common_ffactor, i32 noundef 2) #4
  %6 = zext i32 %current_soc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %current_soc, label %if.then22.if.then29_crit_edge [
    i32 2, label %sw.bb25
    i32 1, label %sw.bb24
  ]

if.then22.if.then29_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29

sw.bb24:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @samsung_clk_register_mux(ptr noundef %call463, ptr noundef nonnull @s3c2440_muxes, i32 noundef 1) #4
  tail call void @samsung_clk_register_gate(ptr noundef %call463, ptr noundef nonnull @s3c2440_gates, i32 noundef 1) #4
  br label %if.then29

sw.bb25:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @samsung_clk_register_mux(ptr noundef %call463, ptr noundef nonnull @s3c2442_muxes, i32 noundef 1) #4
  tail call void @samsung_clk_register_fixed_factor(ptr noundef %call463, ptr noundef nonnull @s3c2442_ffactor, i32 noundef 1) #4
  br label %if.then29

sw.epilog:                                        ; preds = %if.end19.sw.epilog_crit_edge, %if.end19.thread
  tail call void @samsung_clk_register_alias(ptr noundef %call463, ptr noundef nonnull @s3c2410_common_aliases, i32 noundef 19) #4
  br label %if.end30

if.then29:                                        ; preds = %sw.bb25, %sw.bb24, %if.then22.if.then29_crit_edge
  tail call void @samsung_clk_register_alias(ptr noundef %call463, ptr noundef nonnull @s3c2410_common_aliases, i32 noundef 19) #4
  tail call void @samsung_clk_register_alias(ptr noundef %call463, ptr noundef nonnull @s3c244x_common_aliases, i32 noundef 8) #4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %sw.epilog
  %7 = load ptr, ptr @reg_base, align 4
  tail call void @samsung_clk_extended_sleep_init(ptr noundef %7, ptr noundef nonnull @s3c2410_clk_regs, i32 noundef 7, ptr noundef null, i32 noundef 0) #4
  tail call void @samsung_clk_of_add_provider(ptr noundef %np, ptr noundef %call463) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @samsung_clk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c2410_common_clk_register_fixed_ext(ptr noundef %ctx, i32 noundef %xti_f) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %xti_alias = alloca %struct.samsung_clock_alias, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %xti_alias) #4
  %0 = call ptr @memcpy(ptr %xti_alias, ptr @__const.s3c2410_common_clk_register_fixed_ext.xti_alias, i32 12)
  store i32 %xti_f, ptr getelementptr inbounds ([1 x %struct.samsung_fixed_rate_clock], ptr @s3c2410_common_frate_clks, i32 0, i32 0, i32 4), align 4
  tail call void @samsung_clk_register_fixed_rate(ptr noundef %ctx, ptr noundef nonnull @s3c2410_common_frate_clks, i32 noundef 1) #4
  call void @samsung_clk_register_alias(ptr noundef %ctx, ptr noundef nonnull %xti_alias, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %xti_alias) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_pll(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_mux(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_div(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_gate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_fixed_factor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_alias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_extended_sleep_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_of_add_provider(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3c2410_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c2410_common_clk_init(ptr noundef %np, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3c2440_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c2410_common_clk_init(ptr noundef %np, i32 noundef 0, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3c2442_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c2410_common_clk_init(ptr noundef %np, i32 noundef 0, i32 noundef 2, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_fixed_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 332, i32 10}
!2 = !{ptr @__func__.s3c2410_common_clk_init, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 332, i32 43}
!4 = !{ptr @__of_table_s3c2410_clk, !5, !"__of_table_s3c2410_clk", i1 false, i1 false}
!5 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 434, i32 1}
!6 = !{ptr @__of_table_s3c2440_clk, !7, !"__of_table_s3c2440_clk", i1 false, i1 false}
!7 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 440, i32 1}
!8 = !{ptr @__of_table_s3c2442_clk, !9, !"__of_table_s3c2442_clk", i1 false, i1 false}
!9 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 446, i32 1}
!10 = !{ptr @reg_base, !11, !"reg_base", i1 false, i1 false}
!11 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 38, i32 22}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 312, i32 41}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 305, i32 2}
!16 = !{ptr @s3c2410_common_frate_clks, !17, !"s3c2410_common_frate_clks", i1 false, i1 false}
!17 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 304, i32 40}
!18 = !{ptr @pll_s3c2410_12mhz_tbl, !19, !"pll_s3c2410_12mhz_tbl", i1 false, i1 false}
!19 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 120, i32 38}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 155, i32 11}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 157, i32 11}
!24 = !{ptr @s3c2410_plls, !25, !"s3c2410_plls", i1 false, i1 false}
!25 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 154, i32 33}
!26 = !{ptr @pll_s3c244x_12mhz_tbl, !27, !"pll_s3c244x_12mhz_tbl", i1 false, i1 false}
!27 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 188, i32 38}
!28 = !{ptr @s3c244x_common_plls, !29, !"s3c244x_common_plls", i1 false, i1 false}
!29 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 220, i32 33}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 57, i32 2}
!32 = !{ptr @s3c2410_common_muxes, !33, !"s3c2410_common_muxes", i1 false, i1 false}
!33 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 56, i32 33}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 54, i32 27}
!36 = !{ptr @fclk_p, !37, !"fclk_p", i1 false, i1 false}
!37 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 54, i32 1}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 74, i32 2}
!40 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @s3c2410_common_dividers, !42, !"s3c2410_common_dividers", i1 false, i1 false}
!42 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 72, i32 33}
!43 = !{ptr @divslow_d, !44, !"divslow_d", i1 false, i1 false}
!44 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 60, i32 29}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 78, i32 2}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 79, i32 2}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 80, i32 2}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 81, i32 2}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 82, i32 2}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 83, i32 2}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 84, i32 2}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 85, i32 2}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 86, i32 2}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 87, i32 2}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 88, i32 2}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 89, i32 2}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 90, i32 2}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 91, i32 2}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 92, i32 2}
!75 = !{ptr @s3c2410_common_gates, !76, !"s3c2410_common_gates", i1 false, i1 false}
!76 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 77, i32 34}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 253, i32 2}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 254, i32 2}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 255, i32 2}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 256, i32 2}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 257, i32 2}
!87 = !{ptr @s3c244x_common_dividers, !88, !"s3c244x_common_dividers", i1 false, i1 false}
!88 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 252, i32 33}
!89 = !{ptr @div_hclk_4_d, !90, !"div_hclk_4_d", i1 false, i1 false}
!90 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 240, i32 29}
!91 = !{ptr @div_hclk_3_d, !92, !"div_hclk_3_d", i1 false, i1 false}
!92 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 246, i32 29}
!93 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 261, i32 2}
!95 = !{ptr @s3c244x_common_gates, !96, !"s3c244x_common_gates", i1 false, i1 false}
!96 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 260, i32 34}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 232, i32 2}
!99 = !{ptr @s3c244x_common_muxes, !100, !"s3c244x_common_muxes", i1 false, i1 false}
!100 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 230, i32 33}
!101 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 227, i32 27}
!103 = !{ptr @hclk_p, !104, !"hclk_p", i1 false, i1 false}
!104 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 227, i32 1}
!105 = !{ptr @armclk_p, !106, !"armclk_p", i1 false, i1 false}
!106 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 228, i32 1}
!107 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 237, i32 2}
!109 = !{ptr @s3c244x_common_ffactor, !110, !"s3c244x_common_ffactor", i1 false, i1 false}
!110 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 235, i32 42}
!111 = !{ptr @s3c2410_dividers, !112, !"s3c2410_dividers", i1 false, i1 false}
!112 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 161, i32 33}
!113 = !{ptr @s3c2410_ffactor, !114, !"s3c2410_ffactor", i1 false, i1 false}
!114 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 165, i32 42}
!115 = !{ptr @.str.33, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 177, i32 2}
!117 = !{ptr @.str.34, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.35, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 178, i32 2}
!120 = !{ptr @.str.36, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 179, i32 2}
!122 = !{ptr @.str.37, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 180, i32 2}
!124 = !{ptr @.str.38, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 183, i32 2}
!126 = !{ptr @s3c2410_aliases, !127, !"s3c2410_aliases", i1 false, i1 false}
!127 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 176, i32 35}
!128 = !{ptr @.str.39, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 280, i32 2}
!130 = !{ptr @s3c2440_muxes, !131, !"s3c2440_muxes", i1 false, i1 false}
!131 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 279, i32 33}
!132 = !{ptr @s3c2440_camif_p, !133, !"s3c2440_camif_p", i1 false, i1 false}
!133 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 277, i32 1}
!134 = !{ptr @.str.40, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 284, i32 2}
!136 = !{ptr @s3c2440_gates, !137, !"s3c2440_gates", i1 false, i1 false}
!137 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 283, i32 34}
!138 = !{ptr @s3c2442_muxes, !139, !"s3c2442_muxes", i1 false, i1 false}
!139 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 295, i32 33}
!140 = !{ptr @.str.41, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 293, i32 54}
!142 = !{ptr @s3c2442_camif_p, !143, !"s3c2442_camif_p", i1 false, i1 false}
!143 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 293, i32 1}
!144 = !{ptr @s3c2442_ffactor, !145, !"s3c2442_ffactor", i1 false, i1 false}
!145 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 289, i32 42}
!146 = !{ptr @.str.42, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 97, i32 2}
!148 = !{ptr @.str.43, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 100, i32 2}
!150 = !{ptr @.str.44, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 104, i32 2}
!152 = !{ptr @.str.45, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 105, i32 2}
!154 = !{ptr @.str.46, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 111, i32 2}
!156 = !{ptr @.str.47, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 114, i32 2}
!158 = !{ptr @s3c2410_common_aliases, !159, !"s3c2410_common_aliases", i1 false, i1 false}
!159 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 96, i32 35}
!160 = !{ptr @.str.48, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 265, i32 2}
!162 = !{ptr @.str.49, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 266, i32 2}
!164 = !{ptr @.str.50, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 267, i32 2}
!166 = !{ptr @.str.51, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 268, i32 2}
!168 = !{ptr @.str.52, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 272, i32 2}
!170 = !{ptr @s3c244x_common_aliases, !171, !"s3c244x_common_aliases", i1 false, i1 false}
!171 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 264, i32 35}
!172 = !{ptr @s3c2410_clk_regs, !173, !"s3c2410_clk_regs", i1 false, i1 false}
!173 = !{!"../drivers/clk/samsung/clk-s3c2410.c", i32 44, i32 22}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
