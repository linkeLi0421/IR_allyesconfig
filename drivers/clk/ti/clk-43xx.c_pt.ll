; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/clk-43xx.c_pt.bc'
source_filename = "../drivers/clk/ti/clk-43xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_clkctrl_reg_data = type { i16, ptr, i16, ptr, ptr }
%struct.omap_clkctrl_data = type { i32, ptr }
%struct.ti_dt_clk = type { %struct.clk_lookup, ptr }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.omap_clkctrl_bit_data = type { i8, i8, ptr, ptr }

@am4_l3s_tsc_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.2, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_l4_wkup_aon_clkctrl_regs = internal constant [3 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 160, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr @am4_counter_32k_bit_data, i16 32, ptr @.str.4, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_l4_wkup_clkctrl_regs = internal constant [10 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data { i16 264, ptr null, i16 32, ptr @.str.6, ptr null }, %struct.omap_clkctrl_reg_data { i16 280, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 288, ptr null, i16 32, ptr @.str.8, ptr null }, %struct.omap_clkctrl_reg_data { i16 296, ptr null, i16 32, ptr @.str.8, ptr null }, %struct.omap_clkctrl_reg_data { i16 304, ptr null, i16 32, ptr @.str.9, ptr null }, %struct.omap_clkctrl_reg_data { i16 312, ptr null, i16 32, ptr @.str.10, ptr null }, %struct.omap_clkctrl_reg_data { i16 320, ptr null, i16 32, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data { i16 328, ptr @am4_gpio1_bit_data, i16 32, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_mpu_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.12, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_gfx_l3_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 160, ptr @.str.13, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_l4_rtc_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.14, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_l3_clkctrl_regs = internal constant [12 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 32, ptr @.str.16, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 96, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 104, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 112, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 128, ptr null, i16 32, ptr @.str.17, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_l3s_clkctrl_regs = internal constant [11 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 440, ptr null, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data { i16 456, ptr null, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data { i16 464, ptr null, i16 32, ptr @.str.19, ptr null }, %struct.omap_clkctrl_reg_data { i16 472, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 480, ptr null, i16 32, ptr @.str.21, ptr null }, %struct.omap_clkctrl_reg_data { i16 496, ptr null, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data { i16 504, ptr @am4_usb_otg_ss0_bit_data, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data { i16 512, ptr @am4_usb_otg_ss1_bit_data, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_pruss_ocp_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 160, ptr @.str.23, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_l4ls_clkctrl_regs = internal constant [46 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 32, ptr @.str.25, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 32, ptr @.str.26, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 64, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 72, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr @am4_gpio2_bit_data, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 96, ptr @am4_gpio3_bit_data, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 104, ptr @am4_gpio4_bit_data, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 112, ptr @am4_gpio5_bit_data, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 120, ptr @am4_gpio6_bit_data, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 128, ptr null, i16 32, ptr @.str.27, ptr null }, %struct.omap_clkctrl_reg_data { i16 136, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 144, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 152, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 160, ptr null, i16 32, ptr @.str.21, ptr null }, %struct.omap_clkctrl_reg_data { i16 168, ptr null, i16 32, ptr @.str.21, ptr null }, %struct.omap_clkctrl_reg_data { i16 192, ptr null, i16 32, ptr @.str.29, ptr null }, %struct.omap_clkctrl_reg_data { i16 224, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 232, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 240, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 248, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 256, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 264, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 272, ptr null, i16 32, ptr @.str.30, ptr null }, %struct.omap_clkctrl_reg_data { i16 280, ptr null, i16 32, ptr @.str.31, ptr null }, %struct.omap_clkctrl_reg_data { i16 288, ptr null, i16 32, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data { i16 296, ptr null, i16 32, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data { i16 304, ptr null, i16 32, ptr @.str.34, ptr null }, %struct.omap_clkctrl_reg_data { i16 312, ptr null, i16 32, ptr @.str.35, ptr null }, %struct.omap_clkctrl_reg_data { i16 320, ptr null, i16 32, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 328, ptr null, i16 32, ptr @.str.37, ptr null }, %struct.omap_clkctrl_reg_data { i16 336, ptr null, i16 32, ptr @.str.38, ptr null }, %struct.omap_clkctrl_reg_data { i16 344, ptr null, i16 32, ptr @.str.39, ptr null }, %struct.omap_clkctrl_reg_data { i16 352, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 360, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 368, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 376, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 384, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 408, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 416, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_emif_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.40, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_dss_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 36, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_cpsw_125mhz_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.42, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_clkctrl_data = dso_local local_unnamed_addr constant [14 x %struct.omap_clkctrl_data] [%struct.omap_clkctrl_data { i32 1155475744, ptr @am4_l3s_tsc_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155476008, ptr @am4_l4_wkup_aon_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155476000, ptr @am4_l4_wkup_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155498784, ptr @am4_mpu_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155499040, ptr @am4_gfx_l3_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155499296, ptr @am4_l4_rtc_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155500064, ptr @am4_l3_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155500136, ptr @am4_l3s_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155500832, ptr @am4_pruss_ocp_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155501088, ptr @am4_l4ls_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155501856, ptr @am4_emif_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155502624, ptr @am4_dss_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155502880, ptr @am4_cpsw_125mhz_clkctrl_regs }, %struct.omap_clkctrl_data zeroinitializer], section ".init.rodata", align 4
@am438x_clkctrl_data = dso_local local_unnamed_addr constant [13 x %struct.omap_clkctrl_data] [%struct.omap_clkctrl_data { i32 1155475744, ptr @am4_l3s_tsc_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155476008, ptr @am4_l4_wkup_aon_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155476000, ptr @am4_l4_wkup_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155498784, ptr @am4_mpu_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155499040, ptr @am4_gfx_l3_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155500064, ptr @am4_l3_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155500136, ptr @am4_l3s_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155500832, ptr @am4_pruss_ocp_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155501088, ptr @am4_l4ls_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155501856, ptr @am4_emif_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155502624, ptr @am4_dss_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155502880, ptr @am4_cpsw_125mhz_clkctrl_regs }, %struct.omap_clkctrl_data zeroinitializer], section ".init.rodata", align 4
@am43xx_compat_clks = external dso_local global [0 x %struct.ti_dt_clk], align 4
@am43xx_clks = internal global { [12 x %struct.ti_dt_clk], [80 x i8] } { [12 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.43, ptr null, ptr null }, ptr @.str.14 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.44, ptr null, ptr null }, ptr @.str.3 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.45, ptr null, ptr null }, ptr @.str.46 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.47, ptr null, ptr null }, ptr @.str.48 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.49, ptr null, ptr null }, ptr @.str.50 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.51, ptr null, ptr null }, ptr @.str.52 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.53, ptr null, ptr null }, ptr @.str.54 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.55, ptr null, ptr null }, ptr @.str.56 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.57, ptr null, ptr null }, ptr @.str.4 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.58, ptr null, ptr null }, ptr @.str.59 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.60, ptr null, ptr null }, ptr @.str.61 }, %struct.ti_dt_clk zeroinitializer], [80 x i8] zeroinitializer }, align 32
@enable_init_clks = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.62], [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpsw_cpts_rft_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dpll_core_m5_ck\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adc_tsc_fck\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_clkin_ck\00", [19 x i8] zeroinitializer }, align 32
@am4_counter_32k_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_synctimer_32kclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"l4-wkup-aon-clkctrl:0008:8\00", [37 x i8] zeroinitializer }, align 32
@am4_synctimer_32kclk_parents = internal constant [2 x ptr] [ptr @.str.5, ptr null], section ".init.rodata", align 4
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mux_synctimer32k_ck\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer1_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wdt1_fck\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dpll_per_m2_div4_wkupdm_ck\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smartreflex0_fck\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smartreflex1_fck\00", [47 x i8] zeroinitializer }, align 32
@am4_gpio1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_gpio0_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am4_gpio0_dbclk_parents = internal constant [2 x ptr] [ptr @.str.11, ptr null], section ".init.rodata", align 4
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpio0_dbclk_mux_ck\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dpll_mpu_m2_ck\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gfx_fck_div_ck\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clkdiv32k_ick\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"l3_gclk\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aes0_fck\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l4hs_gclk\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l3s_gclk\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcasp0_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcasp1_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mmc_clk\00", [24 x i8] zeroinitializer }, align 32
@am4_usb_otg_ss0_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_usb_otg_ss0_refclk960m_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am4_usb_otg_ss1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_usb_otg_ss0_refclk960m_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am4_usb_otg_ss0_refclk960m_parents = internal constant [2 x ptr] [ptr @.str.22, ptr null], section ".init.rodata", align 4
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dpll_per_clkdcoldo\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pruss_ocp_gclk\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l4ls_gclk\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dcan0_fck\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dcan1_fck\00", [22 x i8] zeroinitializer }, align 32
@am4_gpio2_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am4_gpio3_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am4_gpio4_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am4_gpio5_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am4_gpio6_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"func_12m_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dpll_per_m2_div4_ck\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rng_fck\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer2_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer3_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer4_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer5_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer6_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer7_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer8_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer9_fck\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timer10_fck\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timer11_fck\00", [20 x i8] zeroinitializer }, align 32
@am4_gpio1_dbclk_parents = internal constant [2 x ptr] [ptr @.str.14, ptr null], section ".init.rodata", align 4
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dpll_ddr_m2_ck\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disp_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpsw_125mhz_gclk\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timer_32k_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timer_sys_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio0_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"l4-wkup-clkctrl:0148:8\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio1_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l4ls-clkctrl:0058:8\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio2_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l4ls-clkctrl:0060:8\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio3_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l4ls-clkctrl:0068:8\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio4_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l4ls-clkctrl:0070:8\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio5_dbclk\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l4ls-clkctrl:0078:8\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"synctimer_32kclk\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb_otg_ss0_refclk960m\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"l3s-clkctrl:01f8:8\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb_otg_ss1_refclk960m\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"l3s-clkctrl:0200:8\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l3-clkctrl:0000:0\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"am43xx_clks\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 261, i32 25 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"enable_init_clks\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 276, i32 20 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 307, i32 27 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 308, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 27, i32 52 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 42, i32 73 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 43, i32 80 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 32, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 59, i32 51 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 60, i32 54 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 61, i32 49 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 63, i32 57 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 64, i32 57 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 48, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 71, i32 44 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 76, i32 64 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 81, i32 47 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 86, i32 47 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 87, i32 43 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 96, i32 45 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 118, i32 45 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 120, i32 47 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 121, i32 47 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 122, i32 45 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 101, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 130, i32 69 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 165, i32 47 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 166, i32 48 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 167, i32 48 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 180, i32 47 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 181, i32 46 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 186, i32 45 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 193, i32 48 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 194, i32 48 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 195, i32 48 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 196, i32 48 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 197, i32 48 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 198, i32 48 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 199, i32 48 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 200, i32 48 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 201, i32 49 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 202, i32 49 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 214, i32 46 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 219, i32 72 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 224, i32 56 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 262, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 263, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 264, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 265, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 266, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 267, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 268, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 269, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 270, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 271, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 272, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.256 = private constant [29 x i8] c"../drivers/clk/ti/clk-43xx.c\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 278, i32 2 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @am43xx_clks, ptr @enable_init_clks, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am43xx_clks to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_init_clks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @am43xx_dt_clk_init() local_unnamed_addr #0 section ".init.text" align 64 {
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
  %am43xx_clks.am43xx_compat_clks = select i1 %tobool.not, ptr @am43xx_clks, ptr @am43xx_compat_clks
  tail call void @ti_dt_clocks_register(ptr noundef nonnull %am43xx_clks.am43xx_compat_clks) #2
  %call1 = tail call i32 @omap2_clk_disable_autoidle_all() #2
  tail call void @omap2_clk_enable_init_clocks(ptr noundef nonnull @enable_init_clks, i8 noundef zeroext 1) #2
  tail call void @ti_clk_add_aliases() #2
  %call2 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str) #2
  %call3 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.1) #2
  %call4 = tail call i32 @clk_set_parent(ptr noundef %call2, ptr noundef %call3) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_get_features() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_dt_clocks_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_disable_autoidle_all() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_enable_init_clocks(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_clk_add_aliases() local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !168, !169, !171, !172, !174, !176}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @am4_clkctrl_data, !1, !"am4_clkctrl_data", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/clk-43xx.c", i32 228, i32 32}
!2 = !{ptr @am438x_clkctrl_data, !3, !"am438x_clkctrl_data", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/clk-43xx.c", i32 245, i32 32}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/clk-43xx.c", i32 307, i32 27}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/ti/clk-43xx.c", i32 308, i32 27}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/ti/clk-43xx.c", i32 27, i32 52}
!10 = !{ptr @am4_l3s_tsc_clkctrl_regs, !11, !"am4_l3s_tsc_clkctrl_regs", i1 false, i1 false}
!11 = !{!"../drivers/clk/ti/clk-43xx.c", i32 26, i32 43}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ti/clk-43xx.c", i32 42, i32 73}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/ti/clk-43xx.c", i32 43, i32 80}
!16 = !{ptr @am4_l4_wkup_aon_clkctrl_regs, !17, !"am4_l4_wkup_aon_clkctrl_regs", i1 false, i1 false}
!17 = !{!"../drivers/clk/ti/clk-43xx.c", i32 41, i32 43}
!18 = !{ptr @am4_counter_32k_bit_data, !19, !"am4_counter_32k_bit_data", i1 false, i1 false}
!19 = !{!"../drivers/clk/ti/clk-43xx.c", i32 36, i32 43}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/ti/clk-43xx.c", i32 32, i32 2}
!22 = !{ptr @am4_synctimer_32kclk_parents, !23, !"am4_synctimer_32kclk_parents", i1 false, i1 false}
!23 = !{!"../drivers/clk/ti/clk-43xx.c", i32 31, i32 27}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/ti/clk-43xx.c", i32 59, i32 51}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/ti/clk-43xx.c", i32 60, i32 54}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/ti/clk-43xx.c", i32 61, i32 49}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/ti/clk-43xx.c", i32 63, i32 57}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/ti/clk-43xx.c", i32 64, i32 57}
!34 = !{ptr @am4_l4_wkup_clkctrl_regs, !35, !"am4_l4_wkup_clkctrl_regs", i1 false, i1 false}
!35 = !{!"../drivers/clk/ti/clk-43xx.c", i32 57, i32 43}
!36 = !{ptr @am4_gpio1_bit_data, !37, !"am4_gpio1_bit_data", i1 false, i1 false}
!37 = !{!"../drivers/clk/ti/clk-43xx.c", i32 52, i32 43}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/ti/clk-43xx.c", i32 48, i32 2}
!40 = !{ptr @am4_gpio0_dbclk_parents, !41, !"am4_gpio0_dbclk_parents", i1 false, i1 false}
!41 = !{!"../drivers/clk/ti/clk-43xx.c", i32 47, i32 27}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/ti/clk-43xx.c", i32 71, i32 44}
!44 = !{ptr @am4_mpu_clkctrl_regs, !45, !"am4_mpu_clkctrl_regs", i1 false, i1 false}
!45 = !{!"../drivers/clk/ti/clk-43xx.c", i32 70, i32 43}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/ti/clk-43xx.c", i32 76, i32 64}
!48 = !{ptr @am4_gfx_l3_clkctrl_regs, !49, !"am4_gfx_l3_clkctrl_regs", i1 false, i1 false}
!49 = !{!"../drivers/clk/ti/clk-43xx.c", i32 75, i32 43}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/ti/clk-43xx.c", i32 81, i32 47}
!52 = !{ptr @am4_l4_rtc_clkctrl_regs, !53, !"am4_l4_rtc_clkctrl_regs", i1 false, i1 false}
!53 = !{!"../drivers/clk/ti/clk-43xx.c", i32 80, i32 43}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/ti/clk-43xx.c", i32 86, i32 47}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/ti/clk-43xx.c", i32 87, i32 43}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/ti/clk-43xx.c", i32 96, i32 45}
!60 = !{ptr @am4_l3_clkctrl_regs, !61, !"am4_l3_clkctrl_regs", i1 false, i1 false}
!61 = !{!"../drivers/clk/ti/clk-43xx.c", i32 85, i32 43}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/ti/clk-43xx.c", i32 118, i32 45}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/ti/clk-43xx.c", i32 120, i32 47}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/ti/clk-43xx.c", i32 121, i32 47}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/ti/clk-43xx.c", i32 122, i32 45}
!70 = !{ptr @am4_l3s_clkctrl_regs, !71, !"am4_l3s_clkctrl_regs", i1 false, i1 false}
!71 = !{!"../drivers/clk/ti/clk-43xx.c", i32 115, i32 43}
!72 = !{ptr @am4_usb_otg_ss0_bit_data, !73, !"am4_usb_otg_ss0_bit_data", i1 false, i1 false}
!73 = !{!"../drivers/clk/ti/clk-43xx.c", i32 105, i32 43}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/ti/clk-43xx.c", i32 101, i32 2}
!76 = !{ptr @am4_usb_otg_ss0_refclk960m_parents, !77, !"am4_usb_otg_ss0_refclk960m_parents", i1 false, i1 false}
!77 = !{!"../drivers/clk/ti/clk-43xx.c", i32 100, i32 27}
!78 = !{ptr @am4_usb_otg_ss1_bit_data, !79, !"am4_usb_otg_ss1_bit_data", i1 false, i1 false}
!79 = !{!"../drivers/clk/ti/clk-43xx.c", i32 110, i32 43}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/ti/clk-43xx.c", i32 130, i32 69}
!82 = !{ptr @am4_pruss_ocp_clkctrl_regs, !83, !"am4_pruss_ocp_clkctrl_regs", i1 false, i1 false}
!83 = !{!"../drivers/clk/ti/clk-43xx.c", i32 129, i32 43}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/ti/clk-43xx.c", i32 165, i32 47}
!86 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/ti/clk-43xx.c", i32 166, i32 48}
!88 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/ti/clk-43xx.c", i32 167, i32 48}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/ti/clk-43xx.c", i32 180, i32 47}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/ti/clk-43xx.c", i32 181, i32 46}
!94 = !{ptr @.str.29, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/ti/clk-43xx.c", i32 186, i32 45}
!96 = !{ptr @.str.30, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/ti/clk-43xx.c", i32 193, i32 48}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/ti/clk-43xx.c", i32 194, i32 48}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/ti/clk-43xx.c", i32 195, i32 48}
!102 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/ti/clk-43xx.c", i32 196, i32 48}
!104 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/ti/clk-43xx.c", i32 197, i32 48}
!106 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/ti/clk-43xx.c", i32 198, i32 48}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/ti/clk-43xx.c", i32 199, i32 48}
!110 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/ti/clk-43xx.c", i32 200, i32 48}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/ti/clk-43xx.c", i32 201, i32 49}
!114 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/ti/clk-43xx.c", i32 202, i32 49}
!116 = !{ptr @am4_l4ls_clkctrl_regs, !117, !"am4_l4ls_clkctrl_regs", i1 false, i1 false}
!117 = !{!"../drivers/clk/ti/clk-43xx.c", i32 164, i32 43}
!118 = !{ptr @am4_gpio2_bit_data, !119, !"am4_gpio2_bit_data", i1 false, i1 false}
!119 = !{!"../drivers/clk/ti/clk-43xx.c", i32 139, i32 43}
!120 = !{ptr @am4_gpio1_dbclk_parents, !121, !"am4_gpio1_dbclk_parents", i1 false, i1 false}
!121 = !{!"../drivers/clk/ti/clk-43xx.c", i32 134, i32 27}
!122 = !{ptr @am4_gpio3_bit_data, !123, !"am4_gpio3_bit_data", i1 false, i1 false}
!123 = !{!"../drivers/clk/ti/clk-43xx.c", i32 144, i32 43}
!124 = !{ptr @am4_gpio4_bit_data, !125, !"am4_gpio4_bit_data", i1 false, i1 false}
!125 = !{!"../drivers/clk/ti/clk-43xx.c", i32 149, i32 43}
!126 = !{ptr @am4_gpio5_bit_data, !127, !"am4_gpio5_bit_data", i1 false, i1 false}
!127 = !{!"../drivers/clk/ti/clk-43xx.c", i32 154, i32 43}
!128 = !{ptr @am4_gpio6_bit_data, !129, !"am4_gpio6_bit_data", i1 false, i1 false}
!129 = !{!"../drivers/clk/ti/clk-43xx.c", i32 159, i32 43}
!130 = !{ptr @.str.40, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/ti/clk-43xx.c", i32 214, i32 46}
!132 = !{ptr @am4_emif_clkctrl_regs, !133, !"am4_emif_clkctrl_regs", i1 false, i1 false}
!133 = !{!"../drivers/clk/ti/clk-43xx.c", i32 213, i32 43}
!134 = !{ptr @.str.41, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/ti/clk-43xx.c", i32 219, i32 72}
!136 = !{ptr @am4_dss_clkctrl_regs, !137, !"am4_dss_clkctrl_regs", i1 false, i1 false}
!137 = !{!"../drivers/clk/ti/clk-43xx.c", i32 218, i32 43}
!138 = !{ptr @.str.42, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/ti/clk-43xx.c", i32 224, i32 56}
!140 = !{ptr @am4_cpsw_125mhz_clkctrl_regs, !141, !"am4_cpsw_125mhz_clkctrl_regs", i1 false, i1 false}
!141 = !{!"../drivers/clk/ti/clk-43xx.c", i32 223, i32 43}
!142 = !{ptr @.str.43, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/ti/clk-43xx.c", i32 262, i32 2}
!144 = !{ptr @.str.44, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/ti/clk-43xx.c", i32 263, i32 2}
!146 = !{ptr @.str.45, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/ti/clk-43xx.c", i32 264, i32 2}
!148 = !{ptr @.str.46, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.47, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/ti/clk-43xx.c", i32 265, i32 2}
!151 = !{ptr @.str.48, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.49, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/ti/clk-43xx.c", i32 266, i32 2}
!154 = !{ptr @.str.50, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.51, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/ti/clk-43xx.c", i32 267, i32 2}
!157 = !{ptr @.str.52, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.53, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/ti/clk-43xx.c", i32 268, i32 2}
!160 = !{ptr @.str.54, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.55, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/ti/clk-43xx.c", i32 269, i32 2}
!163 = !{ptr @.str.56, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.57, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/ti/clk-43xx.c", i32 270, i32 2}
!166 = !{ptr @.str.58, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/ti/clk-43xx.c", i32 271, i32 2}
!168 = !{ptr @.str.59, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.60, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/ti/clk-43xx.c", i32 272, i32 2}
!171 = !{ptr @.str.61, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @am43xx_clks, !173, !"am43xx_clks", i1 false, i1 false}
!173 = !{!"../drivers/clk/ti/clk-43xx.c", i32 261, i32 25}
!174 = !{ptr @.str.62, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/ti/clk-43xx.c", i32 278, i32 2}
!176 = !{ptr @enable_init_clks, !177, !"enable_init_clks", i1 false, i1 false}
!177 = !{!"../drivers/clk/ti/clk-43xx.c", i32 276, i32 20}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
