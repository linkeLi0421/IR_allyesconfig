; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-imx6sl.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx6sl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }

@imx6sl_set_wait_clk.saved_arm_div = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ccm_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__of_table_imx6sl = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sl-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sl_clocks_init }, section "__clk_of_table", align 4
@anatop_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@imx6sl_enable_pll_arm.saved_pll_arm = internal global { i32, [28 x i8] } zeroinitializer, align 32
@clk_hw_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/clk/imx/clk-imx6sl.c\00", [35 x i8] zeroinitializer }, align 32
@hws = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ckil\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osc\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"anaclk1\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,imx6sl-anatop\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll1_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@pll_bypass_src_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.36], [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll2_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll3_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll4_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll5_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll6_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll7_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll1\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll2\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll3\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll4\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll5\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll6\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll7\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll1_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll1_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.13, ptr @.str.6], [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll2_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll2_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.14, ptr @.str.7], [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll3_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll3_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.15, ptr @.str.8], [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll4_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll4_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.16, ptr @.str.9], [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll5_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll5_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.17, ptr @.str.10], [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll6_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll6_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.18, ptr @.str.11], [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll7_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll7_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.19, ptr @.str.12], [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll1_sys\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll2_bus\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll3_usb_otg\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll4_audio\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll5_video\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll6_enet\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll7_usb_host\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lvds1_sel\00", [22 x i8] zeroinitializer }, align 32
@lvds_sels = internal global { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.1, ptr @.str.30, ptr @.str.31, ptr @.str.1, ptr @.str.45, ptr @.str.1, ptr @.str.1, ptr @.str.29, ptr @.str.33, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.3, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1], [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lvds1_out\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lvds1_in\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbphy1\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbphy2\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbphy1_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbphy2_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll4_post_div\00", [18 x i8] zeroinitializer }, align 32
@post_div_table = internal constant { [4 x %struct.clk_div_table], [32 x i8] } { [4 x %struct.clk_div_table] [%struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll4_audio_div\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll5_post_div\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll5_video_div\00", [17 x i8] zeroinitializer }, align 32
@video_div_table = internal constant { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_ref\00", [23 x i8] zeroinitializer }, align 32
@clk_enet_ref_table = internal constant { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 20 }, %struct.clk_div_table { i32 1, i32 10 }, %struct.clk_div_table { i32 2, i32 5 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll2_pfd0\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll2_pfd1\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll2_pfd2\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll3_pfd0\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll3_pfd1\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll3_pfd2\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll3_pfd3\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll2_198m\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll3_120m\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll3_80m\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll3_60m\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"step\00", [27 x i8] zeroinitializer }, align 32
@step_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.48], [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll1_sw\00", [24 x i8] zeroinitializer }, align 32
@pll1_sw_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.27, ptr @.str.57], [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ocram_alt_sel\00", [18 x i8] zeroinitializer }, align 32
@ocram_alt_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.48, ptr @.str.50], [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ocram_sel\00", [22 x i8] zeroinitializer }, align 32
@ocram_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.86, ptr @.str.171], [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pre_periph2_sel\00", [16 x i8] zeroinitializer }, align 32
@pre_periph_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.28, ptr @.str.48, ptr @.str.46, ptr @.str.53], [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pre_periph_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"periph2_clk2_sel\00", [47 x i8] zeroinitializer }, align 32
@periph2_clk2_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.29, ptr @.str.28], [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"periph_clk2_sel\00", [16 x i8] zeroinitializer }, align 32
@periph_clk2_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.29, ptr @.str.3, ptr @.str.3, ptr @.str.1], [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"csi_sel\00", [24 x i8] zeroinitializer }, align 32
@csi_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.3, ptr @.str.48, ptr @.str.54, ptr @.str.50], [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lcdif_axi_sel\00", [18 x i8] zeroinitializer }, align 32
@lcdif_axi_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.28, ptr @.str.48, ptr @.str.29, ptr @.str.50], [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhc1_sel\00", [21 x i8] zeroinitializer }, align 32
@usdhc_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.48, ptr @.str.46], [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhc2_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhc3_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhc4_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi1_sel\00", [23 x i8] zeroinitializer }, align 32
@ssi_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.42, ptr @.str.1], [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi2_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi3_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"perclk_sel\00", [21 x i8] zeroinitializer }, align 32
@perclk_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.91, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pxp_axi_sel\00", [20 x i8] zeroinitializer }, align 32
@pxp_axi_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.52], [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"epdc_axi_sel\00", [19 x i8] zeroinitializer }, align 32
@epdc_axi_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.51], [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpu2d_ovg_sel\00", [18 x i8] zeroinitializer }, align 32
@gpu2d_ovg_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.50, ptr @.str.29, ptr @.str.28, ptr @.str.48], [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpu2d_sel\00", [22 x i8] zeroinitializer }, align 32
@gpu2d_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.48, ptr @.str.29, ptr @.str.50, ptr @.str.28], [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lcdif_pix_sel\00", [18 x i8] zeroinitializer }, align 32
@lcdif_pix_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.50], [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"epdc_pix_sel\00", [19 x i8] zeroinitializer }, align 32
@epdc_pix_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.50], [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif0_sel\00", [21 x i8] zeroinitializer }, align 32
@audio_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.42, ptr @.str.51, ptr @.str.52, ptr @.str.29], [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif1_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"extern_audio_sel\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ecspi_sel\00", [22 x i8] zeroinitializer }, align 32
@ecspi_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.56, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_sel\00", [23 x i8] zeroinitializer }, align 32
@uart_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.55, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"periph\00", [25 x i8] zeroinitializer }, align 32
@periph_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.62, ptr @.str.89], [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"periph2\00", [24 x i8] zeroinitializer }, align 32
@periph2_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.61, ptr @.str.90], [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ocram_podf\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"periph_clk2_podf\00", [47 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"periph2_clk2_podf\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi_podf\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lcdif_axi_podf\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhc1_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhc2_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhc3_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhc4_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi1_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi1_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi2_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi2_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi3_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi3_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"perclk\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pxp_axi_podf\00", [19 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"epdc_axi_podf\00", [18 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpu2d_ovg_podf\00", [17 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpu2d_podf\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lcdif_pix_pred\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"epdc_pix_pred\00", [18 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lcdif_pix_podf\00", [17 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"epdc_pix_podf\00", [18 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spdif0_pred\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spdif0_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spdif1_pred\00", [20 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spdif1_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"extern_audio_pred\00", [46 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"extern_audio_podf\00", [46 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ecspi_root\00", [21 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart_root\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmdc\00", [27 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arm\00", [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi1\00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi2\00", [25 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi3\00", [25 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi4\00", [25 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"enet\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"epit1\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"epit2\00", [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"extern_audio\00", [19 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpt\00", [28 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpt_serial\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpu2d_ovg\00", [22 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocotp\00", [26 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"csi\00", [28 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pxp_axi\00", [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"epdc_axi\00", [23 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcdif_axi\00", [22 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcdif_pix\00", [22 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"epdc_pix\00", [23 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmdc_p0_ipg\00", [20 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmdc_p1_ipg\00", [20 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocram\00", [26 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdma\00", [27 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spba\00", [27 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@share_count_spdif = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.155 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi1_ipg\00", [23 x i8] zeroinitializer }, align 32
@share_count_ssi1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.157 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi2_ipg\00", [23 x i8] zeroinitializer }, align 32
@share_count_ssi2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi3_ipg\00", [23 x i8] zeroinitializer }, align 32
@share_count_ssi3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.159 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi1\00", [27 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi2\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi3\00", [27 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uart_serial\00", [20 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usboh3\00", [25 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc1\00", [25 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc2\00", [25 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc3\00", [25 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc4\00", [25 x i8] zeroinitializer }, align 32
@imx6sl_clocks_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: failed to set AHB clock rate %d!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx6sl_clocks_init\00", [45 x i8] zeroinitializer }, align 32
@imx6sl_clocks_init._entry_ptr = internal global ptr @imx6sl_clocks_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.171 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ocram_alt_sels\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.172 = private unnamed_addr constant [14 x i8] c"saved_arm_div\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 159, i32 23 }
@___asan_gen_.175 = private unnamed_addr constant [9 x i8] c"ccm_base\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 102, i32 22 }
@___asan_gen_.178 = private unnamed_addr constant [12 x i8] c"anatop_base\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 103, i32 22 }
@___asan_gen_.181 = private unnamed_addr constant [14 x i8] c"saved_pll_arm\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 142, i32 13 }
@___asan_gen_.184 = private unnamed_addr constant [12 x i8] c"clk_hw_data\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 101, i32 36 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 190, i32 6 }
@___asan_gen_.190 = private unnamed_addr constant [4 x i8] c"hws\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 100, i32 24 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 196, i32 43 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 197, i32 51 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 198, i32 50 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 200, i32 54 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 202, i32 43 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 208, i32 32 }
@___asan_gen_.211 = private unnamed_addr constant [20 x i8] c"pll_bypass_src_sels\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 63, i32 20 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 209, i32 32 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 210, i32 32 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 211, i32 32 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 212, i32 32 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 213, i32 32 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 214, i32 32 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 217, i32 61 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 218, i32 61 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 219, i32 61 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 220, i32 61 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 221, i32 61 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 222, i32 61 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 223, i32 61 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 225, i32 28 }
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"pll1_bypass_sels\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 64, i32 20 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 226, i32 28 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"pll2_bypass_sels\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 65, i32 20 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 227, i32 28 }
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c"pll3_bypass_sels\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 66, i32 20 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 228, i32 28 }
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"pll4_bypass_sels\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 67, i32 20 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 229, i32 28 }
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"pll5_bypass_sels\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 68, i32 20 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 230, i32 28 }
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"pll6_bypass_sels\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 69, i32 20 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 231, i32 28 }
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"pll7_bypass_sels\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 70, i32 20 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 242, i32 34 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 243, i32 34 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 244, i32 34 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 245, i32 34 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 246, i32 34 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 247, i32 34 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 248, i32 34 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 250, i32 30 }
@___asan_gen_.319 = private unnamed_addr constant [10 x i8] c"lvds_sels\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 57, i32 20 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 251, i32 56 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 252, i32 55 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 261, i32 33 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 262, i32 33 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 263, i32 33 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 264, i32 33 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 267, i32 35 }
@___asan_gen_.343 = private unnamed_addr constant [15 x i8] c"post_div_table\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 80, i32 35 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 268, i32 41 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 269, i32 35 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 270, i32 35 }
@___asan_gen_.355 = private unnamed_addr constant [16 x i8] c"video_div_table\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 87, i32 35 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 271, i32 35 }
@___asan_gen_.361 = private unnamed_addr constant [19 x i8] c"clk_enet_ref_table\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 72, i32 35 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 274, i32 45 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 275, i32 45 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 276, i32 45 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 277, i32 45 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 278, i32 45 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 279, i32 45 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 280, i32 45 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 283, i32 54 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 284, i32 54 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 285, i32 54 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 286, i32 54 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 294, i32 37 }
@___asan_gen_.400 = private unnamed_addr constant [10 x i8] c"step_sels\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 34, i32 20 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 295, i32 37 }
@___asan_gen_.406 = private unnamed_addr constant [13 x i8] c"pll1_sw_sels\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 35, i32 20 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 296, i32 37 }
@___asan_gen_.412 = private unnamed_addr constant [15 x i8] c"ocram_alt_sels\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 36, i32 20 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 297, i32 37 }
@___asan_gen_.418 = private unnamed_addr constant [11 x i8] c"ocram_sels\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 37, i32 20 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 298, i32 37 }
@___asan_gen_.424 = private unnamed_addr constant [16 x i8] c"pre_periph_sels\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 38, i32 20 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 299, i32 37 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 300, i32 37 }
@___asan_gen_.433 = private unnamed_addr constant [18 x i8] c"periph2_clk2_sels\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 40, i32 20 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 301, i32 37 }
@___asan_gen_.439 = private unnamed_addr constant [17 x i8] c"periph_clk2_sels\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 39, i32 20 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 302, i32 37 }
@___asan_gen_.445 = private unnamed_addr constant [9 x i8] c"csi_sels\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 43, i32 20 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 303, i32 37 }
@___asan_gen_.451 = private unnamed_addr constant [15 x i8] c"lcdif_axi_sels\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 44, i32 20 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 304, i32 58 }
@___asan_gen_.457 = private unnamed_addr constant [11 x i8] c"usdhc_sels\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 45, i32 20 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 305, i32 58 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 306, i32 58 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 307, i32 58 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 308, i32 58 }
@___asan_gen_.472 = private unnamed_addr constant [9 x i8] c"ssi_sels\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 46, i32 20 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 309, i32 58 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 310, i32 58 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 311, i32 58 }
@___asan_gen_.484 = private unnamed_addr constant [12 x i8] c"perclk_sels\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 47, i32 20 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 312, i32 37 }
@___asan_gen_.490 = private unnamed_addr constant [13 x i8] c"pxp_axi_sels\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 48, i32 20 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 313, i32 37 }
@___asan_gen_.496 = private unnamed_addr constant [14 x i8] c"epdc_axi_sels\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 49, i32 20 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 314, i32 37 }
@___asan_gen_.502 = private unnamed_addr constant [15 x i8] c"gpu2d_ovg_sels\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 50, i32 20 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 315, i32 37 }
@___asan_gen_.508 = private unnamed_addr constant [11 x i8] c"gpu2d_sels\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 51, i32 20 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 316, i32 37 }
@___asan_gen_.514 = private unnamed_addr constant [15 x i8] c"lcdif_pix_sels\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 52, i32 20 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 317, i32 37 }
@___asan_gen_.520 = private unnamed_addr constant [14 x i8] c"epdc_pix_sels\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 53, i32 20 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 318, i32 37 }
@___asan_gen_.526 = private unnamed_addr constant [11 x i8] c"audio_sels\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 54, i32 20 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 319, i32 37 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 320, i32 37 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 321, i32 37 }
@___asan_gen_.538 = private unnamed_addr constant [11 x i8] c"ecspi_sels\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 55, i32 20 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 322, i32 37 }
@___asan_gen_.544 = private unnamed_addr constant [10 x i8] c"uart_sels\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 56, i32 20 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 325, i32 48 }
@___asan_gen_.550 = private unnamed_addr constant [12 x i8] c"periph_sels\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 41, i32 20 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 326, i32 48 }
@___asan_gen_.556 = private unnamed_addr constant [13 x i8] c"periph2_sels\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 42, i32 20 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 329, i32 62 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 330, i32 38 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 331, i32 38 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 332, i32 38 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 333, i32 38 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 334, i32 38 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 335, i32 38 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 336, i32 38 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 337, i32 38 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 338, i32 38 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 339, i32 38 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 340, i32 38 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 341, i32 38 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 342, i32 38 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 343, i32 38 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 344, i32 38 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 345, i32 63 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 346, i32 38 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 347, i32 38 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 348, i32 38 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 349, i32 38 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 350, i32 38 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 351, i32 38 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 352, i32 63 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 353, i32 38 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 354, i32 38 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 355, i32 38 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 356, i32 38 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 357, i32 38 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 358, i32 38 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 359, i32 38 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 360, i32 38 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 361, i32 38 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 365, i32 54 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 366, i32 54 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 369, i32 33 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 370, i32 33 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 371, i32 33 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 372, i32 33 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 373, i32 33 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 374, i32 33 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 375, i32 33 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 376, i32 33 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 377, i32 33 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 378, i32 33 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 379, i32 33 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 380, i32 33 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 381, i32 33 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 382, i32 33 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 383, i32 33 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 384, i32 33 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 385, i32 33 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 386, i32 33 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 387, i32 33 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 388, i32 33 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 389, i32 33 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 390, i32 33 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 391, i32 33 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 392, i32 33 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 393, i32 33 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 394, i32 33 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 395, i32 33 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 396, i32 33 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 397, i32 33 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 398, i32 33 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 399, i32 33 }
@___asan_gen_.760 = private unnamed_addr constant [18 x i8] c"share_count_spdif\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 98, i32 21 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 400, i32 33 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 401, i32 33 }
@___asan_gen_.769 = private unnamed_addr constant [17 x i8] c"share_count_ssi1\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 95, i32 21 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 402, i32 33 }
@___asan_gen_.775 = private unnamed_addr constant [17 x i8] c"share_count_ssi2\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 96, i32 21 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 403, i32 33 }
@___asan_gen_.781 = private unnamed_addr constant [17 x i8] c"share_count_ssi3\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 97, i32 21 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 404, i32 33 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 405, i32 33 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 406, i32 33 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 407, i32 33 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 408, i32 33 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 409, i32 33 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 410, i32 33 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 411, i32 33 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 412, i32 33 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 413, i32 33 }
@___asan_gen_.814 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 425, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.824 = private constant [32 x i8] c"../drivers/clk/imx/clk-imx6sl.c\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.824, i32 37, i32 48 }
@llvm.compiler.used = appending global [220 x ptr] [ptr @__of_table_imx6sl, ptr @imx6sl_clocks_init._entry, ptr @imx6sl_clocks_init._entry_ptr, ptr @imx6sl_set_wait_clk.saved_arm_div, ptr @ccm_base, ptr @anatop_base, ptr @imx6sl_enable_pll_arm.saved_pll_arm, ptr @clk_hw_data, ptr @.str, ptr @hws, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pll_bypass_src_sels, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pll1_bypass_sels, ptr @.str.21, ptr @pll2_bypass_sels, ptr @.str.22, ptr @pll3_bypass_sels, ptr @.str.23, ptr @pll4_bypass_sels, ptr @.str.24, ptr @pll5_bypass_sels, ptr @.str.25, ptr @pll6_bypass_sels, ptr @.str.26, ptr @pll7_bypass_sels, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @lvds_sels, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @post_div_table, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @video_div_table, ptr @.str.45, ptr @clk_enet_ref_table, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @step_sels, ptr @.str.58, ptr @pll1_sw_sels, ptr @.str.59, ptr @ocram_alt_sels, ptr @.str.60, ptr @ocram_sels, ptr @.str.61, ptr @pre_periph_sels, ptr @.str.62, ptr @.str.63, ptr @periph2_clk2_sels, ptr @.str.64, ptr @periph_clk2_sels, ptr @.str.65, ptr @csi_sels, ptr @.str.66, ptr @lcdif_axi_sels, ptr @.str.67, ptr @usdhc_sels, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @ssi_sels, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @perclk_sels, ptr @.str.75, ptr @pxp_axi_sels, ptr @.str.76, ptr @epdc_axi_sels, ptr @.str.77, ptr @gpu2d_ovg_sels, ptr @.str.78, ptr @gpu2d_sels, ptr @.str.79, ptr @lcdif_pix_sels, ptr @.str.80, ptr @epdc_pix_sels, ptr @.str.81, ptr @audio_sels, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @ecspi_sels, ptr @.str.85, ptr @uart_sels, ptr @.str.86, ptr @periph_sels, ptr @.str.87, ptr @periph2_sels, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @share_count_spdif, ptr @.str.155, ptr @.str.156, ptr @share_count_ssi1, ptr @.str.157, ptr @share_count_ssi2, ptr @.str.158, ptr @share_count_ssi3, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171], section "llvm.metadata"
@0 = internal global [218 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6sl_set_wait_clk.saved_arm_div to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccm_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anatop_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6sl_enable_pll_arm.saved_pll_arm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_hw_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hws to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_bypass_src_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll1_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll2_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll3_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll4_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll5_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll6_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll7_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lvds_sels to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @post_div_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_div_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_enet_ref_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @step_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll1_sw_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocram_alt_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocram_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pre_periph_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph2_clk2_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_clk2_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcdif_axi_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhc_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perclk_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxp_axi_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epdc_axi_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu2d_ovg_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu2d_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcdif_pix_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epdc_pix_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecspi_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph2_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_spdif to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_ssi1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_ssi2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_ssi3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6sl_clocks_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx6sl_set_wait_clk(i1 noundef zeroext %enter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ccm_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 12
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !445
  %2 = and i32 %1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  %3 = load ptr, ptr @anatop_base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6
  br i1 %tobool.not.i, label %imx6sl_get_arm_divider_for_wait.exit, label %if.then

imx6sl_get_arm_divider_for_wait.exit:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = and i32 %4, 2130706432
  call void @__sanitizer_cov_trace_const_cmp4(i32 1107296256, i32 %5)
  %cmp.i = icmp eq i32 %5, 1107296256
  %..i = select i1 %cmp.i, i32 67108864, i32 100663296
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  store i32 %6, ptr @imx6sl_enable_pll_arm.saved_pll_arm, align 4
  %or.i = and i32 %6, -12289
  %and.i = or i32 %or.i, 8192
  %7 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %8 = load ptr, ptr @anatop_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #6, !srcloc !446
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then
  %9 = load ptr, ptr @anatop_base, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !445
  %.mask.i = and i32 %10, 128
  %tobool7.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool7.not.i, label %while.cond.i.while.cond.i_crit_edge, label %while.cond.i.if.end_crit_edge

while.cond.i.if.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

if.end:                                           ; preds = %while.cond.i.if.end_crit_edge, %imx6sl_get_arm_divider_for_wait.exit
  %retval.0.i17 = phi i32 [ %..i, %imx6sl_get_arm_divider_for_wait.exit ], [ 33554432, %while.cond.i.if.end_crit_edge ]
  br i1 %enter, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = load ptr, ptr @ccm_base, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !445
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  store i32 %13, ptr @imx6sl_set_wait_clk.saved_arm_div, align 4
  %14 = load ptr, ptr @ccm_base, align 4
  %add.ptr3 = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %retval.0.i17) #6, !srcloc !446
  br label %while.cond.preheader

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = load i32, ptr @imx6sl_set_wait_clk.saved_arm_div, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = load ptr, ptr @ccm_base, align 4
  %add.ptr4 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %16) #6, !srcloc !446
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.else, %if.then1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %18 = load ptr, ptr @ccm_base, align 4
  %add.ptr6 = getelementptr i8, ptr %18, i32 72
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !445
  %and = and i32 %19, 65536
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br i1 %tobool.not.i, label %while.end.if.end11_crit_edge, label %if.then10

while.end.if.end11_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = load i32, ptr @imx6sl_enable_pll_arm.saved_pll_arm, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  %22 = load ptr, ptr @anatop_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #6, !srcloc !446
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %while.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx6sl_clocks_init(ptr noundef %ccm_node) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 672) #9
  store ptr %call7.i.i, ptr @clk_hw_data, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !447

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 190, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 167, ptr %call7.i.i, align 8
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1
  store ptr %hws, ptr @hws, align 4
  %call.i = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %2 = load ptr, ptr @hws, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %2, align 4
  %call26 = tail call ptr @imx_obtain_fixed_clock_hw(ptr noundef nonnull @.str.2, i32 noundef 0) #6
  %4 = load ptr, ptr @hws, align 4
  %arrayidx27 = getelementptr ptr, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call26, ptr %arrayidx27, align 4
  %call28 = tail call ptr @imx_obtain_fixed_clock_hw(ptr noundef nonnull @.str.3, i32 noundef 0) #6
  %6 = load ptr, ptr @hws, align 4
  %arrayidx29 = getelementptr ptr, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call28, ptr %arrayidx29, align 4
  %call30 = tail call ptr @imx_obtain_fixed_clock_hw(ptr noundef nonnull @.str.4, i32 noundef 0) #6
  %8 = load ptr, ptr @hws, align 4
  %arrayidx31 = getelementptr ptr, ptr %8, i32 139
  %9 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call30, ptr %arrayidx31, align 4
  %call32 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5) #6
  %call33 = tail call ptr @of_iomap(ptr noundef %call32, i32 noundef 0) #6
  %tobool35.not = icmp eq ptr %call33, null
  br i1 %tobool35.not, label %do.end53, label %if.end24.if.end59_crit_edge, !prof !447

if.end24.if.end59_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

do.end53:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 9, ptr noundef null) #6
  br label %if.end59

if.end59:                                         ; preds = %do.end53, %if.end24.if.end59_crit_edge
  tail call void @of_node_put(ptr noundef %call32) #6
  store ptr %call33, ptr @anatop_base, align 4
  %call.i836 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %call33, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %10 = load ptr, ptr @hws, align 4
  %arrayidx68 = getelementptr ptr, ptr %10, i32 140
  %11 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i836, ptr %arrayidx68, align 4
  %add.ptr69 = getelementptr i8, ptr %call33, i32 48
  %call.i837 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr69, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %12 = load ptr, ptr @hws, align 4
  %arrayidx71 = getelementptr ptr, ptr %12, i32 141
  %13 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i837, ptr %arrayidx71, align 4
  %add.ptr72 = getelementptr i8, ptr %call33, i32 16
  %call.i838 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr72, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %14 = load ptr, ptr @hws, align 4
  %arrayidx74 = getelementptr ptr, ptr %14, i32 142
  %15 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i838, ptr %arrayidx74, align 4
  %add.ptr75 = getelementptr i8, ptr %call33, i32 112
  %call.i839 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr75, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %16 = load ptr, ptr @hws, align 4
  %arrayidx77 = getelementptr ptr, ptr %16, i32 143
  %17 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i839, ptr %arrayidx77, align 4
  %add.ptr78 = getelementptr i8, ptr %call33, i32 160
  %call.i840 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr78, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %18 = load ptr, ptr @hws, align 4
  %arrayidx80 = getelementptr ptr, ptr %18, i32 144
  %19 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i840, ptr %arrayidx80, align 4
  %add.ptr81 = getelementptr i8, ptr %call33, i32 224
  %call.i841 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr81, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %20 = load ptr, ptr @hws, align 4
  %arrayidx83 = getelementptr ptr, ptr %20, i32 145
  %21 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i841, ptr %arrayidx83, align 4
  %add.ptr84 = getelementptr i8, ptr %call33, i32 32
  %call.i842 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr84, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %22 = load ptr, ptr @hws, align 4
  %arrayidx86 = getelementptr ptr, ptr %22, i32 146
  %23 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i842, ptr %arrayidx86, align 4
  %call88 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, ptr noundef %call33, i32 noundef 127) #6
  %24 = load ptr, ptr @hws, align 4
  %arrayidx89 = getelementptr ptr, ptr %24, i32 147
  %25 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call88, ptr %arrayidx89, align 4
  %call91 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3, ptr noundef %add.ptr69, i32 noundef 1) #6
  %26 = load ptr, ptr @hws, align 4
  %arrayidx92 = getelementptr ptr, ptr %26, i32 148
  %27 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call91, ptr %arrayidx92, align 4
  %call94 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3, ptr noundef %add.ptr72, i32 noundef 3) #6
  %28 = load ptr, ptr @hws, align 4
  %arrayidx95 = getelementptr ptr, ptr %28, i32 149
  %29 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call94, ptr %arrayidx95, align 4
  %call97 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, ptr noundef %add.ptr75, i32 noundef 127) #6
  %30 = load ptr, ptr @hws, align 4
  %arrayidx98 = getelementptr ptr, ptr %30, i32 150
  %31 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call97, ptr %arrayidx98, align 4
  %call100 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, ptr noundef %add.ptr78, i32 noundef 127) #6
  %32 = load ptr, ptr @hws, align 4
  %arrayidx101 = getelementptr ptr, ptr %32, i32 151
  %33 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call100, ptr %arrayidx101, align 4
  %call103 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 5, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, ptr noundef %add.ptr81, i32 noundef 3) #6
  %34 = load ptr, ptr @hws, align 4
  %arrayidx104 = getelementptr ptr, ptr %34, i32 152
  %35 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call103, ptr %arrayidx104, align 4
  %call106 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, ptr noundef %add.ptr84, i32 noundef 3) #6
  %36 = load ptr, ptr @hws, align 4
  %arrayidx107 = getelementptr ptr, ptr %36, i32 153
  %37 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call106, ptr %arrayidx107, align 4
  %call.i843 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.20, i8 noundef zeroext 2, ptr noundef nonnull @pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %call33, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %38 = load ptr, ptr @hws, align 4
  %arrayidx110 = getelementptr ptr, ptr %38, i32 154
  %39 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i843, ptr %arrayidx110, align 4
  %call.i844 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21, i8 noundef zeroext 2, ptr noundef nonnull @pll2_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr69, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %40 = load ptr, ptr @hws, align 4
  %arrayidx113 = getelementptr ptr, ptr %40, i32 155
  %41 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i844, ptr %arrayidx113, align 4
  %call.i845 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.22, i8 noundef zeroext 2, ptr noundef nonnull @pll3_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr72, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %42 = load ptr, ptr @hws, align 4
  %arrayidx116 = getelementptr ptr, ptr %42, i32 156
  %43 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i845, ptr %arrayidx116, align 4
  %call.i846 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, i8 noundef zeroext 2, ptr noundef nonnull @pll4_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr75, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %44 = load ptr, ptr @hws, align 4
  %arrayidx119 = getelementptr ptr, ptr %44, i32 157
  %45 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i846, ptr %arrayidx119, align 4
  %call.i847 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24, i8 noundef zeroext 2, ptr noundef nonnull @pll5_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr78, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %46 = load ptr, ptr @hws, align 4
  %arrayidx122 = getelementptr ptr, ptr %46, i32 158
  %47 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i847, ptr %arrayidx122, align 4
  %call.i848 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, i8 noundef zeroext 2, ptr noundef nonnull @pll6_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr81, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %48 = load ptr, ptr @hws, align 4
  %arrayidx125 = getelementptr ptr, ptr %48, i32 159
  %49 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i848, ptr %arrayidx125, align 4
  %call.i849 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26, i8 noundef zeroext 2, ptr noundef nonnull @pll7_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr84, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %50 = load ptr, ptr @hws, align 4
  %arrayidx128 = getelementptr ptr, ptr %50, i32 160
  %51 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i849, ptr %arrayidx128, align 4
  %arrayidx129 = getelementptr ptr, ptr %50, i32 154
  %52 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx129, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clk, align 4
  %arrayidx130 = getelementptr ptr, ptr %50, i32 147
  %56 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx130, align 4
  %clk131 = getelementptr inbounds %struct.clk_hw, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %clk131 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk131, align 4
  %call132 = tail call i32 @clk_set_parent(ptr noundef %55, ptr noundef %59) #6
  %60 = load ptr, ptr @hws, align 4
  %arrayidx133 = getelementptr ptr, ptr %60, i32 155
  %61 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx133, align 4
  %clk134 = getelementptr inbounds %struct.clk_hw, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %clk134 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clk134, align 4
  %arrayidx135 = getelementptr ptr, ptr %60, i32 148
  %65 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx135, align 4
  %clk136 = getelementptr inbounds %struct.clk_hw, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %clk136 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clk136, align 4
  %call137 = tail call i32 @clk_set_parent(ptr noundef %64, ptr noundef %68) #6
  %69 = load ptr, ptr @hws, align 4
  %arrayidx138 = getelementptr ptr, ptr %69, i32 156
  %70 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx138, align 4
  %clk139 = getelementptr inbounds %struct.clk_hw, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %clk139 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clk139, align 4
  %arrayidx140 = getelementptr ptr, ptr %69, i32 149
  %74 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx140, align 4
  %clk141 = getelementptr inbounds %struct.clk_hw, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %clk141 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %clk141, align 4
  %call142 = tail call i32 @clk_set_parent(ptr noundef %73, ptr noundef %77) #6
  %78 = load ptr, ptr @hws, align 4
  %arrayidx143 = getelementptr ptr, ptr %78, i32 157
  %79 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx143, align 4
  %clk144 = getelementptr inbounds %struct.clk_hw, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %clk144 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %clk144, align 4
  %arrayidx145 = getelementptr ptr, ptr %78, i32 150
  %83 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx145, align 4
  %clk146 = getelementptr inbounds %struct.clk_hw, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %clk146 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %clk146, align 4
  %call147 = tail call i32 @clk_set_parent(ptr noundef %82, ptr noundef %86) #6
  %87 = load ptr, ptr @hws, align 4
  %arrayidx148 = getelementptr ptr, ptr %87, i32 158
  %88 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx148, align 4
  %clk149 = getelementptr inbounds %struct.clk_hw, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %clk149 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %clk149, align 4
  %arrayidx150 = getelementptr ptr, ptr %87, i32 151
  %92 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx150, align 4
  %clk151 = getelementptr inbounds %struct.clk_hw, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %clk151 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %clk151, align 4
  %call152 = tail call i32 @clk_set_parent(ptr noundef %91, ptr noundef %95) #6
  %96 = load ptr, ptr @hws, align 4
  %arrayidx153 = getelementptr ptr, ptr %96, i32 159
  %97 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx153, align 4
  %clk154 = getelementptr inbounds %struct.clk_hw, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %clk154 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %clk154, align 4
  %arrayidx155 = getelementptr ptr, ptr %96, i32 152
  %101 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx155, align 4
  %clk156 = getelementptr inbounds %struct.clk_hw, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %clk156 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %clk156, align 4
  %call157 = tail call i32 @clk_set_parent(ptr noundef %100, ptr noundef %104) #6
  %105 = load ptr, ptr @hws, align 4
  %arrayidx158 = getelementptr ptr, ptr %105, i32 160
  %106 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx158, align 4
  %clk159 = getelementptr inbounds %struct.clk_hw, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %clk159 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %clk159, align 4
  %arrayidx160 = getelementptr ptr, ptr %105, i32 153
  %110 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx160, align 4
  %clk161 = getelementptr inbounds %struct.clk_hw, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %clk161 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %clk161, align 4
  %call162 = tail call i32 @clk_set_parent(ptr noundef %109, ptr noundef %113) #6
  %call.i850 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.20, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %call33, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #6
  %114 = load ptr, ptr @hws, align 4
  %arrayidx165 = getelementptr ptr, ptr %114, i32 3
  %115 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call.i850, ptr %arrayidx165, align 4
  %call.i851 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.21, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr69, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #6
  %116 = load ptr, ptr @hws, align 4
  %arrayidx168 = getelementptr ptr, ptr %116, i32 4
  %117 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call.i851, ptr %arrayidx168, align 4
  %call.i852 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr72, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #6
  %118 = load ptr, ptr @hws, align 4
  %arrayidx171 = getelementptr ptr, ptr %118, i32 5
  %119 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i852, ptr %arrayidx171, align 4
  %call.i853 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr75, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #6
  %120 = load ptr, ptr @hws, align 4
  %arrayidx174 = getelementptr ptr, ptr %120, i32 6
  %121 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i853, ptr %arrayidx174, align 4
  %call.i854 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr78, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #6
  %122 = load ptr, ptr @hws, align 4
  %arrayidx177 = getelementptr ptr, ptr %122, i32 7
  %123 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i854, ptr %arrayidx177, align 4
  %call.i855 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr81, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #6
  %124 = load ptr, ptr @hws, align 4
  %arrayidx180 = getelementptr ptr, ptr %124, i32 8
  %125 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i855, ptr %arrayidx180, align 4
  %call.i856 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr84, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #6
  %126 = load ptr, ptr @hws, align 4
  %arrayidx183 = getelementptr ptr, ptr %126, i32 9
  %127 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call.i856, ptr %arrayidx183, align 4
  %add.ptr184 = getelementptr i8, ptr %call33, i32 352
  %call.i857 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34, i8 noundef zeroext 32, ptr noundef nonnull @lvds_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr184, i8 noundef zeroext 0, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %128 = load ptr, ptr @hws, align 4
  %arrayidx186 = getelementptr ptr, ptr %128, i32 136
  %129 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call.i857, ptr %arrayidx186, align 4
  %call188 = tail call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, ptr noundef %add.ptr184, i8 noundef zeroext 10, i32 noundef 4096) #6
  %130 = load ptr, ptr @hws, align 4
  %arrayidx189 = getelementptr ptr, ptr %130, i32 137
  %131 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call188, ptr %arrayidx189, align 4
  %call191 = tail call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.4, ptr noundef %add.ptr184, i8 noundef zeroext 12, i32 noundef 1024) #6
  %132 = load ptr, ptr @hws, align 4
  %arrayidx192 = getelementptr ptr, ptr %132, i32 138
  %133 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call191, ptr %arrayidx192, align 4
  %call.i858 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.29, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr72, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #6
  %134 = load ptr, ptr @hws, align 4
  %arrayidx195 = getelementptr ptr, ptr %134, i32 10
  %135 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call.i858, ptr %arrayidx195, align 4
  %call.i859 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr84, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #6
  %136 = load ptr, ptr @hws, align 4
  %arrayidx198 = getelementptr ptr, ptr %136, i32 11
  %137 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call.i859, ptr %arrayidx198, align 4
  %call.i860 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr72, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #6
  %138 = load ptr, ptr @hws, align 4
  %arrayidx201 = getelementptr ptr, ptr %138, i32 12
  %139 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call.i860, ptr %arrayidx201, align 4
  %call.i861 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr84, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #6
  %140 = load ptr, ptr @hws, align 4
  %arrayidx204 = getelementptr ptr, ptr %140, i32 13
  %141 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call.i861, ptr %arrayidx204, align 4
  %call206 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.30, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr75, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #6
  %142 = load ptr, ptr @hws, align 4
  %arrayidx207 = getelementptr ptr, ptr %142, i32 14
  %143 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call206, ptr %arrayidx207, align 4
  %add.ptr208 = getelementptr i8, ptr %call33, i32 368
  %call209 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr208, i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %144 = load ptr, ptr @hws, align 4
  %arrayidx210 = getelementptr ptr, ptr %144, i32 133
  %145 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call209, ptr %arrayidx210, align 4
  %call212 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr78, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #6
  %146 = load ptr, ptr @hws, align 4
  %arrayidx213 = getelementptr ptr, ptr %146, i32 15
  %147 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call212, ptr %arrayidx213, align 4
  %call215 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr208, i8 noundef zeroext 30, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @video_div_table, ptr noundef nonnull @imx_ccm_lock) #6
  %148 = load ptr, ptr @hws, align 4
  %arrayidx216 = getelementptr ptr, ptr %148, i32 16
  %149 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call215, ptr %arrayidx216, align 4
  %call218 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr81, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @clk_enet_ref_table, ptr noundef nonnull @imx_ccm_lock) #6
  %150 = load ptr, ptr @hws, align 4
  %arrayidx219 = getelementptr ptr, ptr %150, i32 17
  %151 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call218, ptr %arrayidx219, align 4
  %add.ptr220 = getelementptr i8, ptr %call33, i32 256
  %call221 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.28, ptr noundef %add.ptr220, i8 noundef zeroext 0) #6
  %152 = load ptr, ptr @hws, align 4
  %arrayidx222 = getelementptr ptr, ptr %152, i32 18
  %153 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call221, ptr %arrayidx222, align 4
  %call224 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.28, ptr noundef %add.ptr220, i8 noundef zeroext 1) #6
  %154 = load ptr, ptr @hws, align 4
  %arrayidx225 = getelementptr ptr, ptr %154, i32 19
  %155 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call224, ptr %arrayidx225, align 4
  %call227 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.28, ptr noundef %add.ptr220, i8 noundef zeroext 2) #6
  %156 = load ptr, ptr @hws, align 4
  %arrayidx228 = getelementptr ptr, ptr %156, i32 20
  %157 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call227, ptr %arrayidx228, align 4
  %add.ptr229 = getelementptr i8, ptr %call33, i32 240
  %call230 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.29, ptr noundef %add.ptr229, i8 noundef zeroext 0) #6
  %158 = load ptr, ptr @hws, align 4
  %arrayidx231 = getelementptr ptr, ptr %158, i32 21
  %159 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call230, ptr %arrayidx231, align 4
  %call233 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.29, ptr noundef %add.ptr229, i8 noundef zeroext 1) #6
  %160 = load ptr, ptr @hws, align 4
  %arrayidx234 = getelementptr ptr, ptr %160, i32 22
  %161 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call233, ptr %arrayidx234, align 4
  %call236 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.29, ptr noundef %add.ptr229, i8 noundef zeroext 2) #6
  %162 = load ptr, ptr @hws, align 4
  %arrayidx237 = getelementptr ptr, ptr %162, i32 23
  %163 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call236, ptr %arrayidx237, align 4
  %call239 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.29, ptr noundef %add.ptr229, i8 noundef zeroext 3) #6
  %164 = load ptr, ptr @hws, align 4
  %arrayidx240 = getelementptr ptr, ptr %164, i32 24
  %165 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call239, ptr %arrayidx240, align 4
  %call.i862 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.48, i32 noundef 4, i32 noundef 1, i32 noundef 2) #6
  %166 = load ptr, ptr @hws, align 4
  %arrayidx242 = getelementptr ptr, ptr %166, i32 25
  %167 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call.i862, ptr %arrayidx242, align 4
  %call.i863 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.29, i32 noundef 4, i32 noundef 1, i32 noundef 4) #6
  %168 = load ptr, ptr @hws, align 4
  %arrayidx244 = getelementptr ptr, ptr %168, i32 26
  %169 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call.i863, ptr %arrayidx244, align 4
  %call.i864 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.29, i32 noundef 4, i32 noundef 1, i32 noundef 6) #6
  %170 = load ptr, ptr @hws, align 4
  %arrayidx246 = getelementptr ptr, ptr %170, i32 27
  %171 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call.i864, ptr %arrayidx246, align 4
  %call.i865 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.29, i32 noundef 4, i32 noundef 1, i32 noundef 8) #6
  %172 = load ptr, ptr @hws, align 4
  %arrayidx248 = getelementptr ptr, ptr %172, i32 28
  %173 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call.i865, ptr %arrayidx248, align 4
  %call249 = tail call ptr @of_iomap(ptr noundef %ccm_node, i32 noundef 0) #6
  %tobool251.not = icmp eq ptr %call249, null
  br i1 %tobool251.not, label %do.end269, label %if.end59.if.end275_crit_edge, !prof !447

if.end59.if.end275_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end275

do.end269:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 290, i32 noundef 9, ptr noundef null) #6
  br label %if.end275

if.end275:                                        ; preds = %do.end269, %if.end59.if.end275_crit_edge
  store ptr %call249, ptr @ccm_base, align 4
  %add.ptr283 = getelementptr i8, ptr %call249, i32 12
  %call.i866 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.57, i8 noundef zeroext 2, ptr noundef nonnull @step_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr283, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %174 = load ptr, ptr @hws, align 4
  %arrayidx285 = getelementptr ptr, ptr %174, i32 29
  %175 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call.i866, ptr %arrayidx285, align 4
  %call.i867 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.58, i8 noundef zeroext 2, ptr noundef nonnull @pll1_sw_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr283, i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %176 = load ptr, ptr @hws, align 4
  %arrayidx288 = getelementptr ptr, ptr %176, i32 30
  %177 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %call.i867, ptr %arrayidx288, align 4
  %add.ptr289 = getelementptr i8, ptr %call249, i32 20
  %call.i868 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.59, i8 noundef zeroext 2, ptr noundef nonnull @ocram_alt_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr289, i8 noundef zeroext 7, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %178 = load ptr, ptr @hws, align 4
  %arrayidx291 = getelementptr ptr, ptr %178, i32 31
  %179 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call.i868, ptr %arrayidx291, align 4
  %call.i869 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.60, i8 noundef zeroext 2, ptr noundef nonnull @ocram_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr289, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %180 = load ptr, ptr @hws, align 4
  %arrayidx294 = getelementptr ptr, ptr %180, i32 32
  %181 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %call.i869, ptr %arrayidx294, align 4
  %add.ptr295 = getelementptr i8, ptr %call249, i32 24
  %call.i870 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.61, i8 noundef zeroext 4, ptr noundef nonnull @pre_periph_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr295, i8 noundef zeroext 21, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %182 = load ptr, ptr @hws, align 4
  %arrayidx297 = getelementptr ptr, ptr %182, i32 33
  %183 = ptrtoint ptr %arrayidx297 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call.i870, ptr %arrayidx297, align 4
  %call.i871 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.62, i8 noundef zeroext 4, ptr noundef nonnull @pre_periph_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr295, i8 noundef zeroext 18, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %184 = load ptr, ptr @hws, align 4
  %arrayidx300 = getelementptr ptr, ptr %184, i32 34
  %185 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %call.i871, ptr %arrayidx300, align 4
  %call.i872 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.63, i8 noundef zeroext 2, ptr noundef nonnull @periph2_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr295, i8 noundef zeroext 20, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %186 = load ptr, ptr @hws, align 4
  %arrayidx303 = getelementptr ptr, ptr %186, i32 35
  %187 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %call.i872, ptr %arrayidx303, align 4
  %call.i873 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.64, i8 noundef zeroext 4, ptr noundef nonnull @periph_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr295, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %188 = load ptr, ptr @hws, align 4
  %arrayidx306 = getelementptr ptr, ptr %188, i32 36
  %189 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call.i873, ptr %arrayidx306, align 4
  %add.ptr307 = getelementptr i8, ptr %call249, i32 60
  %call.i874 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.65, i8 noundef zeroext 4, ptr noundef nonnull @csi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr307, i8 noundef zeroext 9, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %190 = load ptr, ptr @hws, align 4
  %arrayidx309 = getelementptr ptr, ptr %190, i32 37
  %191 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call.i874, ptr %arrayidx309, align 4
  %call.i875 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.66, i8 noundef zeroext 4, ptr noundef nonnull @lcdif_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr307, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %192 = load ptr, ptr @hws, align 4
  %arrayidx312 = getelementptr ptr, ptr %192, i32 38
  %193 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %call.i875, ptr %arrayidx312, align 4
  %add.ptr313 = getelementptr i8, ptr %call249, i32 28
  %call314 = tail call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.67, ptr noundef %add.ptr313, i8 noundef zeroext 16, i8 noundef zeroext 1, ptr noundef nonnull @usdhc_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #6
  %194 = load ptr, ptr @hws, align 4
  %arrayidx315 = getelementptr ptr, ptr %194, i32 39
  %195 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call314, ptr %arrayidx315, align 4
  %call317 = tail call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.68, ptr noundef %add.ptr313, i8 noundef zeroext 17, i8 noundef zeroext 1, ptr noundef nonnull @usdhc_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #6
  %196 = load ptr, ptr @hws, align 4
  %arrayidx318 = getelementptr ptr, ptr %196, i32 40
  %197 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call317, ptr %arrayidx318, align 4
  %call320 = tail call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.69, ptr noundef %add.ptr313, i8 noundef zeroext 18, i8 noundef zeroext 1, ptr noundef nonnull @usdhc_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #6
  %198 = load ptr, ptr @hws, align 4
  %arrayidx321 = getelementptr ptr, ptr %198, i32 41
  %199 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call320, ptr %arrayidx321, align 4
  %call323 = tail call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.70, ptr noundef %add.ptr313, i8 noundef zeroext 19, i8 noundef zeroext 1, ptr noundef nonnull @usdhc_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #6
  %200 = load ptr, ptr @hws, align 4
  %arrayidx324 = getelementptr ptr, ptr %200, i32 42
  %201 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %call323, ptr %arrayidx324, align 4
  %call326 = tail call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.71, ptr noundef %add.ptr313, i8 noundef zeroext 10, i8 noundef zeroext 2, ptr noundef nonnull @ssi_sels, i32 noundef 4, ptr noundef nonnull @imx_cscmr1_fixup) #6
  %202 = load ptr, ptr @hws, align 4
  %arrayidx327 = getelementptr ptr, ptr %202, i32 43
  %203 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %call326, ptr %arrayidx327, align 4
  %call329 = tail call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.72, ptr noundef %add.ptr313, i8 noundef zeroext 12, i8 noundef zeroext 2, ptr noundef nonnull @ssi_sels, i32 noundef 4, ptr noundef nonnull @imx_cscmr1_fixup) #6
  %204 = load ptr, ptr @hws, align 4
  %arrayidx330 = getelementptr ptr, ptr %204, i32 44
  %205 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %call329, ptr %arrayidx330, align 4
  %call332 = tail call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.73, ptr noundef %add.ptr313, i8 noundef zeroext 14, i8 noundef zeroext 2, ptr noundef nonnull @ssi_sels, i32 noundef 4, ptr noundef nonnull @imx_cscmr1_fixup) #6
  %206 = load ptr, ptr @hws, align 4
  %arrayidx333 = getelementptr ptr, ptr %206, i32 45
  %207 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call332, ptr %arrayidx333, align 4
  %call335 = tail call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.74, ptr noundef %add.ptr313, i8 noundef zeroext 6, i8 noundef zeroext 1, ptr noundef nonnull @perclk_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #6
  %208 = load ptr, ptr @hws, align 4
  %arrayidx336 = getelementptr ptr, ptr %208, i32 46
  %209 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %call335, ptr %arrayidx336, align 4
  %add.ptr337 = getelementptr i8, ptr %call249, i32 52
  %call.i876 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.75, i8 noundef zeroext 6, ptr noundef nonnull @pxp_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr337, i8 noundef zeroext 6, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %210 = load ptr, ptr @hws, align 4
  %arrayidx339 = getelementptr ptr, ptr %210, i32 47
  %211 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %call.i876, ptr %arrayidx339, align 4
  %call.i877 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.76, i8 noundef zeroext 6, ptr noundef nonnull @epdc_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr337, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %212 = load ptr, ptr @hws, align 4
  %arrayidx342 = getelementptr ptr, ptr %212, i32 48
  %213 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call.i877, ptr %arrayidx342, align 4
  %call.i878 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.77, i8 noundef zeroext 4, ptr noundef nonnull @gpu2d_ovg_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr295, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %214 = load ptr, ptr @hws, align 4
  %arrayidx345 = getelementptr ptr, ptr %214, i32 49
  %215 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %call.i878, ptr %arrayidx345, align 4
  %call.i879 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.78, i8 noundef zeroext 4, ptr noundef nonnull @gpu2d_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr295, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %216 = load ptr, ptr @hws, align 4
  %arrayidx348 = getelementptr ptr, ptr %216, i32 50
  %217 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %call.i879, ptr %arrayidx348, align 4
  %add.ptr349 = getelementptr i8, ptr %call249, i32 56
  %call.i880 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.79, i8 noundef zeroext 6, ptr noundef nonnull @lcdif_pix_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr349, i8 noundef zeroext 6, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %218 = load ptr, ptr @hws, align 4
  %arrayidx351 = getelementptr ptr, ptr %218, i32 51
  %219 = ptrtoint ptr %arrayidx351 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %call.i880, ptr %arrayidx351, align 4
  %call.i881 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.80, i8 noundef zeroext 6, ptr noundef nonnull @epdc_pix_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr349, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %220 = load ptr, ptr @hws, align 4
  %arrayidx354 = getelementptr ptr, ptr %220, i32 52
  %221 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call.i881, ptr %arrayidx354, align 4
  %add.ptr355 = getelementptr i8, ptr %call249, i32 48
  %call.i882 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.81, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr355, i8 noundef zeroext 20, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %222 = load ptr, ptr @hws, align 4
  %arrayidx357 = getelementptr ptr, ptr %222, i32 53
  %223 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %call.i882, ptr %arrayidx357, align 4
  %call.i883 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.82, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr355, i8 noundef zeroext 7, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %224 = load ptr, ptr @hws, align 4
  %arrayidx360 = getelementptr ptr, ptr %224, i32 54
  %225 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %call.i883, ptr %arrayidx360, align 4
  %add.ptr361 = getelementptr i8, ptr %call249, i32 32
  %call.i884 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.83, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr361, i8 noundef zeroext 19, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %226 = load ptr, ptr @hws, align 4
  %arrayidx363 = getelementptr ptr, ptr %226, i32 55
  %227 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %call.i884, ptr %arrayidx363, align 4
  %call.i885 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.84, i8 noundef zeroext 2, ptr noundef nonnull @ecspi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr349, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %228 = load ptr, ptr @hws, align 4
  %arrayidx366 = getelementptr ptr, ptr %228, i32 56
  %229 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %call.i885, ptr %arrayidx366, align 4
  %add.ptr367 = getelementptr i8, ptr %call249, i32 36
  %call.i886 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.85, i8 noundef zeroext 2, ptr noundef nonnull @uart_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr367, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %230 = load ptr, ptr @hws, align 4
  %arrayidx369 = getelementptr ptr, ptr %230, i32 57
  %231 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call.i886, ptr %arrayidx369, align 4
  %add.ptr371 = getelementptr i8, ptr %call249, i32 72
  %call372 = tail call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.86, ptr noundef %add.ptr289, i8 noundef zeroext 25, i8 noundef zeroext 1, ptr noundef %add.ptr371, i8 noundef zeroext 5, ptr noundef nonnull @periph_sels, i32 noundef 2) #6
  %232 = load ptr, ptr @hws, align 4
  %arrayidx373 = getelementptr ptr, ptr %232, i32 58
  %233 = ptrtoint ptr %arrayidx373 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %call372, ptr %arrayidx373, align 4
  %call376 = tail call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.87, ptr noundef %add.ptr289, i8 noundef zeroext 26, i8 noundef zeroext 1, ptr noundef %add.ptr371, i8 noundef zeroext 3, ptr noundef nonnull @periph2_sels, i32 noundef 2) #6
  %234 = load ptr, ptr @hws, align 4
  %arrayidx377 = getelementptr ptr, ptr %234, i32 59
  %235 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %call376, ptr %arrayidx377, align 4
  %call380 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.60, ptr noundef %add.ptr289, i8 noundef zeroext 16, i8 noundef zeroext 3, ptr noundef %add.ptr371, i8 noundef zeroext 0) #6
  %236 = load ptr, ptr @hws, align 4
  %arrayidx381 = getelementptr ptr, ptr %236, i32 60
  %237 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %call380, ptr %arrayidx381, align 4
  %call.i887 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.64, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr289, i8 noundef zeroext 27, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %238 = load ptr, ptr @hws, align 4
  %arrayidx384 = getelementptr ptr, ptr %238, i32 61
  %239 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %call.i887, ptr %arrayidx384, align 4
  %call.i888 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.63, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr289, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %240 = load ptr, ptr @hws, align 4
  %arrayidx387 = getelementptr ptr, ptr %240, i32 62
  %241 = ptrtoint ptr %arrayidx387 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %call.i888, ptr %arrayidx387, align 4
  %call.i889 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr289, i8 noundef zeroext 8, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %242 = load ptr, ptr @hws, align 4
  %arrayidx390 = getelementptr ptr, ptr %242, i32 63
  %243 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %call.i889, ptr %arrayidx390, align 4
  %call.i890 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.65, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr307, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %244 = load ptr, ptr @hws, align 4
  %arrayidx393 = getelementptr ptr, ptr %244, i32 64
  %245 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %call.i890, ptr %arrayidx393, align 4
  %call.i891 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr307, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %246 = load ptr, ptr @hws, align 4
  %arrayidx396 = getelementptr ptr, ptr %246, i32 65
  %247 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %call.i891, ptr %arrayidx396, align 4
  %call.i892 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.67, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr367, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %248 = load ptr, ptr @hws, align 4
  %arrayidx399 = getelementptr ptr, ptr %248, i32 66
  %249 = ptrtoint ptr %arrayidx399 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %call.i892, ptr %arrayidx399, align 4
  %call.i893 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.68, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr367, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %250 = load ptr, ptr @hws, align 4
  %arrayidx402 = getelementptr ptr, ptr %250, i32 67
  %251 = ptrtoint ptr %arrayidx402 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %call.i893, ptr %arrayidx402, align 4
  %call.i894 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.69, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr367, i8 noundef zeroext 19, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %252 = load ptr, ptr @hws, align 4
  %arrayidx405 = getelementptr ptr, ptr %252, i32 68
  %253 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %call.i894, ptr %arrayidx405, align 4
  %call.i895 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.70, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr367, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %254 = load ptr, ptr @hws, align 4
  %arrayidx408 = getelementptr ptr, ptr %254, i32 69
  %255 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %call.i895, ptr %arrayidx408, align 4
  %add.ptr409 = getelementptr i8, ptr %call249, i32 40
  %call.i896 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.71, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr409, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %256 = load ptr, ptr @hws, align 4
  %arrayidx411 = getelementptr ptr, ptr %256, i32 70
  %257 = ptrtoint ptr %arrayidx411 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %call.i896, ptr %arrayidx411, align 4
  %call.i897 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.99, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr409, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %258 = load ptr, ptr @hws, align 4
  %arrayidx414 = getelementptr ptr, ptr %258, i32 71
  %259 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %call.i897, ptr %arrayidx414, align 4
  %add.ptr415 = getelementptr i8, ptr %call249, i32 44
  %call.i898 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.72, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr415, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %260 = load ptr, ptr @hws, align 4
  %arrayidx417 = getelementptr ptr, ptr %260, i32 72
  %261 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %call.i898, ptr %arrayidx417, align 4
  %call.i899 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.101, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr415, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %262 = load ptr, ptr @hws, align 4
  %arrayidx420 = getelementptr ptr, ptr %262, i32 73
  %263 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %call.i899, ptr %arrayidx420, align 4
  %call.i900 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.73, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr409, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %264 = load ptr, ptr @hws, align 4
  %arrayidx423 = getelementptr ptr, ptr %264, i32 74
  %265 = ptrtoint ptr %arrayidx423 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %call.i900, ptr %arrayidx423, align 4
  %call.i901 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.103, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr409, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %266 = load ptr, ptr @hws, align 4
  %arrayidx426 = getelementptr ptr, ptr %266, i32 75
  %267 = ptrtoint ptr %arrayidx426 to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %call.i901, ptr %arrayidx426, align 4
  %call428 = tail call ptr @imx_clk_hw_fixup_divider(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.74, ptr noundef %add.ptr313, i8 noundef zeroext 0, i8 noundef zeroext 6, ptr noundef nonnull @imx_cscmr1_fixup) #6
  %268 = load ptr, ptr @hws, align 4
  %arrayidx429 = getelementptr ptr, ptr %268, i32 76
  %269 = ptrtoint ptr %arrayidx429 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %call428, ptr %arrayidx429, align 4
  %call.i902 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr337, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %270 = load ptr, ptr @hws, align 4
  %arrayidx432 = getelementptr ptr, ptr %270, i32 77
  %271 = ptrtoint ptr %arrayidx432 to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %call.i902, ptr %arrayidx432, align 4
  %call.i903 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.76, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr337, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %272 = load ptr, ptr @hws, align 4
  %arrayidx435 = getelementptr ptr, ptr %272, i32 78
  %273 = ptrtoint ptr %arrayidx435 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %call.i903, ptr %arrayidx435, align 4
  %call.i904 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.77, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr295, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %274 = load ptr, ptr @hws, align 4
  %arrayidx438 = getelementptr ptr, ptr %274, i32 79
  %275 = ptrtoint ptr %arrayidx438 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %call.i904, ptr %arrayidx438, align 4
  %call.i905 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.78, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr295, i8 noundef zeroext 29, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %276 = load ptr, ptr @hws, align 4
  %arrayidx441 = getelementptr ptr, ptr %276, i32 80
  %277 = ptrtoint ptr %arrayidx441 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %call.i905, ptr %arrayidx441, align 4
  %call.i906 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.79, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr349, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %278 = load ptr, ptr @hws, align 4
  %arrayidx444 = getelementptr ptr, ptr %278, i32 81
  %279 = ptrtoint ptr %arrayidx444 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %call.i906, ptr %arrayidx444, align 4
  %call.i907 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.80, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr349, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %280 = load ptr, ptr @hws, align 4
  %arrayidx447 = getelementptr ptr, ptr %280, i32 82
  %281 = ptrtoint ptr %arrayidx447 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %call.i907, ptr %arrayidx447, align 4
  %call449 = tail call ptr @imx_clk_hw_fixup_divider(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.110, ptr noundef %add.ptr313, i8 noundef zeroext 20, i8 noundef zeroext 3, ptr noundef nonnull @imx_cscmr1_fixup) #6
  %282 = load ptr, ptr @hws, align 4
  %arrayidx450 = getelementptr ptr, ptr %282, i32 83
  %283 = ptrtoint ptr %arrayidx450 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %call449, ptr %arrayidx450, align 4
  %call.i908 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.111, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr295, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %284 = load ptr, ptr @hws, align 4
  %arrayidx453 = getelementptr ptr, ptr %284, i32 84
  %285 = ptrtoint ptr %arrayidx453 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %call.i908, ptr %arrayidx453, align 4
  %call.i909 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.81, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr355, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %286 = load ptr, ptr @hws, align 4
  %arrayidx456 = getelementptr ptr, ptr %286, i32 85
  %287 = ptrtoint ptr %arrayidx456 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %call.i909, ptr %arrayidx456, align 4
  %call.i910 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr355, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %288 = load ptr, ptr @hws, align 4
  %arrayidx459 = getelementptr ptr, ptr %288, i32 86
  %289 = ptrtoint ptr %arrayidx459 to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %call.i910, ptr %arrayidx459, align 4
  %call.i911 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.82, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr355, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %290 = load ptr, ptr @hws, align 4
  %arrayidx462 = getelementptr ptr, ptr %290, i32 87
  %291 = ptrtoint ptr %arrayidx462 to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %call.i911, ptr %arrayidx462, align 4
  %call.i912 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.116, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr355, i8 noundef zeroext 9, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %292 = load ptr, ptr @hws, align 4
  %arrayidx465 = getelementptr ptr, ptr %292, i32 88
  %293 = ptrtoint ptr %arrayidx465 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %call.i912, ptr %arrayidx465, align 4
  %call.i913 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.83, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr409, i8 noundef zeroext 9, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %294 = load ptr, ptr @hws, align 4
  %arrayidx468 = getelementptr ptr, ptr %294, i32 89
  %295 = ptrtoint ptr %arrayidx468 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %call.i913, ptr %arrayidx468, align 4
  %call.i914 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.118, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr409, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %296 = load ptr, ptr @hws, align 4
  %arrayidx471 = getelementptr ptr, ptr %296, i32 90
  %297 = ptrtoint ptr %arrayidx471 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %call.i914, ptr %arrayidx471, align 4
  %call.i915 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.84, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr349, i8 noundef zeroext 19, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %298 = load ptr, ptr @hws, align 4
  %arrayidx474 = getelementptr ptr, ptr %298, i32 91
  %299 = ptrtoint ptr %arrayidx474 to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %call.i915, ptr %arrayidx474, align 4
  %call.i916 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.85, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr367, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #6
  %300 = load ptr, ptr @hws, align 4
  %arrayidx477 = getelementptr ptr, ptr %300, i32 92
  %301 = ptrtoint ptr %arrayidx477 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %call.i916, ptr %arrayidx477, align 4
  %call480 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.86, ptr noundef %add.ptr289, i8 noundef zeroext 10, i8 noundef zeroext 3, ptr noundef %add.ptr371, i8 noundef zeroext 1) #6
  %302 = load ptr, ptr @hws, align 4
  %arrayidx481 = getelementptr ptr, ptr %302, i32 93
  %303 = ptrtoint ptr %arrayidx481 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %call480, ptr %arrayidx481, align 4
  %call484 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.87, ptr noundef %add.ptr289, i8 noundef zeroext 3, i8 noundef zeroext 3, ptr noundef %add.ptr371, i8 noundef zeroext 2) #6
  %304 = load ptr, ptr @hws, align 4
  %arrayidx485 = getelementptr ptr, ptr %304, i32 94
  %305 = ptrtoint ptr %arrayidx485 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %call484, ptr %arrayidx485, align 4
  %add.ptr486 = getelementptr i8, ptr %call249, i32 16
  %call488 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.58, ptr noundef %add.ptr486, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef %add.ptr371, i8 noundef zeroext 16) #6
  %306 = load ptr, ptr @hws, align 4
  %arrayidx489 = getelementptr ptr, ptr %306, i32 95
  %307 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %call488, ptr %arrayidx489, align 4
  %add.ptr490 = getelementptr i8, ptr %call249, i32 108
  %call.i917 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr490, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %308 = load ptr, ptr @hws, align 4
  %arrayidx492 = getelementptr ptr, ptr %308, i32 96
  %309 = ptrtoint ptr %arrayidx492 to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %call.i917, ptr %arrayidx492, align 4
  %call.i918 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr490, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %310 = load ptr, ptr @hws, align 4
  %arrayidx495 = getelementptr ptr, ptr %310, i32 97
  %311 = ptrtoint ptr %arrayidx495 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %call.i918, ptr %arrayidx495, align 4
  %call.i919 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr490, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %312 = load ptr, ptr @hws, align 4
  %arrayidx498 = getelementptr ptr, ptr %312, i32 98
  %313 = ptrtoint ptr %arrayidx498 to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %call.i919, ptr %arrayidx498, align 4
  %call.i920 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr490, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %314 = load ptr, ptr @hws, align 4
  %arrayidx501 = getelementptr ptr, ptr %314, i32 99
  %315 = ptrtoint ptr %arrayidx501 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %call.i920, ptr %arrayidx501, align 4
  %call.i921 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %add.ptr490, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %316 = load ptr, ptr @hws, align 4
  %arrayidx504 = getelementptr ptr, ptr %316, i32 135
  %317 = ptrtoint ptr %arrayidx504 to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr %call.i921, ptr %arrayidx504, align 4
  %call.i922 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %add.ptr490, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %318 = load ptr, ptr @hws, align 4
  %arrayidx507 = getelementptr ptr, ptr %318, i32 100
  %319 = ptrtoint ptr %arrayidx507 to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %call.i922, ptr %arrayidx507, align 4
  %call.i923 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %add.ptr490, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %320 = load ptr, ptr @hws, align 4
  %arrayidx510 = getelementptr ptr, ptr %320, i32 101
  %321 = ptrtoint ptr %arrayidx510 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %call.i923, ptr %arrayidx510, align 4
  %call.i924 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.119, i32 noundef 4, ptr noundef %add.ptr490, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %322 = load ptr, ptr @hws, align 4
  %arrayidx513 = getelementptr ptr, ptr %322, i32 102
  %323 = ptrtoint ptr %arrayidx513 to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %call.i924, ptr %arrayidx513, align 4
  %call.i925 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %add.ptr490, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %324 = load ptr, ptr @hws, align 4
  %arrayidx516 = getelementptr ptr, ptr %324, i32 103
  %325 = ptrtoint ptr %arrayidx516 to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %call.i925, ptr %arrayidx516, align 4
  %call.i926 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %add.ptr490, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %326 = load ptr, ptr @hws, align 4
  %arrayidx519 = getelementptr ptr, ptr %326, i32 104
  %327 = ptrtoint ptr %arrayidx519 to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %call.i926, ptr %arrayidx519, align 4
  %call.i927 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.108, i32 noundef 4, ptr noundef %add.ptr490, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %328 = load ptr, ptr @hws, align 4
  %arrayidx522 = getelementptr ptr, ptr %328, i32 105
  %329 = ptrtoint ptr %arrayidx522 to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %call.i927, ptr %arrayidx522, align 4
  %add.ptr523 = getelementptr i8, ptr %call249, i32 112
  %call.i928 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %add.ptr523, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %330 = load ptr, ptr @hws, align 4
  %arrayidx525 = getelementptr ptr, ptr %330, i32 106
  %331 = ptrtoint ptr %arrayidx525 to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %call.i928, ptr %arrayidx525, align 4
  %call.i929 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %add.ptr523, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %332 = load ptr, ptr @hws, align 4
  %arrayidx528 = getelementptr ptr, ptr %332, i32 107
  %333 = ptrtoint ptr %arrayidx528 to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %call.i929, ptr %arrayidx528, align 4
  %call.i930 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %add.ptr523, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %334 = load ptr, ptr @hws, align 4
  %arrayidx531 = getelementptr ptr, ptr %334, i32 108
  %335 = ptrtoint ptr %arrayidx531 to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %call.i930, ptr %arrayidx531, align 4
  %call.i931 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %add.ptr523, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %336 = load ptr, ptr @hws, align 4
  %arrayidx534 = getelementptr ptr, ptr %336, i32 109
  %337 = ptrtoint ptr %arrayidx534 to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %call.i931, ptr %arrayidx534, align 4
  %add.ptr535 = getelementptr i8, ptr %call249, i32 116
  %call.i932 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.93, i32 noundef 4, ptr noundef %add.ptr535, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %338 = load ptr, ptr @hws, align 4
  %arrayidx537 = getelementptr ptr, ptr %338, i32 110
  %339 = ptrtoint ptr %arrayidx537 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %call.i932, ptr %arrayidx537, align 4
  %call.i933 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr535, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %340 = load ptr, ptr @hws, align 4
  %arrayidx540 = getelementptr ptr, ptr %340, i32 111
  %341 = ptrtoint ptr %arrayidx540 to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %call.i933, ptr %arrayidx540, align 4
  %call.i934 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %add.ptr535, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %342 = load ptr, ptr @hws, align 4
  %arrayidx543 = getelementptr ptr, ptr %342, i32 112
  %343 = ptrtoint ptr %arrayidx543 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %call.i934, ptr %arrayidx543, align 4
  %call.i935 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.94, i32 noundef 4, ptr noundef %add.ptr535, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %344 = load ptr, ptr @hws, align 4
  %arrayidx546 = getelementptr ptr, ptr %344, i32 113
  %345 = ptrtoint ptr %arrayidx546 to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %call.i935, ptr %arrayidx546, align 4
  %call.i936 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr535, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %346 = load ptr, ptr @hws, align 4
  %arrayidx549 = getelementptr ptr, ptr %346, i32 114
  %347 = ptrtoint ptr %arrayidx549 to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %call.i936, ptr %arrayidx549, align 4
  %call.i937 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.113, i32 noundef 4, ptr noundef %add.ptr535, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %348 = load ptr, ptr @hws, align 4
  %arrayidx552 = getelementptr ptr, ptr %348, i32 115
  %349 = ptrtoint ptr %arrayidx552 to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %call.i937, ptr %arrayidx552, align 4
  %call.i938 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.91, i32 noundef 2052, ptr noundef %add.ptr535, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %350 = load ptr, ptr @hws, align 4
  %arrayidx555 = getelementptr ptr, ptr %350, i32 165
  %351 = ptrtoint ptr %arrayidx555 to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %call.i938, ptr %arrayidx555, align 4
  %call.i939 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %add.ptr535, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %352 = load ptr, ptr @hws, align 4
  %arrayidx558 = getelementptr ptr, ptr %352, i32 166
  %353 = ptrtoint ptr %arrayidx558 to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr %call.i939, ptr %arrayidx558, align 4
  %call.i940 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.88, i32 noundef 4, ptr noundef %add.ptr535, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %354 = load ptr, ptr @hws, align 4
  %arrayidx561 = getelementptr ptr, ptr %354, i32 116
  %355 = ptrtoint ptr %arrayidx561 to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr %call.i940, ptr %arrayidx561, align 4
  %add.ptr562 = getelementptr i8, ptr %call249, i32 120
  %call.i941 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %add.ptr562, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %356 = load ptr, ptr @hws, align 4
  %arrayidx564 = getelementptr ptr, ptr %356, i32 117
  %357 = ptrtoint ptr %arrayidx564 to i32
  call void @__asan_store4_noabort(i32 %357)
  store ptr %call.i941, ptr %arrayidx564, align 4
  %call.i942 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %add.ptr562, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %358 = load ptr, ptr @hws, align 4
  %arrayidx567 = getelementptr ptr, ptr %358, i32 118
  %359 = ptrtoint ptr %arrayidx567 to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr %call.i942, ptr %arrayidx567, align 4
  %call.i943 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %add.ptr562, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %360 = load ptr, ptr @hws, align 4
  %arrayidx570 = getelementptr ptr, ptr %360, i32 119
  %361 = ptrtoint ptr %arrayidx570 to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %call.i943, ptr %arrayidx570, align 4
  %call.i944 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %add.ptr562, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %362 = load ptr, ptr @hws, align 4
  %arrayidx573 = getelementptr ptr, ptr %362, i32 120
  %363 = ptrtoint ptr %arrayidx573 to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %call.i944, ptr %arrayidx573, align 4
  %add.ptr574 = getelementptr i8, ptr %call249, i32 124
  %call.i945 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %add.ptr574, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %364 = load ptr, ptr @hws, align 4
  %arrayidx576 = getelementptr ptr, ptr %364, i32 121
  %365 = ptrtoint ptr %arrayidx576 to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr %call.i945, ptr %arrayidx576, align 4
  %call.i946 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %add.ptr574, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %366 = load ptr, ptr @hws, align 4
  %arrayidx579 = getelementptr ptr, ptr %366, i32 134
  %367 = ptrtoint ptr %arrayidx579 to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %call.i946, ptr %arrayidx579, align 4
  %call.i947 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %add.ptr574, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_spdif) #6
  %368 = load ptr, ptr @hws, align 4
  %arrayidx582 = getelementptr ptr, ptr %368, i32 122
  %369 = ptrtoint ptr %arrayidx582 to i32
  call void @__asan_store4_noabort(i32 %369)
  store ptr %call.i947, ptr %arrayidx582, align 4
  %call.i948 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %add.ptr574, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_spdif) #6
  %370 = load ptr, ptr @hws, align 4
  %arrayidx585 = getelementptr ptr, ptr %370, i32 164
  %371 = ptrtoint ptr %arrayidx585 to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %call.i948, ptr %arrayidx585, align 4
  %call.i949 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %add.ptr574, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi1) #6
  %372 = load ptr, ptr @hws, align 4
  %arrayidx588 = getelementptr ptr, ptr %372, i32 161
  %373 = ptrtoint ptr %arrayidx588 to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %call.i949, ptr %arrayidx588, align 4
  %call.i950 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %add.ptr574, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi2) #6
  %374 = load ptr, ptr @hws, align 4
  %arrayidx591 = getelementptr ptr, ptr %374, i32 162
  %375 = ptrtoint ptr %arrayidx591 to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr %call.i950, ptr %arrayidx591, align 4
  %call.i951 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %add.ptr574, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi3) #6
  %376 = load ptr, ptr @hws, align 4
  %arrayidx594 = getelementptr ptr, ptr %376, i32 163
  %377 = ptrtoint ptr %arrayidx594 to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr %call.i951, ptr %arrayidx594, align 4
  %call.i952 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.100, i32 noundef 4, ptr noundef %add.ptr574, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi1) #6
  %378 = load ptr, ptr @hws, align 4
  %arrayidx597 = getelementptr ptr, ptr %378, i32 123
  %379 = ptrtoint ptr %arrayidx597 to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %call.i952, ptr %arrayidx597, align 4
  %call.i953 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.102, i32 noundef 4, ptr noundef %add.ptr574, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi2) #6
  %380 = load ptr, ptr @hws, align 4
  %arrayidx600 = getelementptr ptr, ptr %380, i32 124
  %381 = ptrtoint ptr %arrayidx600 to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr %call.i953, ptr %arrayidx600, align 4
  %call.i954 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.104, i32 noundef 4, ptr noundef %add.ptr574, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi3) #6
  %382 = load ptr, ptr @hws, align 4
  %arrayidx603 = getelementptr ptr, ptr %382, i32 125
  %383 = ptrtoint ptr %arrayidx603 to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr %call.i954, ptr %arrayidx603, align 4
  %call.i955 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %add.ptr574, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %384 = load ptr, ptr @hws, align 4
  %arrayidx606 = getelementptr ptr, ptr %384, i32 126
  %385 = ptrtoint ptr %arrayidx606 to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr %call.i955, ptr %arrayidx606, align 4
  %call.i956 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %add.ptr574, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %386 = load ptr, ptr @hws, align 4
  %arrayidx609 = getelementptr ptr, ptr %386, i32 127
  %387 = ptrtoint ptr %arrayidx609 to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr %call.i956, ptr %arrayidx609, align 4
  %add.ptr610 = getelementptr i8, ptr %call249, i32 128
  %call.i957 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %add.ptr610, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %388 = load ptr, ptr @hws, align 4
  %arrayidx612 = getelementptr ptr, ptr %388, i32 128
  %389 = ptrtoint ptr %arrayidx612 to i32
  call void @__asan_store4_noabort(i32 %389)
  store ptr %call.i957, ptr %arrayidx612, align 4
  %call.i958 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.95, i32 noundef 4, ptr noundef %add.ptr610, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %390 = load ptr, ptr @hws, align 4
  %arrayidx615 = getelementptr ptr, ptr %390, i32 129
  %391 = ptrtoint ptr %arrayidx615 to i32
  call void @__asan_store4_noabort(i32 %391)
  store ptr %call.i958, ptr %arrayidx615, align 4
  %call.i959 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.96, i32 noundef 4, ptr noundef %add.ptr610, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %392 = load ptr, ptr @hws, align 4
  %arrayidx618 = getelementptr ptr, ptr %392, i32 130
  %393 = ptrtoint ptr %arrayidx618 to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr %call.i959, ptr %arrayidx618, align 4
  %call.i960 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.97, i32 noundef 4, ptr noundef %add.ptr610, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %394 = load ptr, ptr @hws, align 4
  %arrayidx621 = getelementptr ptr, ptr %394, i32 131
  %395 = ptrtoint ptr %arrayidx621 to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr %call.i960, ptr %arrayidx621, align 4
  %call.i961 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.98, i32 noundef 4, ptr noundef %add.ptr610, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #6
  %396 = load ptr, ptr @hws, align 4
  %arrayidx624 = getelementptr ptr, ptr %396, i32 132
  %397 = ptrtoint ptr %arrayidx624 to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr %call.i961, ptr %arrayidx624, align 4
  tail call void @imx_mmdc_mask_handshake(ptr noundef %call249, i32 noundef 0) #6
  %398 = load ptr, ptr @hws, align 4
  tail call void @imx_check_clk_hws(ptr noundef %398, i32 noundef 167) #6
  %399 = load ptr, ptr @clk_hw_data, align 4
  %call625 = tail call i32 @of_clk_add_hw_provider(ptr noundef %ccm_node, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %399) #6
  %400 = load ptr, ptr @hws, align 4
  %arrayidx626 = getelementptr ptr, ptr %400, i32 93
  %401 = ptrtoint ptr %arrayidx626 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %arrayidx626, align 4
  %clk627 = getelementptr inbounds %struct.clk_hw, ptr %402, i32 0, i32 1
  %403 = ptrtoint ptr %clk627 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %clk627, align 4
  %call628 = tail call i32 @clk_set_rate(ptr noundef %404, i32 noundef 132000000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call628)
  %tobool629.not = icmp eq i32 %call628, 0
  br i1 %tobool629.not, label %if.end275.if.end636_crit_edge, label %do.end633

if.end275.if.end636_crit_edge:                    ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end636

do.end633:                                        ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #8
  %call635 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, i32 noundef %call628) #10
  br label %if.end636

if.end636:                                        ; preds = %do.end633, %if.end275.if.end636_crit_edge
  %405 = load ptr, ptr @hws, align 4
  %arrayidx637 = getelementptr ptr, ptr %405, i32 12
  %406 = ptrtoint ptr %arrayidx637 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %arrayidx637, align 4
  %clk638 = getelementptr inbounds %struct.clk_hw, ptr %407, i32 0, i32 1
  %408 = ptrtoint ptr %clk638 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %clk638, align 4
  %call.i962 = tail call i32 @clk_prepare(ptr noundef %409) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i962)
  %tobool.not.i = icmp eq i32 %call.i962, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end636.clk_prepare_enable.exit_crit_edge

if.end636.clk_prepare_enable.exit_crit_edge:      ; preds = %if.end636
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end636
  %call1.i = tail call i32 @clk_enable(ptr noundef %409) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %409) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end636.clk_prepare_enable.exit_crit_edge
  %410 = load ptr, ptr @hws, align 4
  %arrayidx640 = getelementptr ptr, ptr %410, i32 13
  %411 = ptrtoint ptr %arrayidx640 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %arrayidx640, align 4
  %clk641 = getelementptr inbounds %struct.clk_hw, ptr %412, i32 0, i32 1
  %413 = ptrtoint ptr %clk641 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %clk641, align 4
  %call.i963 = tail call i32 @clk_prepare(ptr noundef %414) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i963)
  %tobool.not.i964 = icmp eq i32 %call.i963, 0
  br i1 %tobool.not.i964, label %if.end.i967, label %clk_prepare_enable.exit.clk_prepare_enable.exit969_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit969_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit969

if.end.i967:                                      ; preds = %clk_prepare_enable.exit
  %call1.i965 = tail call i32 @clk_enable(ptr noundef %414) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i965)
  %tobool2.not.i966 = icmp eq i32 %call1.i965, 0
  br i1 %tobool2.not.i966, label %if.end.i967.clk_prepare_enable.exit969_crit_edge, label %if.then3.i968

if.end.i967.clk_prepare_enable.exit969_crit_edge: ; preds = %if.end.i967
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit969

if.then3.i968:                                    ; preds = %if.end.i967
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %414) #6
  br label %clk_prepare_enable.exit969

clk_prepare_enable.exit969:                       ; preds = %if.then3.i968, %if.end.i967.clk_prepare_enable.exit969_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit969_crit_edge
  %415 = load ptr, ptr @hws, align 4
  %arrayidx643 = getelementptr ptr, ptr %415, i32 53
  %416 = ptrtoint ptr %arrayidx643 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %arrayidx643, align 4
  %clk644 = getelementptr inbounds %struct.clk_hw, ptr %417, i32 0, i32 1
  %418 = ptrtoint ptr %clk644 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %clk644, align 4
  %arrayidx645 = getelementptr ptr, ptr %415, i32 24
  %420 = ptrtoint ptr %arrayidx645 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %arrayidx645, align 4
  %clk646 = getelementptr inbounds %struct.clk_hw, ptr %421, i32 0, i32 1
  %422 = ptrtoint ptr %clk646 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %clk646, align 4
  %call647 = tail call i32 @clk_set_parent(ptr noundef %419, ptr noundef %423) #6
  %424 = load ptr, ptr @hws, align 4
  %arrayidx648 = getelementptr ptr, ptr %424, i32 51
  %425 = ptrtoint ptr %arrayidx648 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %arrayidx648, align 4
  %clk649 = getelementptr inbounds %struct.clk_hw, ptr %426, i32 0, i32 1
  %427 = ptrtoint ptr %clk649 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %clk649, align 4
  %arrayidx650 = getelementptr ptr, ptr %424, i32 16
  %429 = ptrtoint ptr %arrayidx650 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %arrayidx650, align 4
  %clk651 = getelementptr inbounds %struct.clk_hw, ptr %430, i32 0, i32 1
  %431 = ptrtoint ptr %clk651 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %clk651, align 4
  %call652 = tail call i32 @clk_set_parent(ptr noundef %428, ptr noundef %432) #6
  %433 = load ptr, ptr @hws, align 4
  %arrayidx653 = getelementptr ptr, ptr %433, i32 38
  %434 = ptrtoint ptr %arrayidx653 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %arrayidx653, align 4
  %clk654 = getelementptr inbounds %struct.clk_hw, ptr %435, i32 0, i32 1
  %436 = ptrtoint ptr %clk654 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %clk654, align 4
  %arrayidx655 = getelementptr ptr, ptr %433, i32 20
  %438 = ptrtoint ptr %arrayidx655 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %arrayidx655, align 4
  %clk656 = getelementptr inbounds %struct.clk_hw, ptr %439, i32 0, i32 1
  %440 = ptrtoint ptr %clk656 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %clk656, align 4
  %call657 = tail call i32 @clk_set_parent(ptr noundef %437, ptr noundef %441) #6
  tail call void @imx_register_uart_clocks(i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %clk_prepare_enable.exit969, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_obtain_fixed_clock_hw(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pllv3(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_gate_exclusive(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pfd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_fixup_mux(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_cscmr1_fixup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_busy_mux(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_busy_divider(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_fixup_divider(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_mmdc_mask_handshake(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_check_clk_hws(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_register_uart_clocks(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_gate2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 218)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 218)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !350, !351, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434}
!llvm.module.flags = !{!436, !437, !438, !439, !440, !441, !442, !443}
!llvm.ident = !{!444}

!0 = !{ptr @imx6sl_set_wait_clk.saved_arm_div, !1, !"saved_arm_div", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 159, i32 23}
!2 = !{ptr @__of_table_imx6sl, !3, !"__of_table_imx6sl", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 445, i32 1}
!4 = !{ptr @ccm_base, !5, !"ccm_base", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 102, i32 22}
!6 = !{ptr @anatop_base, !7, !"anatop_base", i1 false, i1 false}
!7 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 103, i32 22}
!8 = !{ptr @imx6sl_enable_pll_arm.saved_pll_arm, !9, !"saved_pll_arm", i1 false, i1 false}
!9 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 142, i32 13}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 190, i32 6}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 196, i32 43}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 197, i32 51}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 198, i32 50}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 200, i32 54}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 202, i32 43}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 208, i32 32}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 209, i32 32}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 210, i32 32}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 211, i32 32}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 212, i32 32}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 213, i32 32}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 214, i32 32}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 217, i32 61}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 218, i32 61}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 219, i32 61}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 220, i32 61}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 221, i32 61}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 222, i32 61}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 223, i32 61}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 225, i32 28}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 226, i32 28}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 227, i32 28}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 228, i32 28}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 229, i32 28}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 230, i32 28}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 231, i32 28}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 242, i32 34}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 243, i32 34}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 244, i32 34}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 245, i32 34}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 246, i32 34}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 247, i32 34}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 248, i32 34}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 250, i32 30}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 251, i32 56}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 252, i32 55}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 261, i32 33}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 262, i32 33}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 263, i32 33}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 264, i32 33}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 267, i32 35}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 268, i32 41}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 269, i32 35}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 270, i32 35}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 271, i32 35}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 274, i32 45}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 275, i32 45}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 276, i32 45}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 277, i32 45}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 278, i32 45}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 279, i32 45}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 280, i32 45}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 283, i32 54}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 284, i32 54}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 285, i32 54}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 286, i32 54}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 294, i32 37}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 295, i32 37}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 296, i32 37}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 297, i32 37}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 298, i32 37}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 299, i32 37}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 300, i32 37}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 301, i32 37}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 302, i32 37}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 303, i32 37}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 304, i32 58}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 305, i32 58}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 306, i32 58}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 307, i32 58}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 308, i32 58}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 309, i32 58}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 310, i32 58}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 311, i32 58}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 312, i32 37}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 313, i32 37}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 314, i32 37}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 315, i32 37}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 316, i32 37}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 317, i32 37}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 318, i32 37}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 319, i32 37}
!176 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 320, i32 37}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 321, i32 37}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 322, i32 37}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 325, i32 48}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 326, i32 48}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 329, i32 62}
!188 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 330, i32 38}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 331, i32 38}
!192 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 332, i32 38}
!194 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 333, i32 38}
!197 = !{ptr @.str.94, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 334, i32 38}
!199 = !{ptr @.str.95, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 335, i32 38}
!201 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 336, i32 38}
!203 = !{ptr @.str.97, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 337, i32 38}
!205 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 338, i32 38}
!207 = !{ptr @.str.99, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 339, i32 38}
!209 = !{ptr @.str.100, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 340, i32 38}
!211 = !{ptr @.str.101, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 341, i32 38}
!213 = !{ptr @.str.102, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 342, i32 38}
!215 = !{ptr @.str.103, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 343, i32 38}
!217 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 344, i32 38}
!219 = !{ptr @.str.105, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 345, i32 63}
!221 = !{ptr @.str.106, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 346, i32 38}
!223 = !{ptr @.str.107, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 347, i32 38}
!225 = !{ptr @.str.108, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 348, i32 38}
!227 = !{ptr @.str.109, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 349, i32 38}
!229 = !{ptr @.str.110, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 350, i32 38}
!231 = !{ptr @.str.111, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 351, i32 38}
!233 = !{ptr @.str.112, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 352, i32 63}
!235 = !{ptr @.str.113, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 353, i32 38}
!237 = !{ptr @.str.114, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 354, i32 38}
!239 = !{ptr @.str.115, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 355, i32 38}
!241 = !{ptr @.str.116, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 356, i32 38}
!243 = !{ptr @.str.117, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 357, i32 38}
!245 = !{ptr @.str.118, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 358, i32 38}
!247 = !{ptr @.str.119, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 359, i32 38}
!249 = !{ptr @.str.120, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 360, i32 38}
!251 = !{ptr @.str.121, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 361, i32 38}
!253 = !{ptr @.str.122, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 365, i32 54}
!255 = !{ptr @.str.123, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 366, i32 54}
!257 = !{ptr @.str.124, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 369, i32 33}
!259 = !{ptr @.str.125, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 370, i32 33}
!261 = !{ptr @.str.126, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 371, i32 33}
!263 = !{ptr @.str.127, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 372, i32 33}
!265 = !{ptr @.str.128, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 373, i32 33}
!267 = !{ptr @.str.129, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 374, i32 33}
!269 = !{ptr @.str.130, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 375, i32 33}
!271 = !{ptr @.str.131, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 376, i32 33}
!273 = !{ptr @.str.132, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 377, i32 33}
!275 = !{ptr @.str.133, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 378, i32 33}
!277 = !{ptr @.str.134, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 379, i32 33}
!279 = !{ptr @.str.135, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 380, i32 33}
!281 = !{ptr @.str.136, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 381, i32 33}
!283 = !{ptr @.str.137, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 382, i32 33}
!285 = !{ptr @.str.138, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 383, i32 33}
!287 = !{ptr @.str.139, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 384, i32 33}
!289 = !{ptr @.str.140, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 385, i32 33}
!291 = !{ptr @.str.141, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 386, i32 33}
!293 = !{ptr @.str.142, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 387, i32 33}
!295 = !{ptr @.str.143, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 388, i32 33}
!297 = !{ptr @.str.144, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 389, i32 33}
!299 = !{ptr @.str.145, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 390, i32 33}
!301 = !{ptr @.str.146, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 391, i32 33}
!303 = !{ptr @.str.147, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 392, i32 33}
!305 = !{ptr @.str.148, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 393, i32 33}
!307 = !{ptr @.str.149, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 394, i32 33}
!309 = !{ptr @.str.150, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 395, i32 33}
!311 = !{ptr @.str.151, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 396, i32 33}
!313 = !{ptr @.str.152, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 397, i32 33}
!315 = !{ptr @.str.153, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 398, i32 33}
!317 = !{ptr @.str.154, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 399, i32 33}
!319 = !{ptr @.str.155, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 400, i32 33}
!321 = !{ptr @.str.156, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 401, i32 33}
!323 = !{ptr @.str.157, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 402, i32 33}
!325 = !{ptr @.str.158, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 403, i32 33}
!327 = !{ptr @.str.159, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 404, i32 33}
!329 = !{ptr @.str.160, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 405, i32 33}
!331 = !{ptr @.str.161, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 406, i32 33}
!333 = !{ptr @.str.162, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 407, i32 33}
!335 = !{ptr @.str.163, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 408, i32 33}
!337 = !{ptr @.str.164, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 409, i32 33}
!339 = !{ptr @.str.165, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 410, i32 33}
!341 = !{ptr @.str.166, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 411, i32 33}
!343 = !{ptr @.str.167, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 412, i32 33}
!345 = !{ptr @.str.168, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 413, i32 33}
!347 = !{ptr @.str.169, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 425, i32 3}
!349 = !{ptr @.str.170, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @imx6sl_clocks_init._entry, !348, !"_entry", i1 false, i1 false}
!351 = !{ptr @imx6sl_clocks_init._entry_ptr, !348, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @clk_hw_data, !353, !"clk_hw_data", i1 false, i1 false}
!353 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 101, i32 36}
!354 = !{ptr @hws, !355, !"hws", i1 false, i1 false}
!355 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 100, i32 24}
!356 = !{ptr @pll_bypass_src_sels, !357, !"pll_bypass_src_sels", i1 false, i1 false}
!357 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 63, i32 20}
!358 = !{ptr @pll1_bypass_sels, !359, !"pll1_bypass_sels", i1 false, i1 false}
!359 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 64, i32 20}
!360 = !{ptr @pll2_bypass_sels, !361, !"pll2_bypass_sels", i1 false, i1 false}
!361 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 65, i32 20}
!362 = !{ptr @pll3_bypass_sels, !363, !"pll3_bypass_sels", i1 false, i1 false}
!363 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 66, i32 20}
!364 = !{ptr @pll4_bypass_sels, !365, !"pll4_bypass_sels", i1 false, i1 false}
!365 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 67, i32 20}
!366 = !{ptr @pll5_bypass_sels, !367, !"pll5_bypass_sels", i1 false, i1 false}
!367 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 68, i32 20}
!368 = !{ptr @pll6_bypass_sels, !369, !"pll6_bypass_sels", i1 false, i1 false}
!369 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 69, i32 20}
!370 = !{ptr @pll7_bypass_sels, !371, !"pll7_bypass_sels", i1 false, i1 false}
!371 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 70, i32 20}
!372 = !{ptr @lvds_sels, !373, !"lvds_sels", i1 false, i1 false}
!373 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 57, i32 20}
!374 = !{ptr @post_div_table, !375, !"post_div_table", i1 false, i1 false}
!375 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 80, i32 35}
!376 = !{ptr @video_div_table, !377, !"video_div_table", i1 false, i1 false}
!377 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 87, i32 35}
!378 = !{ptr @clk_enet_ref_table, !379, !"clk_enet_ref_table", i1 false, i1 false}
!379 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 72, i32 35}
!380 = !{ptr @step_sels, !381, !"step_sels", i1 false, i1 false}
!381 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 34, i32 20}
!382 = !{ptr @pll1_sw_sels, !383, !"pll1_sw_sels", i1 false, i1 false}
!383 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 35, i32 20}
!384 = !{ptr @ocram_alt_sels, !385, !"ocram_alt_sels", i1 false, i1 false}
!385 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 36, i32 20}
!386 = !{ptr @.str.171, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 37, i32 48}
!388 = !{ptr @ocram_sels, !389, !"ocram_sels", i1 false, i1 false}
!389 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 37, i32 20}
!390 = !{ptr @pre_periph_sels, !391, !"pre_periph_sels", i1 false, i1 false}
!391 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 38, i32 20}
!392 = !{ptr @periph2_clk2_sels, !393, !"periph2_clk2_sels", i1 false, i1 false}
!393 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 40, i32 20}
!394 = !{ptr @periph_clk2_sels, !395, !"periph_clk2_sels", i1 false, i1 false}
!395 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 39, i32 20}
!396 = !{ptr @csi_sels, !397, !"csi_sels", i1 false, i1 false}
!397 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 43, i32 20}
!398 = !{ptr @lcdif_axi_sels, !399, !"lcdif_axi_sels", i1 false, i1 false}
!399 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 44, i32 20}
!400 = !{ptr @usdhc_sels, !401, !"usdhc_sels", i1 false, i1 false}
!401 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 45, i32 20}
!402 = !{ptr @ssi_sels, !403, !"ssi_sels", i1 false, i1 false}
!403 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 46, i32 20}
!404 = !{ptr @perclk_sels, !405, !"perclk_sels", i1 false, i1 false}
!405 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 47, i32 20}
!406 = !{ptr @pxp_axi_sels, !407, !"pxp_axi_sels", i1 false, i1 false}
!407 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 48, i32 20}
!408 = !{ptr @epdc_axi_sels, !409, !"epdc_axi_sels", i1 false, i1 false}
!409 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 49, i32 20}
!410 = !{ptr @gpu2d_ovg_sels, !411, !"gpu2d_ovg_sels", i1 false, i1 false}
!411 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 50, i32 20}
!412 = !{ptr @gpu2d_sels, !413, !"gpu2d_sels", i1 false, i1 false}
!413 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 51, i32 20}
!414 = !{ptr @lcdif_pix_sels, !415, !"lcdif_pix_sels", i1 false, i1 false}
!415 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 52, i32 20}
!416 = !{ptr @epdc_pix_sels, !417, !"epdc_pix_sels", i1 false, i1 false}
!417 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 53, i32 20}
!418 = !{ptr @audio_sels, !419, !"audio_sels", i1 false, i1 false}
!419 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 54, i32 20}
!420 = !{ptr @ecspi_sels, !421, !"ecspi_sels", i1 false, i1 false}
!421 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 55, i32 20}
!422 = !{ptr @uart_sels, !423, !"uart_sels", i1 false, i1 false}
!423 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 56, i32 20}
!424 = !{ptr @periph_sels, !425, !"periph_sels", i1 false, i1 false}
!425 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 41, i32 20}
!426 = !{ptr @periph2_sels, !427, !"periph2_sels", i1 false, i1 false}
!427 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 42, i32 20}
!428 = !{ptr @share_count_spdif, !429, !"share_count_spdif", i1 false, i1 false}
!429 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 98, i32 21}
!430 = !{ptr @share_count_ssi1, !431, !"share_count_ssi1", i1 false, i1 false}
!431 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 95, i32 21}
!432 = !{ptr @share_count_ssi2, !433, !"share_count_ssi2", i1 false, i1 false}
!433 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 96, i32 21}
!434 = !{ptr @share_count_ssi3, !435, !"share_count_ssi3", i1 false, i1 false}
!435 = !{!"../drivers/clk/imx/clk-imx6sl.c", i32 97, i32 21}
!436 = !{i32 1, !"wchar_size", i32 2}
!437 = !{i32 1, !"min_enum_size", i32 4}
!438 = !{i32 8, !"branch-target-enforcement", i32 0}
!439 = !{i32 8, !"sign-return-address", i32 0}
!440 = !{i32 8, !"sign-return-address-all", i32 0}
!441 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!442 = !{i32 7, !"uwtable", i32 1}
!443 = !{i32 7, !"frame-pointer", i32 2}
!444 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!445 = !{i64 4972325}
!446 = !{i64 4971907}
!447 = !{!"branch_weights", i32 1, i32 2000}
