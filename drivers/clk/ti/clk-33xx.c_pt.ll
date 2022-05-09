; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/clk-33xx.c_pt.bc'
source_filename = "../drivers/clk/ti/clk-33xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_clkctrl_reg_data = type { i16, ptr, i16, ptr, ptr }
%struct.omap_clkctrl_data = type { i32, ptr }
%struct.ti_dt_clk = type { %struct.clk_lookup, ptr }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.omap_clkctrl_bit_data = type { i8, i8, ptr, ptr }
%struct.omap_clkctrl_div_data = type { ptr, i32, i32 }

@am3_l4ls_clkctrl_regs = internal constant [32 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 4, ptr null, i16 32, ptr @.str.6, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 12, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 20, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 52, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 60, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 64, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 68, ptr null, i16 32, ptr @.str.8, ptr null }, %struct.omap_clkctrl_reg_data { i16 72, ptr null, i16 32, ptr @.str.9, ptr null }, %struct.omap_clkctrl_reg_data { i16 76, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 80, ptr null, i16 32, ptr @.str.10, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr null, i16 32, ptr @.str.11, ptr null }, %struct.omap_clkctrl_reg_data { i16 116, ptr @am3_gpio2_bit_data, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 120, ptr @am3_gpio3_bit_data, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 124, ptr @am3_gpio4_bit_data, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 136, ptr null, i16 32, ptr @.str.12, ptr null }, %struct.omap_clkctrl_reg_data { i16 140, ptr null, i16 32, ptr @.str.13, ptr null }, %struct.omap_clkctrl_reg_data { i16 148, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 156, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 160, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 180, ptr null, i16 32, ptr @.str.14, ptr null }, %struct.omap_clkctrl_reg_data { i16 184, ptr null, i16 32, ptr @.str.2, ptr null }, %struct.omap_clkctrl_reg_data { i16 188, ptr null, i16 32, ptr @.str.6, ptr null }, %struct.omap_clkctrl_reg_data { i16 212, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 216, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 248, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l3s_clkctrl_regs = internal constant [6 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.16, ptr null }, %struct.omap_clkctrl_reg_data { i16 20, ptr null, i16 32, ptr @.str.17, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr null, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data { i16 76, ptr null, i16 32, ptr @.str.19, ptr null }, %struct.omap_clkctrl_reg_data { i16 220, ptr null, i16 32, ptr @.str.6, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l3_clkctrl_regs = internal constant [11 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 4, ptr null, i16 32, ptr @.str.21, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 112, ptr null, i16 32, ptr @.str.22, ptr null }, %struct.omap_clkctrl_reg_data { i16 124, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 152, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 184, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 188, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 216, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 220, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l4hs_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.23, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_pruss_ocp_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 160, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_cpsw_125mhz_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 20, ptr null, i16 32, ptr @.str.25, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_lcdc_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 36, ptr @.str.26, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_clk_24mhz_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.27, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l4_wkup_clkctrl_regs = internal constant [11 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 4, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr @am3_gpio1_bit_data, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 12, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 180, ptr null, i16 32, ptr @.str.29, ptr null }, %struct.omap_clkctrl_reg_data { i16 184, ptr null, i16 32, ptr @.str.29, ptr null }, %struct.omap_clkctrl_reg_data { i16 188, ptr null, i16 32, ptr @.str.30, ptr null }, %struct.omap_clkctrl_reg_data { i16 192, ptr null, i16 32, ptr @.str.31, ptr null }, %struct.omap_clkctrl_reg_data { i16 196, ptr null, i16 32, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data { i16 200, ptr null, i16 32, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data { i16 212, ptr null, i16 32, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l3_aon_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @am3_debugss_bit_data, i16 32, ptr @.str.35, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l4_wkup_aon_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 128, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_mpu_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 4, ptr null, i16 32, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l4_rtc_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_gfx_l3_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 4, ptr null, i16 160, ptr @.str.42, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l4_cefuse_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 32, ptr null, i16 32, ptr @.str, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_clkctrl_data = dso_local local_unnamed_addr constant [16 x %struct.omap_clkctrl_data] [%struct.omap_clkctrl_data { i32 1155530808, ptr @am3_l4ls_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155530780, ptr @am3_l3s_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155530788, ptr @am3_l3_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155531040, ptr @am3_l4hs_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155530984, ptr @am3_pruss_ocp_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155530752, ptr @am3_cpsw_125mhz_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155530776, ptr @am3_lcdc_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155531084, ptr @am3_clk_24mhz_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155531776, ptr @am3_l4_wkup_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155531796, ptr @am3_l3_aon_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155531952, ptr @am3_l4_wkup_aon_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155532288, ptr @am3_mpu_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155532800, ptr @am3_l4_rtc_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155533056, ptr @am3_gfx_l3_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155533312, ptr @am3_l4_cefuse_clkctrl_regs }, %struct.omap_clkctrl_data zeroinitializer], section ".init.rodata", align 4
@am33xx_compat_clks = external dso_local global [0 x %struct.ti_dt_clk], align 4
@am33xx_clks = internal global { [14 x %struct.ti_dt_clk], [120 x i8] } { [14 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.43, ptr null, ptr null }, ptr @.str.15 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.44, ptr null, ptr null }, ptr @.str }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.4, ptr null, ptr null }, ptr @.str.15 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.45, ptr null, ptr null }, ptr @.str.37 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.46, ptr null, ptr null }, ptr @.str.36 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.47, ptr null, ptr null }, ptr @.str.48 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.49, ptr null, ptr null }, ptr @.str.50 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.51, ptr null, ptr null }, ptr @.str.52 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.53, ptr null, ptr null }, ptr @.str.54 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.55, ptr null, ptr null }, ptr @.str.56 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.57, ptr null, ptr null }, ptr @.str.39 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.58, ptr null, ptr null }, ptr @.str.35 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.59, ptr null, ptr null }, ptr @.str.38 }, %struct.ti_dt_clk zeroinitializer], [120 x i8] zeroinitializer }, align 32
@enable_init_clks = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.60, ptr @.str.41, ptr @.str.20, ptr @.str.61, ptr @.str.23, ptr @.str.62, ptr @.str.7, ptr @.str.63], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_clkin_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer3_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer6_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wdt1_fck\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clkdiv32k_ick\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dpll_per_m2_div4_ck\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mmc_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l4ls_gclk\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer7_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer2_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer4_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rng_fck\00", [24 x i8] zeroinitializer }, align 32
@am3_gpio2_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 18, i8 5, ptr @am3_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am3_gpio3_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 18, i8 5, ptr @am3_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am3_gpio4_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 18, i8 5, ptr @am3_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dcan0_fck\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dcan1_fck\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer5_fck\00", [21 x i8] zeroinitializer }, align 32
@am3_gpio1_dbclk_parents = internal constant [2 x ptr] [ptr @.str.15, ptr null], section ".init.rodata", align 4
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clk-24mhz-clkctrl:0000:0\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbotg_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l3s_gclk\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcasp0_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcasp1_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"l3_gclk\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dpll_ddr_m2_div2_ck\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aes0_fck\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l4hs_gclk\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pruss_ocp_gclk\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpsw_125mhz_gclk\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_gclk\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clkdiv32k_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dpll_core_m4_div2_ck\00", [43 x i8] zeroinitializer }, align 32
@am3_gpio1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 18, i8 5, ptr @am3_gpio0_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dpll_per_m2_div4_wkupdm_ck\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adc_tsc_fck\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smartreflex0_fck\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer1_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smartreflex1_fck\00", [47 x i8] zeroinitializer }, align 32
@am3_gpio0_dbclk_parents = internal constant [2 x ptr] [ptr @.str.34, ptr null], section ".init.rodata", align 4
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpio0_dbclk_mux_ck\00", [45 x i8] zeroinitializer }, align 32
@am3_debugss_bit_data = internal constant [7 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 19, i8 5, ptr @am3_dbg_sysclk_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 20, i8 1, ptr @am3_trace_pmd_clk_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 22, i8 1, ptr @am3_trace_pmd_clk_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 2, ptr @am3_trace_clk_div_ck_parents, ptr @am3_trace_clk_div_ck_data }, %struct.omap_clkctrl_bit_data { i8 27, i8 2, ptr @am3_stm_clk_div_ck_parents, ptr @am3_stm_clk_div_ck_data }, %struct.omap_clkctrl_bit_data { i8 30, i8 5, ptr @am3_dbg_clka_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"l3-aon-clkctrl:0000:24\00", [41 x i8] zeroinitializer }, align 32
@am3_dbg_sysclk_ck_parents = internal constant [2 x ptr] [ptr @.str, ptr null], section ".init.rodata", align 4
@am3_trace_pmd_clk_mux_ck_parents = internal constant [3 x ptr] [ptr @.str.36, ptr @.str.37, ptr null], section ".init.rodata", align 4
@am3_trace_clk_div_ck_parents = internal constant [2 x ptr] [ptr @.str.38, ptr null], section ".init.rodata", align 4
@am3_trace_clk_div_ck_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 64, i32 2 }, section ".init.rodata", align 4
@am3_stm_clk_div_ck_parents = internal constant [2 x ptr] [ptr @.str.39, ptr null], section ".init.rodata", align 4
@am3_stm_clk_div_ck_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 64, i32 2 }, section ".init.rodata", align 4
@am3_dbg_clka_ck_parents = internal constant [2 x ptr] [ptr @.str.40, ptr null], section ".init.rodata", align 4
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"l3-aon-clkctrl:0000:19\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"l3-aon-clkctrl:0000:30\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"l3-aon-clkctrl:0000:20\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"l3-aon-clkctrl:0000:22\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dpll_core_m4_ck\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dpll_mpu_m2_ck\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gfx_fck_div_ck\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timer_32k_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timer_sys_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dbg_clka_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dbg_sysclk_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio0_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"l4-wkup-clkctrl:0008:18\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio1_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"l4ls-clkctrl:0074:18\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio2_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"l4ls-clkctrl:0078:18\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio3_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"l4ls-clkctrl:007c:18\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stm_clk_div_ck\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"l3-aon-clkctrl:0000:27\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm_pmd_clock_mux_ck\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"trace_clk_div_ck\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"trace_pmd_clk_mux_ck\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dpll_ddr_m2_ck\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l3-clkctrl:00bc:0\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l4fw_gclk\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clkout2_ck\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"am33xx_clks\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 248, i32 25 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"enable_init_clks\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 265, i32 20 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 303, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 304, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 307, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 316, i32 27 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 317, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 47, i32 47 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 48, i32 46 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 49, i32 45 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 59, i32 48 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 60, i32 48 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 62, i32 48 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 63, i32 45 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 67, i32 48 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 68, i32 48 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 72, i32 48 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 27, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 82, i32 51 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 83, i32 45 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 84, i32 47 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 85, i32 47 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 91, i32 45 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 92, i32 44 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 94, i32 43 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 105, i32 47 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 110, i32 69 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 115, i32 56 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 120, i32 69 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 125, i32 56 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 140, i32 52 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 143, i32 50 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 145, i32 52 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 146, i32 57 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 147, i32 51 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 148, i32 57 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 130, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 200, i32 67 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 159, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 160, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 165, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 175, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 185, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 210, i32 44 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 220, i32 64 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 249, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 250, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 252, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 253, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 254, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 255, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 256, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 257, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 258, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 259, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 260, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 261, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 266, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 270, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 272, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.260 = private constant [29 x i8] c"../drivers/clk/ti/clk-33xx.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 275, i32 2 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @am33xx_clks, ptr @enable_init_clks, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_clks to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_init_clks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @am33xx_dt_clk_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ti_clk_get_features() #2
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %am33xx_clks.am33xx_compat_clks = select i1 %tobool.not, ptr @am33xx_clks, ptr @am33xx_compat_clks
  tail call void @ti_dt_clocks_register(ptr noundef nonnull %am33xx_clks.am33xx_compat_clks) #2
  %call1 = tail call i32 @omap2_clk_disable_autoidle_all() #2
  tail call void @ti_clk_add_aliases() #2
  tail call void @omap2_clk_enable_init_clocks(ptr noundef nonnull @enable_init_clks, i8 noundef zeroext 8) #2
  %call2 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str) #2
  %call3 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.1) #2
  %call4 = tail call i32 @clk_set_parent(ptr noundef %call3, ptr noundef %call2) #2
  %call5 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.2) #2
  %call6 = tail call i32 @clk_set_parent(ptr noundef %call5, ptr noundef %call2) #2
  %call7 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.3) #2
  %call8 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.4) #2
  %call9 = tail call i32 @clk_set_parent(ptr noundef %call7, ptr noundef %call8) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_get_features() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_dt_clocks_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_disable_autoidle_all() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_clk_add_aliases() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_enable_init_clocks(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !173, !175, !177, !179, !181, !183, !185}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @am3_clkctrl_data, !1, !"am3_clkctrl_data", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/clk-33xx.c", i32 229, i32 32}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/clk-33xx.c", i32 303, i32 27}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/clk-33xx.c", i32 304, i32 27}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/ti/clk-33xx.c", i32 307, i32 27}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/ti/clk-33xx.c", i32 316, i32 27}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/ti/clk-33xx.c", i32 317, i32 27}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ti/clk-33xx.c", i32 47, i32 47}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/ti/clk-33xx.c", i32 48, i32 46}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/ti/clk-33xx.c", i32 49, i32 45}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/ti/clk-33xx.c", i32 59, i32 48}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/ti/clk-33xx.c", i32 60, i32 48}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/ti/clk-33xx.c", i32 62, i32 48}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/ti/clk-33xx.c", i32 63, i32 45}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/ti/clk-33xx.c", i32 67, i32 48}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/ti/clk-33xx.c", i32 68, i32 48}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/ti/clk-33xx.c", i32 72, i32 48}
!32 = !{ptr @am3_l4ls_clkctrl_regs, !33, !"am3_l4ls_clkctrl_regs", i1 false, i1 false}
!33 = !{!"../drivers/clk/ti/clk-33xx.c", i32 46, i32 43}
!34 = !{ptr @am3_gpio2_bit_data, !35, !"am3_gpio2_bit_data", i1 false, i1 false}
!35 = !{!"../drivers/clk/ti/clk-33xx.c", i32 31, i32 43}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/ti/clk-33xx.c", i32 27, i32 2}
!38 = !{ptr @am3_gpio1_dbclk_parents, !39, !"am3_gpio1_dbclk_parents", i1 false, i1 false}
!39 = !{!"../drivers/clk/ti/clk-33xx.c", i32 26, i32 27}
!40 = !{ptr @am3_gpio3_bit_data, !41, !"am3_gpio3_bit_data", i1 false, i1 false}
!41 = !{!"../drivers/clk/ti/clk-33xx.c", i32 36, i32 43}
!42 = !{ptr @am3_gpio4_bit_data, !43, !"am3_gpio4_bit_data", i1 false, i1 false}
!43 = !{!"../drivers/clk/ti/clk-33xx.c", i32 41, i32 43}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/ti/clk-33xx.c", i32 82, i32 51}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/ti/clk-33xx.c", i32 83, i32 45}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/ti/clk-33xx.c", i32 84, i32 47}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/ti/clk-33xx.c", i32 85, i32 47}
!52 = !{ptr @am3_l3s_clkctrl_regs, !53, !"am3_l3s_clkctrl_regs", i1 false, i1 false}
!53 = !{!"../drivers/clk/ti/clk-33xx.c", i32 81, i32 43}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/ti/clk-33xx.c", i32 91, i32 45}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/ti/clk-33xx.c", i32 92, i32 44}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/ti/clk-33xx.c", i32 94, i32 43}
!60 = !{ptr @am3_l3_clkctrl_regs, !61, !"am3_l3_clkctrl_regs", i1 false, i1 false}
!61 = !{!"../drivers/clk/ti/clk-33xx.c", i32 90, i32 43}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/ti/clk-33xx.c", i32 105, i32 47}
!64 = !{ptr @am3_l4hs_clkctrl_regs, !65, !"am3_l4hs_clkctrl_regs", i1 false, i1 false}
!65 = !{!"../drivers/clk/ti/clk-33xx.c", i32 104, i32 43}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/ti/clk-33xx.c", i32 110, i32 69}
!68 = !{ptr @am3_pruss_ocp_clkctrl_regs, !69, !"am3_pruss_ocp_clkctrl_regs", i1 false, i1 false}
!69 = !{!"../drivers/clk/ti/clk-33xx.c", i32 109, i32 43}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/ti/clk-33xx.c", i32 115, i32 56}
!72 = !{ptr @am3_cpsw_125mhz_clkctrl_regs, !73, !"am3_cpsw_125mhz_clkctrl_regs", i1 false, i1 false}
!73 = !{!"../drivers/clk/ti/clk-33xx.c", i32 114, i32 43}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/ti/clk-33xx.c", i32 120, i32 69}
!76 = !{ptr @am3_lcdc_clkctrl_regs, !77, !"am3_lcdc_clkctrl_regs", i1 false, i1 false}
!77 = !{!"../drivers/clk/ti/clk-33xx.c", i32 119, i32 43}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/ti/clk-33xx.c", i32 125, i32 56}
!80 = !{ptr @am3_clk_24mhz_clkctrl_regs, !81, !"am3_clk_24mhz_clkctrl_regs", i1 false, i1 false}
!81 = !{!"../drivers/clk/ti/clk-33xx.c", i32 124, i32 43}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/ti/clk-33xx.c", i32 140, i32 52}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/ti/clk-33xx.c", i32 143, i32 50}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/ti/clk-33xx.c", i32 145, i32 52}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/ti/clk-33xx.c", i32 146, i32 57}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/ti/clk-33xx.c", i32 147, i32 51}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/ti/clk-33xx.c", i32 148, i32 57}
!94 = !{ptr @am3_l4_wkup_clkctrl_regs, !95, !"am3_l4_wkup_clkctrl_regs", i1 false, i1 false}
!95 = !{!"../drivers/clk/ti/clk-33xx.c", i32 139, i32 43}
!96 = !{ptr @am3_gpio1_bit_data, !97, !"am3_gpio1_bit_data", i1 false, i1 false}
!97 = !{!"../drivers/clk/ti/clk-33xx.c", i32 134, i32 43}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/ti/clk-33xx.c", i32 130, i32 2}
!100 = !{ptr @am3_gpio0_dbclk_parents, !101, !"am3_gpio0_dbclk_parents", i1 false, i1 false}
!101 = !{!"../drivers/clk/ti/clk-33xx.c", i32 129, i32 27}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/ti/clk-33xx.c", i32 200, i32 67}
!104 = !{ptr @am3_l3_aon_clkctrl_regs, !105, !"am3_l3_aon_clkctrl_regs", i1 false, i1 false}
!105 = !{!"../drivers/clk/ti/clk-33xx.c", i32 199, i32 43}
!106 = !{ptr @am3_debugss_bit_data, !107, !"am3_debugss_bit_data", i1 false, i1 false}
!107 = !{!"../drivers/clk/ti/clk-33xx.c", i32 189, i32 43}
!108 = !{ptr @am3_dbg_sysclk_ck_parents, !109, !"am3_dbg_sysclk_ck_parents", i1 false, i1 false}
!109 = !{!"../drivers/clk/ti/clk-33xx.c", i32 153, i32 27}
!110 = !{ptr @.str.36, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/ti/clk-33xx.c", i32 159, i32 2}
!112 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/ti/clk-33xx.c", i32 160, i32 2}
!114 = !{ptr @am3_trace_pmd_clk_mux_ck_parents, !115, !"am3_trace_pmd_clk_mux_ck_parents", i1 false, i1 false}
!115 = !{!"../drivers/clk/ti/clk-33xx.c", i32 158, i32 27}
!116 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/ti/clk-33xx.c", i32 165, i32 2}
!118 = !{ptr @am3_trace_clk_div_ck_parents, !119, !"am3_trace_clk_div_ck_parents", i1 false, i1 false}
!119 = !{!"../drivers/clk/ti/clk-33xx.c", i32 164, i32 27}
!120 = !{ptr @am3_trace_clk_div_ck_data, !121, !"am3_trace_clk_div_ck_data", i1 false, i1 false}
!121 = !{!"../drivers/clk/ti/clk-33xx.c", i32 169, i32 43}
!122 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/ti/clk-33xx.c", i32 175, i32 2}
!124 = !{ptr @am3_stm_clk_div_ck_parents, !125, !"am3_stm_clk_div_ck_parents", i1 false, i1 false}
!125 = !{!"../drivers/clk/ti/clk-33xx.c", i32 174, i32 27}
!126 = !{ptr @am3_stm_clk_div_ck_data, !127, !"am3_stm_clk_div_ck_data", i1 false, i1 false}
!127 = !{!"../drivers/clk/ti/clk-33xx.c", i32 179, i32 43}
!128 = !{ptr @.str.40, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/ti/clk-33xx.c", i32 185, i32 2}
!130 = !{ptr @am3_dbg_clka_ck_parents, !131, !"am3_dbg_clka_ck_parents", i1 false, i1 false}
!131 = !{!"../drivers/clk/ti/clk-33xx.c", i32 184, i32 27}
!132 = !{ptr @am3_l4_wkup_aon_clkctrl_regs, !133, !"am3_l4_wkup_aon_clkctrl_regs", i1 false, i1 false}
!133 = !{!"../drivers/clk/ti/clk-33xx.c", i32 204, i32 43}
!134 = !{ptr @.str.41, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/ti/clk-33xx.c", i32 210, i32 44}
!136 = !{ptr @am3_mpu_clkctrl_regs, !137, !"am3_mpu_clkctrl_regs", i1 false, i1 false}
!137 = !{!"../drivers/clk/ti/clk-33xx.c", i32 209, i32 43}
!138 = !{ptr @am3_l4_rtc_clkctrl_regs, !139, !"am3_l4_rtc_clkctrl_regs", i1 false, i1 false}
!139 = !{!"../drivers/clk/ti/clk-33xx.c", i32 214, i32 43}
!140 = !{ptr @.str.42, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/ti/clk-33xx.c", i32 220, i32 64}
!142 = !{ptr @am3_gfx_l3_clkctrl_regs, !143, !"am3_gfx_l3_clkctrl_regs", i1 false, i1 false}
!143 = !{!"../drivers/clk/ti/clk-33xx.c", i32 219, i32 43}
!144 = !{ptr @am3_l4_cefuse_clkctrl_regs, !145, !"am3_l4_cefuse_clkctrl_regs", i1 false, i1 false}
!145 = !{!"../drivers/clk/ti/clk-33xx.c", i32 224, i32 43}
!146 = !{ptr @.str.43, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/ti/clk-33xx.c", i32 249, i32 2}
!148 = !{ptr @.str.44, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/ti/clk-33xx.c", i32 250, i32 2}
!150 = !{ptr @.str.45, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/ti/clk-33xx.c", i32 252, i32 2}
!152 = !{ptr @.str.46, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/ti/clk-33xx.c", i32 253, i32 2}
!154 = !{ptr @.str.47, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/ti/clk-33xx.c", i32 254, i32 2}
!156 = !{ptr @.str.48, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.49, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/ti/clk-33xx.c", i32 255, i32 2}
!159 = !{ptr @.str.50, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.51, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/ti/clk-33xx.c", i32 256, i32 2}
!162 = !{ptr @.str.52, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.53, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/ti/clk-33xx.c", i32 257, i32 2}
!165 = !{ptr @.str.54, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.55, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/ti/clk-33xx.c", i32 258, i32 2}
!168 = !{ptr @.str.56, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.57, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/ti/clk-33xx.c", i32 259, i32 2}
!171 = !{ptr @.str.58, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/ti/clk-33xx.c", i32 260, i32 2}
!173 = !{ptr @.str.59, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/ti/clk-33xx.c", i32 261, i32 2}
!175 = !{ptr @am33xx_clks, !176, !"am33xx_clks", i1 false, i1 false}
!176 = !{!"../drivers/clk/ti/clk-33xx.c", i32 248, i32 25}
!177 = !{ptr @.str.60, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/ti/clk-33xx.c", i32 266, i32 2}
!179 = !{ptr @.str.61, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/ti/clk-33xx.c", i32 270, i32 2}
!181 = !{ptr @.str.62, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/ti/clk-33xx.c", i32 272, i32 2}
!183 = !{ptr @.str.63, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/ti/clk-33xx.c", i32 275, i32 2}
!185 = !{ptr @enable_init_clks, !186, !"enable_init_clks", i1 false, i1 false}
!186 = !{!"../drivers/clk/ti/clk-33xx.c", i32 265, i32 20}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
