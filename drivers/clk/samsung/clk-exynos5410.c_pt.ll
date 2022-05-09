; ModuleID = '/llk/IR_all_yes/drivers/clk/samsung/clk-exynos5410.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-exynos5410.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_pll_rate_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.samsung_pll_clock = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.samsung_cmu_info = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.samsung_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8 }
%struct.samsung_div_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.samsung_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8 }

@__of_table_exynos5410_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5410-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5410_clk_init }, section "__clk_of_table", align 4
@exynos5410_pll2550x_24mhz_tbl = internal constant [10 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 400000000, i32 3, i32 200, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 333000000, i32 2, i32 111, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 300000000, i32 2, i32 100, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 266000000, i32 3, i32 266, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 200000000, i32 3, i32 200, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 192000000, i32 3, i32 192, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 166000000, i32 3, i32 166, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 133000000, i32 3, i32 266, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 100000000, i32 3, i32 200, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 66000000, i32 2, i32 176, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0 }], section ".init.rodata", align 4
@exynos5410_plls = internal global [6 x %struct.samsung_pll_clock] [%struct.samsung_pll_clock { i32 2, ptr @.str.4, ptr @.str.5, i32 64, i32 256, i32 0, i32 2, ptr null }, %struct.samsung_pll_clock { i32 3, ptr @.str.6, ptr @.str.5, i32 64, i32 65824, i32 65568, i32 2, ptr null }, %struct.samsung_pll_clock { i32 7, ptr @.str.7, ptr @.str.5, i32 64, i32 65840, i32 65600, i32 20, ptr null }, %struct.samsung_pll_clock { i32 4, ptr @.str.8, ptr @.str.5, i32 64, i32 16640, i32 16384, i32 2, ptr null }, %struct.samsung_pll_clock { i32 5, ptr @.str.9, ptr @.str.5, i32 64, i32 131344, i32 131088, i32 2, ptr null }, %struct.samsung_pll_clock { i32 6, ptr @.str.10, ptr @.str.5, i32 64, i32 164096, i32 163840, i32 2, ptr null }], section ".init.data", align 4
@cmu = internal constant %struct.samsung_cmu_info { ptr @exynos5410_plls, i32 6, ptr @exynos5410_mux_clks, i32 23, ptr @exynos5410_div_clks, i32 29, ptr @exynos5410_gate_clks, i32 39, ptr null, i32 0, ptr null, i32 0, i32 512, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@exynos5410_clk_init.__UNIQUE_ID_ddebug108 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_exynos5410\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exynos5410_clk_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/clk/samsung/clk-exynos5410.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Exynos5410: clock setup completed.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fout_apll\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fin_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fout_cpll\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fout_epll\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fout_mpll\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fout_bpll\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fout_kpll\00", [22 x i8] zeroinitializer }, align 32
@exynos5410_mux_clks = internal constant [23 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 0, ptr @.str.11, ptr @apll_p, i8 2, i32 128, i32 512, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.12, ptr @mout_cpu_p, i8 2, i32 128, i32 512, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.13, ptr @kpll_p, i8 2, i32 128, i32 164352, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.14, ptr @mout_kfc_p, i8 2, i32 128, i32 164352, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.15, ptr @mpll_p, i8 2, i32 128, i32 16900, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.16, ptr @mpll_user_p, i8 2, i32 128, i32 66072, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.17, ptr @bpll_p, i8 2, i32 128, i32 131584, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.18, ptr @bpll_user_p, i8 2, i32 128, i32 66072, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.19, ptr @epll_p, i8 2, i32 128, i32 66072, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.20, ptr @cpll_p, i8 2, i32 128, i32 66072, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.21, ptr @mpll_bpll_p, i8 2, i32 128, i32 66068, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.22, ptr @group2_p, i8 10, i32 128, i32 66116, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.23, ptr @group2_p, i8 10, i32 128, i32 66116, i8 4, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.24, ptr @group2_p, i8 10, i32 128, i32 66116, i8 8, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.25, ptr @sclk_mpll_bpll_p, i8 2, i32 128, i32 66116, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.26, ptr @sclk_mpll_bpll_p, i8 2, i32 128, i32 66116, i8 29, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.27, ptr @group2_p, i8 10, i32 128, i32 66128, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.28, ptr @group2_p, i8 10, i32 128, i32 66128, i8 4, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.29, ptr @group2_p, i8 10, i32 128, i32 66128, i8 8, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.30, ptr @group2_p, i8 10, i32 128, i32 66128, i8 12, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.31, ptr @group2_p, i8 10, i32 128, i32 66128, i8 24, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.32, ptr @mpll_bpll_p, i8 2, i32 128, i32 66064, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.33, ptr @mpll_bpll_p, i8 2, i32 128, i32 66064, i8 20, i8 1, i8 0 }], section ".init.rodata", align 4
@exynos5410_div_clks = internal constant [29 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 0, ptr @.str.35, ptr @.str.12, i32 0, i32 1280, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.36, ptr @.str.35, i32 0, i32 1280, i8 28, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.37, ptr @.str.36, i32 0, i32 1280, i8 8, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.38, ptr @.str.36, i32 0, i32 1280, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.39, ptr @.str.36, i32 0, i32 1280, i8 16, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.40, ptr @.str.36, i32 0, i32 1280, i8 20, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.41, ptr @.str.14, i32 0, i32 165120, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.42, ptr @.str.41, i32 0, i32 165120, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.43, ptr @.str.41, i32 0, i32 165120, i8 20, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.44, ptr @.str.16, i32 0, i32 66836, i8 24, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.45, ptr @.str.44, i32 0, i32 66832, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.46, ptr @.str.25, i32 0, i32 66888, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.47, ptr @.str.26, i32 0, i32 66888, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.48, ptr @.str.25, i32 0, i32 66888, i8 24, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.49, ptr @.str.26, i32 0, i32 66888, i8 28, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.50, ptr @.str.22, i32 0, i32 66892, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.51, ptr @.str.23, i32 0, i32 66892, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.52, ptr @.str.24, i32 0, i32 66896, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.53, ptr @.str.50, i32 4, i32 66892, i8 8, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.54, ptr @.str.51, i32 4, i32 66892, i8 24, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.55, ptr @.str.52, i32 4, i32 66896, i8 8, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.56, ptr @.str.27, i32 0, i32 66904, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.57, ptr @.str.28, i32 0, i32 66904, i8 4, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.58, ptr @.str.29, i32 0, i32 66904, i8 8, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.59, ptr @.str.30, i32 0, i32 66904, i8 12, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.60, ptr @.str.31, i32 0, i32 66916, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.61, ptr @.str.32, i32 0, i32 66832, i8 12, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.62, ptr @.str.63, i32 0, i32 66832, i8 16, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.64, ptr @.str.33, i32 0, i32 66832, i8 24, i8 3, i8 0, ptr null }], section ".init.rodata", align 4
@exynos5410_gate_clks = internal constant [39 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 471, ptr @.str.65, ptr @.str.62, i32 0, i32 34816, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 315, ptr @.str.66, ptr @.str.45, i32 0, i32 67936, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 316, ptr @.str.67, ptr @.str.45, i32 0, i32 67936, i8 19, i8 0 }, %struct.samsung_gate_clock { i32 317, ptr @.str.68, ptr @.str.45, i32 0, i32 67936, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 318, ptr @.str.69, ptr @.str.45, i32 0, i32 67936, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 132, ptr @.str.70, ptr @.str.53, i32 4, i32 66368, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 133, ptr @.str.71, ptr @.str.54, i32 4, i32 66368, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 134, ptr @.str.72, ptr @.str.55, i32 4, i32 66368, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 351, ptr @.str.73, ptr @.str.61, i32 0, i32 67392, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 352, ptr @.str.74, ptr @.str.61, i32 0, i32 67392, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 353, ptr @.str.75, ptr @.str.61, i32 0, i32 67392, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 363, ptr @.str.76, ptr @.str.61, i32 0, i32 67392, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 362, ptr @.str.77, ptr @.str.61, i32 0, i32 67392, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 153, ptr @.str.78, ptr @.str.47, i32 4, i32 67648, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 152, ptr @.str.79, ptr @.str.46, i32 4, i32 67648, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 150, ptr @.str.80, ptr @.str.48, i32 4, i32 67648, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 151, ptr @.str.81, ptr @.str.49, i32 4, i32 67648, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 155, ptr @.str.82, ptr @.str.60, i32 4, i32 67664, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 257, ptr @.str.83, ptr @.str.45, i32 0, i32 67920, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 258, ptr @.str.84, ptr @.str.45, i32 0, i32 67920, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 259, ptr @.str.85, ptr @.str.45, i32 0, i32 67920, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 260, ptr @.str.86, ptr @.str.45, i32 0, i32 67920, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 261, ptr @.str.87, ptr @.str.45, i32 0, i32 67920, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 262, ptr @.str.88, ptr @.str.45, i32 0, i32 67920, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 263, ptr @.str.89, ptr @.str.45, i32 0, i32 67920, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 264, ptr @.str.90, ptr @.str.45, i32 0, i32 67920, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 265, ptr @.str.91, ptr @.str.45, i32 0, i32 67920, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 266, ptr @.str.92, ptr @.str.45, i32 0, i32 67920, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 267, ptr @.str.93, ptr @.str.45, i32 0, i32 67920, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 268, ptr @.str.94, ptr @.str.45, i32 0, i32 67920, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 270, ptr @.str.95, ptr @.str.45, i32 0, i32 67920, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 279, ptr @.str.96, ptr @.str.45, i32 0, i32 67920, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 128, ptr @.str.97, ptr @.str.56, i32 4, i32 66384, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 129, ptr @.str.98, ptr @.str.57, i32 4, i32 66384, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 130, ptr @.str.99, ptr @.str.58, i32 4, i32 66384, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 131, ptr @.str.100, ptr @.str.59, i32 4, i32 66384, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 365, ptr @.str.101, ptr @.str.102, i32 0, i32 67908, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 366, ptr @.str.103, ptr @.str.102, i32 0, i32 67908, i8 19, i8 0 }, %struct.samsung_gate_clock { i32 367, ptr @.str.104, ptr @.str.102, i32 0, i32 67908, i8 20, i8 0 }], section ".init.rodata", align 4
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mout_apll\00", [22 x i8] zeroinitializer }, align 32
@apll_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.4], section ".init.rodata", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mout_cpu\00", [23 x i8] zeroinitializer }, align 32
@mout_cpu_p = internal constant [2 x ptr] [ptr @.str.11, ptr @.str.15], section ".init.rodata", align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mout_kpll\00", [22 x i8] zeroinitializer }, align 32
@kpll_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.10], section ".init.rodata", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mout_kfc\00", [23 x i8] zeroinitializer }, align 32
@mout_kfc_p = internal constant [2 x ptr] [ptr @.str.13, ptr @.str.15], section ".init.rodata", align 4
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_mpll\00", [22 x i8] zeroinitializer }, align 32
@mpll_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.8], section ".init.rodata", align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sclk_mpll_muxed\00", [16 x i8] zeroinitializer }, align 32
@mpll_user_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.15], section ".init.rodata", align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_bpll\00", [22 x i8] zeroinitializer }, align 32
@bpll_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.9], section ".init.rodata", align 4
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sclk_bpll_muxed\00", [16 x i8] zeroinitializer }, align 32
@bpll_user_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.17], section ".init.rodata", align 4
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_epll\00", [22 x i8] zeroinitializer }, align 32
@epll_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.7], section ".init.rodata", align 4
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_cpll\00", [22 x i8] zeroinitializer }, align 32
@cpll_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sclk_mpll_bpll\00", [17 x i8] zeroinitializer }, align 32
@mpll_bpll_p = internal constant [2 x ptr] [ptr @.str.16, ptr @.str.18], section ".init.rodata", align 4
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mout_mmc0\00", [22 x i8] zeroinitializer }, align 32
@group2_p = internal constant [10 x ptr] [ptr @.str.5, ptr @.str.5, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.21, ptr @.str.34, ptr @.str.34, ptr @.str.20], section ".init.rodata", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mout_mmc1\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mout_mmc2\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mout_usbd300\00", [19 x i8] zeroinitializer }, align 32
@sclk_mpll_bpll_p = internal constant [2 x ptr] [ptr @.str.21, ptr @.str.5], section ".init.rodata", align 4
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mout_usbd301\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mout_uart0\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mout_uart1\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mout_uart2\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mout_uart3\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mout_pwm\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mout_aclk200\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mout_aclk400\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div_arm\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_arm2\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div_acp\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_cpud\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div_atb\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_dbg\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div_kfc\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_aclk\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_pclk\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aclk66_pre\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"aclk66\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dout_usbphy300\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dout_usbphy301\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dout_usbd300\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dout_usbd301\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_mmc0\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_mmc1\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_mmc2\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"div_mmc_pre0\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"div_mmc_pre1\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"div_mmc_pre2\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_uart0\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_uart1\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_uart2\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_uart3\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dout_pwm\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aclk200\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aclk266\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mpll_user_p\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aclk400\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sss\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mct\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wdt\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tmu\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_mmc0\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_mmc1\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_mmc2\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdmmc0\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdmmc1\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdmmc2\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pdma1\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pdma0\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sclk_usbphy301\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sclk_usbphy300\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sclk_usbd300\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sclk_usbd301\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sclk_pwm\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c0\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usi0\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usi1\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usi2\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usi3\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tsadc\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_uart0\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_uart1\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_uart2\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_uart3\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usbh20\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aclk200_fsys\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbd300\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbd301\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 276, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 240, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 242, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 244, i32 11 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 246, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 248, i32 11 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 250, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 87, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 88, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 90, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 91, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 93, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 94, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 96, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 97, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 99, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 101, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 103, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 105, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 106, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 107, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 108, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 109, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 111, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 112, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 113, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 114, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 115, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 117, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 118, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 82, i32 44 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 122, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 123, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 125, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 126, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 127, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 128, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 130, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 131, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 132, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 134, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 135, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 137, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 138, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 139, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 140, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 142, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 143, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 144, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 146, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 148, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 150, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 153, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 154, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 155, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 156, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 158, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 160, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 161, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 162, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 166, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 167, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 168, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 169, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 170, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 172, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 174, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 176, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 179, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 180, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 181, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 182, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 183, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 185, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 187, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 189, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 191, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 194, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 197, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 198, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 199, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 200, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 201, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 202, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 203, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 204, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 205, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 206, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 207, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 208, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 209, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 210, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 212, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 214, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 216, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 218, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 221, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 222, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.418 = private constant [40 x i8] c"../drivers/clk/samsung/clk-exynos5410.c\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 223, i32 2 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__of_table_exynos5410_clk, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos5410_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_clk_get(ptr noundef %np, i32 noundef 0) #2
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @clk_get_rate(ptr noundef %call) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %call2)
  %cmp = icmp eq i32 %call2, 24000000
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  store ptr @exynos5410_pll2550x_24mhz_tbl, ptr getelementptr inbounds ([6 x %struct.samsung_pll_clock], ptr @exynos5410_plls, i32 0, i32 2, i32 7), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call ptr @samsung_cmu_register_one(ptr noundef %np, ptr noundef nonnull @cmu) #2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos5410_clk_init.__UNIQUE_ID_ddebug108, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos5410_clk_init, %if.then7)) #2
          to label %do.end [label %if.then7], !srcloc !254

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos5410_clk_init.__UNIQUE_ID_ddebug108, ptr noundef nonnull @.str.3) #2
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @samsung_cmu_register_one(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !239, !241, !243}
!llvm.module.flags = !{!245, !246, !247, !248, !249, !250, !251, !252}
!llvm.ident = !{!253}

!0 = !{ptr @__of_table_exynos5410_clk, !1, !"__of_table_exynos5410_clk", i1 false, i1 false}
!1 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 278, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 276, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @exynos5410_clk_init.__UNIQUE_ID_ddebug108, !3, !"__UNIQUE_ID_ddebug108", i1 false, i1 false}
!8 = !{ptr @exynos5410_pll2550x_24mhz_tbl, !9, !"exynos5410_pll2550x_24mhz_tbl", i1 false, i1 false}
!9 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 226, i32 44}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 240, i32 11}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 242, i32 11}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 244, i32 11}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 246, i32 11}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 248, i32 11}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 250, i32 11}
!23 = !{ptr @exynos5410_plls, !24, !"exynos5410_plls", i1 false, i1 false}
!24 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 239, i32 33}
!25 = !{ptr @cmu, !26, !"cmu", i1 false, i1 false}
!26 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 254, i32 38}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 87, i32 2}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 88, i32 2}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 90, i32 2}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 91, i32 2}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 93, i32 2}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 94, i32 2}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 96, i32 2}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 97, i32 2}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 99, i32 2}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 101, i32 2}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 103, i32 2}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 105, i32 2}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 106, i32 2}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 107, i32 2}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 108, i32 2}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 109, i32 2}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 111, i32 2}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 112, i32 2}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 113, i32 2}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 114, i32 2}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 115, i32 2}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 117, i32 2}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 118, i32 2}
!73 = !{ptr @exynos5410_mux_clks, !74, !"exynos5410_mux_clks", i1 false, i1 false}
!74 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 86, i32 39}
!75 = !{ptr @apll_p, !76, !"apll_p", i1 false, i1 false}
!76 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 67, i32 1}
!77 = !{ptr @mout_cpu_p, !78, !"mout_cpu_p", i1 false, i1 false}
!78 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 74, i32 1}
!79 = !{ptr @kpll_p, !80, !"kpll_p", i1 false, i1 false}
!80 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 72, i32 1}
!81 = !{ptr @mout_kfc_p, !82, !"mout_kfc_p", i1 false, i1 false}
!82 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 75, i32 1}
!83 = !{ptr @mpll_p, !84, !"mpll_p", i1 false, i1 false}
!84 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 71, i32 1}
!85 = !{ptr @mpll_user_p, !86, !"mpll_user_p", i1 false, i1 false}
!86 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 77, i32 1}
!87 = !{ptr @bpll_p, !88, !"bpll_p", i1 false, i1 false}
!88 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 68, i32 1}
!89 = !{ptr @bpll_user_p, !90, !"bpll_user_p", i1 false, i1 false}
!90 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 78, i32 1}
!91 = !{ptr @epll_p, !92, !"epll_p", i1 false, i1 false}
!92 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 70, i32 1}
!93 = !{ptr @cpll_p, !94, !"cpll_p", i1 false, i1 false}
!94 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 69, i32 1}
!95 = !{ptr @mpll_bpll_p, !96, !"mpll_bpll_p", i1 false, i1 false}
!96 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 79, i32 1}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 82, i32 44}
!99 = !{ptr @group2_p, !100, !"group2_p", i1 false, i1 false}
!100 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 82, i32 1}
!101 = !{ptr @sclk_mpll_bpll_p, !102, !"sclk_mpll_bpll_p", i1 false, i1 false}
!102 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 80, i32 1}
!103 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 122, i32 2}
!105 = !{ptr @.str.36, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 123, i32 2}
!107 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 125, i32 2}
!109 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 126, i32 2}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 127, i32 2}
!113 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 128, i32 2}
!115 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 130, i32 2}
!117 = !{ptr @.str.42, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 131, i32 2}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 132, i32 2}
!121 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 134, i32 2}
!123 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 135, i32 2}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 137, i32 2}
!127 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 138, i32 2}
!129 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 139, i32 2}
!131 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 140, i32 2}
!133 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 142, i32 2}
!135 = !{ptr @.str.51, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 143, i32 2}
!137 = !{ptr @.str.52, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 144, i32 2}
!139 = !{ptr @.str.53, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 146, i32 2}
!141 = !{ptr @.str.54, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 148, i32 2}
!143 = !{ptr @.str.55, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 150, i32 2}
!145 = !{ptr @.str.56, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 153, i32 2}
!147 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 154, i32 2}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 155, i32 2}
!151 = !{ptr @.str.59, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 156, i32 2}
!153 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 158, i32 2}
!155 = !{ptr @.str.61, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 160, i32 2}
!157 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 161, i32 2}
!159 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.64, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 162, i32 2}
!162 = !{ptr @exynos5410_div_clks, !163, !"exynos5410_div_clks", i1 false, i1 false}
!163 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 121, i32 39}
!164 = !{ptr @.str.65, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 166, i32 2}
!166 = !{ptr @.str.66, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 167, i32 2}
!168 = !{ptr @.str.67, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 168, i32 2}
!170 = !{ptr @.str.68, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 169, i32 2}
!172 = !{ptr @.str.69, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 170, i32 2}
!174 = !{ptr @.str.70, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 172, i32 2}
!176 = !{ptr @.str.71, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 174, i32 2}
!178 = !{ptr @.str.72, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 176, i32 2}
!180 = !{ptr @.str.73, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 179, i32 2}
!182 = !{ptr @.str.74, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 180, i32 2}
!184 = !{ptr @.str.75, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 181, i32 2}
!186 = !{ptr @.str.76, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 182, i32 2}
!188 = !{ptr @.str.77, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 183, i32 2}
!190 = !{ptr @.str.78, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 185, i32 2}
!192 = !{ptr @.str.79, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 187, i32 2}
!194 = !{ptr @.str.80, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 189, i32 2}
!196 = !{ptr @.str.81, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 191, i32 2}
!198 = !{ptr @.str.82, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 194, i32 2}
!200 = !{ptr @.str.83, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 197, i32 2}
!202 = !{ptr @.str.84, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 198, i32 2}
!204 = !{ptr @.str.85, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 199, i32 2}
!206 = !{ptr @.str.86, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 200, i32 2}
!208 = !{ptr @.str.87, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 201, i32 2}
!210 = !{ptr @.str.88, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 202, i32 2}
!212 = !{ptr @.str.89, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 203, i32 2}
!214 = !{ptr @.str.90, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 204, i32 2}
!216 = !{ptr @.str.91, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 205, i32 2}
!218 = !{ptr @.str.92, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 206, i32 2}
!220 = !{ptr @.str.93, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 207, i32 2}
!222 = !{ptr @.str.94, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 208, i32 2}
!224 = !{ptr @.str.95, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 209, i32 2}
!226 = !{ptr @.str.96, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 210, i32 2}
!228 = !{ptr @.str.97, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 212, i32 2}
!230 = !{ptr @.str.98, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 214, i32 2}
!232 = !{ptr @.str.99, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 216, i32 2}
!234 = !{ptr @.str.100, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 218, i32 2}
!236 = !{ptr @.str.101, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 221, i32 2}
!238 = !{ptr @.str.102, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.103, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 222, i32 2}
!241 = !{ptr @.str.104, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 223, i32 2}
!243 = !{ptr @exynos5410_gate_clks, !244, !"exynos5410_gate_clks", i1 false, i1 false}
!244 = !{!"../drivers/clk/samsung/clk-exynos5410.c", i32 165, i32 40}
!245 = !{i32 1, !"wchar_size", i32 2}
!246 = !{i32 1, !"min_enum_size", i32 4}
!247 = !{i32 8, !"branch-target-enforcement", i32 0}
!248 = !{i32 8, !"sign-return-address", i32 0}
!249 = !{i32 8, !"sign-return-address-all", i32 0}
!250 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!251 = !{i32 7, !"uwtable", i32 1}
!252 = !{i32 7, !"frame-pointer", i32 2}
!253 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!254 = !{i64 2148927001, i64 2148927006, i64 2148927019, i64 2148927063, i64 2148927097, i64 2148927118}
