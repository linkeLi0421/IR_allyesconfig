; ModuleID = '/llk/IR_all_yes/drivers/clk/rockchip/clk-rk3128.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-rk3128.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rockchip_clk_branch = type { i32, i32, ptr, ptr, i8, i32, i32, i8, i8, i8, i32, i8, i8, i8, ptr, i32, i8, i8, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rockchip_pll_clock = type { i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.rockchip_cpuclk_reg_data = type { [4 x i32], [4 x i8], [4 x i32], i32, i8, i8, i8, i32 }
%struct.rockchip_cpuclk_rate_table = type { i32, [5 x %struct.rockchip_cpuclk_clksel] }
%struct.rockchip_cpuclk_clksel = type { i32, i32 }
%struct.rockchip_pll_rate_table = type { i32, %union.anon.6 }
%union.anon.6 = type { %struct.anon.8 }
%struct.anon.8 = type { i32, i32, i32, i32, i32, i32 }

@__of_table_rk3126_cru = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3126-cru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3126_clk_init }, section "__clk_of_table", align 4
@__of_table_rk3128_cru = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3128-cru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3128_clk_init }, section "__clk_of_table", align 4
@rk3126_clk_branches = internal global [3 x %struct.rockchip_clk_branch] [%struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.305, ptr @.compoundliteral.306, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.307, ptr @.compoundliteral.308, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.309, ptr @.compoundliteral.310, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 8, i8 3, ptr null }], section ".init.data", align 4
@rk3128_critical_clocks = internal constant [8 x ptr] [ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.67, ptr @.str.65, ptr @.str.63, ptr @.str.280, ptr @.str.79], section ".init.rodata", align 4
@rk3128_common_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: could not map cru region\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rk3128_common_clk_init\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/rockchip/clk-rk3128.c\00", [62 x i8] zeroinitializer }, align 32
@rk3128_common_clk_init._entry_ptr = internal global ptr @rk3128_common_clk_init._entry, section ".printk_index", align 4
@rk3128_common_clk_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: rockchip clk init failed\0A\00", [32 x i8] zeroinitializer }, align 32
@rk3128_common_clk_init._entry_ptr.5 = internal global ptr @rk3128_common_clk_init._entry.3, section ".printk_index", align 4
@rk3128_pll_clks = internal global [4 x %struct.rockchip_pll_clock] [%struct.rockchip_pll_clock { i32 1, ptr @.str.7, ptr @mux_pll_p, i8 2, i32 64, i32 0, i32 64, i32 0, i32 1, i32 0, i8 0, ptr @rk3128_pll_rates }, %struct.rockchip_pll_clock { i32 2, ptr @.str.8, ptr @mux_pll_p, i8 2, i32 64, i32 16, i32 64, i32 4, i32 0, i32 0, i8 0, ptr null }, %struct.rockchip_pll_clock { i32 3, ptr @.str.9, ptr @mux_pll_p, i8 2, i32 64, i32 32, i32 64, i32 8, i32 2, i32 0, i8 0, ptr @rk3128_pll_rates }, %struct.rockchip_pll_clock { i32 4, ptr @.str.10, ptr @mux_pll_p, i8 2, i32 64, i32 48, i32 64, i32 12, i32 3, i32 0, i8 1, ptr @rk3128_pll_rates }], section ".init.data", align 4
@common_clk_branches = internal global [156 x %struct.rockchip_clk_branch] [%struct.rockchip_clk_branch { i32 6, i32 8, ptr @.str.13, ptr @.compoundliteral, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 2, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 7, i32 8, ptr @.str.14, ptr @.compoundliteral.15, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 3, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.11, ptr @.compoundliteral.16, i8 1, i32 8, i32 84, i8 0, i8 0, i8 0, i32 0, i8 8, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.17, ptr @.compoundliteral.18, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.19, ptr @.compoundliteral.20, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.21, ptr @mux_ddrphy_p, i8 2, i32 8, i32 172, i8 8, i8 2, i8 4, i32 0, i8 0, i8 2, i8 10, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 144, i32 8, ptr @.str.22, ptr @.compoundliteral.23, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 2, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.24, ptr @.compoundliteral.25, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 2, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.26, ptr @.compoundliteral.27, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.28, ptr @.compoundliteral.29, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.30, ptr @.compoundliteral.31, i8 1, i32 8, i32 72, i8 0, i8 0, i8 0, i32 0, i8 0, i8 4, i8 40, ptr null, i32 208, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.32, ptr @.compoundliteral.33, i8 1, i32 8, i32 72, i8 0, i8 0, i8 0, i32 0, i8 4, i8 3, i8 40, ptr null, i32 208, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 154, i32 1, ptr @.str.34, ptr @mux_usb480m_p, i8 2, i32 4, i32 308, i8 15, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.35, ptr @mux_aclk_cpu_src_p, i8 4, i32 0, i32 68, i8 13, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 208, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 195, i32 5, ptr @.str.36, ptr @.compoundliteral.37, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 460, i32 0, ptr @.str.38, ptr @.compoundliteral.39, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 8, i8 2, i8 8, ptr null, i32 208, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 354, i32 0, ptr @.str.40, ptr @.compoundliteral.41, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 12, i8 2, i8 8, ptr null, i32 208, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 138, i32 0, ptr @.str.42, ptr @.compoundliteral.43, i8 1, i32 0, i32 164, i8 0, i8 0, i8 0, i32 0, i8 0, i8 2, i8 8, ptr null, i32 208, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 196, i32 0, ptr @.str.44, ptr @mux_pll_src_5plls_p, i8 5, i32 0, i32 196, i8 5, i8 3, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 461, i32 8, ptr @.str.45, ptr @.compoundliteral.46, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 4, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 197, i32 0, ptr @.str.47, ptr @mux_pll_src_5plls_p, i8 5, i32 0, i32 196, i8 13, i8 3, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 220, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 462, i32 8, ptr @.str.48, ptr @.compoundliteral.49, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 4, i8 0, ptr null, i32 220, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 134, i32 0, ptr @.str.50, ptr @mux_pll_src_5plls_p, i8 5, i32 0, i32 204, i8 13, i8 3, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 220, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 192, i32 0, ptr @.str.51, ptr @mux_pll_src_5plls_p, i8 5, i32 0, i32 192, i8 5, i8 3, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 193, i32 0, ptr @.str.52, ptr @mux_pll_src_5plls_p, i8 5, i32 0, i32 192, i8 13, i8 3, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 212, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 466, i32 0, ptr @.str.53, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 188, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 208, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.54, ptr @.compoundliteral.55, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.56, ptr @.compoundliteral.57, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.58, ptr @.compoundliteral.59, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.60, ptr @.compoundliteral.61, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.62, ptr @mux_aclk_peri_src_p, i8 4, i32 0, i32 108, i8 14, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 363, i32 0, ptr @.str.63, ptr @.compoundliteral.64, i8 1, i32 0, i32 108, i8 0, i8 0, i8 0, i32 0, i8 12, i8 2, i8 10, ptr null, i32 216, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 478, i32 0, ptr @.str.65, ptr @.compoundliteral.66, i8 1, i32 0, i32 108, i8 0, i8 0, i8 0, i32 0, i8 8, i8 2, i8 10, ptr null, i32 216, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 210, i32 5, ptr @.str.67, ptr @.compoundliteral.68, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 85, i32 5, ptr @.str.69, ptr @.compoundliteral.70, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 86, i32 5, ptr @.str.71, ptr @.compoundliteral.72, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 87, i32 5, ptr @.str.73, ptr @.compoundliteral.74, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 88, i32 5, ptr @.str.75, ptr @.compoundliteral.76, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 89, i32 5, ptr @.str.77, ptr @.compoundliteral.78, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 90, i32 5, ptr @.str.79, ptr @.compoundliteral.80, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 146, i32 5, ptr @.str.81, ptr @.compoundliteral.82, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 147, i32 5, ptr @.str.83, ptr @.compoundliteral.84, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 145, i32 5, ptr @.str.85, ptr @.compoundliteral.86, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 148, i32 5, ptr @.str.87, ptr @.compoundliteral.88, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 68, i32 0, ptr @.str.89, ptr @mux_mmc_src_p, i8 4, i32 0, i32 112, i8 6, i8 2, i8 4, i32 0, i8 0, i8 6, i8 8, ptr null, i32 216, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 69, i32 0, ptr @.str.90, ptr @mux_mmc_src_p, i8 4, i32 0, i32 116, i8 6, i8 2, i8 4, i32 0, i8 0, i8 6, i8 8, ptr null, i32 216, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 71, i32 0, ptr @.str.91, ptr @mux_mmc_src_p, i8 4, i32 0, i32 116, i8 14, i8 2, i8 4, i32 0, i8 8, i8 6, i8 8, ptr null, i32 216, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 149, i32 3, ptr @.str.92, ptr @.compoundliteral.93, i8 1, i32 0, i32 76, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 190, i32 0, ptr @.str.94, ptr @mux_sclk_vop_src_p, i8 4, i32 0, i32 176, i8 0, i8 2, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 220, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 122, i32 0, ptr @.str.95, ptr @mux_sclk_vop_src_p, i8 4, i32 0, i32 180, i8 0, i8 2, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 220, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 191, i32 0, ptr @.str.96, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 160, i8 0, i8 2, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 220, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.97, ptr @.compoundliteral.98, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 2, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 150, i32 0, ptr @.str.99, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 184, i8 0, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 151, i32 1, ptr @.str.100, ptr @mux_clk_cif_out_src_p, i8 2, i32 0, i32 120, i8 14, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 152, i32 3, ptr @.str.101, ptr @.compoundliteral.102, i8 1, i32 0, i32 184, i8 0, i8 0, i8 0, i32 0, i8 2, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.103, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 104, i8 14, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 224, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.104, ptr @.compoundliteral.105, i8 1, i32 4, i32 100, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 224, i8 5, i8 3, ptr @rk3128_i2s0_fracmux }, %struct.rockchip_clk_branch { i32 80, i32 5, ptr @.str.106, ptr @.compoundliteral.108, i8 1, i32 4, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.109, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 80, i8 14, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 208, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.110, ptr @.compoundliteral.111, i8 1, i32 4, i32 96, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 208, i8 10, i8 3, ptr @rk3128_i2s1_fracmux }, %struct.rockchip_clk_branch { i32 81, i32 5, ptr @.str.112, ptr @.compoundliteral.114, i8 1, i32 4, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 113, i32 0, ptr @.str.115, ptr @mux_i2s_out_p, i8 2, i32 0, i32 80, i8 12, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.116, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 92, i8 14, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 216, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.117, ptr @.compoundliteral.118, i8 1, i32 4, i32 148, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 216, i8 12, i8 3, ptr @rk3128_spdif_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.119, ptr @.compoundliteral.121, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 142, i32 5, ptr @.str.122, ptr @.compoundliteral.123, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 143, i32 5, ptr @.str.124, ptr @.compoundliteral.125, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 91, i32 0, ptr @.str.126, ptr @.compoundliteral.127, i8 1, i32 0, i32 164, i8 0, i8 0, i8 0, i32 0, i8 8, i8 8, i8 8, ptr null, i32 216, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 213, i32 0, ptr @.str.128, ptr @mux_pll_src_5plls_p, i8 5, i32 0, i32 204, i8 5, i8 3, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 65, i32 0, ptr @.str.129, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 168, i8 8, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 216, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.130, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 120, i8 12, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.131, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 120, i8 14, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.132, ptr @.compoundliteral.133, i8 1, i32 0, i32 124, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.134, ptr @.compoundliteral.135, i8 1, i32 0, i32 128, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.136, ptr @.compoundliteral.137, i8 1, i32 4, i32 136, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 9, i8 3, ptr @rk3128_uart0_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.138, ptr @.compoundliteral.139, i8 1, i32 4, i32 140, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 11, i8 3, ptr @rk3128_uart1_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.140, ptr @.compoundliteral.141, i8 1, i32 4, i32 144, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 13, i8 3, ptr @rk3128_uart2_fracmux }, %struct.rockchip_clk_branch { i32 124, i32 0, ptr @.str.142, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 88, i8 6, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 212, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 126, i32 1, ptr @.str.143, ptr @mux_sclk_gmac_p, i8 2, i32 0, i32 88, i8 15, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 127, i32 5, ptr @.str.144, ptr @.compoundliteral.145, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 128, i32 5, ptr @.str.146, ptr @.compoundliteral.147, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 129, i32 5, ptr @.str.148, ptr @.compoundliteral.149, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 130, i32 5, ptr @.str.150, ptr @.compoundliteral.151, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 139, i32 0, ptr @.str.152, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 84, i8 6, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 212, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 67, i32 0, ptr @.str.153, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 76, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 248, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 368, i32 0, ptr @.str.154, ptr @.compoundliteral.155, i8 1, i32 0, i32 184, i8 0, i8 0, i8 0, i32 0, i8 8, i8 6, i8 8, ptr null, i32 212, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 204, i32 5, ptr @.str.156, ptr @.compoundliteral.157, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 198, i32 5, ptr @.str.158, ptr @.compoundliteral.159, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 205, i32 5, ptr @.str.160, ptr @.compoundliteral.161, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.162, ptr @.compoundliteral.163, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 199, i32 5, ptr @.str.164, ptr @.compoundliteral.165, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.166, ptr @.compoundliteral.167, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 469, i32 5, ptr @.str.168, ptr @.compoundliteral.169, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 325, i32 5, ptr @.str.170, ptr @.compoundliteral.171, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 467, i32 5, ptr @.str.172, ptr @.compoundliteral.173, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 463, i32 5, ptr @.str.174, ptr @.compoundliteral.175, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 468, i32 5, ptr @.str.176, ptr @.compoundliteral.177, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.178, ptr @.compoundliteral.179, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 470, i32 5, ptr @.str.180, ptr @.compoundliteral.181, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 465, i32 5, ptr @.str.182, ptr @.compoundliteral.183, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.184, ptr @.compoundliteral.185, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 212, i32 5, ptr @.str.186, ptr @.compoundliteral.187, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 194, i32 5, ptr @.str.188, ptr @.compoundliteral.189, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.190, ptr @.compoundliteral.191, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.192, ptr @.compoundliteral.193, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 443, i32 5, ptr @.str.194, ptr @.compoundliteral.195, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.196, ptr @.compoundliteral.197, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 444, i32 5, ptr @.str.198, ptr @.compoundliteral.199, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.200, ptr @.compoundliteral.201, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 473, i32 5, ptr @.str.202, ptr @.compoundliteral.203, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 474, i32 5, ptr @.str.204, ptr @.compoundliteral.205, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.206, ptr @.compoundliteral.207, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 440, i32 5, ptr @.str.208, ptr @.compoundliteral.209, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 475, i32 5, ptr @.str.210, ptr @.compoundliteral.211, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 456, i32 5, ptr @.str.212, ptr @.compoundliteral.213, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 457, i32 5, ptr @.str.214, ptr @.compoundliteral.215, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 459, i32 5, ptr @.str.216, ptr @.compoundliteral.217, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.218, ptr @.compoundliteral.219, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 453, i32 5, ptr @.str.220, ptr @.compoundliteral.221, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 442, i32 5, ptr @.str.222, ptr @.compoundliteral.223, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 369, i32 5, ptr @.str.224, ptr @.compoundliteral.225, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 367, i32 5, ptr @.str.226, ptr @.compoundliteral.227, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.228, ptr @.compoundliteral.229, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 338, i32 5, ptr @.str.230, ptr @.compoundliteral.231, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 341, i32 5, ptr @.str.232, ptr @.compoundliteral.233, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 342, i32 5, ptr @.str.234, ptr @.compoundliteral.235, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 343, i32 5, ptr @.str.236, ptr @.compoundliteral.237, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 350, i32 5, ptr @.str.238, ptr @.compoundliteral.239, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 319, i32 5, ptr @.str.240, ptr @.compoundliteral.241, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 332, i32 5, ptr @.str.242, ptr @.compoundliteral.243, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 333, i32 5, ptr @.str.244, ptr @.compoundliteral.245, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 334, i32 5, ptr @.str.246, ptr @.compoundliteral.247, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 335, i32 5, ptr @.str.248, ptr @.compoundliteral.249, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 318, i32 5, ptr @.str.250, ptr @.compoundliteral.251, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 326, i32 5, ptr @.str.252, ptr @.compoundliteral.253, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 353, i32 5, ptr @.str.254, ptr @.compoundliteral.255, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 320, i32 5, ptr @.str.256, ptr @.compoundliteral.257, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 321, i32 5, ptr @.str.258, ptr @.compoundliteral.259, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 322, i32 5, ptr @.str.260, ptr @.compoundliteral.261, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 323, i32 5, ptr @.str.262, ptr @.compoundliteral.263, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.264, ptr @.compoundliteral.265, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.266, ptr @.compoundliteral.267, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.268, ptr @.compoundliteral.269, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 476, i32 5, ptr @.str.270, ptr @.compoundliteral.271, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 328, i32 5, ptr @.str.272, ptr @.compoundliteral.273, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.274, ptr @.compoundliteral.275, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.276, ptr @.compoundliteral.277, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.278, ptr @.compoundliteral.279, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.280, ptr @.compoundliteral.281, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.282, ptr @.compoundliteral.283, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 114, i32 6, ptr @.str.284, ptr @.compoundliteral.286, i8 1, i32 0, i32 448, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 118, i32 6, ptr @.str.287, ptr @.compoundliteral.288, i8 1, i32 0, i32 452, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 115, i32 6, ptr @.str.289, ptr @.compoundliteral.290, i8 1, i32 0, i32 456, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 119, i32 6, ptr @.str.291, ptr @.compoundliteral.292, i8 1, i32 0, i32 460, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 117, i32 6, ptr @.str.293, ptr @.compoundliteral.294, i8 1, i32 0, i32 472, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 121, i32 6, ptr @.str.295, ptr @.compoundliteral.296, i8 1, i32 0, i32 476, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }], section ".init.data", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"armclk\00", [25 x i8] zeroinitializer }, align 32
@mux_armclk_p = internal constant [2 x ptr] [ptr @.str.26, ptr @.str.28], section ".init.rodata", align 4
@rk3128_cpuclk_data = internal constant { %struct.rockchip_cpuclk_reg_data, [48 x i8] } { %struct.rockchip_cpuclk_reg_data { [4 x i32] [i32 68, i32 0, i32 0, i32 0], [4 x i8] zeroinitializer, [4 x i32] [i32 31, i32 0, i32 0, i32 0], i32 1, i8 1, i8 0, i8 7, i32 1 }, [48 x i8] zeroinitializer }, align 32
@rk3128_cpuclk_rates = internal global [19 x %struct.rockchip_cpuclk_rate_table] [%struct.rockchip_cpuclk_rate_table { i32 1800000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323095 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1704000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323095 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1608000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323095 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1512000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323095 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1488000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323093 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1416000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323093 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1392000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323093 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1296000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323093 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1200000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323093 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1104000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323093 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1008000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323093 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 912000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323093 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 816000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323091 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 696000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323091 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 600000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323091 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 408000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323089 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 312000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323089 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 216000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323089 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 96000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323089 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }], section ".init.data", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apll\00", [27 x i8] zeroinitializer }, align 32
@mux_pll_p = internal constant [2 x ptr] [ptr @.str.11, ptr @.str.12], section ".init.rodata", align 4
@rk3128_pll_rates = internal global { [43 x %struct.rockchip_pll_rate_table], [300 x i8] } { [43 x %struct.rockchip_pll_rate_table] [%struct.rockchip_pll_rate_table { i32 1608000000, %union.anon.6 { %struct.anon.8 { i32 67, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1584000000, %union.anon.6 { %struct.anon.8 { i32 66, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1560000000, %union.anon.6 { %struct.anon.8 { i32 65, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1536000000, %union.anon.6 { %struct.anon.8 { i32 64, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1512000000, %union.anon.6 { %struct.anon.8 { i32 63, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1488000000, %union.anon.6 { %struct.anon.8 { i32 62, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1464000000, %union.anon.6 { %struct.anon.8 { i32 61, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1440000000, %union.anon.6 { %struct.anon.8 { i32 60, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1416000000, %union.anon.6 { %struct.anon.8 { i32 59, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1392000000, %union.anon.6 { %struct.anon.8 { i32 58, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1368000000, %union.anon.6 { %struct.anon.8 { i32 57, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1344000000, %union.anon.6 { %struct.anon.8 { i32 56, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1320000000, %union.anon.6 { %struct.anon.8 { i32 55, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1296000000, %union.anon.6 { %struct.anon.8 { i32 54, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1272000000, %union.anon.6 { %struct.anon.8 { i32 53, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1248000000, %union.anon.6 { %struct.anon.8 { i32 52, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1200000000, %union.anon.6 { %struct.anon.8 { i32 50, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1188000000, %union.anon.6 { %struct.anon.8 { i32 99, i32 1, i32 2, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1104000000, %union.anon.6 { %struct.anon.8 { i32 46, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1100000000, %union.anon.6 { %struct.anon.8 { i32 550, i32 1, i32 12, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1008000000, %union.anon.6 { %struct.anon.8 { i32 84, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1000000000, %union.anon.6 { %struct.anon.8 { i32 500, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 984000000, %union.anon.6 { %struct.anon.8 { i32 82, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 960000000, %union.anon.6 { %struct.anon.8 { i32 80, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 936000000, %union.anon.6 { %struct.anon.8 { i32 78, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 912000000, %union.anon.6 { %struct.anon.8 { i32 76, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 900000000, %union.anon.6 { %struct.anon.8 { i32 300, i32 2, i32 4, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 888000000, %union.anon.6 { %struct.anon.8 { i32 74, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 864000000, %union.anon.6 { %struct.anon.8 { i32 72, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 840000000, %union.anon.6 { %struct.anon.8 { i32 70, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 816000000, %union.anon.6 { %struct.anon.8 { i32 68, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 800000000, %union.anon.6 { %struct.anon.8 { i32 400, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 700000000, %union.anon.6 { %struct.anon.8 { i32 350, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 696000000, %union.anon.6 { %struct.anon.8 { i32 58, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 600000000, %union.anon.6 { %struct.anon.8 { i32 75, i32 3, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 594000000, %union.anon.6 { %struct.anon.8 { i32 99, i32 2, i32 2, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 504000000, %union.anon.6 { %struct.anon.8 { i32 63, i32 3, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 500000000, %union.anon.6 { %struct.anon.8 { i32 250, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 408000000, %union.anon.6 { %struct.anon.8 { i32 68, i32 2, i32 1, i32 2, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 312000000, %union.anon.6 { %struct.anon.8 { i32 52, i32 2, i32 1, i32 2, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 216000000, %union.anon.6 { %struct.anon.8 { i32 72, i32 4, i32 1, i32 2, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 96000000, %union.anon.6 { %struct.anon.8 { i32 64, i32 4, i32 1, i32 4, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table zeroinitializer], [300 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dpll\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpll\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpll\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_24m\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xin24m\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpll_div2\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.10], [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpll_div3\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.10], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpll_ddr\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.8], [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpll_div2_ddr\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ddrphy2x\00", [23 x i8] zeroinitializer }, align 32
@mux_ddrphy_p = internal constant [2 x ptr] [ptr @.str.17, ptr @.str.19], section ".init.rodata", align 4
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_ddrc\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_ddrphy\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apll_core\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.7], [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpll_div2_core\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_dbg\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"armcore\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.6], [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb480m\00", [24 x i8] zeroinitializer }, align 32
@mux_usb480m_p = internal constant [2 x ptr] [ptr @.str.297, ptr @.str.12], section ".init.rodata", align 4
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aclk_cpu_src\00", [19 x i8] zeroinitializer }, align 32
@mux_aclk_cpu_src_p = internal constant [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14], section ".init.rodata", align 4
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_cpu\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.35], [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_cpu\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.35], [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_cpu\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.35], [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_crypto\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.35], [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_vepu\00", [22 x i8] zeroinitializer }, align 32
@mux_pll_src_5plls_p = internal constant [5 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.34], section ".init.rodata", align 4
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_vepu\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.44], [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_vdpu\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_vdpu\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.47], [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sclk_hevc_core\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_vio0\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_vio1\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_vio\00", [23 x i8] zeroinitializer }, align 32
@mux_pll_src_4plls_p = internal constant [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.34], section ".init.rodata", align 4
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpll_peri\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.10], [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cpll_peri\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.9], [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpll_div2_peri\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpll_div3_peri\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.14], [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_peri_src\00", [18 x i8] zeroinitializer }, align 32
@mux_aclk_peri_src_p = internal constant [4 x ptr] [ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60], section ".init.rodata", align 4
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_peri\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.62], [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_peri\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.62], [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_peri\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.62], [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_timer0\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_timer1\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_timer2\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_timer3\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_timer4\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_timer5\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_pvtm_core\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_pvtm_gpu\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_pvtm_func\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_mipi_24m\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_sdmmc0\00", [20 x i8] zeroinitializer }, align 32
@mux_mmc_src_p = internal constant [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.12], section ".init.rodata", align 4
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_sdio\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_emmc\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_pvtm\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.85], [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dclk_vop\00", [23 x i8] zeroinitializer }, align 32
@mux_sclk_vop_src_p = internal constant [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14], section ".init.rodata", align 4
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sclk_vop\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dclk_ebc\00", [23 x i8] zeroinitializer }, align 32
@mux_pll_src_3plls_p = internal constant [3 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.13], section ".init.rodata", align 4
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xin12m\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sclk_cif_src\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sclk_cif_out_src\00", [47 x i8] zeroinitializer }, align 32
@mux_clk_cif_out_src_p = internal constant [2 x ptr] [ptr @.str.298, ptr @.str.12], section ".init.rodata", align 4
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sclk_cif_out\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.100], [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s0_src\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s0_frac\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.103], [28 x i8] zeroinitializer }, align 32
@rk3128_i2s0_fracmux = internal global %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.107, ptr @mux_i2s0_p, i8 4, i32 4, i32 104, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_i2s0\00", [22 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s0_pre\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.107], [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s1_src\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s1_frac\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.109], [28 x i8] zeroinitializer }, align 32
@rk3128_i2s1_fracmux = internal global %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.113, ptr @mux_i2s1_pre_p, i8 4, i32 4, i32 80, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_i2s1\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s1_pre\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.113], [28 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2s_out\00", [24 x i8] zeroinitializer }, align 32
@mux_i2s_out_p = internal constant [2 x ptr] [ptr @.str.113, ptr @.str.97], section ".init.rodata", align 4
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sclk_spdif_src\00", [17 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif_frac\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.116], [28 x i8] zeroinitializer }, align 32
@rk3128_spdif_fracmux = internal global %struct.rockchip_clk_branch { i32 83, i32 1, ptr @.str.300, ptr @mux_sclk_spdif_p, i8 3, i32 4, i32 92, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"jtag\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ext_jtag\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.120], [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sclk_otgphy0\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.97], [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sclk_otgphy1\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.97], [28 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_saradc\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_gpu\00", [23 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_spi0\00", [22 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_src\00", [22 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart12_src\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_src\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.131], [28 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_src\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.131], [28 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart0_frac\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.130], [28 x i8] zeroinitializer }, align 32
@rk3128_uart0_fracmux = internal global %struct.rockchip_clk_branch { i32 77, i32 1, ptr @.str.301, ptr @mux_uart0_p, i8 3, i32 4, i32 120, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart1_frac\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.132], [28 x i8] zeroinitializer }, align 32
@rk3128_uart1_fracmux = internal global %struct.rockchip_clk_branch { i32 78, i32 1, ptr @.str.302, ptr @mux_uart1_p, i8 3, i32 4, i32 124, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart2_frac\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.134], [28 x i8] zeroinitializer }, align 32
@rk3128_uart2_fracmux = internal global %struct.rockchip_clk_branch { i32 79, i32 1, ptr @.str.303, ptr @mux_uart2_p, i8 3, i32 4, i32 128, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sclk_gmac_src\00", [18 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_gmac\00", [22 x i8] zeroinitializer }, align 32
@mux_sclk_gmac_p = internal constant [2 x ptr] [ptr @.str.142, ptr @.str.304], section ".init.rodata", align 4
@.str.144 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sclk_mac_refout\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.143], [28 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sclk_mac_ref\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.143], [28 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_mac_rx\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.143], [28 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_mac_tx\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.143], [28 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sclk_tsp\00", [23 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_nandc\00", [21 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pclk_pmu_pre\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.9], [28 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aclk_lcdc0\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.51], [28 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_cif\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.51], [28 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_rga\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.51], [28 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_vio0_niu\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.51], [28 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_iep\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.52], [28 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_vio1_niu\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.52], [28 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hclk_vio_h2p\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.53], [28 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_mipi\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.53], [28 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_rga\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.53], [28 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_lcdc0\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.53], [28 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_iep\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.177 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.53], [28 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hclk_vio_niu\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.53], [28 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_cif\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.181 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.53], [28 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_ebc\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.53], [28 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_peri_axi\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.67], [28 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_gmac\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.67], [28 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_dmac\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.189 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.67], [28 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_peri_niu\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.191 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.67], [28 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aclk_cpu_to_peri\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.193 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.67], [28 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hclk_i2s_8ch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.195 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.65], [28 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hclk_peri_matrix\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.65], [28 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hclk_i2s_2ch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.199 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.65], [28 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hclk_usb_peri\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.201 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.65], [28 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_host2\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.203 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.65], [28 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_otg\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.205 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.65], [28 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hclk_peri_ahb\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.207 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.65], [28 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_spdif\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.209 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.65], [28 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_tsp\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.65], [28 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_sdmmc\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.213 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.65], [28 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_sdio\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.215 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.65], [28 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_emmc\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.217 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.65], [28 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hclk_emmc_peri\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.219 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.65], [28 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_nandc\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.221 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.65], [28 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hclk_usbhost\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.223 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.65], [28 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_sim_card\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.225 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_gmac\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.227 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_peri_axi\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.229 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_spi0\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.231 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_uart0\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.233 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_uart1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.235 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_uart2\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.237 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_pwm\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.239 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_wdt\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.241 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_i2c0\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.243 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_i2c1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.245 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_i2c2\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.247 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_i2c3\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.249 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_saradc\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.251 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_efuse\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.253 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_timer\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.255 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio0\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.257 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.259 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio2\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.261 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio3\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.263 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aclk_initmem\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.265 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_strc_sys\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.267 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_rom\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.269 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hclk_crypto\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.271 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_acodec\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.273 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.40], [28 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_ddrupctl\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.275 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.40], [28 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_grf\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.277 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.40], [28 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pclk_mipiphy\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.279 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.40], [28 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_pmu\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.281 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.154], [28 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pclk_pmu_niu\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.283 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.154], [28 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdmmc_drv\00", [22 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_sdmmc\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.286 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.285], [28 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdmmc_sample\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.288 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.285], [28 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdio_drv\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.290 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.90], [28 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio_sample\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.292 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.90], [28 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emmc_drv\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.294 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.91], [28 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"emmc_sample\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.296 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.91], [28 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb480m_phy\00", [20 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_cif_src\00", [20 x i8] zeroinitializer }, align 32
@mux_i2s0_p = internal constant [4 x ptr] [ptr @.str.103, ptr @.str.104, ptr @.str.299, ptr @.str.97], section ".init.rodata", align 4
@.str.299 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ext_i2s\00", [24 x i8] zeroinitializer }, align 32
@mux_i2s1_pre_p = internal constant [4 x ptr] [ptr @.str.109, ptr @.str.110, ptr @.str.299, ptr @.str.97], section ".init.rodata", align 4
@.str.300 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_spdif\00", [21 x i8] zeroinitializer }, align 32
@mux_sclk_spdif_p = internal constant [3 x ptr] [ptr @.str.116, ptr @.str.117, ptr @.str.97], section ".init.rodata", align 4
@.str.301 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_uart0\00", [21 x i8] zeroinitializer }, align 32
@mux_uart0_p = internal constant [3 x ptr] [ptr @.str.130, ptr @.str.136, ptr @.str.12], section ".init.rodata", align 4
@.str.302 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_uart1\00", [21 x i8] zeroinitializer }, align 32
@mux_uart1_p = internal constant [3 x ptr] [ptr @.str.132, ptr @.str.138, ptr @.str.12], section ".init.rodata", align 4
@.str.303 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_uart2\00", [21 x i8] zeroinitializer }, align 32
@mux_uart2_p = internal constant [3 x ptr] [ptr @.str.134, ptr @.str.140, ptr @.str.12], section ".init.rodata", align 4
@.str.304 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gmac_clkin\00", [21 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_stimer\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.306 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.40], [28 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pclk_s_efuse\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.308 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.40], [28 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_sgrf\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.310 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.40], [28 x i8] zeroinitializer }, align 32
@rk3128_clk_branches = internal global [3 x %struct.rockchip_clk_branch] [%struct.rockchip_clk_branch { i32 153, i32 0, ptr @.str.311, ptr @mux_sclk_sfc_src_p, i8 4, i32 0, i32 112, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 220, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 441, i32 5, ptr @.str.312, ptr @.compoundliteral.313, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 327, i32 5, ptr @.str.314, ptr @.compoundliteral.315, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 8, i8 3, ptr null }], section ".init.data", align 4
@.str.311 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sclk_sfc\00", [23 x i8] zeroinitializer }, align 32
@mux_sclk_sfc_src_p = internal constant [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.12], section ".init.rodata", align 4
@.str.312 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_gps\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.313 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.67], [28 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_hdmi\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.315 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.40], [28 x i8] zeroinitializer }, align 32
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 584, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 590, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 601, i32 44 }
@___asan_gen_.337 = private unnamed_addr constant [19 x i8] c"rk3128_cpuclk_data\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 119, i32 46 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 159, i32 11 }
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"rk3128_pll_rates\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 21, i32 39 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 161, i32 11 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 163, i32 11 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 165, i32 11 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 130, i32 23 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 130, i32 34 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 202, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 203, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 209, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 211, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 213, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 215, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 216, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 219, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 221, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 223, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 226, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 231, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 235, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 238, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 240, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 243, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 246, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 251, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 254, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 256, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 259, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 262, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 267, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 270, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 273, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 278, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 280, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 282, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 284, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 286, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 288, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 291, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 294, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 297, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 299, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 301, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 303, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 305, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 307, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 310, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 312, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 314, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 316, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 319, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 323, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 327, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 331, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 337, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 340, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 343, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 347, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 349, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 352, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 354, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 357, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 360, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 364, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 367, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 370, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 374, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 376, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 380, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 383, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 388, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 391, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 393, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 396, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 400, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 404, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 409, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 412, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 414, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 417, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 420, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 424, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 428, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 433, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 436, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 438, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 440, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 442, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 444, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 447, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 451, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 455, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 464, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 465, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 466, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 467, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 469, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 470, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 472, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 473, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 474, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 475, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 476, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant [21 x i8] c".compoundliteral.177\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 477, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 478, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant [21 x i8] c".compoundliteral.181\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 479, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 482, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 483, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 484, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant [21 x i8] c".compoundliteral.189\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 485, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant [21 x i8] c".compoundliteral.191\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 486, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant [21 x i8] c".compoundliteral.193\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 488, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant [21 x i8] c".compoundliteral.195\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 489, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 490, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant [21 x i8] c".compoundliteral.199\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 491, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant [21 x i8] c".compoundliteral.201\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 492, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant [21 x i8] c".compoundliteral.203\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 493, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant [21 x i8] c".compoundliteral.205\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 494, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant [21 x i8] c".compoundliteral.207\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 495, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant [21 x i8] c".compoundliteral.209\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 496, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 497, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant [21 x i8] c".compoundliteral.213\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 498, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant [21 x i8] c".compoundliteral.215\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 499, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant [21 x i8] c".compoundliteral.217\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 500, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant [21 x i8] c".compoundliteral.219\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 501, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant [21 x i8] c".compoundliteral.221\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 502, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant [21 x i8] c".compoundliteral.223\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 504, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant [21 x i8] c".compoundliteral.225\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 505, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant [21 x i8] c".compoundliteral.227\00", align 1
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 506, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant [21 x i8] c".compoundliteral.229\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 507, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant [21 x i8] c".compoundliteral.231\00", align 1
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 508, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant [21 x i8] c".compoundliteral.233\00", align 1
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 509, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant [21 x i8] c".compoundliteral.235\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 510, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant [21 x i8] c".compoundliteral.237\00", align 1
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 511, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant [21 x i8] c".compoundliteral.239\00", align 1
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 512, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant [21 x i8] c".compoundliteral.241\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 513, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant [21 x i8] c".compoundliteral.243\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 514, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant [21 x i8] c".compoundliteral.245\00", align 1
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 515, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant [21 x i8] c".compoundliteral.247\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 516, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant [21 x i8] c".compoundliteral.249\00", align 1
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 517, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant [21 x i8] c".compoundliteral.251\00", align 1
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 518, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant [21 x i8] c".compoundliteral.253\00", align 1
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 519, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant [21 x i8] c".compoundliteral.255\00", align 1
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 520, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant [21 x i8] c".compoundliteral.257\00", align 1
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 521, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant [21 x i8] c".compoundliteral.259\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 522, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant [21 x i8] c".compoundliteral.261\00", align 1
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 523, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant [21 x i8] c".compoundliteral.263\00", align 1
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 526, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant [21 x i8] c".compoundliteral.265\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 527, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant [21 x i8] c".compoundliteral.267\00", align 1
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 529, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant [21 x i8] c".compoundliteral.269\00", align 1
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 530, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant [21 x i8] c".compoundliteral.271\00", align 1
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 532, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant [21 x i8] c".compoundliteral.273\00", align 1
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 533, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant [21 x i8] c".compoundliteral.275\00", align 1
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 534, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant [21 x i8] c".compoundliteral.277\00", align 1
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 535, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant [21 x i8] c".compoundliteral.279\00", align 1
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 537, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant [21 x i8] c".compoundliteral.281\00", align 1
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 538, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant [21 x i8] c".compoundliteral.283\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 541, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant [21 x i8] c".compoundliteral.286\00", align 1
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 542, i32 2 }
@___asan_gen_.947 = private unnamed_addr constant [21 x i8] c".compoundliteral.288\00", align 1
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 544, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant [21 x i8] c".compoundliteral.290\00", align 1
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 545, i32 2 }
@___asan_gen_.955 = private unnamed_addr constant [21 x i8] c".compoundliteral.292\00", align 1
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 547, i32 2 }
@___asan_gen_.959 = private unnamed_addr constant [21 x i8] c".compoundliteral.294\00", align 1
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 548, i32 2 }
@___asan_gen_.963 = private unnamed_addr constant [21 x i8] c".compoundliteral.296\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 134, i32 27 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 143, i32 35 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 146, i32 49 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 182, i32 2 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 186, i32 2 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 190, i32 2 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 194, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 155, i32 45 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 552, i32 2 }
@___asan_gen_.991 = private unnamed_addr constant [21 x i8] c".compoundliteral.306\00", align 1
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 553, i32 2 }
@___asan_gen_.995 = private unnamed_addr constant [21 x i8] c".compoundliteral.308\00", align 1
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 554, i32 2 }
@___asan_gen_.999 = private unnamed_addr constant [21 x i8] c".compoundliteral.310\00", align 1
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 558, i32 2 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 562, i32 2 }
@___asan_gen_.1006 = private unnamed_addr constant [21 x i8] c".compoundliteral.313\00", align 1
@___asan_gen_.1007 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1008 = private constant [37 x i8] c"../drivers/clk/rockchip/clk-rk3128.c\00", align 1
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 563, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant [21 x i8] c".compoundliteral.315\00", align 1
@llvm.compiler.used = appending global [323 x ptr] [ptr @__of_table_rk3126_cru, ptr @__of_table_rk3128_cru, ptr @rk3128_common_clk_init._entry, ptr @rk3128_common_clk_init._entry.3, ptr @rk3128_common_clk_init._entry_ptr, ptr @rk3128_common_clk_init._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @rk3128_cpuclk_data, ptr @.str.7, ptr @rk3128_pll_rates, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.compoundliteral, ptr @.str.14, ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.compoundliteral.102, ptr @.str.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @.str.107, ptr @.compoundliteral.108, ptr @.str.109, ptr @.str.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @.str.113, ptr @.compoundliteral.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @.str.120, ptr @.compoundliteral.121, ptr @.str.122, ptr @.compoundliteral.123, ptr @.str.124, ptr @.compoundliteral.125, ptr @.str.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.compoundliteral.133, ptr @.str.134, ptr @.compoundliteral.135, ptr @.str.136, ptr @.compoundliteral.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.str.140, ptr @.compoundliteral.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @.str.146, ptr @.compoundliteral.147, ptr @.str.148, ptr @.compoundliteral.149, ptr @.str.150, ptr @.compoundliteral.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.compoundliteral.155, ptr @.str.156, ptr @.compoundliteral.157, ptr @.str.158, ptr @.compoundliteral.159, ptr @.str.160, ptr @.compoundliteral.161, ptr @.str.162, ptr @.compoundliteral.163, ptr @.str.164, ptr @.compoundliteral.165, ptr @.str.166, ptr @.compoundliteral.167, ptr @.str.168, ptr @.compoundliteral.169, ptr @.str.170, ptr @.compoundliteral.171, ptr @.str.172, ptr @.compoundliteral.173, ptr @.str.174, ptr @.compoundliteral.175, ptr @.str.176, ptr @.compoundliteral.177, ptr @.str.178, ptr @.compoundliteral.179, ptr @.str.180, ptr @.compoundliteral.181, ptr @.str.182, ptr @.compoundliteral.183, ptr @.str.184, ptr @.compoundliteral.185, ptr @.str.186, ptr @.compoundliteral.187, ptr @.str.188, ptr @.compoundliteral.189, ptr @.str.190, ptr @.compoundliteral.191, ptr @.str.192, ptr @.compoundliteral.193, ptr @.str.194, ptr @.compoundliteral.195, ptr @.str.196, ptr @.compoundliteral.197, ptr @.str.198, ptr @.compoundliteral.199, ptr @.str.200, ptr @.compoundliteral.201, ptr @.str.202, ptr @.compoundliteral.203, ptr @.str.204, ptr @.compoundliteral.205, ptr @.str.206, ptr @.compoundliteral.207, ptr @.str.208, ptr @.compoundliteral.209, ptr @.str.210, ptr @.compoundliteral.211, ptr @.str.212, ptr @.compoundliteral.213, ptr @.str.214, ptr @.compoundliteral.215, ptr @.str.216, ptr @.compoundliteral.217, ptr @.str.218, ptr @.compoundliteral.219, ptr @.str.220, ptr @.compoundliteral.221, ptr @.str.222, ptr @.compoundliteral.223, ptr @.str.224, ptr @.compoundliteral.225, ptr @.str.226, ptr @.compoundliteral.227, ptr @.str.228, ptr @.compoundliteral.229, ptr @.str.230, ptr @.compoundliteral.231, ptr @.str.232, ptr @.compoundliteral.233, ptr @.str.234, ptr @.compoundliteral.235, ptr @.str.236, ptr @.compoundliteral.237, ptr @.str.238, ptr @.compoundliteral.239, ptr @.str.240, ptr @.compoundliteral.241, ptr @.str.242, ptr @.compoundliteral.243, ptr @.str.244, ptr @.compoundliteral.245, ptr @.str.246, ptr @.compoundliteral.247, ptr @.str.248, ptr @.compoundliteral.249, ptr @.str.250, ptr @.compoundliteral.251, ptr @.str.252, ptr @.compoundliteral.253, ptr @.str.254, ptr @.compoundliteral.255, ptr @.str.256, ptr @.compoundliteral.257, ptr @.str.258, ptr @.compoundliteral.259, ptr @.str.260, ptr @.compoundliteral.261, ptr @.str.262, ptr @.compoundliteral.263, ptr @.str.264, ptr @.compoundliteral.265, ptr @.str.266, ptr @.compoundliteral.267, ptr @.str.268, ptr @.compoundliteral.269, ptr @.str.270, ptr @.compoundliteral.271, ptr @.str.272, ptr @.compoundliteral.273, ptr @.str.274, ptr @.compoundliteral.275, ptr @.str.276, ptr @.compoundliteral.277, ptr @.str.278, ptr @.compoundliteral.279, ptr @.str.280, ptr @.compoundliteral.281, ptr @.str.282, ptr @.compoundliteral.283, ptr @.str.284, ptr @.str.285, ptr @.compoundliteral.286, ptr @.str.287, ptr @.compoundliteral.288, ptr @.str.289, ptr @.compoundliteral.290, ptr @.str.291, ptr @.compoundliteral.292, ptr @.str.293, ptr @.compoundliteral.294, ptr @.str.295, ptr @.compoundliteral.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.compoundliteral.306, ptr @.str.307, ptr @.compoundliteral.308, ptr @.str.309, ptr @.compoundliteral.310, ptr @.str.311, ptr @.str.312, ptr @.compoundliteral.313, ptr @.str.314, ptr @.compoundliteral.315], section "llvm.metadata"
@0 = internal global [319 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3128_common_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3128_common_clk_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3128_cpuclk_data to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3128_pll_rates to i32), i32 1204, i32 1504, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.177 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.181 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.189 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.191 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.193 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.195 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.199 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.201 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.203 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.205 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.207 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.209 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.213 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.215 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.217 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.219 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.221 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.223 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.225 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.227 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.229 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.231 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.233 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.235 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.237 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.239 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.241 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.243 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.245 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.247 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.249 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.251 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.253 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.255 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.257 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.259 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.261 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.263 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.265 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.267 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.269 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.271 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.273 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.275 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.277 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.279 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.281 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.283 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.286 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.288 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.290 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.292 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.294 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.296 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.306 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.308 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.310 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.313 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.315 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rk3126_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @rk3128_common_clk_init(ptr noundef %np) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @rockchip_clk_register_branches(ptr noundef %call, ptr noundef nonnull @rk3126_clk_branches, i32 noundef 3) #3
  tail call void @rockchip_clk_protect_critical(ptr noundef nonnull @rk3128_critical_clocks, i32 noundef 8) #3
  tail call void @rockchip_clk_of_add_provider(ptr noundef %np, ptr noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rk3128_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @rk3128_common_clk_init(ptr noundef %np) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @rockchip_clk_register_branches(ptr noundef %call, ptr noundef nonnull @rk3128_clk_branches, i32 noundef 3) #3
  tail call void @rockchip_clk_protect_critical(ptr noundef nonnull @rk3128_critical_clocks, i32 noundef 8) #3
  tail call void @rockchip_clk_of_add_provider(ptr noundef %np, ptr noundef %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rk3128_common_clk_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @rockchip_clk_init(ptr noundef %np, ptr noundef nonnull %call, i32 noundef 479) #3
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end8, label %if.end12

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #7
  tail call void @iounmap(ptr noundef nonnull %call) #3
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @rockchip_clk_register_plls(ptr noundef %call3, ptr noundef nonnull @rk3128_pll_clks, i32 noundef 4, i32 noundef 332) #3
  tail call void @rockchip_clk_register_branches(ptr noundef %call3, ptr noundef nonnull @common_clk_branches, i32 noundef 156) #3
  tail call void @rockchip_clk_register_armclk(ptr noundef %call3, i32 noundef 5, ptr noundef nonnull @.str.6, ptr noundef nonnull @mux_armclk_p, i8 noundef zeroext 2, ptr noundef nonnull @rk3128_cpuclk_data, ptr noundef nonnull @rk3128_cpuclk_rates, i32 noundef 19) #3
  %add.ptr = getelementptr i8, ptr %call, i32 272
  tail call void @rockchip_register_softrst(ptr noundef %np, i32 noundef 9, ptr noundef %add.ptr, i8 noundef zeroext 1) #3
  tail call void @rockchip_register_restart_notifier(ptr noundef %call3, i32 noundef 256, ptr noundef null) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end8, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end8 ], [ %call3, %if.end12 ], [ inttoptr (i32 -12 to ptr), %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_register_branches(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @rockchip_clk_register_plls(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_register_armclk(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_register_softrst(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_register_restart_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 319)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 319)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !149, !151, !153, !155, !156, !158, !160, !162, !164, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438}
!llvm.module.flags = !{!440, !441, !442, !443, !444, !445, !446, !447}
!llvm.ident = !{!448}

!0 = !{ptr @__of_table_rk3126_cru, !1, !"__of_table_rk3126_cru", i1 false, i1 false}
!1 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 630, i32 1}
!2 = !{ptr @__of_table_rk3128_cru, !3, !"__of_table_rk3128_cru", i1 false, i1 false}
!3 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 648, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 584, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rk3128_common_clk_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @rk3128_common_clk_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 590, i32 3}
!12 = !{ptr @rk3128_common_clk_init._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @rk3128_common_clk_init._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 601, i32 44}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 159, i32 11}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 161, i32 11}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 163, i32 11}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 165, i32 11}
!24 = !{ptr @rk3128_pll_clks, !25, !"rk3128_pll_clks", i1 false, i1 false}
!25 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 158, i32 34}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 130, i32 23}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 130, i32 34}
!30 = !{ptr @mux_pll_p, !31, !"mux_pll_p", i1 false, i1 false}
!31 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 130, i32 1}
!32 = !{ptr @rk3128_pll_rates, !33, !"rk3128_pll_rates", i1 false, i1 false}
!33 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 21, i32 39}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 202, i32 2}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 203, i32 2}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 209, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 211, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 213, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 215, i32 2}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 216, i32 2}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 219, i32 2}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 221, i32 2}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 223, i32 2}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 226, i32 2}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 231, i32 2}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 235, i32 2}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 238, i32 2}
!62 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 240, i32 2}
!64 = !{ptr @.str.40, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 243, i32 2}
!66 = !{ptr @.str.42, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 246, i32 2}
!68 = !{ptr @.str.44, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 251, i32 2}
!70 = !{ptr @.str.45, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 254, i32 2}
!72 = !{ptr @.str.47, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 256, i32 2}
!74 = !{ptr @.str.48, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 259, i32 2}
!76 = !{ptr @.str.50, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 262, i32 2}
!78 = !{ptr @.str.51, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 267, i32 2}
!80 = !{ptr @.str.52, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 270, i32 2}
!82 = !{ptr @.str.53, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 273, i32 2}
!84 = !{ptr @.str.54, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 278, i32 2}
!86 = !{ptr @.str.56, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 280, i32 2}
!88 = !{ptr @.str.58, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 282, i32 2}
!90 = !{ptr @.str.60, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 284, i32 2}
!92 = !{ptr @.str.62, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 286, i32 2}
!94 = !{ptr @.str.63, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 288, i32 2}
!96 = !{ptr @.str.65, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 291, i32 2}
!98 = !{ptr @.str.67, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 294, i32 2}
!100 = !{ptr @.str.69, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 297, i32 2}
!102 = !{ptr @.str.71, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 299, i32 2}
!104 = !{ptr @.str.73, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 301, i32 2}
!106 = !{ptr @.str.75, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 303, i32 2}
!108 = !{ptr @.str.77, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 305, i32 2}
!110 = !{ptr @.str.79, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 307, i32 2}
!112 = !{ptr @.str.81, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 310, i32 2}
!114 = !{ptr @.str.83, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 312, i32 2}
!116 = !{ptr @.str.85, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 314, i32 2}
!118 = !{ptr @.str.87, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 316, i32 2}
!120 = !{ptr @.str.89, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 319, i32 2}
!122 = !{ptr @.str.90, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 323, i32 2}
!124 = !{ptr @.str.91, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 327, i32 2}
!126 = !{ptr @.str.92, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 331, i32 2}
!128 = !{ptr @.str.94, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 337, i32 2}
!130 = !{ptr @.str.95, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 340, i32 2}
!132 = !{ptr @.str.96, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 343, i32 2}
!134 = !{ptr @.str.97, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 347, i32 2}
!136 = !{ptr @.str.99, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 349, i32 2}
!138 = !{ptr @.str.100, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 352, i32 2}
!140 = !{ptr @.str.101, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 354, i32 2}
!142 = !{ptr @.str.103, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 357, i32 2}
!144 = !{ptr @.str.104, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 360, i32 2}
!146 = !{ptr @.str.106, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 364, i32 2}
!148 = !{ptr @.str.107, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.109, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 367, i32 2}
!151 = !{ptr @.str.110, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 370, i32 2}
!153 = !{ptr @.str.112, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 374, i32 2}
!155 = !{ptr @.str.113, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.115, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 376, i32 2}
!158 = !{ptr @.str.116, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 380, i32 2}
!160 = !{ptr @.str.117, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 383, i32 2}
!162 = !{ptr @.str.119, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 388, i32 2}
!164 = !{ptr @.str.120, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.122, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 391, i32 2}
!167 = !{ptr @.str.124, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 393, i32 2}
!169 = !{ptr @.str.126, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 396, i32 2}
!171 = !{ptr @.str.128, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 400, i32 2}
!173 = !{ptr @.str.129, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 404, i32 2}
!175 = !{ptr @.str.130, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 409, i32 2}
!177 = !{ptr @.str.131, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 412, i32 2}
!179 = !{ptr @.str.132, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 414, i32 2}
!181 = !{ptr @.str.134, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 417, i32 2}
!183 = !{ptr @.str.136, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 420, i32 2}
!185 = !{ptr @.str.138, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 424, i32 2}
!187 = !{ptr @.str.140, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 428, i32 2}
!189 = !{ptr @.str.142, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 433, i32 2}
!191 = !{ptr @.str.143, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 436, i32 2}
!193 = !{ptr @.str.144, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 438, i32 2}
!195 = !{ptr @.str.146, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 440, i32 2}
!197 = !{ptr @.str.148, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 442, i32 2}
!199 = !{ptr @.str.150, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 444, i32 2}
!201 = !{ptr @.str.152, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 447, i32 2}
!203 = !{ptr @.str.153, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 451, i32 2}
!205 = !{ptr @.str.154, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 455, i32 2}
!207 = !{ptr @.str.156, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 464, i32 2}
!209 = !{ptr @.str.158, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 465, i32 2}
!211 = !{ptr @.str.160, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 466, i32 2}
!213 = !{ptr @.str.162, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 467, i32 2}
!215 = !{ptr @.str.164, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 469, i32 2}
!217 = !{ptr @.str.166, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 470, i32 2}
!219 = !{ptr @.str.168, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 472, i32 2}
!221 = !{ptr @.str.170, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 473, i32 2}
!223 = !{ptr @.str.172, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 474, i32 2}
!225 = !{ptr @.str.174, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 475, i32 2}
!227 = !{ptr @.str.176, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 476, i32 2}
!229 = !{ptr @.str.178, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 477, i32 2}
!231 = !{ptr @.str.180, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 478, i32 2}
!233 = !{ptr @.str.182, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 479, i32 2}
!235 = !{ptr @.str.184, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 482, i32 2}
!237 = !{ptr @.str.186, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 483, i32 2}
!239 = !{ptr @.str.188, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 484, i32 2}
!241 = !{ptr @.str.190, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 485, i32 2}
!243 = !{ptr @.str.192, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 486, i32 2}
!245 = !{ptr @.str.194, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 488, i32 2}
!247 = !{ptr @.str.196, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 489, i32 2}
!249 = !{ptr @.str.198, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 490, i32 2}
!251 = !{ptr @.str.200, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 491, i32 2}
!253 = !{ptr @.str.202, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 492, i32 2}
!255 = !{ptr @.str.204, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 493, i32 2}
!257 = !{ptr @.str.206, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 494, i32 2}
!259 = !{ptr @.str.208, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 495, i32 2}
!261 = !{ptr @.str.210, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 496, i32 2}
!263 = !{ptr @.str.212, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 497, i32 2}
!265 = !{ptr @.str.214, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 498, i32 2}
!267 = !{ptr @.str.216, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 499, i32 2}
!269 = !{ptr @.str.218, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 500, i32 2}
!271 = !{ptr @.str.220, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 501, i32 2}
!273 = !{ptr @.str.222, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 502, i32 2}
!275 = !{ptr @.str.224, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 504, i32 2}
!277 = !{ptr @.str.226, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 505, i32 2}
!279 = !{ptr @.str.228, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 506, i32 2}
!281 = !{ptr @.str.230, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 507, i32 2}
!283 = !{ptr @.str.232, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 508, i32 2}
!285 = !{ptr @.str.234, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 509, i32 2}
!287 = !{ptr @.str.236, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 510, i32 2}
!289 = !{ptr @.str.238, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 511, i32 2}
!291 = !{ptr @.str.240, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 512, i32 2}
!293 = !{ptr @.str.242, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 513, i32 2}
!295 = !{ptr @.str.244, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 514, i32 2}
!297 = !{ptr @.str.246, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 515, i32 2}
!299 = !{ptr @.str.248, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 516, i32 2}
!301 = !{ptr @.str.250, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 517, i32 2}
!303 = !{ptr @.str.252, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 518, i32 2}
!305 = !{ptr @.str.254, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 519, i32 2}
!307 = !{ptr @.str.256, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 520, i32 2}
!309 = !{ptr @.str.258, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 521, i32 2}
!311 = !{ptr @.str.260, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 522, i32 2}
!313 = !{ptr @.str.262, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 523, i32 2}
!315 = !{ptr @.str.264, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 526, i32 2}
!317 = !{ptr @.str.266, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 527, i32 2}
!319 = !{ptr @.str.268, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 529, i32 2}
!321 = !{ptr @.str.270, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 530, i32 2}
!323 = !{ptr @.str.272, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 532, i32 2}
!325 = !{ptr @.str.274, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 533, i32 2}
!327 = !{ptr @.str.276, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 534, i32 2}
!329 = !{ptr @.str.278, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 535, i32 2}
!331 = !{ptr @.str.280, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 537, i32 2}
!333 = !{ptr @.str.282, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 538, i32 2}
!335 = !{ptr @.str.284, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 541, i32 2}
!337 = !{ptr @.str.285, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @.str.287, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 542, i32 2}
!340 = !{ptr @.str.289, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 544, i32 2}
!342 = !{ptr @.str.291, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 545, i32 2}
!344 = !{ptr @.str.293, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 547, i32 2}
!346 = !{ptr @.str.295, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 548, i32 2}
!348 = !{ptr @common_clk_branches, !349, !"common_clk_branches", i1 false, i1 false}
!349 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 197, i32 35}
!350 = !{ptr @mux_ddrphy_p, !351, !"mux_ddrphy_p", i1 false, i1 false}
!351 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 132, i32 1}
!352 = !{ptr @.str.297, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 134, i32 27}
!354 = !{ptr @mux_usb480m_p, !355, !"mux_usb480m_p", i1 false, i1 false}
!355 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 134, i32 1}
!356 = !{ptr @mux_aclk_cpu_src_p, !357, !"mux_aclk_cpu_src_p", i1 false, i1 false}
!357 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 135, i32 1}
!358 = !{ptr @mux_pll_src_5plls_p, !359, !"mux_pll_src_5plls_p", i1 false, i1 false}
!359 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 137, i32 1}
!360 = !{ptr @mux_pll_src_4plls_p, !361, !"mux_pll_src_4plls_p", i1 false, i1 false}
!361 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 138, i32 1}
!362 = !{ptr @mux_aclk_peri_src_p, !363, !"mux_aclk_peri_src_p", i1 false, i1 false}
!363 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 141, i32 1}
!364 = !{ptr @mux_mmc_src_p, !365, !"mux_mmc_src_p", i1 false, i1 false}
!365 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 142, i32 1}
!366 = !{ptr @mux_sclk_vop_src_p, !367, !"mux_sclk_vop_src_p", i1 false, i1 false}
!367 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 144, i32 1}
!368 = !{ptr @mux_pll_src_3plls_p, !369, !"mux_pll_src_3plls_p", i1 false, i1 false}
!369 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 139, i32 1}
!370 = !{ptr @.str.298, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 143, i32 35}
!372 = !{ptr @mux_clk_cif_out_src_p, !373, !"mux_clk_cif_out_src_p", i1 false, i1 false}
!373 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 143, i32 1}
!374 = !{ptr @rk3128_i2s0_fracmux, !375, !"rk3128_i2s0_fracmux", i1 false, i1 false}
!375 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 173, i32 35}
!376 = !{ptr @.str.299, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 146, i32 49}
!378 = !{ptr @mux_i2s0_p, !379, !"mux_i2s0_p", i1 false, i1 false}
!379 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 146, i32 1}
!380 = !{ptr @rk3128_i2s1_fracmux, !381, !"rk3128_i2s1_fracmux", i1 false, i1 false}
!381 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 177, i32 35}
!382 = !{ptr @mux_i2s1_pre_p, !383, !"mux_i2s1_pre_p", i1 false, i1 false}
!383 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 147, i32 1}
!384 = !{ptr @mux_i2s_out_p, !385, !"mux_i2s_out_p", i1 false, i1 false}
!385 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 148, i32 1}
!386 = !{ptr @.str.300, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 182, i32 2}
!388 = !{ptr @rk3128_spdif_fracmux, !389, !"rk3128_spdif_fracmux", i1 false, i1 false}
!389 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 181, i32 35}
!390 = !{ptr @mux_sclk_spdif_p, !391, !"mux_sclk_spdif_p", i1 false, i1 false}
!391 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 149, i32 1}
!392 = !{ptr @.str.301, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 186, i32 2}
!394 = !{ptr @rk3128_uart0_fracmux, !395, !"rk3128_uart0_fracmux", i1 false, i1 false}
!395 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 185, i32 35}
!396 = !{ptr @mux_uart0_p, !397, !"mux_uart0_p", i1 false, i1 false}
!397 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 151, i32 1}
!398 = !{ptr @.str.302, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 190, i32 2}
!400 = !{ptr @rk3128_uart1_fracmux, !401, !"rk3128_uart1_fracmux", i1 false, i1 false}
!401 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 189, i32 35}
!402 = !{ptr @mux_uart1_p, !403, !"mux_uart1_p", i1 false, i1 false}
!403 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 152, i32 1}
!404 = !{ptr @.str.303, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 194, i32 2}
!406 = !{ptr @rk3128_uart2_fracmux, !407, !"rk3128_uart2_fracmux", i1 false, i1 false}
!407 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 193, i32 35}
!408 = !{ptr @mux_uart2_p, !409, !"mux_uart2_p", i1 false, i1 false}
!409 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 153, i32 1}
!410 = !{ptr @.str.304, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 155, i32 45}
!412 = !{ptr @mux_sclk_gmac_p, !413, !"mux_sclk_gmac_p", i1 false, i1 false}
!413 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 155, i32 1}
!414 = !{ptr @mux_armclk_p, !415, !"mux_armclk_p", i1 false, i1 false}
!415 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 133, i32 1}
!416 = !{ptr @rk3128_cpuclk_data, !417, !"rk3128_cpuclk_data", i1 false, i1 false}
!417 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 119, i32 46}
!418 = !{ptr @rk3128_cpuclk_rates, !419, !"rk3128_cpuclk_rates", i1 false, i1 false}
!419 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 97, i32 42}
!420 = !{ptr @.str.305, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 552, i32 2}
!422 = !{ptr @.str.307, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 553, i32 2}
!424 = !{ptr @.str.309, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 554, i32 2}
!426 = !{ptr @rk3126_clk_branches, !427, !"rk3126_clk_branches", i1 false, i1 false}
!427 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 551, i32 35}
!428 = !{ptr @rk3128_critical_clocks, !429, !"rk3128_critical_clocks", i1 false, i1 false}
!429 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 566, i32 26}
!430 = !{ptr @.str.311, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 558, i32 2}
!432 = !{ptr @.str.312, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 562, i32 2}
!434 = !{ptr @.str.314, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 563, i32 2}
!436 = !{ptr @rk3128_clk_branches, !437, !"rk3128_clk_branches", i1 false, i1 false}
!437 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 557, i32 35}
!438 = !{ptr @mux_sclk_sfc_src_p, !439, !"mux_sclk_sfc_src_p", i1 false, i1 false}
!439 = !{!"../drivers/clk/rockchip/clk-rk3128.c", i32 156, i32 1}
!440 = !{i32 1, !"wchar_size", i32 2}
!441 = !{i32 1, !"min_enum_size", i32 4}
!442 = !{i32 8, !"branch-target-enforcement", i32 0}
!443 = !{i32 8, !"sign-return-address", i32 0}
!444 = !{i32 8, !"sign-return-address-all", i32 0}
!445 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!446 = !{i32 7, !"uwtable", i32 1}
!447 = !{i32 7, !"frame-pointer", i32 2}
!448 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
