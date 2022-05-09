; ModuleID = '/llk/IR_all_yes/drivers/clk/rockchip/clk-rk3188.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-rk3188.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rockchip_pll_clock = type { i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.rockchip_clk_branch = type { i32, i32, ptr, ptr, i8, i32, i32, i8, i8, i8, i32, i8, i8, i8, ptr, i32, i8, i8, ptr }
%struct.rockchip_cpuclk_reg_data = type { [4 x i32], [4 x i8], [4 x i32], i32, i8, i8, i8, i32 }
%struct.rockchip_cpuclk_rate_table = type { i32, [5 x %struct.rockchip_cpuclk_clksel] }
%struct.rockchip_cpuclk_clksel = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.anon.7 = type { i32, i32, i32, i32 }
%struct.rockchip_pll_rate_table = type { i32, %union.anon.6 }
%union.anon.6 = type { %struct.anon.8 }
%struct.anon.8 = type { i32, i32, i32, i32, i32, i32 }

@__of_table_rk3066a_cru = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066a-cru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3066a_clk_init }, section "__clk_of_table", align 4
@__of_table_rk3188a_cru = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188a-cru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3188a_clk_init }, section "__clk_of_table", align 4
@__of_table_rk3188_cru = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-cru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3188_clk_init }, section "__clk_of_table", align 4
@rk3066_pll_clks = internal global [4 x %struct.rockchip_pll_clock] [%struct.rockchip_pll_clock { i32 1, ptr @.str.248, ptr @mux_pll_p, i8 2, i32 64, i32 0, i32 64, i32 0, i32 5, i32 1, i8 0, ptr @rk3188_pll_rates }, %struct.rockchip_pll_clock { i32 3, ptr @.str.239, ptr @mux_pll_p, i8 2, i32 64, i32 32, i32 64, i32 8, i32 6, i32 1, i8 1, ptr @rk3188_pll_rates }, %struct.rockchip_pll_clock { i32 2, ptr @.str.240, ptr @mux_pll_p, i8 2, i32 64, i32 16, i32 64, i32 4, i32 4, i32 1, i8 0, ptr null }, %struct.rockchip_pll_clock { i32 4, ptr @.str.8, ptr @mux_pll_p, i8 2, i32 64, i32 48, i32 64, i32 12, i32 7, i32 1, i8 1, ptr @rk3188_pll_rates }], section ".init.data", align 4
@rk3066a_clk_branches = internal global [39 x %struct.rockchip_clk_branch] [%struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.21, ptr @.compoundliteral.251, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 0, i8 3, i8 40, ptr @div_aclk_cpu_t, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.24, ptr @.compoundliteral.252, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 12, i8 2, i8 42, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.29, ptr @.compoundliteral.253, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 8, i8 2, i8 42, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.254, ptr @.compoundliteral.255, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 14, i8 2, i8 42, ptr null, i32 224, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 6, i32 5, ptr @.str.256, ptr @.compoundliteral.257, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.34, ptr @mux_pll_src_gpll_cpll_p, i8 2, i32 0, i32 108, i8 15, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 216, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.258, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 176, i8 0, i8 1, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 220, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 190, i32 1, ptr @.str.259, ptr @mux_rk3066_lcdc0_p, i8 2, i32 4, i32 176, i8 4, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.260, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 180, i8 0, i8 1, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 220, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 191, i32 1, ptr @.str.261, ptr @mux_rk3066_lcdc1_p, i8 2, i32 4, i32 180, i8 4, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.262, ptr @.compoundliteral.263, i8 1, i32 0, i32 184, i8 0, i8 0, i8 0, i32 0, i8 8, i8 5, i8 8, ptr null, i32 220, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 80, i32 1, ptr @.str.264, ptr @mux_sclk_cif1_p, i8 2, i32 0, i32 184, i8 15, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.265, ptr @.compoundliteral.267, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 7, ptr @.str.268, ptr @.compoundliteral.269, i8 1, i32 0, i32 188, i8 0, i8 0, i8 0, i32 0, i8 12, i8 0, i8 1, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.270, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 200, i8 8, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 197, i32 5, ptr @.str.271, ptr @.compoundliteral.272, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 86, i32 5, ptr @.str.273, ptr @.compoundliteral.274, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 93, i32 0, ptr @.str.275, ptr @.compoundliteral.276, i8 1, i32 0, i32 204, i8 0, i8 0, i8 0, i32 0, i8 0, i8 16, i8 8, ptr null, i32 216, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.69, ptr @mux_pll_src_gpll_cpll_p, i8 2, i32 0, i32 76, i8 15, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.277, ptr @.compoundliteral.278, i8 1, i32 0, i32 76, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 208, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.279, ptr @.compoundliteral.280, i8 1, i32 4, i32 92, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 208, i8 8, i8 3, ptr @rk3066a_i2s0_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.281, ptr @.compoundliteral.282, i8 1, i32 0, i32 80, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 208, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.283, ptr @.compoundliteral.284, i8 1, i32 4, i32 96, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 208, i8 10, i8 3, ptr @rk3066a_i2s1_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.285, ptr @.compoundliteral.286, i8 1, i32 0, i32 84, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 208, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.287, ptr @.compoundliteral.288, i8 1, i32 4, i32 100, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 208, i8 12, i8 3, ptr @rk3066a_i2s2_fracmux }, %struct.rockchip_clk_branch { i32 454, i32 5, ptr @.str.289, ptr @.compoundliteral.290, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 455, i32 5, ptr @.str.291, ptr @.compoundliteral.292, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 456, i32 5, ptr @.str.293, ptr @.compoundliteral.294, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 470, i32 5, ptr @.str.295, ptr @.compoundliteral.296, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 473, i32 5, ptr @.str.297, ptr @.compoundliteral.298, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 457, i32 5, ptr @.str.299, ptr @.compoundliteral.300, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 199, i32 5, ptr @.str.301, ptr @.compoundliteral.302, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 323, i32 5, ptr @.str.303, ptr @.compoundliteral.304, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 324, i32 5, ptr @.str.305, ptr @.compoundliteral.306, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 346, i32 5, ptr @.str.307, ptr @.compoundliteral.308, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 332, i32 5, ptr @.str.309, ptr @.compoundliteral.310, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 333, i32 5, ptr @.str.311, ptr @.compoundliteral.312, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 345, i32 5, ptr @.str.313, ptr @.compoundliteral.314, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 349, i32 5, ptr @.str.315, ptr @.compoundliteral.316, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 13, i8 3, ptr null }], section ".init.data", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"armclk\00", [25 x i8] zeroinitializer }, align 32
@mux_armclk_p = internal constant [2 x ptr] [ptr @.str.248, ptr @.str.7], section ".init.rodata", align 4
@rk3066_cpuclk_data = internal constant { %struct.rockchip_cpuclk_reg_data, [48 x i8] } { %struct.rockchip_cpuclk_reg_data { [4 x i32] [i32 68, i32 0, i32 0, i32 0], [4 x i8] zeroinitializer, [4 x i32] [i32 31, i32 0, i32 0, i32 0], i32 1, i8 1, i8 0, i8 8, i32 1 }, [48 x i8] zeroinitializer }, align 32
@rk3066_cpuclk_rates = internal global [7 x %struct.rockchip_cpuclk_rate_table] [%struct.rockchip_cpuclk_rate_table { i32 1416000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 -217620221 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1200000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 -217620221 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1008000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 -217620222 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 816000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 -217620222 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 600000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12582976 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 -217620222 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 504000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12582976 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 -217620223 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 312000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12582912 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 -217640703 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }], section ".init.data", align 4
@rk3188_critical_clocks = internal constant [8 x ptr] [ptr @.str.20, ptr @.str.33, ptr @.str.36, ptr @.str.26, ptr @.str.38, ptr @.str.121, ptr @.str.123, ptr @.str.58], section ".init.rodata", align 4
@rk3188_common_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: could not map cru region\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rk3188_common_clk_init\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/rockchip/clk-rk3188.c\00", [62 x i8] zeroinitializer }, align 32
@rk3188_common_clk_init._entry_ptr = internal global ptr @rk3188_common_clk_init._entry, section ".printk_index", align 4
@rk3188_common_clk_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: rockchip clk init failed\0A\00", [32 x i8] zeroinitializer }, align 32
@rk3188_common_clk_init._entry_ptr.6 = internal global ptr @rk3188_common_clk_init._entry.4, section ".printk_index", align 4
@common_clk_branches = internal global [117 x %struct.rockchip_clk_branch] [%struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.7, ptr @.compoundliteral, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 5, i32 0, ptr @.str.9, ptr @.compoundliteral.10, i8 1, i32 0, i32 68, i8 0, i8 0, i8 0, i32 0, i8 6, i8 2, i8 40, ptr @div_core_peri_t, i32 208, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 205, i32 0, ptr @.str.11, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 196, i8 7, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 471, i32 5, ptr @.str.12, ptr @.compoundliteral.13, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 206, i32 0, ptr @.str.14, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 196, i8 15, i8 1, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 220, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 472, i32 5, ptr @.str.15, ptr @.compoundliteral.16, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.17, ptr @.compoundliteral.18, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.19, ptr @mux_ddrphy_p, i8 2, i32 8, i32 172, i8 8, i8 1, i8 4, i32 0, i8 0, i8 2, i8 10, ptr null, i32 208, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 203, i32 5, ptr @.str.20, ptr @.compoundliteral.22, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.23, ptr @.compoundliteral.25, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 350, i32 5, ptr @.str.26, ptr @.compoundliteral.27, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 468, i32 5, ptr @.str.28, ptr @.compoundliteral.30, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.31, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 8, i32 192, i8 7, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.32, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 192, i8 15, i8 1, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 212, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 204, i32 5, ptr @.str.33, ptr @.compoundliteral.35, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 469, i32 0, ptr @.str.36, ptr @.compoundliteral.37, i8 1, i32 0, i32 108, i8 0, i8 0, i8 0, i32 0, i8 8, i8 2, i8 10, ptr null, i32 216, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 351, i32 0, ptr @.str.38, ptr @.compoundliteral.39, i8 1, i32 0, i32 108, i8 0, i8 0, i8 0, i32 0, i8 12, i8 2, i8 10, ptr null, i32 216, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.40, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 184, i8 0, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.41, ptr @.compoundliteral.42, i8 1, i32 0, i32 184, i8 0, i8 0, i8 0, i32 0, i8 1, i8 5, i8 8, ptr null, i32 220, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 79, i32 1, ptr @.str.43, ptr @mux_sclk_cif0_p, i8 2, i32 0, i32 184, i8 7, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.44, ptr @.compoundliteral.46, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 7, ptr @.str.47, ptr @.compoundliteral.48, i8 1, i32 0, i32 188, i8 0, i8 0, i8 0, i32 0, i8 8, i8 0, i8 1, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.49, ptr @.compoundliteral.51, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 2, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 81, i32 5, ptr @.str.52, ptr @.compoundliteral.53, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 82, i32 5, ptr @.str.54, ptr @.compoundliteral.55, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.56, ptr @mux_mac_p, i8 2, i32 0, i32 152, i8 0, i8 1, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 216, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 68, i32 1, ptr @.str.57, ptr @mux_sclk_macref_p, i8 2, i32 4, i32 152, i8 4, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.58, ptr @.compoundliteral.59, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.60, ptr @mux_pll_src_gpll_cpll_p, i8 2, i32 0, i32 156, i8 0, i8 1, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 216, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.61, ptr @.compoundliteral.62, i8 1, i32 0, i32 160, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 216, i8 7, i8 3, ptr @common_hsadc_out_fracmux }, %struct.rockchip_clk_branch { i32 83, i32 7, ptr @.str.63, ptr @.compoundliteral.65, i8 1, i32 0, i32 156, i8 0, i8 0, i8 0, i32 0, i8 7, i8 0, i8 1, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 71, i32 0, ptr @.str.66, ptr @.compoundliteral.67, i8 1, i32 0, i32 164, i8 0, i8 0, i8 0, i32 0, i8 8, i8 8, i8 8, ptr null, i32 216, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.68, ptr @.compoundliteral.70, i8 1, i32 0, i32 88, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 208, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.71, ptr @.compoundliteral.72, i8 1, i32 4, i32 104, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 208, i8 14, i8 3, ptr @common_spdif_fracmux }, %struct.rockchip_clk_branch { i32 92, i32 5, ptr @.str.73, ptr @.compoundliteral.74, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 69, i32 0, ptr @.str.75, ptr @.compoundliteral.76, i8 1, i32 0, i32 168, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 216, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 70, i32 0, ptr @.str.77, ptr @.compoundliteral.78, i8 1, i32 0, i32 168, i8 0, i8 0, i8 0, i32 0, i8 8, i8 7, i8 8, ptr null, i32 216, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 72, i32 0, ptr @.str.79, ptr @.compoundliteral.80, i8 1, i32 0, i32 112, i8 0, i8 0, i8 0, i32 0, i8 0, i8 6, i8 8, ptr null, i32 216, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 73, i32 0, ptr @.str.81, ptr @.compoundliteral.82, i8 1, i32 0, i32 116, i8 0, i8 0, i8 0, i32 0, i8 0, i8 6, i8 8, ptr null, i32 216, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 74, i32 0, ptr @.str.83, ptr @.compoundliteral.84, i8 1, i32 0, i32 116, i8 0, i8 0, i8 0, i32 0, i8 8, i8 6, i8 8, ptr null, i32 216, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.85, ptr @mux_pll_src_gpll_cpll_p, i8 2, i32 0, i32 116, i8 15, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.86, ptr @.compoundliteral.87, i8 1, i32 0, i32 120, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.88, ptr @.compoundliteral.89, i8 1, i32 4, i32 136, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 9, i8 3, ptr @common_uart0_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.90, ptr @.compoundliteral.91, i8 1, i32 0, i32 124, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.92, ptr @.compoundliteral.93, i8 1, i32 4, i32 140, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 11, i8 3, ptr @common_uart1_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.94, ptr @.compoundliteral.95, i8 1, i32 0, i32 128, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.96, ptr @.compoundliteral.97, i8 1, i32 4, i32 144, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 13, i8 3, ptr @common_uart2_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.98, ptr @.compoundliteral.99, i8 1, i32 0, i32 132, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.100, ptr @.compoundliteral.101, i8 1, i32 4, i32 148, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 15, i8 3, ptr @common_uart3_fracmux }, %struct.rockchip_clk_branch { i32 91, i32 5, ptr @.str.102, ptr @.compoundliteral.104, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 84, i32 5, ptr @.str.105, ptr @.compoundliteral.106, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 85, i32 5, ptr @.str.107, ptr @.compoundliteral.108, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.109, ptr @.compoundliteral.110, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 192, i32 5, ptr @.str.111, ptr @.compoundliteral.112, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.113, ptr @.compoundliteral.114, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.115, ptr @.compoundliteral.116, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 463, i32 5, ptr @.str.117, ptr @.compoundliteral.118, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 453, i32 5, ptr @.str.119, ptr @.compoundliteral.120, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.121, ptr @.compoundliteral.122, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.123, ptr @.compoundliteral.124, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 461, i32 5, ptr @.str.125, ptr @.compoundliteral.126, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 462, i32 5, ptr @.str.127, ptr @.compoundliteral.128, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 464, i32 5, ptr @.str.129, ptr @.compoundliteral.130, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 465, i32 5, ptr @.str.131, ptr @.compoundliteral.132, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 466, i32 5, ptr @.str.133, ptr @.compoundliteral.134, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.135, ptr @.compoundliteral.136, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.137, ptr @.compoundliteral.138, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.139, ptr @.compoundliteral.140, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 452, i32 5, ptr @.str.141, ptr @.compoundliteral.142, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 467, i32 5, ptr @.str.143, ptr @.compoundliteral.144, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.145, ptr @.compoundliteral.146, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 451, i32 5, ptr @.str.147, ptr @.compoundliteral.148, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 459, i32 5, ptr @.str.149, ptr @.compoundliteral.150, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 460, i32 5, ptr @.str.151, ptr @.compoundliteral.152, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 448, i32 5, ptr @.str.153, ptr @.compoundliteral.154, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 449, i32 5, ptr @.str.155, ptr @.compoundliteral.156, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 450, i32 5, ptr @.str.157, ptr @.compoundliteral.158, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.159, ptr @.compoundliteral.160, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 195, i32 5, ptr @.str.161, ptr @.compoundliteral.162, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 202, i32 5, ptr @.str.163, ptr @.compoundliteral.164, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 200, i32 5, ptr @.str.165, ptr @.compoundliteral.166, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.167, ptr @.compoundliteral.168, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 196, i32 5, ptr @.str.169, ptr @.compoundliteral.170, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 201, i32 5, ptr @.str.171, ptr @.compoundliteral.172, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.173, ptr @.compoundliteral.174, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.175, ptr @.compoundliteral.176, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 326, i32 5, ptr @.str.177, ptr @.compoundliteral.178, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 322, i32 5, ptr @.str.179, ptr @.compoundliteral.180, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 336, i32 5, ptr @.str.181, ptr @.compoundliteral.182, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 337, i32 5, ptr @.str.183, ptr @.compoundliteral.184, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 341, i32 5, ptr @.str.185, ptr @.compoundliteral.186, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 342, i32 5, ptr @.str.187, ptr @.compoundliteral.188, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 343, i32 5, ptr @.str.189, ptr @.compoundliteral.190, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 347, i32 5, ptr @.str.191, ptr @.compoundliteral.192, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 348, i32 5, ptr @.str.193, ptr @.compoundliteral.194, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 352, i32 5, ptr @.str.195, ptr @.compoundliteral.196, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 353, i32 5, ptr @.str.197, ptr @.compoundliteral.198, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.199, ptr @.compoundliteral.200, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 320, i32 5, ptr @.str.201, ptr @.compoundliteral.202, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 321, i32 5, ptr @.str.203, ptr @.compoundliteral.204, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 193, i32 5, ptr @.str.205, ptr @.compoundliteral.206, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 198, i32 5, ptr @.str.207, ptr @.compoundliteral.208, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.209, ptr @.compoundliteral.210, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.211, ptr @.compoundliteral.212, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.213, ptr @.compoundliteral.214, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.215, ptr @.compoundliteral.216, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 327, i32 5, ptr @.str.217, ptr @.compoundliteral.218, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 331, i32 5, ptr @.str.219, ptr @.compoundliteral.220, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 328, i32 5, ptr @.str.221, ptr @.compoundliteral.222, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 329, i32 5, ptr @.str.223, ptr @.compoundliteral.224, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 334, i32 5, ptr @.str.225, ptr @.compoundliteral.226, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 335, i32 5, ptr @.str.227, ptr @.compoundliteral.228, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 338, i32 5, ptr @.str.229, ptr @.compoundliteral.230, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 339, i32 5, ptr @.str.231, ptr @.compoundliteral.232, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 340, i32 5, ptr @.str.233, ptr @.compoundliteral.234, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 344, i32 5, ptr @.str.235, ptr @.compoundliteral.236, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 330, i32 5, ptr @.str.237, ptr @.compoundliteral.238, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 14, i8 3, ptr null }], section ".init.data", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpll_armclk\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpll\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.8], [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"core_peri\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str], [28 x i8] zeroinitializer }, align 32
@div_core_peri_t = internal global { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 4 }, %struct.clk_div_table { i32 2, i32 8 }, %struct.clk_div_table { i32 3, i32 16 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_vepu\00", [22 x i8] zeroinitializer }, align 32
@mux_pll_src_cpll_gpll_p = internal constant [2 x ptr] [ptr @.str.239, ptr @.str.8], section ".init.rodata", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_vepu\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.11], [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_vdpu\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_vdpu\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.14], [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpll_ddr\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.8], [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ddrphy\00", [25 x i8] zeroinitializer }, align 32
@mux_ddrphy_p = internal constant [2 x ptr] [ptr @.str.240, ptr @.str.17], section ".init.rodata", align 4
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_cpu\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aclk_cpu_pre\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atclk_cpu\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pclk_cpu_pre\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.24], [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_cpu\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.24], [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_cpu\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hclk_cpu_pre\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.29], [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aclk_lcdc0_pre\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aclk_lcdc1_pre\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_peri\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_peri_pre\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.34], [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_peri\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.34], [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_peri\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.34], [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cif_src\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cif0_pre\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.40], [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_cif0\00", [22 x i8] zeroinitializer }, align 32
@mux_sclk_cif0_p = internal constant [2 x ptr] [ptr @.str.41, ptr @.str.50], section ".init.rodata", align 4
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclkin_cif0\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ext_cif0\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_cif0\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.44], [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xin12m\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xin24m\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.50], [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sclk_otgphy0\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.50], [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sclk_otgphy1\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.50], [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mac_src\00", [24 x i8] zeroinitializer }, align 32
@mux_mac_p = internal constant [2 x ptr] [ptr @.str.8, ptr @.str.240], section ".init.rodata", align 4
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_macref\00", [20 x i8] zeroinitializer }, align 32
@mux_sclk_macref_p = internal constant [2 x ptr] [ptr @.str.56, ptr @.str.241], section ".init.rodata", align 4
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sclk_mac_lbtest\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.57], [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hsadc_src\00", [22 x i8] zeroinitializer }, align 32
@mux_pll_src_gpll_cpll_p = internal constant [2 x ptr] [ptr @.str.8, ptr @.str.239], section ".init.rodata", align 4
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hsadc_frac\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.60], [28 x i8] zeroinitializer }, align 32
@common_hsadc_out_fracmux = internal global %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.64, ptr @mux_sclk_hsadc_p, i8 3, i32 0, i32 156, i8 4, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_hsadc\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sclk_hsadc_out\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.64], [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_saradc\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.50], [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_pre\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2s_src\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.69], [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif_frac\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.68], [28 x i8] zeroinitializer }, align 32
@common_spdif_fracmux = internal global %struct.rockchip_clk_branch { i32 78, i32 1, ptr @.str.243, ptr @mux_sclk_spdif_p, i8 3, i32 4, i32 88, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sclk_smc\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_spi0\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_spi1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_sdmmc\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_sdio\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_emmc\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_src\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_pre\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.85], [28 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart0_frac\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.86], [28 x i8] zeroinitializer }, align 32
@common_uart0_fracmux = internal global %struct.rockchip_clk_branch { i32 64, i32 1, ptr @.str.244, ptr @mux_sclk_uart0_p, i8 3, i32 4, i32 120, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_pre\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.85], [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart1_frac\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.90], [28 x i8] zeroinitializer }, align 32
@common_uart1_fracmux = internal global %struct.rockchip_clk_branch { i32 65, i32 1, ptr @.str.245, ptr @mux_sclk_uart1_p, i8 3, i32 4, i32 124, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_pre\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.85], [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart2_frac\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.94], [28 x i8] zeroinitializer }, align 32
@common_uart2_fracmux = internal global %struct.rockchip_clk_branch { i32 66, i32 1, ptr @.str.246, ptr @mux_sclk_uart2_p, i8 3, i32 4, i32 128, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3_pre\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.85], [28 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart3_frac\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.98], [28 x i8] zeroinitializer }, align 32
@common_uart3_fracmux = internal global %struct.rockchip_clk_branch { i32 67, i32 1, ptr @.str.247, ptr @mux_sclk_uart3_p, i8 3, i32 4, i32 132, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"jtag\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ext_jtag\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.103], [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer0\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.50], [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer1\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.50], [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"core_dbg\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str], [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_dma1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.20], [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aclk_intmem\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.20], [28 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_strc_sys\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.20], [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_rom\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_spdif\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hclk_cpubus\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hclk_vio_bus\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_lcdc0\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_lcdc1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_cif0\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_ipp\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_rga\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hclk_peri_axi_matrix\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hclk_peri_ahb_arbi\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hclk_emem_peri\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_emac\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hclk_nandc0\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hclk_usb_peri\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hclk_usbotg0\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_hsadc\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.150 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hclk_pidfilter\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_sdmmc\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_sdio\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.156 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_emmc\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_vio0\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.31], [28 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aclk_lcdc0\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.162 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.159], [28 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_cif0\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.159], [28 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_ipp\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.159], [28 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_vio1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.168 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.32], [28 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aclk_lcdc1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.167], [28 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_rga\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.167], [28 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atclk\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.23], [28 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trace\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.23], [28 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_pwm01\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_timer0\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.180 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_i2c0\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_i2c1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio0\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.186 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.188 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio2\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_efuse\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.192 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_tzpc\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_ddrupctl\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.196 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pclk_ddrpubl\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.198 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_dbg\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.200 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_grf\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.202 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_pmu\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.204 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_dma2\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.206 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.33], [28 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_smc\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.208 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.33], [28 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_peri_niu\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.210 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.33], [28 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_cpu_peri\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.212 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.33], [28 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"aclk_peri_axi_matrix\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.214 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.33], [28 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pclk_peri_axi_matrix\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.216 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_pwm23\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.218 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_wdt\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.220 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_spi0\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.222 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_spi1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.224 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_uart2\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.226 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_uart3\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.228 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_i2c2\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.230 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_i2c3\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.232 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_i2c4\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.234 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio3\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.236 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_saradc\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.238 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpll\00", [27 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dpll\00", [27 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ext_rmii\00", [23 x i8] zeroinitializer }, align 32
@mux_sclk_hsadc_p = internal constant [3 x ptr] [ptr @.str.60, ptr @.str.61, ptr @.str.242], section ".init.rodata", align 4
@.str.242 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ext_hsadc\00", [22 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_spdif\00", [21 x i8] zeroinitializer }, align 32
@mux_sclk_spdif_p = internal constant [3 x ptr] [ptr @.str.68, ptr @.str.71, ptr @.str.49], section ".init.rodata", align 4
@.str.244 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_uart0\00", [21 x i8] zeroinitializer }, align 32
@mux_sclk_uart0_p = internal constant [3 x ptr] [ptr @.str.86, ptr @.str.88, ptr @.str.50], section ".init.rodata", align 4
@.str.245 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_uart1\00", [21 x i8] zeroinitializer }, align 32
@mux_sclk_uart1_p = internal constant [3 x ptr] [ptr @.str.90, ptr @.str.92, ptr @.str.50], section ".init.rodata", align 4
@.str.246 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_uart2\00", [21 x i8] zeroinitializer }, align 32
@mux_sclk_uart2_p = internal constant [3 x ptr] [ptr @.str.94, ptr @.str.96, ptr @.str.50], section ".init.rodata", align 4
@.str.247 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_uart3\00", [21 x i8] zeroinitializer }, align 32
@mux_sclk_uart3_p = internal constant [3 x ptr] [ptr @.str.98, ptr @.str.100, ptr @.str.50], section ".init.rodata", align 4
@.str.248 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apll\00", [27 x i8] zeroinitializer }, align 32
@mux_pll_p = internal constant [2 x ptr] [ptr @.str.50, ptr @.str.249], section ".init.rodata", align 4
@.str.249 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xin32k\00", [25 x i8] zeroinitializer }, align 32
@rk3188_pll_rates = internal global { <{ { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, %struct.rockchip_pll_rate_table }>, [484 x i8] } { <{ { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, { i32, { %struct.anon.7, [8 x i8] } }, %struct.rockchip_pll_rate_table }> <{ { i32, { %struct.anon.7, [8 x i8] } } { i32 -2086967296, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 92, i32 1, i32 46 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 -2110967296, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 91, i32 1, i32 45 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 -2134967296, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 90, i32 1, i32 45 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 2136000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 89, i32 1, i32 44 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 2112000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 88, i32 1, i32 44 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 2088000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 87, i32 1, i32 43 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 2064000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 86, i32 1, i32 43 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 2040000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 85, i32 1, i32 42 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 2016000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 84, i32 1, i32 42 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1992000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 83, i32 1, i32 41 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1968000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 82, i32 1, i32 41 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1944000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 81, i32 1, i32 40 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1920000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 80, i32 1, i32 40 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1896000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 79, i32 1, i32 39 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1872000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 78, i32 1, i32 39 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1848000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 77, i32 1, i32 38 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1824000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 76, i32 1, i32 38 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1800000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 75, i32 1, i32 37 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1776000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 74, i32 1, i32 37 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1752000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 73, i32 1, i32 36 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1728000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 72, i32 1, i32 36 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1704000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 71, i32 1, i32 35 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1680000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 70, i32 1, i32 35 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1656000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 69, i32 1, i32 34 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1632000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 68, i32 1, i32 34 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1608000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 67, i32 1, i32 33 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1560000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 65, i32 1, i32 32 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1512000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 63, i32 1, i32 31 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1488000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 62, i32 1, i32 31 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1464000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 61, i32 1, i32 30 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1440000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 60, i32 1, i32 30 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1416000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 59, i32 1, i32 29 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1392000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 58, i32 1, i32 29 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1368000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 57, i32 1, i32 28 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1344000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 56, i32 1, i32 28 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1320000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 55, i32 1, i32 27 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1296000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 54, i32 1, i32 27 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1272000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 53, i32 1, i32 26 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1248000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 52, i32 1, i32 26 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1224000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 51, i32 1, i32 25 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1200000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 50, i32 1, i32 25 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1188000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 2, i32 99, i32 1, i32 49 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1176000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 49, i32 1, i32 24 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1128000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 47, i32 1, i32 23 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1104000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 46, i32 1, i32 23 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 1008000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 84, i32 2, i32 42 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 912000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 76, i32 2, i32 38 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 891000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 8, i32 594, i32 2, i32 297 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 888000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 74, i32 2, i32 37 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 816000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 68, i32 2, i32 34 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 798000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 2, i32 133, i32 2, i32 66 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 792000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 66, i32 2, i32 33 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 768000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 64, i32 2, i32 32 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 742500000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 8, i32 495, i32 2, i32 247 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 696000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 58, i32 2, i32 29 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 600000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 50, i32 2, i32 25 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 594000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 2, i32 198, i32 4, i32 99 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 552000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 46, i32 2, i32 23 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 504000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 84, i32 4, i32 42 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 456000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 76, i32 4, i32 38 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 408000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 68, i32 4, i32 34 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 400000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 3, i32 100, i32 2, i32 50 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 384000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 2, i32 128, i32 4, i32 64 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 360000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 60, i32 4, i32 30 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 312000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 52, i32 4, i32 26 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 300000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 50, i32 4, i32 25 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 297000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 2, i32 198, i32 8, i32 99 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 252000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 84, i32 8, i32 42 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 216000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 72, i32 8, i32 36 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 148500000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 2, i32 99, i32 8, i32 49 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 126000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 84, i32 16, i32 42 }, [8 x i8] undef } }, { i32, { %struct.anon.7, [8 x i8] } } { i32 48000000, { %struct.anon.7, [8 x i8] } { %struct.anon.7 { i32 1, i32 64, i32 32, i32 32 }, [8 x i8] undef } }, %struct.rockchip_pll_rate_table zeroinitializer }>, [484 x i8] zeroinitializer }, align 32
@.compoundliteral.251 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str], [28 x i8] zeroinitializer }, align 32
@div_aclk_cpu_t = internal global { [6 x %struct.clk_div_table], [48 x i8] } { [6 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.252 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.253 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hclk_ahb2apb\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.255 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.29], [28 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"core_l2c\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.257 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.20], [28 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dclk_lcdc0_src\00", [17 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dclk_lcdc0\00", [21 x i8] zeroinitializer }, align 32
@mux_rk3066_lcdc0_p = internal constant [2 x ptr] [ptr @.str.258, ptr @.str.317], section ".init.rodata", align 4
@.str.260 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dclk_lcdc1_src\00", [17 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dclk_lcdc1\00", [21 x i8] zeroinitializer }, align 32
@mux_rk3066_lcdc1_p = internal constant [2 x ptr] [ptr @.str.260, ptr @.str.317], section ".init.rodata", align 4
@.str.262 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cif1_pre\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.263 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.40], [28 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_cif1\00", [22 x i8] zeroinitializer }, align 32
@mux_sclk_cif1_p = internal constant [2 x ptr] [ptr @.str.262, ptr @.str.50], section ".init.rodata", align 4
@.str.265 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclkin_cif1\00", [20 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ext_cif1\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.267 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.266], [28 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_cif1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.269 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.265], [28 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aclk_gpu_src\00", [19 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_gpu\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.272 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.270], [28 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer2\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.274 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.50], [28 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_tsadc\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.276 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.50], [28 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s0_pre\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.278 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.69], [28 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s0_frac\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.280 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.277], [28 x i8] zeroinitializer }, align 32
@rk3066a_i2s0_fracmux = internal global %struct.rockchip_clk_branch { i32 75, i32 1, ptr @.str.318, ptr @mux_sclk_i2s0_p, i8 3, i32 4, i32 76, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.281 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s1_pre\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.282 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.69], [28 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s1_frac\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.284 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.281], [28 x i8] zeroinitializer }, align 32
@rk3066a_i2s1_fracmux = internal global %struct.rockchip_clk_branch { i32 76, i32 1, ptr @.str.319, ptr @mux_sclk_i2s1_p, i8 3, i32 4, i32 80, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.285 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s2_pre\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.286 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.69], [28 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s2_frac\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.288 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.285], [28 x i8] zeroinitializer }, align 32
@rk3066a_i2s2_fracmux = internal global %struct.rockchip_clk_branch { i32 77, i32 1, ptr @.str.320, ptr @mux_sclk_i2s2_p, i8 3, i32 4, i32 84, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.289 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_i2s0\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.290 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_i2s1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.292 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_i2s2\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.294 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_cif1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.296 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_hdmi\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.298 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hclk_usbotg1\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.300 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_cif1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.302 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.167], [28 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_timer1\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.304 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_timer2\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.306 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio6\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.308 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_uart0\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.310 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_uart1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.312 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio4\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.314 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_tsadc\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.316 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xin27m\00", [25 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_i2s0\00", [22 x i8] zeroinitializer }, align 32
@mux_sclk_i2s0_p = internal constant [3 x ptr] [ptr @.str.277, ptr @.str.279, ptr @.str.49], section ".init.rodata", align 4
@.str.319 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_i2s1\00", [22 x i8] zeroinitializer }, align 32
@mux_sclk_i2s1_p = internal constant [3 x ptr] [ptr @.str.281, ptr @.str.283, ptr @.str.49], section ".init.rodata", align 4
@.str.320 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_i2s2\00", [22 x i8] zeroinitializer }, align 32
@mux_sclk_i2s2_p = internal constant [3 x ptr] [ptr @.str.285, ptr @.str.287, ptr @.str.49], section ".init.rodata", align 4
@rk3188_pll_clks = internal global [4 x %struct.rockchip_pll_clock] [%struct.rockchip_pll_clock { i32 1, ptr @.str.248, ptr @mux_pll_p, i8 2, i32 64, i32 0, i32 64, i32 0, i32 6, i32 1, i8 0, ptr @rk3188_pll_rates }, %struct.rockchip_pll_clock { i32 3, ptr @.str.239, ptr @mux_pll_p, i8 2, i32 64, i32 32, i32 64, i32 8, i32 7, i32 1, i8 1, ptr @rk3188_pll_rates }, %struct.rockchip_pll_clock { i32 2, ptr @.str.240, ptr @mux_pll_p, i8 2, i32 64, i32 16, i32 64, i32 4, i32 5, i32 1, i8 0, ptr null }, %struct.rockchip_pll_clock { i32 4, ptr @.str.8, ptr @mux_pll_p, i8 2, i32 64, i32 48, i32 64, i32 12, i32 8, i32 1, i8 1, ptr @rk3188_pll_rates }], section ".init.data", align 4
@rk3188_clk_branches = internal global [30 x %struct.rockchip_clk_branch] [%struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.326, ptr @.compoundliteral.327, i8 1, i32 8, i32 72, i8 0, i8 0, i8 0, i32 0, i8 3, i8 3, i8 40, ptr @div_rk3188_aclk_core_t, i32 208, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.21, ptr @mux_aclk_cpu_p, i8 2, i32 128, i32 68, i8 5, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.24, ptr @.compoundliteral.328, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 12, i8 2, i8 10, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.29, ptr @.compoundliteral.329, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 8, i8 2, i8 10, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.254, ptr @.compoundliteral.330, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 14, i8 2, i8 10, ptr null, i32 224, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 6, i32 5, ptr @.str.256, ptr @.compoundliteral.331, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.34, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 108, i8 15, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 216, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 190, i32 0, ptr @.str.259, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 176, i8 0, i8 1, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 220, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 191, i32 0, ptr @.str.261, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 180, i8 0, i8 1, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 220, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.270, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 204, i8 7, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 197, i32 5, ptr @.str.271, ptr @.compoundliteral.332, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 86, i32 5, ptr @.str.273, ptr @.compoundliteral.333, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 87, i32 5, ptr @.str.334, ptr @.compoundliteral.335, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 88, i32 5, ptr @.str.336, ptr @.compoundliteral.337, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 89, i32 5, ptr @.str.338, ptr @.compoundliteral.339, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 90, i32 5, ptr @.str.340, ptr @.compoundliteral.341, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.342, ptr @mux_hsicphy_p, i8 4, i32 0, i32 188, i8 0, i8 2, i8 8, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.343, ptr @.compoundliteral.344, i8 1, i32 0, i32 112, i8 0, i8 0, i8 0, i32 0, i8 8, i8 6, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.69, ptr @mux_pll_src_gpll_cpll_p, i8 2, i32 0, i32 76, i8 15, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.277, ptr @.compoundliteral.345, i8 1, i32 0, i32 80, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 208, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.279, ptr @.compoundliteral.346, i8 1, i32 4, i32 96, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 208, i8 10, i8 3, ptr @rk3188_i2s0_fracmux }, %struct.rockchip_clk_branch { i32 454, i32 5, ptr @.str.289, ptr @.compoundliteral.347, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.348, ptr @.compoundliteral.349, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.350, ptr @.compoundliteral.351, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 457, i32 5, ptr @.str.299, ptr @.compoundliteral.352, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 458, i32 5, ptr @.str.353, ptr @.compoundliteral.354, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 325, i32 5, ptr @.str.355, ptr @.compoundliteral.356, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 332, i32 5, ptr @.str.309, ptr @.compoundliteral.357, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 333, i32 5, ptr @.str.311, ptr @.compoundliteral.358, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 194, i32 5, ptr @.str.359, ptr @.compoundliteral.360, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 13, i8 3, ptr null }], section ".init.data", align 4
@rk3188_cpuclk_data = internal constant { %struct.rockchip_cpuclk_reg_data, [48 x i8] } { %struct.rockchip_cpuclk_reg_data { [4 x i32] [i32 68, i32 0, i32 0, i32 0], [4 x i8] c"\09\00\00\00", [4 x i32] [i32 31, i32 0, i32 0, i32 0], i32 1, i8 1, i8 0, i8 8, i32 1 }, [48 x i8] zeroinitializer }, align 32
@rk3188_cpuclk_rates = internal global [8 x %struct.rockchip_cpuclk_rate_table] [%struct.rockchip_cpuclk_rate_table { i32 1608000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 3670040 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1416000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 3670040 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1200000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 3670040 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1008000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 3670040 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 816000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 3670040 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 600000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12582976 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 3670040 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 504000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12582976 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 3670040 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 312000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12582912 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 3670024 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }], section ".init.data", align 4
@rk3188a_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @.str.322, ptr @.str.3, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: could not reparent aclk_cpu_pre to gpll\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rk3188a_clk_init\00", [47 x i8] zeroinitializer }, align 32
@rk3188a_clk_init._entry_ptr = internal global ptr @rk3188a_clk_init._entry, section ".printk_index", align 4
@rk3188a_clk_init._entry.323 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.322, ptr @.str.3, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014%s: missing clocks to reparent aclk_cpu_pre to gpll\0A\00", [41 x i8] zeroinitializer }, align 32
@rk3188a_clk_init._entry_ptr.325 = internal global ptr @rk3188a_clk_init._entry.323, section ".printk_index", align 4
@.str.326 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_core\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.327 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str], [28 x i8] zeroinitializer }, align 32
@div_rk3188_aclk_core_t = internal global { [6 x %struct.clk_div_table], [48 x i8] } { [6 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mux_aclk_cpu_p = internal constant [2 x ptr] [ptr @.str.248, ptr @.str.8], section ".init.rodata", align 4
@.compoundliteral.328 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.329 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.330 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.29], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.331 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.332 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.270], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.333 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.50], [28 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer3\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.335 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.50], [28 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer4\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.337 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.50], [28 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer5\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.339 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.50], [28 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer6\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.341 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.50], [28 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sclk_hsicphy_480m\00", [46 x i8] zeroinitializer }, align 32
@mux_hsicphy_p = internal constant [4 x ptr] [ptr @.str.361, ptr @.str.362, ptr @.str.8, ptr @.str.239], section ".init.rodata", align 4
@.str.343 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sclk_hsicphy_12m\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.344 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.342], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.345 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.69], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.346 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.277], [28 x i8] zeroinitializer }, align 32
@rk3188_i2s0_fracmux = internal global %struct.rockchip_clk_branch { i32 75, i32 1, ptr @.str.318, ptr @mux_sclk_i2s0_p, i8 3, i32 4, i32 80, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.compoundliteral.347 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_imem0\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.349 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_imem1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.351 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.28], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.352 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_hsic\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.354 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_timer3\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.356 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.357 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.254], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.358 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.254], [28 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_gps\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.360 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.33], [28 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sclk_otgphy0_480m\00", [46 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sclk_otgphy1_480m\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 802, i32 44 }
@___asan_gen_.366 = private unnamed_addr constant [19 x i8] c"rk3066_cpuclk_data\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 147, i32 46 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 767, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 773, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 280, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 283, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [16 x i8] c"div_core_peri_t\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 243, i32 29 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 287, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 290, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 292, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 295, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 298, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 300, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 304, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 307, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 309, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 311, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 314, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 317, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 321, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 323, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 326, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 330, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 332, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 335, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 338, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 340, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 343, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 349, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 351, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 354, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 357, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 359, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 362, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 365, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 369, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 372, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 376, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 379, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 388, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 391, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 394, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 398, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 401, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 404, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 408, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 410, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 413, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 417, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 420, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 424, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 427, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 431, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 434, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 439, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 441, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 442, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 445, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 448, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 449, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 450, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 453, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 454, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 455, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 457, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 458, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 459, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 460, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 461, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 462, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 465, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 466, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 467, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 468, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 469, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 470, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 471, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 472, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant [21 x i8] c".compoundliteral.150\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 473, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 474, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 475, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant [21 x i8] c".compoundliteral.156\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 476, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 479, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 480, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 481, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 482, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 485, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant [21 x i8] c".compoundliteral.168\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 486, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 487, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 490, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 491, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 494, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 495, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant [21 x i8] c".compoundliteral.180\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 496, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 497, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 498, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant [21 x i8] c".compoundliteral.186\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 499, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant [21 x i8] c".compoundliteral.188\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 500, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 501, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant [21 x i8] c".compoundliteral.192\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 502, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 503, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant [21 x i8] c".compoundliteral.196\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 504, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant [21 x i8] c".compoundliteral.198\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 505, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant [21 x i8] c".compoundliteral.200\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 506, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant [21 x i8] c".compoundliteral.202\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 507, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant [21 x i8] c".compoundliteral.204\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 510, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant [21 x i8] c".compoundliteral.206\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 511, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant [21 x i8] c".compoundliteral.208\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 512, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant [21 x i8] c".compoundliteral.210\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 513, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant [21 x i8] c".compoundliteral.212\00", align 1
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 514, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant [21 x i8] c".compoundliteral.214\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 517, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant [21 x i8] c".compoundliteral.216\00", align 1
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 518, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant [21 x i8] c".compoundliteral.218\00", align 1
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 519, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant [21 x i8] c".compoundliteral.220\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 520, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant [21 x i8] c".compoundliteral.222\00", align 1
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 521, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant [21 x i8] c".compoundliteral.224\00", align 1
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 522, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant [21 x i8] c".compoundliteral.226\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 523, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant [21 x i8] c".compoundliteral.228\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 524, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant [21 x i8] c".compoundliteral.230\00", align 1
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 525, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant [21 x i8] c".compoundliteral.232\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 526, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant [21 x i8] c".compoundliteral.234\00", align 1
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 527, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant [21 x i8] c".compoundliteral.236\00", align 1
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 528, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant [21 x i8] c".compoundliteral.238\00", align 1
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 202, i32 36 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 200, i32 26 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 213, i32 41 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 211, i32 57 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 256, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 260, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 264, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 268, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 272, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 216, i32 11 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 198, i32 33 }
@___asan_gen_.910 = private unnamed_addr constant [17 x i8] c"rk3188_pll_rates\00", align 1
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 22, i32 39 }
@___asan_gen_.913 = private unnamed_addr constant [21 x i8] c".compoundliteral.251\00", align 1
@___asan_gen_.914 = private unnamed_addr constant [15 x i8] c"div_aclk_cpu_t\00", align 1
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 537, i32 29 }
@___asan_gen_.917 = private unnamed_addr constant [21 x i8] c".compoundliteral.252\00", align 1
@___asan_gen_.918 = private unnamed_addr constant [21 x i8] c".compoundliteral.253\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 567, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant [21 x i8] c".compoundliteral.255\00", align 1
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 572, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant [21 x i8] c".compoundliteral.257\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 579, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 582, i32 2 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 584, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 587, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 590, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant [21 x i8] c".compoundliteral.263\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 593, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 596, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant [21 x i8] c".compoundliteral.267\00", align 1
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 598, i32 2 }
@___asan_gen_.956 = private unnamed_addr constant [21 x i8] c".compoundliteral.269\00", align 1
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 601, i32 2 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 604, i32 2 }
@___asan_gen_.963 = private unnamed_addr constant [21 x i8] c".compoundliteral.272\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 607, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant [21 x i8] c".compoundliteral.274\00", align 1
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 610, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant [21 x i8] c".compoundliteral.276\00", align 1
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 616, i32 2 }
@___asan_gen_.975 = private unnamed_addr constant [21 x i8] c".compoundliteral.278\00", align 1
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 619, i32 2 }
@___asan_gen_.979 = private unnamed_addr constant [21 x i8] c".compoundliteral.280\00", align 1
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 623, i32 2 }
@___asan_gen_.983 = private unnamed_addr constant [21 x i8] c".compoundliteral.282\00", align 1
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 626, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant [21 x i8] c".compoundliteral.284\00", align 1
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 630, i32 2 }
@___asan_gen_.991 = private unnamed_addr constant [21 x i8] c".compoundliteral.286\00", align 1
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 633, i32 2 }
@___asan_gen_.995 = private unnamed_addr constant [21 x i8] c".compoundliteral.288\00", align 1
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 638, i32 2 }
@___asan_gen_.999 = private unnamed_addr constant [21 x i8] c".compoundliteral.290\00", align 1
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 639, i32 2 }
@___asan_gen_.1003 = private unnamed_addr constant [21 x i8] c".compoundliteral.292\00", align 1
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 640, i32 2 }
@___asan_gen_.1007 = private unnamed_addr constant [21 x i8] c".compoundliteral.294\00", align 1
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 641, i32 2 }
@___asan_gen_.1011 = private unnamed_addr constant [21 x i8] c".compoundliteral.296\00", align 1
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 642, i32 2 }
@___asan_gen_.1015 = private unnamed_addr constant [21 x i8] c".compoundliteral.298\00", align 1
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 644, i32 2 }
@___asan_gen_.1019 = private unnamed_addr constant [21 x i8] c".compoundliteral.300\00", align 1
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 647, i32 2 }
@___asan_gen_.1023 = private unnamed_addr constant [21 x i8] c".compoundliteral.302\00", align 1
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 649, i32 2 }
@___asan_gen_.1027 = private unnamed_addr constant [21 x i8] c".compoundliteral.304\00", align 1
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 650, i32 2 }
@___asan_gen_.1031 = private unnamed_addr constant [21 x i8] c".compoundliteral.306\00", align 1
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 651, i32 2 }
@___asan_gen_.1035 = private unnamed_addr constant [21 x i8] c".compoundliteral.308\00", align 1
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 652, i32 2 }
@___asan_gen_.1039 = private unnamed_addr constant [21 x i8] c".compoundliteral.310\00", align 1
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 653, i32 2 }
@___asan_gen_.1043 = private unnamed_addr constant [21 x i8] c".compoundliteral.312\00", align 1
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 655, i32 2 }
@___asan_gen_.1047 = private unnamed_addr constant [21 x i8] c".compoundliteral.314\00", align 1
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 656, i32 2 }
@___asan_gen_.1051 = private unnamed_addr constant [21 x i8] c".compoundliteral.316\00", align 1
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 531, i32 49 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 547, i32 2 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 551, i32 2 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 555, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant [19 x i8] c"rk3188_cpuclk_data\00", align 1
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 187, i32 46 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 841, i32 4 }
@___asan_gen_.1076 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 846, i32 3 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 676, i32 2 }
@___asan_gen_.1085 = private unnamed_addr constant [21 x i8] c".compoundliteral.327\00", align 1
@___asan_gen_.1086 = private unnamed_addr constant [23 x i8] c"div_rk3188_aclk_core_t\00", align 1
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 659, i32 29 }
@___asan_gen_.1089 = private unnamed_addr constant [21 x i8] c".compoundliteral.328\00", align 1
@___asan_gen_.1090 = private unnamed_addr constant [21 x i8] c".compoundliteral.329\00", align 1
@___asan_gen_.1091 = private unnamed_addr constant [21 x i8] c".compoundliteral.330\00", align 1
@___asan_gen_.1092 = private unnamed_addr constant [21 x i8] c".compoundliteral.331\00", align 1
@___asan_gen_.1093 = private unnamed_addr constant [21 x i8] c".compoundliteral.332\00", align 1
@___asan_gen_.1094 = private unnamed_addr constant [21 x i8] c".compoundliteral.333\00", align 1
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 712, i32 2 }
@___asan_gen_.1098 = private unnamed_addr constant [21 x i8] c".compoundliteral.335\00", align 1
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 713, i32 2 }
@___asan_gen_.1102 = private unnamed_addr constant [21 x i8] c".compoundliteral.337\00", align 1
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 714, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant [21 x i8] c".compoundliteral.339\00", align 1
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 715, i32 2 }
@___asan_gen_.1110 = private unnamed_addr constant [21 x i8] c".compoundliteral.341\00", align 1
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 717, i32 2 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 720, i32 2 }
@___asan_gen_.1117 = private unnamed_addr constant [21 x i8] c".compoundliteral.344\00", align 1
@___asan_gen_.1118 = private unnamed_addr constant [21 x i8] c".compoundliteral.345\00", align 1
@___asan_gen_.1119 = private unnamed_addr constant [21 x i8] c".compoundliteral.346\00", align 1
@___asan_gen_.1120 = private unnamed_addr constant [21 x i8] c".compoundliteral.347\00", align 1
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 734, i32 2 }
@___asan_gen_.1124 = private unnamed_addr constant [21 x i8] c".compoundliteral.349\00", align 1
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 735, i32 2 }
@___asan_gen_.1128 = private unnamed_addr constant [21 x i8] c".compoundliteral.351\00", align 1
@___asan_gen_.1129 = private unnamed_addr constant [21 x i8] c".compoundliteral.352\00", align 1
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 739, i32 2 }
@___asan_gen_.1133 = private unnamed_addr constant [21 x i8] c".compoundliteral.354\00", align 1
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 741, i32 2 }
@___asan_gen_.1137 = private unnamed_addr constant [21 x i8] c".compoundliteral.356\00", align 1
@___asan_gen_.1138 = private unnamed_addr constant [21 x i8] c".compoundliteral.357\00", align 1
@___asan_gen_.1139 = private unnamed_addr constant [21 x i8] c".compoundliteral.358\00", align 1
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 746, i32 2 }
@___asan_gen_.1143 = private unnamed_addr constant [21 x i8] c".compoundliteral.360\00", align 1
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 668, i32 27 }
@___asan_gen_.1147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1148 = private constant [37 x i8] c"../drivers/clk/rockchip/clk-rk3188.c\00", align 1
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1148, i32 668, i32 48 }
@llvm.compiler.used = appending global [376 x ptr] [ptr @__of_table_rk3066a_cru, ptr @__of_table_rk3188_cru, ptr @__of_table_rk3188a_cru, ptr @rk3188_common_clk_init._entry, ptr @rk3188_common_clk_init._entry.4, ptr @rk3188_common_clk_init._entry_ptr, ptr @rk3188_common_clk_init._entry_ptr.6, ptr @rk3188a_clk_init._entry, ptr @rk3188a_clk_init._entry.323, ptr @rk3188a_clk_init._entry_ptr, ptr @rk3188a_clk_init._entry_ptr.325, ptr @.str, ptr @rk3066_cpuclk_data, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.compoundliteral, ptr @.str.9, ptr @.compoundliteral.10, ptr @div_core_peri_t, ptr @.str.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.str.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.str.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.str.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @.compoundliteral.99, ptr @.str.100, ptr @.compoundliteral.101, ptr @.str.102, ptr @.str.103, ptr @.compoundliteral.104, ptr @.str.105, ptr @.compoundliteral.106, ptr @.str.107, ptr @.compoundliteral.108, ptr @.str.109, ptr @.compoundliteral.110, ptr @.str.111, ptr @.compoundliteral.112, ptr @.str.113, ptr @.compoundliteral.114, ptr @.str.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.str.121, ptr @.compoundliteral.122, ptr @.str.123, ptr @.compoundliteral.124, ptr @.str.125, ptr @.compoundliteral.126, ptr @.str.127, ptr @.compoundliteral.128, ptr @.str.129, ptr @.compoundliteral.130, ptr @.str.131, ptr @.compoundliteral.132, ptr @.str.133, ptr @.compoundliteral.134, ptr @.str.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @.compoundliteral.138, ptr @.str.139, ptr @.compoundliteral.140, ptr @.str.141, ptr @.compoundliteral.142, ptr @.str.143, ptr @.compoundliteral.144, ptr @.str.145, ptr @.compoundliteral.146, ptr @.str.147, ptr @.compoundliteral.148, ptr @.str.149, ptr @.compoundliteral.150, ptr @.str.151, ptr @.compoundliteral.152, ptr @.str.153, ptr @.compoundliteral.154, ptr @.str.155, ptr @.compoundliteral.156, ptr @.str.157, ptr @.compoundliteral.158, ptr @.str.159, ptr @.compoundliteral.160, ptr @.str.161, ptr @.compoundliteral.162, ptr @.str.163, ptr @.compoundliteral.164, ptr @.str.165, ptr @.compoundliteral.166, ptr @.str.167, ptr @.compoundliteral.168, ptr @.str.169, ptr @.compoundliteral.170, ptr @.str.171, ptr @.compoundliteral.172, ptr @.str.173, ptr @.compoundliteral.174, ptr @.str.175, ptr @.compoundliteral.176, ptr @.str.177, ptr @.compoundliteral.178, ptr @.str.179, ptr @.compoundliteral.180, ptr @.str.181, ptr @.compoundliteral.182, ptr @.str.183, ptr @.compoundliteral.184, ptr @.str.185, ptr @.compoundliteral.186, ptr @.str.187, ptr @.compoundliteral.188, ptr @.str.189, ptr @.compoundliteral.190, ptr @.str.191, ptr @.compoundliteral.192, ptr @.str.193, ptr @.compoundliteral.194, ptr @.str.195, ptr @.compoundliteral.196, ptr @.str.197, ptr @.compoundliteral.198, ptr @.str.199, ptr @.compoundliteral.200, ptr @.str.201, ptr @.compoundliteral.202, ptr @.str.203, ptr @.compoundliteral.204, ptr @.str.205, ptr @.compoundliteral.206, ptr @.str.207, ptr @.compoundliteral.208, ptr @.str.209, ptr @.compoundliteral.210, ptr @.str.211, ptr @.compoundliteral.212, ptr @.str.213, ptr @.compoundliteral.214, ptr @.str.215, ptr @.compoundliteral.216, ptr @.str.217, ptr @.compoundliteral.218, ptr @.str.219, ptr @.compoundliteral.220, ptr @.str.221, ptr @.compoundliteral.222, ptr @.str.223, ptr @.compoundliteral.224, ptr @.str.225, ptr @.compoundliteral.226, ptr @.str.227, ptr @.compoundliteral.228, ptr @.str.229, ptr @.compoundliteral.230, ptr @.str.231, ptr @.compoundliteral.232, ptr @.str.233, ptr @.compoundliteral.234, ptr @.str.235, ptr @.compoundliteral.236, ptr @.str.237, ptr @.compoundliteral.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @rk3188_pll_rates, ptr @.compoundliteral.251, ptr @div_aclk_cpu_t, ptr @.compoundliteral.252, ptr @.compoundliteral.253, ptr @.str.254, ptr @.compoundliteral.255, ptr @.str.256, ptr @.compoundliteral.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.compoundliteral.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.compoundliteral.267, ptr @.str.268, ptr @.compoundliteral.269, ptr @.str.270, ptr @.str.271, ptr @.compoundliteral.272, ptr @.str.273, ptr @.compoundliteral.274, ptr @.str.275, ptr @.compoundliteral.276, ptr @.str.277, ptr @.compoundliteral.278, ptr @.str.279, ptr @.compoundliteral.280, ptr @.str.281, ptr @.compoundliteral.282, ptr @.str.283, ptr @.compoundliteral.284, ptr @.str.285, ptr @.compoundliteral.286, ptr @.str.287, ptr @.compoundliteral.288, ptr @.str.289, ptr @.compoundliteral.290, ptr @.str.291, ptr @.compoundliteral.292, ptr @.str.293, ptr @.compoundliteral.294, ptr @.str.295, ptr @.compoundliteral.296, ptr @.str.297, ptr @.compoundliteral.298, ptr @.str.299, ptr @.compoundliteral.300, ptr @.str.301, ptr @.compoundliteral.302, ptr @.str.303, ptr @.compoundliteral.304, ptr @.str.305, ptr @.compoundliteral.306, ptr @.str.307, ptr @.compoundliteral.308, ptr @.str.309, ptr @.compoundliteral.310, ptr @.str.311, ptr @.compoundliteral.312, ptr @.str.313, ptr @.compoundliteral.314, ptr @.str.315, ptr @.compoundliteral.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @rk3188_cpuclk_data, ptr @.str.321, ptr @.str.322, ptr @.str.324, ptr @.str.326, ptr @.compoundliteral.327, ptr @div_rk3188_aclk_core_t, ptr @.compoundliteral.328, ptr @.compoundliteral.329, ptr @.compoundliteral.330, ptr @.compoundliteral.331, ptr @.compoundliteral.332, ptr @.compoundliteral.333, ptr @.str.334, ptr @.compoundliteral.335, ptr @.str.336, ptr @.compoundliteral.337, ptr @.str.338, ptr @.compoundliteral.339, ptr @.str.340, ptr @.compoundliteral.341, ptr @.str.342, ptr @.str.343, ptr @.compoundliteral.344, ptr @.compoundliteral.345, ptr @.compoundliteral.346, ptr @.compoundliteral.347, ptr @.str.348, ptr @.compoundliteral.349, ptr @.str.350, ptr @.compoundliteral.351, ptr @.compoundliteral.352, ptr @.str.353, ptr @.compoundliteral.354, ptr @.str.355, ptr @.compoundliteral.356, ptr @.compoundliteral.357, ptr @.compoundliteral.358, ptr @.str.359, ptr @.compoundliteral.360, ptr @.str.361, ptr @.str.362], section "llvm.metadata"
@0 = internal global [369 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066_cpuclk_data to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3188_common_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3188_common_clk_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @div_core_peri_t to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.150 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.156 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.168 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.180 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.186 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.188 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.192 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.196 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.198 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.200 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.202 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.204 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.206 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.208 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.210 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.212 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.214 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.216 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.218 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.220 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.222 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.224 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.226 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.228 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.230 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.232 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.234 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.236 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.238 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3188_pll_rates to i32), i32 2044, i32 2528, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.251 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @div_aclk_cpu_t to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.252 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.253 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.255 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.257 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.263 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.267 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.269 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.272 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.274 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.276 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.278 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.280 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.282 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.284 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.286 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.288 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.290 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.292 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.294 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.296 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.298 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.300 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.302 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.304 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.306 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.308 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.310 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.312 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.314 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.316 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3188_cpuclk_data to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3188a_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3188a_clk_init._entry.323 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.327 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @div_rk3188_aclk_core_t to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.328 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.329 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.330 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.331 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.332 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.333 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.335 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.337 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.339 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.341 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.344 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.345 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.346 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.347 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.349 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.351 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.352 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.354 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.356 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.357 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.358 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.360 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rk3066a_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @rk3188_common_clk_init(ptr noundef %np) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @rockchip_clk_register_plls(ptr noundef %call, ptr noundef nonnull @rk3066_pll_clks, i32 noundef 4, i32 noundef 348) #3
  tail call void @rockchip_clk_register_branches(ptr noundef %call, ptr noundef nonnull @rk3066a_clk_branches, i32 noundef 39) #3
  tail call void @rockchip_clk_register_armclk(ptr noundef %call, i32 noundef 7, ptr noundef nonnull @.str, ptr noundef nonnull @mux_armclk_p, i8 noundef zeroext 2, ptr noundef nonnull @rk3066_cpuclk_data, ptr noundef nonnull @rk3066_cpuclk_rates, i32 noundef 7) #3
  tail call void @rockchip_clk_protect_critical(ptr noundef nonnull @rk3188_critical_clocks, i32 noundef 8) #3
  tail call void @rockchip_clk_of_add_provider(ptr noundef %np, ptr noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rk3188a_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @rk3188_common_clk_init(ptr noundef %np) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rockchip_clk_register_plls(ptr noundef %call, ptr noundef nonnull @rk3188_pll_clks, i32 noundef 4, i32 noundef 172) #3
  tail call void @rockchip_clk_register_branches(ptr noundef %call, ptr noundef nonnull @rk3188_clk_branches, i32 noundef 30) #3
  tail call void @rockchip_clk_register_armclk(ptr noundef %call, i32 noundef 7, ptr noundef nonnull @.str, ptr noundef nonnull @mux_armclk_p, i8 noundef zeroext 2, ptr noundef nonnull @rk3188_cpuclk_data, ptr noundef nonnull @rk3188_cpuclk_rates, i32 noundef 8) #3
  %call2 = tail call ptr @__clk_lookup(ptr noundef nonnull @.str.21) #3
  %call3 = tail call ptr @__clk_lookup(ptr noundef nonnull @.str.8) #3
  %tobool.not = icmp eq ptr %call2, null
  %tobool4.not = icmp eq ptr %call3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %do.end14, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @clk_get_rate(ptr noundef nonnull %call2) #3
  %call7 = tail call i32 @clk_set_parent(ptr noundef nonnull %call2, ptr noundef nonnull %call3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.321, ptr noundef nonnull @.str.322) #7
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then5.if.end10_crit_edge
  %call11 = tail call i32 @clk_set_rate(ptr noundef nonnull %call2, i32 noundef %call6) #3
  br label %if.end17

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.324, ptr noundef nonnull @.str.322) #7
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.end10
  tail call void @rockchip_clk_protect_critical(ptr noundef nonnull @rk3188_critical_clocks, i32 noundef 8) #3
  tail call void @rockchip_clk_of_add_provider(ptr noundef %np, ptr noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rk3188_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %rate_table = getelementptr [4 x %struct.rockchip_pll_clock], ptr @rk3188_pll_clks, i32 0, i32 %i.012, i32 11
  %0 = ptrtoint ptr %rate_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %while.cond.preheader

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.cond.preheader:                             ; preds = %for.body
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3.not10 = icmp eq i32 %3, 0
  br i1 %cmp3.not10, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %rate.011 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %nb = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %rate.011, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %nb, align 4
  %incdec.ptr = getelementptr %struct.rockchip_pll_rate_table, ptr %rate.011, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %incdec.ptr, align 4
  %cmp3.not = icmp eq i32 %6, 0
  br i1 %cmp3.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @rk3188a_clk_init(ptr noundef %np) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rk3188_common_clk_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @rockchip_clk_init(ptr noundef %np, ptr noundef nonnull %call, i32 noundef 474) #3
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end8, label %if.end12

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #7
  tail call void @iounmap(ptr noundef nonnull %call) #3
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @rockchip_clk_register_branches(ptr noundef %call3, ptr noundef nonnull @common_clk_branches, i32 noundef 117) #3
  %add.ptr = getelementptr i8, ptr %call, i32 272
  tail call void @rockchip_register_softrst(ptr noundef %np, i32 noundef 9, ptr noundef %add.ptr, i8 noundef zeroext 1) #3
  tail call void @rockchip_register_restart_notifier(ptr noundef %call3, i32 noundef 256, ptr noundef null) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end8, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end8 ], [ %call3, %if.end12 ], [ inttoptr (i32 -12 to ptr), %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_register_plls(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_register_branches(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_register_armclk(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_protect_critical(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_of_add_provider(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rockchip_clk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_register_softrst(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_register_restart_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 369)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 369)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40, !41, !43, !45, !46, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !66, !68, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !90, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !440, !441, !442, !444, !445, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488}
!llvm.module.flags = !{!490, !491, !492, !493, !494, !495, !496, !497}
!llvm.ident = !{!498}

!0 = !{ptr @__of_table_rk3066a_cru, !1, !"__of_table_rk3066a_cru", i1 false, i1 false}
!1 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 810, i32 1}
!2 = !{ptr @__of_table_rk3188a_cru, !3, !"__of_table_rk3188a_cru", i1 false, i1 false}
!3 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 854, i32 1}
!4 = !{ptr @__of_table_rk3188_cru, !5, !"__of_table_rk3188_cru", i1 false, i1 false}
!5 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 876, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 802, i32 44}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 767, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rk3188_common_clk_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @rk3188_common_clk_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 773, i32 3}
!16 = !{ptr @rk3188_common_clk_init._entry.4, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rk3188_common_clk_init._entry_ptr.6, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 280, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 283, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 287, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 290, i32 2}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 292, i32 2}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 295, i32 2}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 298, i32 2}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 300, i32 2}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 304, i32 2}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 307, i32 2}
!40 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 309, i32 2}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 311, i32 2}
!45 = !{ptr @.str.29, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.31, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 314, i32 2}
!48 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 317, i32 2}
!50 = !{ptr @.str.33, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 321, i32 2}
!52 = !{ptr @.str.34, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.36, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 323, i32 2}
!55 = !{ptr @.str.38, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 326, i32 2}
!57 = !{ptr @.str.40, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 330, i32 2}
!59 = !{ptr @.str.41, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 332, i32 2}
!61 = !{ptr @.str.43, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 335, i32 2}
!63 = !{ptr @.str.44, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 338, i32 2}
!65 = !{ptr @.str.45, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.47, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 340, i32 2}
!68 = !{ptr @.str.49, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 343, i32 2}
!70 = !{ptr @.str.50, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.52, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 349, i32 2}
!73 = !{ptr @.str.54, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 351, i32 2}
!75 = !{ptr @.str.56, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 354, i32 2}
!77 = !{ptr @.str.57, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 357, i32 2}
!79 = !{ptr @.str.58, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 359, i32 2}
!81 = !{ptr @.str.60, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 362, i32 2}
!83 = !{ptr @.str.61, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 365, i32 2}
!85 = !{ptr @.str.63, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 369, i32 2}
!87 = !{ptr @.str.64, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.66, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 372, i32 2}
!90 = !{ptr @.str.68, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 376, i32 2}
!92 = !{ptr @.str.69, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.71, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 379, i32 2}
!95 = !{ptr @.str.73, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 388, i32 2}
!97 = !{ptr @.str.75, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 391, i32 2}
!99 = !{ptr @.str.77, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 394, i32 2}
!101 = !{ptr @.str.79, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 398, i32 2}
!103 = !{ptr @.str.81, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 401, i32 2}
!105 = !{ptr @.str.83, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 404, i32 2}
!107 = !{ptr @.str.85, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 408, i32 2}
!109 = !{ptr @.str.86, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 410, i32 2}
!111 = !{ptr @.str.88, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 413, i32 2}
!113 = !{ptr @.str.90, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 417, i32 2}
!115 = !{ptr @.str.92, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 420, i32 2}
!117 = !{ptr @.str.94, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 424, i32 2}
!119 = !{ptr @.str.96, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 427, i32 2}
!121 = !{ptr @.str.98, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 431, i32 2}
!123 = !{ptr @.str.100, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 434, i32 2}
!125 = !{ptr @.str.102, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 439, i32 2}
!127 = !{ptr @.str.103, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.105, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 441, i32 2}
!130 = !{ptr @.str.107, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 442, i32 2}
!132 = !{ptr @.str.109, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 445, i32 2}
!134 = !{ptr @.str.111, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 448, i32 2}
!136 = !{ptr @.str.113, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 449, i32 2}
!138 = !{ptr @.str.115, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 450, i32 2}
!140 = !{ptr @.str.117, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 453, i32 2}
!142 = !{ptr @.str.119, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 454, i32 2}
!144 = !{ptr @.str.121, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 455, i32 2}
!146 = !{ptr @.str.123, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 457, i32 2}
!148 = !{ptr @.str.125, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 458, i32 2}
!150 = !{ptr @.str.127, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 459, i32 2}
!152 = !{ptr @.str.129, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 460, i32 2}
!154 = !{ptr @.str.131, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 461, i32 2}
!156 = !{ptr @.str.133, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 462, i32 2}
!158 = !{ptr @.str.135, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 465, i32 2}
!160 = !{ptr @.str.137, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 466, i32 2}
!162 = !{ptr @.str.139, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 467, i32 2}
!164 = !{ptr @.str.141, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 468, i32 2}
!166 = !{ptr @.str.143, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 469, i32 2}
!168 = !{ptr @.str.145, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 470, i32 2}
!170 = !{ptr @.str.147, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 471, i32 2}
!172 = !{ptr @.str.149, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 472, i32 2}
!174 = !{ptr @.str.151, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 473, i32 2}
!176 = !{ptr @.str.153, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 474, i32 2}
!178 = !{ptr @.str.155, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 475, i32 2}
!180 = !{ptr @.str.157, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 476, i32 2}
!182 = !{ptr @.str.159, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 479, i32 2}
!184 = !{ptr @.str.161, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 480, i32 2}
!186 = !{ptr @.str.163, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 481, i32 2}
!188 = !{ptr @.str.165, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 482, i32 2}
!190 = !{ptr @.str.167, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 485, i32 2}
!192 = !{ptr @.str.169, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 486, i32 2}
!194 = !{ptr @.str.171, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 487, i32 2}
!196 = !{ptr @.str.173, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 490, i32 2}
!198 = !{ptr @.str.175, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 491, i32 2}
!200 = !{ptr @.str.177, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 494, i32 2}
!202 = !{ptr @.str.179, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 495, i32 2}
!204 = !{ptr @.str.181, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 496, i32 2}
!206 = !{ptr @.str.183, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 497, i32 2}
!208 = !{ptr @.str.185, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 498, i32 2}
!210 = !{ptr @.str.187, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 499, i32 2}
!212 = !{ptr @.str.189, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 500, i32 2}
!214 = !{ptr @.str.191, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 501, i32 2}
!216 = !{ptr @.str.193, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 502, i32 2}
!218 = !{ptr @.str.195, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 503, i32 2}
!220 = !{ptr @.str.197, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 504, i32 2}
!222 = !{ptr @.str.199, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 505, i32 2}
!224 = !{ptr @.str.201, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 506, i32 2}
!226 = !{ptr @.str.203, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 507, i32 2}
!228 = !{ptr @.str.205, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 510, i32 2}
!230 = !{ptr @.str.207, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 511, i32 2}
!232 = !{ptr @.str.209, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 512, i32 2}
!234 = !{ptr @.str.211, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 513, i32 2}
!236 = !{ptr @.str.213, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 514, i32 2}
!238 = !{ptr @.str.215, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 517, i32 2}
!240 = !{ptr @.str.217, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 518, i32 2}
!242 = !{ptr @.str.219, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 519, i32 2}
!244 = !{ptr @.str.221, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 520, i32 2}
!246 = !{ptr @.str.223, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 521, i32 2}
!248 = !{ptr @.str.225, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 522, i32 2}
!250 = !{ptr @.str.227, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 523, i32 2}
!252 = !{ptr @.str.229, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 524, i32 2}
!254 = !{ptr @.str.231, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 525, i32 2}
!256 = !{ptr @.str.233, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 526, i32 2}
!258 = !{ptr @.str.235, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 527, i32 2}
!260 = !{ptr @.str.237, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 528, i32 2}
!262 = !{ptr @common_clk_branches, !263, !"common_clk_branches", i1 false, i1 false}
!263 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 275, i32 35}
!264 = !{ptr @div_core_peri_t, !265, !"div_core_peri_t", i1 false, i1 false}
!265 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 243, i32 29}
!266 = !{ptr @.str.239, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 202, i32 36}
!268 = !{ptr @mux_pll_src_cpll_gpll_p, !269, !"mux_pll_src_cpll_gpll_p", i1 false, i1 false}
!269 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 202, i32 1}
!270 = !{ptr @.str.240, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 200, i32 26}
!272 = !{ptr @mux_ddrphy_p, !273, !"mux_ddrphy_p", i1 false, i1 false}
!273 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 200, i32 1}
!274 = !{ptr @mux_sclk_cif0_p, !275, !"mux_sclk_cif0_p", i1 false, i1 false}
!275 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 204, i32 1}
!276 = !{ptr @mux_mac_p, !277, !"mux_mac_p", i1 false, i1 false}
!277 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 212, i32 1}
!278 = !{ptr @.str.241, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 213, i32 41}
!280 = !{ptr @mux_sclk_macref_p, !281, !"mux_sclk_macref_p", i1 false, i1 false}
!281 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 213, i32 1}
!282 = !{ptr @mux_pll_src_gpll_cpll_p, !283, !"mux_pll_src_gpll_cpll_p", i1 false, i1 false}
!283 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 201, i32 1}
!284 = !{ptr @common_hsadc_out_fracmux, !285, !"common_hsadc_out_fracmux", i1 false, i1 false}
!285 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 251, i32 35}
!286 = !{ptr @.str.242, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 211, i32 57}
!288 = !{ptr @mux_sclk_hsadc_p, !289, !"mux_sclk_hsadc_p", i1 false, i1 false}
!289 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 211, i32 1}
!290 = !{ptr @.str.243, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 256, i32 2}
!292 = !{ptr @common_spdif_fracmux, !293, !"common_spdif_fracmux", i1 false, i1 false}
!293 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 255, i32 35}
!294 = !{ptr @mux_sclk_spdif_p, !295, !"mux_sclk_spdif_p", i1 false, i1 false}
!295 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 206, i32 1}
!296 = !{ptr @.str.244, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 260, i32 2}
!298 = !{ptr @common_uart0_fracmux, !299, !"common_uart0_fracmux", i1 false, i1 false}
!299 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 259, i32 35}
!300 = !{ptr @mux_sclk_uart0_p, !301, !"mux_sclk_uart0_p", i1 false, i1 false}
!301 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 207, i32 1}
!302 = !{ptr @.str.245, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 264, i32 2}
!304 = !{ptr @common_uart1_fracmux, !305, !"common_uart1_fracmux", i1 false, i1 false}
!305 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 263, i32 35}
!306 = !{ptr @mux_sclk_uart1_p, !307, !"mux_sclk_uart1_p", i1 false, i1 false}
!307 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 208, i32 1}
!308 = !{ptr @.str.246, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 268, i32 2}
!310 = !{ptr @common_uart2_fracmux, !311, !"common_uart2_fracmux", i1 false, i1 false}
!311 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 267, i32 35}
!312 = !{ptr @mux_sclk_uart2_p, !313, !"mux_sclk_uart2_p", i1 false, i1 false}
!313 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 209, i32 1}
!314 = !{ptr @.str.247, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 272, i32 2}
!316 = !{ptr @common_uart3_fracmux, !317, !"common_uart3_fracmux", i1 false, i1 false}
!317 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 271, i32 35}
!318 = !{ptr @mux_sclk_uart3_p, !319, !"mux_sclk_uart3_p", i1 false, i1 false}
!319 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 210, i32 1}
!320 = !{ptr @.str.248, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 216, i32 11}
!322 = !{ptr @rk3066_pll_clks, !323, !"rk3066_pll_clks", i1 false, i1 false}
!323 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 215, i32 34}
!324 = !{ptr @.str.249, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 198, i32 33}
!326 = !{ptr @mux_pll_p, !327, !"mux_pll_p", i1 false, i1 false}
!327 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 198, i32 1}
!328 = !{ptr @rk3188_pll_rates, !329, !"rk3188_pll_rates", i1 false, i1 false}
!329 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 22, i32 39}
!330 = !{ptr @.str.254, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 567, i32 2}
!332 = !{ptr @.str.256, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 572, i32 2}
!334 = !{ptr @.str.258, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 579, i32 2}
!336 = !{ptr @.str.259, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 582, i32 2}
!338 = !{ptr @.str.260, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 584, i32 2}
!340 = !{ptr @.str.261, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 587, i32 2}
!342 = !{ptr @.str.262, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 590, i32 2}
!344 = !{ptr @.str.264, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 593, i32 2}
!346 = !{ptr @.str.265, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 596, i32 2}
!348 = !{ptr @.str.266, !347, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.268, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 598, i32 2}
!351 = !{ptr @.str.270, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 601, i32 2}
!353 = !{ptr @.str.271, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 604, i32 2}
!355 = !{ptr @.str.273, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 607, i32 2}
!357 = !{ptr @.str.275, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 610, i32 2}
!359 = !{ptr @.str.277, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 616, i32 2}
!361 = !{ptr @.str.279, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 619, i32 2}
!363 = !{ptr @.str.281, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 623, i32 2}
!365 = !{ptr @.str.283, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 626, i32 2}
!367 = !{ptr @.str.285, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 630, i32 2}
!369 = !{ptr @.str.287, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 633, i32 2}
!371 = !{ptr @.str.289, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 638, i32 2}
!373 = !{ptr @.str.291, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 639, i32 2}
!375 = !{ptr @.str.293, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 640, i32 2}
!377 = !{ptr @.str.295, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 641, i32 2}
!379 = !{ptr @.str.297, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 642, i32 2}
!381 = !{ptr @.str.299, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 644, i32 2}
!383 = !{ptr @.str.301, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 647, i32 2}
!385 = !{ptr @.str.303, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 649, i32 2}
!387 = !{ptr @.str.305, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 650, i32 2}
!389 = !{ptr @.str.307, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 651, i32 2}
!391 = !{ptr @.str.309, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 652, i32 2}
!393 = !{ptr @.str.311, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 653, i32 2}
!395 = !{ptr @.str.313, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 655, i32 2}
!397 = !{ptr @.str.315, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 656, i32 2}
!399 = !{ptr @rk3066a_clk_branches, !400, !"rk3066a_clk_branches", i1 false, i1 false}
!400 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 558, i32 35}
!401 = !{ptr @div_aclk_cpu_t, !402, !"div_aclk_cpu_t", i1 false, i1 false}
!402 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 537, i32 29}
!403 = !{ptr @.str.317, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 531, i32 49}
!405 = !{ptr @mux_rk3066_lcdc0_p, !406, !"mux_rk3066_lcdc0_p", i1 false, i1 false}
!406 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 531, i32 1}
!407 = !{ptr @mux_rk3066_lcdc1_p, !408, !"mux_rk3066_lcdc1_p", i1 false, i1 false}
!408 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 532, i32 1}
!409 = !{ptr @mux_sclk_cif1_p, !410, !"mux_sclk_cif1_p", i1 false, i1 false}
!410 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 533, i32 1}
!411 = !{ptr @.str.318, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 547, i32 2}
!413 = !{ptr @rk3066a_i2s0_fracmux, !414, !"rk3066a_i2s0_fracmux", i1 false, i1 false}
!414 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 546, i32 35}
!415 = !{ptr @mux_sclk_i2s0_p, !416, !"mux_sclk_i2s0_p", i1 false, i1 false}
!416 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 205, i32 1}
!417 = !{ptr @.str.319, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 551, i32 2}
!419 = !{ptr @rk3066a_i2s1_fracmux, !420, !"rk3066a_i2s1_fracmux", i1 false, i1 false}
!420 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 550, i32 35}
!421 = !{ptr @mux_sclk_i2s1_p, !422, !"mux_sclk_i2s1_p", i1 false, i1 false}
!422 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 534, i32 1}
!423 = !{ptr @.str.320, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 555, i32 2}
!425 = !{ptr @rk3066a_i2s2_fracmux, !426, !"rk3066a_i2s2_fracmux", i1 false, i1 false}
!426 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 554, i32 35}
!427 = !{ptr @mux_sclk_i2s2_p, !428, !"mux_sclk_i2s2_p", i1 false, i1 false}
!428 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 535, i32 1}
!429 = !{ptr @mux_armclk_p, !430, !"mux_armclk_p", i1 false, i1 false}
!430 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 199, i32 1}
!431 = !{ptr @rk3066_cpuclk_data, !432, !"rk3066_cpuclk_data", i1 false, i1 false}
!432 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 147, i32 46}
!433 = !{ptr @rk3066_cpuclk_rates, !434, !"rk3066_cpuclk_rates", i1 false, i1 false}
!434 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 137, i32 42}
!435 = !{ptr @rk3188_critical_clocks, !436, !"rk3188_critical_clocks", i1 false, i1 false}
!436 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 749, i32 26}
!437 = !{ptr @.str.321, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 841, i32 4}
!439 = !{ptr @.str.322, !438, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @rk3188a_clk_init._entry, !438, !"_entry", i1 false, i1 false}
!441 = !{ptr @rk3188a_clk_init._entry_ptr, !438, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.324, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 846, i32 3}
!444 = !{ptr @rk3188a_clk_init._entry.323, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @rk3188a_clk_init._entry_ptr.325, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @rk3188_pll_clks, !447, !"rk3188_pll_clks", i1 false, i1 false}
!447 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 226, i32 34}
!448 = !{ptr @.str.326, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 676, i32 2}
!450 = !{ptr @.str.334, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 712, i32 2}
!452 = !{ptr @.str.336, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 713, i32 2}
!454 = !{ptr @.str.338, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 714, i32 2}
!456 = !{ptr @.str.340, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 715, i32 2}
!458 = !{ptr @.str.342, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 717, i32 2}
!460 = !{ptr @.str.343, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 720, i32 2}
!462 = !{ptr @.str.348, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 734, i32 2}
!464 = !{ptr @.str.350, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 735, i32 2}
!466 = !{ptr @.str.353, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 739, i32 2}
!468 = !{ptr @.str.355, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 741, i32 2}
!470 = !{ptr @.str.359, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 746, i32 2}
!472 = !{ptr @rk3188_clk_branches, !473, !"rk3188_clk_branches", i1 false, i1 false}
!473 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 675, i32 35}
!474 = !{ptr @div_rk3188_aclk_core_t, !475, !"div_rk3188_aclk_core_t", i1 false, i1 false}
!475 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 659, i32 29}
!476 = !{ptr @mux_aclk_cpu_p, !477, !"mux_aclk_cpu_p", i1 false, i1 false}
!477 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 203, i32 1}
!478 = !{ptr @.str.361, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 668, i32 27}
!480 = !{ptr @.str.362, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 668, i32 48}
!482 = !{ptr @mux_hsicphy_p, !483, !"mux_hsicphy_p", i1 false, i1 false}
!483 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 668, i32 1}
!484 = !{ptr @rk3188_i2s0_fracmux, !485, !"rk3188_i2s0_fracmux", i1 false, i1 false}
!485 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 671, i32 35}
!486 = !{ptr @rk3188_cpuclk_data, !487, !"rk3188_cpuclk_data", i1 false, i1 false}
!487 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 187, i32 46}
!488 = !{ptr @rk3188_cpuclk_rates, !489, !"rk3188_cpuclk_rates", i1 false, i1 false}
!489 = !{!"../drivers/clk/rockchip/clk-rk3188.c", i32 176, i32 42}
!490 = !{i32 1, !"wchar_size", i32 2}
!491 = !{i32 1, !"min_enum_size", i32 4}
!492 = !{i32 8, !"branch-target-enforcement", i32 0}
!493 = !{i32 8, !"sign-return-address", i32 0}
!494 = !{i32 8, !"sign-return-address-all", i32 0}
!495 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!496 = !{i32 7, !"uwtable", i32 1}
!497 = !{i32 7, !"frame-pointer", i32 2}
!498 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
