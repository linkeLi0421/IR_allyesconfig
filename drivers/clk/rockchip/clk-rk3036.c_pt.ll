; ModuleID = '/llk/IR_all_yes/drivers/clk/rockchip/clk-rk3036.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-rk3036.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rockchip_pll_clock = type { i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.rockchip_clk_branch = type { i32, i32, ptr, ptr, i8, i32, i32, i8, i8, i8, i32, i8, i8, i8, ptr, i32, i8, i8, ptr }
%struct.rockchip_cpuclk_reg_data = type { [4 x i32], [4 x i8], [4 x i32], i32, i8, i8, i8, i32 }
%struct.rockchip_cpuclk_rate_table = type { i32, [5 x %struct.rockchip_cpuclk_clksel] }
%struct.rockchip_cpuclk_clksel = type { i32, i32 }
%struct.rockchip_pll_rate_table = type { i32, %union.anon.6 }
%union.anon.6 = type { %struct.anon.8 }
%struct.anon.8 = type { i32, i32, i32, i32, i32, i32 }

@__of_table_rk3036_cru = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3036-cru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3036_clk_init }, section "__clk_of_table", align 4
@rk3036_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: could not map cru region\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rk3036_clk_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/rockchip/clk-rk3036.c\00", [62 x i8] zeroinitializer }, align 32
@rk3036_clk_init._entry_ptr = internal global ptr @rk3036_clk_init._entry, section ".printk_index", align 4
@rk3036_clk_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: rockchip clk init failed\0A\00", [32 x i8] zeroinitializer }, align 32
@rk3036_clk_init._entry_ptr.5 = internal global ptr @rk3036_clk_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb480m\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xin24m\00", [25 x i8] zeroinitializer }, align 32
@rk3036_clk_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: could not register clock usb480m: %ld\0A\00", [51 x i8] zeroinitializer }, align 32
@rk3036_clk_init._entry_ptr.10 = internal global ptr @rk3036_clk_init._entry.8, section ".printk_index", align 4
@rk3036_pll_clks = internal global [3 x %struct.rockchip_pll_clock] [%struct.rockchip_pll_clock { i32 1, ptr @.str.12, ptr @mux_pll_p, i8 2, i32 64, i32 0, i32 64, i32 0, i32 5, i32 0, i8 0, ptr @rk3036_pll_rates }, %struct.rockchip_pll_clock { i32 2, ptr @.str.13, ptr @mux_pll_p, i8 2, i32 64, i32 16, i32 64, i32 4, i32 4, i32 0, i8 0, ptr null }, %struct.rockchip_pll_clock { i32 3, ptr @.str.14, ptr @mux_pll_p, i8 2, i32 64, i32 48, i32 64, i32 12, i32 6, i32 0, i8 1, ptr @rk3036_pll_rates }], section ".init.data", align 4
@rk3036_clk_branches = internal global [108 x %struct.rockchip_clk_branch] [%struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.15, ptr @.compoundliteral, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.16, ptr @.compoundliteral.17, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 2, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.18, ptr @.compoundliteral.19, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.20, ptr @.compoundliteral.21, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.22, ptr @mux_ddrphy_p, i8 2, i32 8, i32 172, i8 8, i8 1, i8 4, i32 0, i8 0, i8 2, i8 10, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.23, ptr @.compoundliteral.24, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 2, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.25, ptr @.compoundliteral.26, i8 1, i32 8, i32 72, i8 0, i8 0, i8 0, i32 0, i8 0, i8 4, i8 40, ptr null, i32 208, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.27, ptr @.compoundliteral.28, i8 1, i32 8, i32 72, i8 0, i8 0, i8 0, i32 0, i8 4, i8 3, i8 40, ptr null, i32 208, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.29, ptr @.compoundliteral.30, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.31, ptr @.compoundliteral.32, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.33, ptr @mux_busclk_p, i8 3, i32 0, i32 68, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 209, i32 5, ptr @.str.34, ptr @.compoundliteral.35, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 362, i32 0, ptr @.str.36, ptr @.compoundliteral.37, i8 1, i32 8, i32 72, i8 0, i8 0, i8 0, i32 0, i8 12, i8 3, i8 40, ptr null, i32 208, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 477, i32 0, ptr @.str.38, ptr @.compoundliteral.39, i8 1, i32 8, i32 72, i8 0, i8 0, i8 0, i32 0, i8 8, i8 2, i8 40, ptr null, i32 208, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.40, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 108, i8 14, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 216, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 210, i32 5, ptr @.str.41, ptr @.compoundliteral.42, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.43, ptr @.compoundliteral.44, i8 1, i32 8, i32 108, i8 0, i8 0, i8 0, i32 0, i8 12, i8 2, i8 10, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 363, i32 5, ptr @.str.45, ptr @.compoundliteral.46, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.47, ptr @.compoundliteral.48, i8 1, i32 8, i32 108, i8 0, i8 0, i8 0, i32 0, i8 8, i8 2, i8 10, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 478, i32 5, ptr @.str.49, ptr @.compoundliteral.50, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 85, i32 0, ptr @.str.51, ptr @mux_timer_p, i8 2, i32 8, i32 76, i8 4, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 86, i32 0, ptr @.str.52, ptr @mux_timer_p, i8 2, i32 8, i32 76, i8 5, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 87, i32 0, ptr @.str.53, ptr @mux_timer_p, i8 2, i32 8, i32 76, i8 6, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 88, i32 0, ptr @.str.54, ptr @mux_timer_p, i8 2, i32 8, i32 76, i8 7, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.55, ptr @mux_pll_src_apll_dpll_gpll_usb480m_p, i8 4, i32 0, i32 120, i8 10, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.56, ptr @.compoundliteral.57, i8 1, i32 0, i32 120, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.58, ptr @.compoundliteral.59, i8 1, i32 0, i32 124, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.60, ptr @.compoundliteral.61, i8 1, i32 0, i32 128, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.62, ptr @.compoundliteral.63, i8 1, i32 4, i32 136, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 9, i8 3, ptr @rk3036_uart0_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.64, ptr @.compoundliteral.65, i8 1, i32 4, i32 140, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 11, i8 3, ptr @rk3036_uart1_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.66, ptr @.compoundliteral.67, i8 1, i32 4, i32 144, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 13, i8 3, ptr @rk3036_uart2_fracmux }, %struct.rockchip_clk_branch { i32 208, i32 0, ptr @.str.68, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 196, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 220, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 476, i32 8, ptr @.str.69, ptr @.compoundliteral.70, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 4, i8 0, ptr null, i32 220, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.71, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 148, i8 0, i8 2, i8 4, i32 0, i8 2, i8 5, i8 8, ptr null, i32 248, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.72, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 192, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 212, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.73, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 188, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 208, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 100, i32 0, ptr @.str.74, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 180, i8 0, i8 2, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 220, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.75, ptr @mux_mmc_src_p, i8 4, i32 0, i32 116, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 68, i32 3, ptr @.str.76, ptr @.compoundliteral.77, i8 1, i32 0, i32 112, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.78, ptr @mux_mmc_src_p, i8 4, i32 0, i32 116, i8 10, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 69, i32 3, ptr @.str.79, ptr @.compoundliteral.80, i8 1, i32 0, i32 112, i8 0, i8 0, i8 0, i32 0, i8 8, i8 7, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 71, i32 0, ptr @.str.81, ptr @mux_mmc_src_p, i8 4, i32 0, i32 116, i8 12, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 216, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 114, i32 6, ptr @.str.82, ptr @.compoundliteral.83, i8 1, i32 0, i32 324, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 118, i32 6, ptr @.str.84, ptr @.compoundliteral.85, i8 1, i32 0, i32 328, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 115, i32 6, ptr @.str.86, ptr @.compoundliteral.87, i8 1, i32 0, i32 332, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 119, i32 6, ptr @.str.88, ptr @.compoundliteral.89, i8 1, i32 0, i32 336, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 117, i32 6, ptr @.str.90, ptr @.compoundliteral.91, i8 1, i32 0, i32 340, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 121, i32 6, ptr @.str.92, ptr @.compoundliteral.93, i8 1, i32 0, i32 344, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.94, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 80, i8 14, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 208, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.95, ptr @.compoundliteral.96, i8 1, i32 4, i32 96, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 208, i8 10, i8 3, ptr @rk3036_i2s_fracmux }, %struct.rockchip_clk_branch { i32 113, i32 0, ptr @.str.97, ptr @mux_i2s_clkout_p, i8 2, i32 0, i32 80, i8 12, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 82, i32 5, ptr @.str.98, ptr @.compoundliteral.100, i8 1, i32 4, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.101, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 88, i8 10, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 216, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.102, ptr @.compoundliteral.103, i8 1, i32 0, i32 104, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 216, i8 12, i8 3, ptr @rk3036_spdif_fracmux }, %struct.rockchip_clk_branch { i32 93, i32 5, ptr @.str.104, ptr @.compoundliteral.105, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 64, i32 0, ptr @.str.106, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 204, i8 8, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 65, i32 0, ptr @.str.107, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 168, i8 8, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 216, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 76, i32 0, ptr @.str.108, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 132, i8 8, i8 2, i8 4, i32 0, i8 10, i8 5, i8 8, ptr null, i32 248, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 160, i32 0, ptr @.str.109, ptr @mux_pll_src_dmyapll_dpll_gpll_xin24_p, i8 4, i32 0, i32 132, i8 0, i8 2, i8 4, i32 0, i8 2, i8 5, i8 8, ptr null, i32 248, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 153, i32 0, ptr @.str.110, ptr @mux_pll_src_3plls_p, i8 3, i32 128, i32 152, i8 0, i8 2, i8 4, i32 0, i8 9, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 152, i32 1, ptr @.str.111, ptr @mux_mac_p, i8 2, i32 4, i32 152, i8 3, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 151, i32 0, ptr @.str.112, ptr @.compoundliteral.113, i8 1, i32 0, i32 152, i8 0, i8 0, i8 0, i32 0, i8 4, i8 5, i8 8, ptr null, i32 216, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.114, ptr @.compoundliteral.115, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 2, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 109, i32 1, ptr @.str.116, ptr @mux_dclk_p, i8 2, i32 0, i32 192, i8 0, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.117, ptr @.compoundliteral.118, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.119, ptr @.compoundliteral.120, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 467, i32 5, ptr @.str.121, ptr @.compoundliteral.122, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 329, i32 5, ptr @.str.123, ptr @.compoundliteral.124, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 364, i32 5, ptr @.str.125, ptr @.compoundliteral.126, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 369, i32 5, ptr @.str.127, ptr @.compoundliteral.128, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 360, i32 5, ptr @.str.129, ptr @.compoundliteral.130, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 203, i32 5, ptr @.str.131, ptr @.compoundliteral.132, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 197, i32 5, ptr @.str.133, ptr @.compoundliteral.134, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 472, i32 5, ptr @.str.135, ptr @.compoundliteral.136, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 465, i32 5, ptr @.str.137, ptr @.compoundliteral.138, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 123, i32 5, ptr @.str.139, ptr @.compoundliteral.140, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 124, i32 5, ptr @.str.141, ptr @.compoundliteral.142, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.143, ptr @.compoundliteral.144, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.145, ptr @.compoundliteral.146, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 194, i32 5, ptr @.str.147, ptr @.compoundliteral.148, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.149, ptr @.compoundliteral.150, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.151, ptr @.compoundliteral.152, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.153, ptr @.compoundliteral.154, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.155, ptr @.compoundliteral.156, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 453, i32 5, ptr @.str.157, ptr @.compoundliteral.158, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 456, i32 5, ptr @.str.159, ptr @.compoundliteral.160, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 457, i32 5, ptr @.str.161, ptr @.compoundliteral.162, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 459, i32 5, ptr @.str.163, ptr @.compoundliteral.164, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 449, i32 5, ptr @.str.165, ptr @.compoundliteral.166, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 450, i32 5, ptr @.str.167, ptr @.compoundliteral.168, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 462, i32 5, ptr @.str.169, ptr @.compoundliteral.170, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 454, i32 5, ptr @.str.171, ptr @.compoundliteral.172, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 460, i32 5, ptr @.str.173, ptr @.compoundliteral.174, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.175, ptr @.compoundliteral.176, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.177, ptr @.compoundliteral.178, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 353, i32 5, ptr @.str.179, ptr @.compoundliteral.180, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 350, i32 5, ptr @.str.181, ptr @.compoundliteral.182, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 338, i32 5, ptr @.str.183, ptr @.compoundliteral.184, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 368, i32 5, ptr @.str.185, ptr @.compoundliteral.186, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 341, i32 5, ptr @.str.187, ptr @.compoundliteral.188, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 342, i32 5, ptr @.str.189, ptr @.compoundliteral.190, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 343, i32 5, ptr @.str.191, ptr @.compoundliteral.192, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 332, i32 5, ptr @.str.193, ptr @.compoundliteral.194, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 333, i32 5, ptr @.str.195, ptr @.compoundliteral.196, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 334, i32 5, ptr @.str.197, ptr @.compoundliteral.198, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 320, i32 5, ptr @.str.199, ptr @.compoundliteral.200, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 321, i32 5, ptr @.str.201, ptr @.compoundliteral.202, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 322, i32 5, ptr @.str.203, ptr @.compoundliteral.204, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 11, i8 3, ptr null }], section ".init.data", align 4
@rk3036_critical_clocks = internal constant [5 x ptr] [ptr @.str.34, ptr @.str.41, ptr @.str.49, ptr @.str.45, ptr @.str.125], section ".init.rodata", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"armclk\00", [25 x i8] zeroinitializer }, align 32
@mux_armclk_p = internal constant [2 x ptr] [ptr @.str.12, ptr @.str.15], section ".init.rodata", align 4
@rk3036_cpuclk_data = internal constant { %struct.rockchip_cpuclk_reg_data, [48 x i8] } { %struct.rockchip_cpuclk_reg_data { [4 x i32] [i32 68, i32 0, i32 0, i32 0], [4 x i8] zeroinitializer, [4 x i32] [i32 31, i32 0, i32 0, i32 0], i32 1, i8 1, i8 0, i8 7, i32 1 }, [48 x i8] zeroinitializer }, align 32
@rk3036_cpuclk_rates = internal global [3 x %struct.rockchip_cpuclk_rate_table] [%struct.rockchip_cpuclk_rate_table { i32 816000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 983044 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 600000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 983044 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 312000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 983044 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }], section ".init.data", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apll\00", [27 x i8] zeroinitializer }, align 32
@mux_pll_p = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.7], section ".init.rodata", align 4
@rk3036_pll_rates = internal global { [43 x %struct.rockchip_pll_rate_table], [300 x i8] } { [43 x %struct.rockchip_pll_rate_table] [%struct.rockchip_pll_rate_table { i32 1608000000, %union.anon.6 { %struct.anon.8 { i32 67, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1584000000, %union.anon.6 { %struct.anon.8 { i32 66, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1560000000, %union.anon.6 { %struct.anon.8 { i32 65, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1536000000, %union.anon.6 { %struct.anon.8 { i32 64, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1512000000, %union.anon.6 { %struct.anon.8 { i32 63, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1488000000, %union.anon.6 { %struct.anon.8 { i32 62, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1464000000, %union.anon.6 { %struct.anon.8 { i32 61, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1440000000, %union.anon.6 { %struct.anon.8 { i32 60, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1416000000, %union.anon.6 { %struct.anon.8 { i32 59, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1392000000, %union.anon.6 { %struct.anon.8 { i32 58, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1368000000, %union.anon.6 { %struct.anon.8 { i32 57, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1344000000, %union.anon.6 { %struct.anon.8 { i32 56, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1320000000, %union.anon.6 { %struct.anon.8 { i32 55, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1296000000, %union.anon.6 { %struct.anon.8 { i32 54, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1272000000, %union.anon.6 { %struct.anon.8 { i32 53, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1248000000, %union.anon.6 { %struct.anon.8 { i32 52, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1200000000, %union.anon.6 { %struct.anon.8 { i32 50, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1188000000, %union.anon.6 { %struct.anon.8 { i32 99, i32 1, i32 2, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1104000000, %union.anon.6 { %struct.anon.8 { i32 46, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1100000000, %union.anon.6 { %struct.anon.8 { i32 550, i32 1, i32 12, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1008000000, %union.anon.6 { %struct.anon.8 { i32 84, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1000000000, %union.anon.6 { %struct.anon.8 { i32 500, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 984000000, %union.anon.6 { %struct.anon.8 { i32 82, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 960000000, %union.anon.6 { %struct.anon.8 { i32 80, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 936000000, %union.anon.6 { %struct.anon.8 { i32 78, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 912000000, %union.anon.6 { %struct.anon.8 { i32 76, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 900000000, %union.anon.6 { %struct.anon.8 { i32 300, i32 2, i32 4, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 888000000, %union.anon.6 { %struct.anon.8 { i32 74, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 864000000, %union.anon.6 { %struct.anon.8 { i32 72, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 840000000, %union.anon.6 { %struct.anon.8 { i32 70, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 816000000, %union.anon.6 { %struct.anon.8 { i32 68, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 800000000, %union.anon.6 { %struct.anon.8 { i32 400, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 700000000, %union.anon.6 { %struct.anon.8 { i32 350, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 696000000, %union.anon.6 { %struct.anon.8 { i32 58, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 600000000, %union.anon.6 { %struct.anon.8 { i32 75, i32 3, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 594000000, %union.anon.6 { %struct.anon.8 { i32 99, i32 2, i32 2, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 504000000, %union.anon.6 { %struct.anon.8 { i32 63, i32 3, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 500000000, %union.anon.6 { %struct.anon.8 { i32 250, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 408000000, %union.anon.6 { %struct.anon.8 { i32 68, i32 2, i32 1, i32 2, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 312000000, %union.anon.6 { %struct.anon.8 { i32 52, i32 2, i32 1, i32 2, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 216000000, %union.anon.6 { %struct.anon.8 { i32 72, i32 4, i32 1, i32 2, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 96000000, %union.anon.6 { %struct.anon.8 { i32 64, i32 4, i32 1, i32 4, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table zeroinitializer], [300 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dpll\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpll\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpll_armclk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.14], [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xin12m\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.7], [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpll_ddr\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpll_ddr\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.14], [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ddrphy2x\00", [23 x i8] zeroinitializer }, align 32
@mux_ddrphy_p = internal constant [2 x ptr] [ptr @.str.18, ptr @.str.20], section ".init.rodata", align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ddrphy\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.22], [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_dbg\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.11], [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_core_pre\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.11], [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpll_cpu\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpll_cpu\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.14], [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aclk_cpu_src\00", [19 x i8] zeroinitializer }, align 32
@mux_busclk_p = internal constant [3 x ptr] [ptr @.str.12, ptr @.str.29, ptr @.str.31], section ".init.rodata", align 4
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_cpu\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.33], [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_cpu\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.33], [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_cpu\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.33], [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_peri_src\00", [18 x i8] zeroinitializer }, align 32
@mux_pll_src_3plls_p = internal constant [3 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14], section ".init.rodata", align 4
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_peri\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.40], [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_peri_src\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.40], [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_peri\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.43], [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hclk_peri_src\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.40], [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_peri\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.47], [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_timer0\00", [20 x i8] zeroinitializer }, align 32
@mux_timer_p = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.43], section ".init.rodata", align 4
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_timer1\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_timer2\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_timer3\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart_pll_clk\00", [19 x i8] zeroinitializer }, align 32
@mux_pll_src_apll_dpll_gpll_usb480m_p = internal constant [4 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.6], section ".init.rodata", align 4
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_src\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.55], [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_src\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.55], [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_src\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.55], [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart0_frac\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.56], [28 x i8] zeroinitializer }, align 32
@rk3036_uart0_fracmux = internal global %struct.rockchip_clk_branch { i32 77, i32 1, ptr @.str.205, ptr @mux_uart0_p, i8 3, i32 4, i32 120, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart1_frac\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.58], [28 x i8] zeroinitializer }, align 32
@rk3036_uart1_fracmux = internal global %struct.rockchip_clk_branch { i32 78, i32 1, ptr @.str.206, ptr @mux_uart1_p, i8 3, i32 4, i32 124, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uart2_frac\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.60], [28 x i8] zeroinitializer }, align 32
@rk3036_uart2_fracmux = internal global %struct.rockchip_clk_branch { i32 79, i32 1, ptr @.str.207, ptr @mux_uart2_p, i8 3, i32 4, i32 128, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aclk_vcodec\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hclk_vcodec\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.68], [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_hvec\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aclk_disp1_pre\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hclk_disp_pre\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dclk_lcdc\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sclk_sdmmc_src\00", [17 x i8] zeroinitializer }, align 32
@mux_mmc_src_p = internal constant [4 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.7], section ".init.rodata", align 4
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_sdmmc\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.75], [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sclk_sdio_src\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_sdio\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.78], [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_emmc\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdmmc_drv\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.76], [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdmmc_sample\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.76], [28 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdio_drv\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.79], [28 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio_sample\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.79], [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emmc_drv\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.81], [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"emmc_sample\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.81], [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2s_src\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s_frac\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.94], [28 x i8] zeroinitializer }, align 32
@rk3036_i2s_fracmux = internal global %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.99, ptr @mux_i2s_pre_p, i8 4, i32 4, i32 80, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s_clkout\00", [21 x i8] zeroinitializer }, align 32
@mux_i2s_clkout_p = internal constant [2 x ptr] [ptr @.str.99, ptr @.str.16], section ".init.rodata", align 4
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sclk_i2s\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2s_pre\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.99], [28 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_src\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif_frac\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.101], [28 x i8] zeroinitializer }, align 32
@rk3036_spdif_fracmux = internal global %struct.rockchip_clk_branch { i32 83, i32 1, ptr @.str.209, ptr @mux_spdif_p, i8 3, i32 0, i32 88, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sclk_otgphy0\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.16], [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sclk_gpu\00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sclk_spi\00", [23 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_nandc\00", [21 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sclk_sfc\00", [23 x i8] zeroinitializer }, align 32
@mux_pll_src_dmyapll_dpll_gpll_xin24_p = internal constant [4 x ptr] [ptr @.str.210, ptr @.str.13, ptr @.str.14, ptr @.str.7], section ".init.rodata", align 4
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac_pll_src\00", [20 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac_clk_ref\00", [20 x i8] zeroinitializer }, align 32
@mux_mac_p = internal constant [2 x ptr] [ptr @.str.110, ptr @.str.211], section ".init.rodata", align 4
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mac_clk\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.111], [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sclk_macref_out\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.47], [28 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dclk_hdmi\00", [22 x i8] zeroinitializer }, align 32
@mux_dclk_p = internal constant [2 x ptr] [ptr @.str.74, ptr @.str.212], section ".init.rodata", align 4
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_intmem\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.34], [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_strc_sys\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.34], [28 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_rom\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.38], [28 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_grf\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_ddrupctl\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_acodec\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_hdmi\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_vio\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.72], [28 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_lcdc\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.72], [28 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hclk_vio_bus\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.73], [28 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_lcdc\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.73], [28 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sclk_pvtm_core\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.7], [28 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sclk_pvtm_gpu\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.7], [28 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"aclk_peri_axi_matrix\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.41], [28 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_cpu_peri\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.41], [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aclk_dmac2\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.41], [28 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_peri_niu\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.150 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.41], [28 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hclk_peri_matrix\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.49], [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hclk_usb_peri\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.49], [28 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hclk_peri_arbi\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.156 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.49], [28 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_nandc\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.49], [28 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_sdmmc\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.49], [28 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_sdio\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.162 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.49], [28 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_emmc\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.49], [28 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_otg0\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.49], [28 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_otg1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.168 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.49], [28 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_i2s\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.49], [28 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_sfc\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.49], [28 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_mac\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.49], [28 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pclk_peri_matrix\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_efuse\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_timer\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.180 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_pwm\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_spi\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pclk_wdt\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.186 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_uart0\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.188 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_uart1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_uart2\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.192 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_i2c0\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_i2c1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.196 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclk_i2c2\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.198 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio0\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.200 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.202 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio2\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.204 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.45], [28 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_uart0\00", [21 x i8] zeroinitializer }, align 32
@mux_uart0_p = internal constant [3 x ptr] [ptr @.str.56, ptr @.str.62, ptr @.str.7], section ".init.rodata", align 4
@.str.206 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_uart1\00", [21 x i8] zeroinitializer }, align 32
@mux_uart1_p = internal constant [3 x ptr] [ptr @.str.58, ptr @.str.64, ptr @.str.7], section ".init.rodata", align 4
@.str.207 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_uart2\00", [21 x i8] zeroinitializer }, align 32
@mux_uart2_p = internal constant [3 x ptr] [ptr @.str.60, ptr @.str.66, ptr @.str.7], section ".init.rodata", align 4
@mux_i2s_pre_p = internal constant [4 x ptr] [ptr @.str.94, ptr @.str.95, ptr @.str.208, ptr @.str.16], section ".init.rodata", align 4
@.str.208 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ext_i2s\00", [24 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_spdif\00", [21 x i8] zeroinitializer }, align 32
@mux_spdif_p = internal constant [3 x ptr] [ptr @.str.101, ptr @.str.102, ptr @.str.16], section ".init.rodata", align 4
@.str.210 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dummy_apll\00", [21 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rmii_clkin\00", [21 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dclk_cru\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 444, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 457, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 462, i32 40 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 462, i32 51 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 464, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 475, i32 44 }
@___asan_gen_.246 = private unnamed_addr constant [19 x i8] c"rk3036_cpuclk_data\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 104, i32 46 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 137, i32 11 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"rk3036_pll_rates\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 24, i32 39 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 139, i32 11 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 141, i32 11 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 174, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 177, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 183, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 185, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 187, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 189, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 191, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 194, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 198, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 199, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 200, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 202, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 204, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 207, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 211, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 215, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 217, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 219, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 221, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 223, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 226, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 229, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 232, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 235, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 239, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 241, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 244, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 247, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 250, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 254, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 258, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 263, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 266, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 269, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 273, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 276, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 279, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 283, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 286, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 289, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 292, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 295, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 299, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 300, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 302, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 303, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 305, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 306, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 308, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 311, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 315, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 318, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 321, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 324, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 329, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 332, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 336, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 340, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 344, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 348, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 350, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 353, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 356, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 358, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 366, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 367, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 370, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 373, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 374, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 375, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 376, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 379, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 380, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 382, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 383, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 387, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 388, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 391, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 392, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 393, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 394, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant [21 x i8] c".compoundliteral.150\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 397, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 398, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 399, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant [21 x i8] c".compoundliteral.156\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 400, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 401, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 402, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 403, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 404, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 405, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant [21 x i8] c".compoundliteral.168\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 406, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 407, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 408, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 411, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 412, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 413, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant [21 x i8] c".compoundliteral.180\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 414, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 415, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 416, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant [21 x i8] c".compoundliteral.186\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 417, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant [21 x i8] c".compoundliteral.188\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 418, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 419, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant [21 x i8] c".compoundliteral.192\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 420, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 421, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant [21 x i8] c".compoundliteral.196\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 422, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant [21 x i8] c".compoundliteral.198\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 423, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant [21 x i8] c".compoundliteral.200\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 424, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant [21 x i8] c".compoundliteral.202\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 425, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant [21 x i8] c".compoundliteral.204\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 150, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 154, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 158, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 127, i32 49 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 166, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 124, i32 52 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 133, i32 37 }
@___asan_gen_.691 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.692 = private constant [37 x i8] c"../drivers/clk/rockchip/clk-rk3036.c\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.692, i32 134, i32 36 }
@llvm.compiler.used = appending global [219 x ptr] [ptr @__of_table_rk3036_cru, ptr @rk3036_clk_init._entry, ptr @rk3036_clk_init._entry.3, ptr @rk3036_clk_init._entry.8, ptr @rk3036_clk_init._entry_ptr, ptr @rk3036_clk_init._entry_ptr.10, ptr @rk3036_clk_init._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @rk3036_cpuclk_data, ptr @.str.12, ptr @rk3036_pll_rates, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.compoundliteral, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.compoundliteral.77, ptr @.str.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.str.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @.str.101, ptr @.str.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @.compoundliteral.115, ptr @.str.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.str.121, ptr @.compoundliteral.122, ptr @.str.123, ptr @.compoundliteral.124, ptr @.str.125, ptr @.compoundliteral.126, ptr @.str.127, ptr @.compoundliteral.128, ptr @.str.129, ptr @.compoundliteral.130, ptr @.str.131, ptr @.compoundliteral.132, ptr @.str.133, ptr @.compoundliteral.134, ptr @.str.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @.compoundliteral.138, ptr @.str.139, ptr @.compoundliteral.140, ptr @.str.141, ptr @.compoundliteral.142, ptr @.str.143, ptr @.compoundliteral.144, ptr @.str.145, ptr @.compoundliteral.146, ptr @.str.147, ptr @.compoundliteral.148, ptr @.str.149, ptr @.compoundliteral.150, ptr @.str.151, ptr @.compoundliteral.152, ptr @.str.153, ptr @.compoundliteral.154, ptr @.str.155, ptr @.compoundliteral.156, ptr @.str.157, ptr @.compoundliteral.158, ptr @.str.159, ptr @.compoundliteral.160, ptr @.str.161, ptr @.compoundliteral.162, ptr @.str.163, ptr @.compoundliteral.164, ptr @.str.165, ptr @.compoundliteral.166, ptr @.str.167, ptr @.compoundliteral.168, ptr @.str.169, ptr @.compoundliteral.170, ptr @.str.171, ptr @.compoundliteral.172, ptr @.str.173, ptr @.compoundliteral.174, ptr @.str.175, ptr @.compoundliteral.176, ptr @.str.177, ptr @.compoundliteral.178, ptr @.str.179, ptr @.compoundliteral.180, ptr @.str.181, ptr @.compoundliteral.182, ptr @.str.183, ptr @.compoundliteral.184, ptr @.str.185, ptr @.compoundliteral.186, ptr @.str.187, ptr @.compoundliteral.188, ptr @.str.189, ptr @.compoundliteral.190, ptr @.str.191, ptr @.compoundliteral.192, ptr @.str.193, ptr @.compoundliteral.194, ptr @.str.195, ptr @.compoundliteral.196, ptr @.str.197, ptr @.compoundliteral.198, ptr @.str.199, ptr @.compoundliteral.200, ptr @.str.201, ptr @.compoundliteral.202, ptr @.str.203, ptr @.compoundliteral.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212], section "llvm.metadata"
@0 = internal global [215 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3036_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3036_clk_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3036_clk_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3036_cpuclk_data to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3036_pll_rates to i32), i32 1204, i32 1504, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.150 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.156 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.168 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.180 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.186 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.188 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.192 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.196 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.198 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.200 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.202 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.204 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rk3036_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 524300) #3, !srcloc !326
  %call2 = tail call ptr @rockchip_clk_init(ptr noundef %np, ptr noundef nonnull %call, i32 noundef 479) #3
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #6
  tail call void @iounmap(ptr noundef nonnull %call) #3
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 20, i32 noundef 1) #3
  %cmp.i37 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i37, label %do.end16, label %if.end10.if.end20_crit_edge

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call11 to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef %0) #6
  br label %if.end20

if.end20:                                         ; preds = %do.end16, %if.end10.if.end20_crit_edge
  tail call void @rockchip_clk_register_plls(ptr noundef %call2, ptr noundef nonnull @rk3036_pll_clks, i32 noundef 3, i32 noundef 332) #3
  tail call void @rockchip_clk_register_branches(ptr noundef %call2, ptr noundef nonnull @rk3036_clk_branches, i32 noundef 108) #3
  tail call void @rockchip_clk_protect_critical(ptr noundef nonnull @rk3036_critical_clocks, i32 noundef 5) #3
  tail call void @rockchip_clk_register_armclk(ptr noundef %call2, i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef nonnull @mux_armclk_p, i8 noundef zeroext 2, ptr noundef nonnull @rk3036_cpuclk_data, ptr noundef nonnull @rk3036_cpuclk_rates, i32 noundef 3) #3
  %add.ptr21 = getelementptr i8, ptr %call, i32 272
  tail call void @rockchip_register_softrst(ptr noundef %np, i32 noundef 9, ptr noundef %add.ptr21, i8 noundef zeroext 1) #3
  tail call void @rockchip_register_restart_notifier(ptr noundef %call2, i32 noundef 256, ptr noundef null) #3
  tail call void @rockchip_clk_of_add_provider(ptr noundef %np, ptr noundef %call2) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end7, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rockchip_clk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_register_plls(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_register_branches(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_protect_critical(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_register_armclk(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_register_softrst(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_register_restart_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_of_add_provider(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 215)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 215)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315}
!llvm.module.flags = !{!317, !318, !319, !320, !321, !322, !323, !324}
!llvm.ident = !{!325}

!0 = !{ptr @__of_table_rk3036_cru, !1, !"__of_table_rk3036_cru", i1 false, i1 false}
!1 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 487, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 444, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rk3036_clk_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @rk3036_clk_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 457, i32 3}
!10 = !{ptr @rk3036_clk_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rk3036_clk_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 462, i32 40}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 462, i32 51}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 464, i32 3}
!18 = !{ptr @rk3036_clk_init._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rk3036_clk_init._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 475, i32 44}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 137, i32 11}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 139, i32 11}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 141, i32 11}
!28 = !{ptr @rk3036_pll_clks, !29, !"rk3036_pll_clks", i1 false, i1 false}
!29 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 136, i32 34}
!30 = !{ptr @mux_pll_p, !31, !"mux_pll_p", i1 false, i1 false}
!31 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 115, i32 1}
!32 = !{ptr @rk3036_pll_rates, !33, !"rk3036_pll_rates", i1 false, i1 false}
!33 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 24, i32 39}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 174, i32 2}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 177, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 183, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 185, i32 2}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 187, i32 2}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 189, i32 2}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 191, i32 2}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 194, i32 2}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 198, i32 2}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 199, i32 2}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 200, i32 2}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 202, i32 2}
!58 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 204, i32 2}
!60 = !{ptr @.str.38, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 207, i32 2}
!62 = !{ptr @.str.40, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 211, i32 2}
!64 = !{ptr @.str.41, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 215, i32 2}
!66 = !{ptr @.str.43, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 217, i32 2}
!68 = !{ptr @.str.45, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 219, i32 2}
!70 = !{ptr @.str.47, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 221, i32 2}
!72 = !{ptr @.str.49, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 223, i32 2}
!74 = !{ptr @.str.51, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 226, i32 2}
!76 = !{ptr @.str.52, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 229, i32 2}
!78 = !{ptr @.str.53, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 232, i32 2}
!80 = !{ptr @.str.54, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 235, i32 2}
!82 = !{ptr @.str.55, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 239, i32 2}
!84 = !{ptr @.str.56, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 241, i32 2}
!86 = !{ptr @.str.58, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 244, i32 2}
!88 = !{ptr @.str.60, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 247, i32 2}
!90 = !{ptr @.str.62, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 250, i32 2}
!92 = !{ptr @.str.64, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 254, i32 2}
!94 = !{ptr @.str.66, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 258, i32 2}
!96 = !{ptr @.str.68, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 263, i32 2}
!98 = !{ptr @.str.69, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 266, i32 2}
!100 = !{ptr @.str.71, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 269, i32 2}
!102 = !{ptr @.str.72, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 273, i32 2}
!104 = !{ptr @.str.73, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 276, i32 2}
!106 = !{ptr @.str.74, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 279, i32 2}
!108 = !{ptr @.str.75, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 283, i32 2}
!110 = !{ptr @.str.76, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 286, i32 2}
!112 = !{ptr @.str.78, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 289, i32 2}
!114 = !{ptr @.str.79, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 292, i32 2}
!116 = !{ptr @.str.81, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 295, i32 2}
!118 = !{ptr @.str.82, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 299, i32 2}
!120 = !{ptr @.str.84, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 300, i32 2}
!122 = !{ptr @.str.86, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 302, i32 2}
!124 = !{ptr @.str.88, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 303, i32 2}
!126 = !{ptr @.str.90, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 305, i32 2}
!128 = !{ptr @.str.92, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 306, i32 2}
!130 = !{ptr @.str.94, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 308, i32 2}
!132 = !{ptr @.str.95, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 311, i32 2}
!134 = !{ptr @.str.97, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 315, i32 2}
!136 = !{ptr @.str.98, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 318, i32 2}
!138 = !{ptr @.str.99, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.101, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 321, i32 2}
!141 = !{ptr @.str.102, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 324, i32 2}
!143 = !{ptr @.str.104, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 329, i32 2}
!145 = !{ptr @.str.106, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 332, i32 2}
!147 = !{ptr @.str.107, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 336, i32 2}
!149 = !{ptr @.str.108, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 340, i32 2}
!151 = !{ptr @.str.109, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 344, i32 2}
!153 = !{ptr @.str.110, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 348, i32 2}
!155 = !{ptr @.str.111, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 350, i32 2}
!157 = !{ptr @.str.112, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 353, i32 2}
!159 = !{ptr @.str.114, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 356, i32 2}
!161 = !{ptr @.str.116, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 358, i32 2}
!163 = !{ptr @.str.117, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 366, i32 2}
!165 = !{ptr @.str.119, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 367, i32 2}
!167 = !{ptr @.str.121, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 370, i32 2}
!169 = !{ptr @.str.123, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 373, i32 2}
!171 = !{ptr @.str.125, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 374, i32 2}
!173 = !{ptr @.str.127, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 375, i32 2}
!175 = !{ptr @.str.129, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 376, i32 2}
!177 = !{ptr @.str.131, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 379, i32 2}
!179 = !{ptr @.str.133, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 380, i32 2}
!181 = !{ptr @.str.135, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 382, i32 2}
!183 = !{ptr @.str.137, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 383, i32 2}
!185 = !{ptr @.str.139, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 387, i32 2}
!187 = !{ptr @.str.141, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 388, i32 2}
!189 = !{ptr @.str.143, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 391, i32 2}
!191 = !{ptr @.str.145, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 392, i32 2}
!193 = !{ptr @.str.147, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 393, i32 2}
!195 = !{ptr @.str.149, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 394, i32 2}
!197 = !{ptr @.str.151, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 397, i32 2}
!199 = !{ptr @.str.153, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 398, i32 2}
!201 = !{ptr @.str.155, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 399, i32 2}
!203 = !{ptr @.str.157, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 400, i32 2}
!205 = !{ptr @.str.159, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 401, i32 2}
!207 = !{ptr @.str.161, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 402, i32 2}
!209 = !{ptr @.str.163, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 403, i32 2}
!211 = !{ptr @.str.165, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 404, i32 2}
!213 = !{ptr @.str.167, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 405, i32 2}
!215 = !{ptr @.str.169, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 406, i32 2}
!217 = !{ptr @.str.171, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 407, i32 2}
!219 = !{ptr @.str.173, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 408, i32 2}
!221 = !{ptr @.str.175, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 411, i32 2}
!223 = !{ptr @.str.177, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 412, i32 2}
!225 = !{ptr @.str.179, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 413, i32 2}
!227 = !{ptr @.str.181, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 414, i32 2}
!229 = !{ptr @.str.183, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 415, i32 2}
!231 = !{ptr @.str.185, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 416, i32 2}
!233 = !{ptr @.str.187, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 417, i32 2}
!235 = !{ptr @.str.189, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 418, i32 2}
!237 = !{ptr @.str.191, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 419, i32 2}
!239 = !{ptr @.str.193, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 420, i32 2}
!241 = !{ptr @.str.195, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 421, i32 2}
!243 = !{ptr @.str.197, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 422, i32 2}
!245 = !{ptr @.str.199, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 423, i32 2}
!247 = !{ptr @.str.201, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 424, i32 2}
!249 = !{ptr @.str.203, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 425, i32 2}
!251 = !{ptr @rk3036_clk_branches, !252, !"rk3036_clk_branches", i1 false, i1 false}
!252 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 169, i32 35}
!253 = !{ptr @mux_ddrphy_p, !254, !"mux_ddrphy_p", i1 false, i1 false}
!254 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 119, i32 1}
!255 = !{ptr @mux_busclk_p, !256, !"mux_busclk_p", i1 false, i1 false}
!256 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 118, i32 1}
!257 = !{ptr @mux_pll_src_3plls_p, !258, !"mux_pll_src_3plls_p", i1 false, i1 false}
!258 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 120, i32 1}
!259 = !{ptr @mux_timer_p, !260, !"mux_timer_p", i1 false, i1 false}
!260 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 121, i32 1}
!261 = !{ptr @mux_pll_src_apll_dpll_gpll_usb480m_p, !262, !"mux_pll_src_apll_dpll_gpll_usb480m_p", i1 false, i1 false}
!262 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 123, i32 1}
!263 = !{ptr @.str.205, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 150, i32 2}
!265 = !{ptr @rk3036_uart0_fracmux, !266, !"rk3036_uart0_fracmux", i1 false, i1 false}
!266 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 149, i32 35}
!267 = !{ptr @mux_uart0_p, !268, !"mux_uart0_p", i1 false, i1 false}
!268 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 130, i32 1}
!269 = !{ptr @.str.206, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 154, i32 2}
!271 = !{ptr @rk3036_uart1_fracmux, !272, !"rk3036_uart1_fracmux", i1 false, i1 false}
!272 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 153, i32 35}
!273 = !{ptr @mux_uart1_p, !274, !"mux_uart1_p", i1 false, i1 false}
!274 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 131, i32 1}
!275 = !{ptr @.str.207, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 158, i32 2}
!277 = !{ptr @rk3036_uart2_fracmux, !278, !"rk3036_uart2_fracmux", i1 false, i1 false}
!278 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 157, i32 35}
!279 = !{ptr @mux_uart2_p, !280, !"mux_uart2_p", i1 false, i1 false}
!280 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 132, i32 1}
!281 = !{ptr @mux_mmc_src_p, !282, !"mux_mmc_src_p", i1 false, i1 false}
!282 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 126, i32 1}
!283 = !{ptr @rk3036_i2s_fracmux, !284, !"rk3036_i2s_fracmux", i1 false, i1 false}
!284 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 161, i32 35}
!285 = !{ptr @.str.208, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 127, i32 49}
!287 = !{ptr @mux_i2s_pre_p, !288, !"mux_i2s_pre_p", i1 false, i1 false}
!288 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 127, i32 1}
!289 = !{ptr @mux_i2s_clkout_p, !290, !"mux_i2s_clkout_p", i1 false, i1 false}
!290 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 128, i32 1}
!291 = !{ptr @.str.209, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 166, i32 2}
!293 = !{ptr @rk3036_spdif_fracmux, !294, !"rk3036_spdif_fracmux", i1 false, i1 false}
!294 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 165, i32 35}
!295 = !{ptr @mux_spdif_p, !296, !"mux_spdif_p", i1 false, i1 false}
!296 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 129, i32 1}
!297 = !{ptr @.str.210, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 124, i32 52}
!299 = !{ptr @mux_pll_src_dmyapll_dpll_gpll_xin24_p, !300, !"mux_pll_src_dmyapll_dpll_gpll_xin24_p", i1 false, i1 false}
!300 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 124, i32 1}
!301 = !{ptr @.str.211, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 133, i32 37}
!303 = !{ptr @mux_mac_p, !304, !"mux_mac_p", i1 false, i1 false}
!304 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 133, i32 1}
!305 = !{ptr @.str.212, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 134, i32 36}
!307 = !{ptr @mux_dclk_p, !308, !"mux_dclk_p", i1 false, i1 false}
!308 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 134, i32 1}
!309 = !{ptr @rk3036_critical_clocks, !310, !"rk3036_critical_clocks", i1 false, i1 false}
!310 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 428, i32 26}
!311 = !{ptr @mux_armclk_p, !312, !"mux_armclk_p", i1 false, i1 false}
!312 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 117, i32 1}
!313 = !{ptr @rk3036_cpuclk_data, !314, !"rk3036_cpuclk_data", i1 false, i1 false}
!314 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 104, i32 46}
!315 = !{ptr @rk3036_cpuclk_rates, !316, !"rk3036_cpuclk_rates", i1 false, i1 false}
!316 = !{!"../drivers/clk/rockchip/clk-rk3036.c", i32 98, i32 42}
!317 = !{i32 1, !"wchar_size", i32 2}
!318 = !{i32 1, !"min_enum_size", i32 4}
!319 = !{i32 8, !"branch-target-enforcement", i32 0}
!320 = !{i32 8, !"sign-return-address", i32 0}
!321 = !{i32 8, !"sign-return-address-all", i32 0}
!322 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!323 = !{i32 7, !"uwtable", i32 1}
!324 = !{i32 7, !"frame-pointer", i32 2}
!325 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!326 = !{i64 4044814}
