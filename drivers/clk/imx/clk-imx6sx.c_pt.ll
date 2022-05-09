; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-imx6sx.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx6sx.c"
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

@__of_table_imx6sx = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sx_clocks_init }, section "__clk_of_table", align 4
@clk_hw_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/clk/imx/clk-imx6sx.c\00", [35 x i8] zeroinitializer }, align 32
@hws = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ckil\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osc\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipp_di0\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipp_di1\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"anaclk1\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"anaclk2\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,imx6sx-anatop\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll1_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@pll_bypass_src_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.3, ptr @.str.47, ptr @.str.48, ptr @.str.1], [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll2_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll3_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll4_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll5_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll6_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll7_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll1\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll2\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll3\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll4\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll5\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll6\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll7\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll1_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll1_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.16, ptr @.str.9], [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll2_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll2_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.17, ptr @.str.10], [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll3_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll3_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.18, ptr @.str.11], [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll4_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll4_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.19, ptr @.str.12], [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll5_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll5_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.20, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll6_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll6_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.14], [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll7_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll7_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.22, ptr @.str.15], [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll1_sys\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll2_bus\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll3_usb_otg\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll4_audio\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll5_video\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll6_enet\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll7_usb_host\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbphy1\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbphy2\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbphy1_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbphy2_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_ref\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcie_ref_125m\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lvds1_out\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lvds1_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lvds2_out\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lvds2_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lvds1_in\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lvds2_in\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_ref\00", [23 x i8] zeroinitializer }, align 32
@clk_enet_ref_table = internal constant { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 20 }, %struct.clk_div_table { i32 1, i32 10 }, %struct.clk_div_table { i32 2, i32 5 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"enet2_ref\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enet2_ref_125m\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enet_ptp_ref\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enet_ptp_25m\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll2_pfd0_352m\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll2_pfd1_594m\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll2_pfd2_396m\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll2_pfd3_594m\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll3_pfd0_720m\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll3_pfd1_540m\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll3_pfd2_508m\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll3_pfd3_454m\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll2_198m\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll3_120m\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll3_80m\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll3_60m\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"twd\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arm\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpt_3m\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll4_post_div\00", [18 x i8] zeroinitializer }, align 32
@post_div_table = internal constant { [4 x %struct.clk_div_table], [32 x i8] } { [4 x %struct.clk_div_table] [%struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll4_audio_div\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll5_post_div\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll5_video_div\00", [17 x i8] zeroinitializer }, align 32
@video_div_table = internal constant { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@lvds_sels = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.67, ptr @.str.30, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.72, ptr @.str.1, ptr @.str.1, ptr @.str.42, ptr @.str.1, ptr @.str.37, ptr @.str.38], [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"step\00", [27 x i8] zeroinitializer }, align 32
@step_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.56], [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll1_sw\00", [24 x i8] zeroinitializer }, align 32
@pll1_sw_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr @.str.73], [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ocram_sel\00", [22 x i8] zeroinitializer }, align 32
@ocram_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.163, ptr @.str.56, ptr @.str.163, ptr @.str.59], [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"periph_pre\00", [21 x i8] zeroinitializer }, align 32
@periph_pre_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.31, ptr @.str.56, ptr @.str.54, ptr @.str.62], [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"periph2_pre\00", [20 x i8] zeroinitializer }, align 32
@periph2_pre_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.31, ptr @.str.56, ptr @.str.54, ptr @.str.70], [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"periph_clk2_sel\00", [16 x i8] zeroinitializer }, align 32
@periph_clk2_sels = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.32, ptr @.str.3, ptr @.str.3], [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"periph2_clk2_sel\00", [47 x i8] zeroinitializer }, align 32
@periph2_clk2_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.32, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcie_axi_sel\00", [19 x i8] zeroinitializer }, align 32
@pcie_axi_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.270, ptr @.str.121], [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpu_axi_sel\00", [20 x i8] zeroinitializer }, align 32
@gpu_axi_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.31], [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpu_core_sel\00", [19 x i8] zeroinitializer }, align 32
@gpu_core_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.59, ptr @.str.58, ptr @.str.31, ptr @.str.56], [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eim_slow_sel\00", [19 x i8] zeroinitializer }, align 32
@eim_slow_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.223, ptr @.str.32, ptr @.str.56, ptr @.str.54], [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhc1_sel\00", [21 x i8] zeroinitializer }, align 32
@usdhc_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.56, ptr @.str.54], [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhc2_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhc3_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhc4_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi3_sel\00", [23 x i8] zeroinitializer }, align 32
@ssi_sels = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.60, ptr @.str.72, ptr @.str.70], [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi2_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi1_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qspi1_sel\00", [22 x i8] zeroinitializer }, align 32
@qspi1_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.32, ptr @.str.54, ptr @.str.56, ptr @.str.31, ptr @.str.61, ptr @.str.60], [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"perclk_sel\00", [21 x i8] zeroinitializer }, align 32
@perclk_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.120, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vid_sel\00", [24 x i8] zeroinitializer }, align 32
@vid_sels = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.59, ptr @.str.32, ptr @.str.61, ptr @.str.70, ptr @.str.72], [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"esai_sel\00", [23 x i8] zeroinitializer }, align 32
@audio_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.70, ptr @.str.60, ptr @.str.72, ptr @.str.32], [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"can_sel\00", [24 x i8] zeroinitializer }, align 32
@can_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.65, ptr @.str.3, ptr @.str.64, ptr @.str.1], [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_sel\00", [23 x i8] zeroinitializer }, align 32
@uart_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.64, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qspi2_sel\00", [22 x i8] zeroinitializer }, align 32
@qspi2_sels = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.54, ptr @.str.31, ptr @.str.32, ptr @.str.56, ptr @.str.61, ptr @.str.1, ptr @.str.1, ptr @.str.1], [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enet_pre_sel\00", [19 x i8] zeroinitializer }, align 32
@enet_pre_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.72, ptr @.str.54, ptr @.str.56, ptr @.str.60], [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_sel\00", [23 x i8] zeroinitializer }, align 32
@enet_sels = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.152, ptr @.str.4, ptr @.str.5, ptr @.str.217, ptr @.str.271], [44 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"m4_pre_sel\00", [21 x i8] zeroinitializer }, align 32
@m4_pre_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.3, ptr @.str.54, ptr @.str.56, ptr @.str.61], [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m4_sel\00", [25 x i8] zeroinitializer }, align 32
@m4_sels = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.102, ptr @.str.4, ptr @.str.5, ptr @.str.217, ptr @.str.271], [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ecspi_sel\00", [22 x i8] zeroinitializer }, align 32
@ecspi_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.65, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lcdif2_pre_sel\00", [17 x i8] zeroinitializer }, align 32
@lcdif2_pre_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.31, ptr @.str.61, ptr @.str.72, ptr @.str.54, ptr @.str.57, ptr @.str.59], [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lcdif2_sel\00", [21 x i8] zeroinitializer }, align 32
@lcdif2_sels = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.128, ptr @.str.4, ptr @.str.5, ptr @.str.217, ptr @.str.271], [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"display_sel\00", [20 x i8] zeroinitializer }, align 32
@display_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.31, ptr @.str.56, ptr @.str.32, ptr @.str.59], [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"csi_sel\00", [24 x i8] zeroinitializer }, align 32
@csi_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.3, ptr @.str.56, ptr @.str.63, ptr @.str.59], [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cko1_sel\00", [23 x i8] zeroinitializer }, align 32
@cko1_sels = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.260, ptr @.str.223, ptr @.str.225, ptr @.str.211, ptr @.str.213, ptr @.str.215, ptr @.str.216, ptr @.str.121, ptr @.str.120, ptr @.str.130, ptr @.str.2, ptr @.str.70], [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cko2_sel\00", [23 x i8] zeroinitializer }, align 32
@cko2_sels = internal global { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.1, ptr @.str.220, ptr @.str.234, ptr @.str.256, ptr @.str.1, ptr @.str.272, ptr @.str.273, ptr @.str.1, ptr @.str.170, ptr @.str.274, ptr @.str.67, ptr @.str.275, ptr @.str.214, ptr @.str.1, ptr @.str.3, ptr @.str.1, ptr @.str.1, ptr @.str.257, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.123, ptr @.str.1, ptr @.str.132, ptr @.str.43, ptr @.str.218, ptr @.str.190, ptr @.str.258, ptr @.str.250, ptr @.str.241, ptr @.str.240, ptr @.str.1], [32 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cko\00", [28 x i8] zeroinitializer }, align 32
@cko_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.266, ptr @.str.267], [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ldb_di1_div_sel\00", [16 x i8] zeroinitializer }, align 32
@ldb_di1_div_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.161, ptr @.str.162], [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ldb_di0_div_sel\00", [16 x i8] zeroinitializer }, align 32
@ldb_di0_div_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.159, ptr @.str.160], [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldb_di1_sel\00", [20 x i8] zeroinitializer }, align 32
@ldb_di1_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.32, ptr @.str.54, ptr @.str.56, ptr @.str.31, ptr @.str.61, ptr @.str.60], [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldb_di0_sel\00", [20 x i8] zeroinitializer }, align 32
@ldb_di0_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.72, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.55, ptr @.str.61], [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lcdif1_pre_sel\00", [17 x i8] zeroinitializer }, align 32
@lcdif1_pre_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.31, ptr @.str.61, ptr @.str.72, ptr @.str.54, ptr @.str.55, ptr @.str.59], [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lcdif1_sel\00", [21 x i8] zeroinitializer }, align 32
@lcdif1_sels = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.124, ptr @.str.4, ptr @.str.5, ptr @.str.217, ptr @.str.271], [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"periph_clk2\00", [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"periph2_clk2\00", [19 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpu_core_podf\00", [18 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpu_axi_podf\00", [19 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lcdif1_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lcdif1_pred\00", [20 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qspi1_podf\00", [21 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"eim_slow_podf\00", [18 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lcdif2_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lcdif2_pred\00", [20 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"perclk\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vid_podf\00", [23 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can_podf\00", [23 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhc4_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhc3_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhc2_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhc1_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"esai_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"esai_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi3_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi3_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi1_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi1_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qspi2_pred\00", [21 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qspi2_podf\00", [21 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi2_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi2_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif_pred\00", [21 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif_podf\00", [21 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio_pred\00", [21 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio_podf\00", [21 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"enet_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"m4_podf\00", [24 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ecspi_podf\00", [21 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"display_podf\00", [19 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi_podf\00", [23 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cko1_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cko2_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ldb_di0_div_3_5\00", [16 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ldb_di0_div_7\00", [18 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ldb_di1_div_3_5\00", [16 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ldb_di1_div_7\00", [18 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"periph\00", [25 x i8] zeroinitializer }, align 32
@periph_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.76, ptr @.str.118], [24 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"periph2\00", [24 x i8] zeroinitializer }, align 32
@periph2_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.77, ptr @.str.119], [24 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ocram_podf\00", [21 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmdc_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aips_tz1\00", [23 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aips_tz2\00", [23 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apbh_dma\00", [23 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc3\00", [25 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"asrc_mem\00", [23 x i8] zeroinitializer }, align 32
@share_count_asrc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.172 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"asrc_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"caam_mem\00", [23 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"caam_aclk\00", [22 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"caam_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can1_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"can1_serial\00", [20 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can2_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"can2_serial\00", [20 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcic1\00", [26 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcic2\00", [26 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aips_tz3\00", [23 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi1\00", [25 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi2\00", [25 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi3\00", [25 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi4\00", [25 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi5\00", [25 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"epit1\00", [26 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"epit2\00", [26 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"esai_extal\00", [21 x i8] zeroinitializer }, align 32
@share_count_esai = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.191 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"esai_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"esai_mem\00", [23 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpt_bus\00", [24 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpt_serial\00", [21 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ocram_s\00", [24 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"canfd\00", [26 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"csi\00", [28 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocotp\00", [26 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iomuxc\00", [25 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ipmux1\00", [25 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ipmux2\00", [25 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ipmux3\00", [25 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tzasc1\00", [25 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcdif_apb\00", [22 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pxp_axi\00", [24 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"m4\00", [29 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"enet\00", [27 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_ahb\00", [23 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"display_axi\00", [20 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lcdif2_pix\00", [21 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lcdif1_pix\00", [21 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldb_di0\00", [24 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qspi1\00", [26 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mlb\00", [28 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmdc_p0_fast\00", [19 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmdc_p0_ipg\00", [20 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmdc_p1_ipg\00", [20 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocram\00", [26 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_axi\00", [23 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qspi2\00", [26 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per1_bch\00", [23 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per2_main\00", [22 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpmi_bch_apb\00", [19 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpmi_bch\00", [23 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc4\00", [25 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpmi_io\00", [24 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpmi_apb\00", [23 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rom\00", [28 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdma\00", [27 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spba\00", [27 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@share_count_audio = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.241 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi1_ipg\00", [23 x i8] zeroinitializer }, align 32
@share_count_ssi1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.244 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi2_ipg\00", [23 x i8] zeroinitializer }, align 32
@share_count_ssi2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.245 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi3_ipg\00", [23 x i8] zeroinitializer }, align 32
@share_count_ssi3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.246 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi1\00", [27 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi2\00", [27 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi3\00", [27 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uart_serial\00", [20 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai1_ipg\00", [23 x i8] zeroinitializer }, align 32
@share_count_sai1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.252 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai2_ipg\00", [23 x i8] zeroinitializer }, align 32
@share_count_sai2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.253 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai1\00", [27 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai2\00", [27 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usboh3\00", [25 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc1\00", [25 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc2\00", [25 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eim_slow\00", [23 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm8\00", [27 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vadc\00", [27 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gis\00", [28 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c4\00", [27 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm5\00", [27 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm6\00", [27 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm7\00", [27 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cko1\00", [27 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cko2\00", [27 x i8] zeroinitializer }, align 32
@imx6sx_clocks_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.269, ptr @.str, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Failed to set pcie bus parent clk.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx6sx_clocks_init\00", [45 x i8] zeroinitializer }, align 32
@imx6sx_clocks_init._entry_ptr = internal global ptr @imx6sx_clocks_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.270 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldb_di1\00", [24 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wrck\00", [27 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ecspi_root\00", [21 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi_core\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.276 = private unnamed_addr constant [12 x i8] c"clk_hw_data\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 86, i32 36 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 127, i32 6 }
@___asan_gen_.282 = private unnamed_addr constant [4 x i8] c"hws\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 85, i32 24 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 133, i32 43 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 135, i32 59 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 136, i32 58 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 139, i32 62 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 140, i32 62 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 143, i32 62 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 144, i32 62 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 146, i32 43 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 151, i32 32 }
@___asan_gen_.312 = private unnamed_addr constant [20 x i8] c"pll_bypass_src_sels\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 76, i32 20 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 152, i32 32 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 153, i32 32 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 154, i32 32 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 155, i32 32 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 156, i32 32 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 157, i32 32 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 160, i32 61 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 161, i32 61 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 162, i32 61 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 163, i32 61 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 164, i32 61 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 165, i32 61 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 166, i32 61 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 168, i32 28 }
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"pll1_bypass_sels\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 77, i32 20 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 169, i32 28 }
@___asan_gen_.363 = private unnamed_addr constant [17 x i8] c"pll2_bypass_sels\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 78, i32 20 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 170, i32 28 }
@___asan_gen_.369 = private unnamed_addr constant [17 x i8] c"pll3_bypass_sels\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 79, i32 20 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 171, i32 28 }
@___asan_gen_.375 = private unnamed_addr constant [17 x i8] c"pll4_bypass_sels\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 80, i32 20 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 172, i32 28 }
@___asan_gen_.381 = private unnamed_addr constant [17 x i8] c"pll5_bypass_sels\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 81, i32 20 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 173, i32 28 }
@___asan_gen_.387 = private unnamed_addr constant [17 x i8] c"pll6_bypass_sels\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 82, i32 20 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 174, i32 28 }
@___asan_gen_.393 = private unnamed_addr constant [17 x i8] c"pll7_bypass_sels\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 83, i32 20 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 185, i32 34 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 186, i32 34 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 187, i32 34 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 188, i32 34 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 189, i32 34 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 190, i32 34 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 191, i32 34 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 199, i32 28 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 200, i32 28 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 206, i32 33 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 207, i32 33 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 210, i32 53 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 211, i32 34 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 213, i32 56 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 213, i32 69 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 214, i32 56 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 214, i32 69 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 215, i32 56 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 216, i32 56 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 218, i32 29 }
@___asan_gen_.456 = private unnamed_addr constant [19 x i8] c"clk_enet_ref_table\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 88, i32 35 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 221, i32 30 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 224, i32 35 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 226, i32 57 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 227, i32 29 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 230, i32 45 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 231, i32 45 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 232, i32 45 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 233, i32 45 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 234, i32 45 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 235, i32 45 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 236, i32 45 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 237, i32 45 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 240, i32 54 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 241, i32 54 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 242, i32 54 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 243, i32 54 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 244, i32 54 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 244, i32 67 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 245, i32 54 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 247, i32 35 }
@___asan_gen_.519 = private unnamed_addr constant [15 x i8] c"post_div_table\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 96, i32 35 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 249, i32 35 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 251, i32 35 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 253, i32 35 }
@___asan_gen_.531 = private unnamed_addr constant [16 x i8] c"video_div_table\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 103, i32 35 }
@___asan_gen_.534 = private unnamed_addr constant [10 x i8] c"lvds_sels\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 72, i32 20 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 265, i32 39 }
@___asan_gen_.540 = private unnamed_addr constant [10 x i8] c"step_sels\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 21, i32 20 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 266, i32 39 }
@___asan_gen_.546 = private unnamed_addr constant [13 x i8] c"pll1_sw_sels\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 22, i32 20 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 267, i32 39 }
@___asan_gen_.552 = private unnamed_addr constant [11 x i8] c"ocram_sels\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 29, i32 20 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 268, i32 39 }
@___asan_gen_.558 = private unnamed_addr constant [16 x i8] c"periph_pre_sels\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 23, i32 20 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 269, i32 39 }
@___asan_gen_.564 = private unnamed_addr constant [17 x i8] c"periph2_pre_sels\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 24, i32 20 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 270, i32 39 }
@___asan_gen_.570 = private unnamed_addr constant [17 x i8] c"periph_clk2_sels\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 25, i32 20 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 271, i32 39 }
@___asan_gen_.576 = private unnamed_addr constant [18 x i8] c"periph2_clk2_sels\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 26, i32 20 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 272, i32 39 }
@___asan_gen_.582 = private unnamed_addr constant [14 x i8] c"pcie_axi_sels\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 37, i32 20 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 273, i32 39 }
@___asan_gen_.588 = private unnamed_addr constant [13 x i8] c"gpu_axi_sels\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 31, i32 20 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 274, i32 39 }
@___asan_gen_.594 = private unnamed_addr constant [14 x i8] c"gpu_core_sels\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 32, i32 20 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 275, i32 39 }
@___asan_gen_.600 = private unnamed_addr constant [14 x i8] c"eim_slow_sels\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 50, i32 20 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 276, i32 39 }
@___asan_gen_.606 = private unnamed_addr constant [11 x i8] c"usdhc_sels\00", align 1
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 41, i32 20 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 277, i32 39 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 278, i32 39 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 279, i32 39 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 280, i32 39 }
@___asan_gen_.621 = private unnamed_addr constant [9 x i8] c"ssi_sels\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 38, i32 20 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 281, i32 39 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 282, i32 39 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 283, i32 39 }
@___asan_gen_.633 = private unnamed_addr constant [11 x i8] c"qspi1_sels\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 39, i32 20 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 284, i32 39 }
@___asan_gen_.639 = private unnamed_addr constant [12 x i8] c"perclk_sels\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 40, i32 20 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 285, i32 39 }
@___asan_gen_.645 = private unnamed_addr constant [9 x i8] c"vid_sels\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 42, i32 20 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 286, i32 39 }
@___asan_gen_.651 = private unnamed_addr constant [11 x i8] c"audio_sels\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 30, i32 20 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 287, i32 39 }
@___asan_gen_.657 = private unnamed_addr constant [9 x i8] c"can_sels\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 43, i32 20 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 288, i32 39 }
@___asan_gen_.663 = private unnamed_addr constant [10 x i8] c"uart_sels\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 44, i32 20 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 289, i32 39 }
@___asan_gen_.669 = private unnamed_addr constant [11 x i8] c"qspi2_sels\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 45, i32 20 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 290, i32 39 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 291, i32 39 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 292, i32 39 }
@___asan_gen_.681 = private unnamed_addr constant [14 x i8] c"enet_pre_sels\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 46, i32 20 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 293, i32 39 }
@___asan_gen_.687 = private unnamed_addr constant [10 x i8] c"enet_sels\00", align 1
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 47, i32 20 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 294, i32 39 }
@___asan_gen_.693 = private unnamed_addr constant [12 x i8] c"m4_pre_sels\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 48, i32 20 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 295, i32 39 }
@___asan_gen_.699 = private unnamed_addr constant [8 x i8] c"m4_sels\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 49, i32 20 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 296, i32 39 }
@___asan_gen_.705 = private unnamed_addr constant [11 x i8] c"ecspi_sels\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 51, i32 20 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 297, i32 39 }
@___asan_gen_.711 = private unnamed_addr constant [16 x i8] c"lcdif2_pre_sels\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 54, i32 20 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 298, i32 39 }
@___asan_gen_.717 = private unnamed_addr constant [12 x i8] c"lcdif2_sels\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 55, i32 20 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 299, i32 39 }
@___asan_gen_.723 = private unnamed_addr constant [13 x i8] c"display_sels\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 56, i32 20 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 300, i32 39 }
@___asan_gen_.729 = private unnamed_addr constant [9 x i8] c"csi_sels\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 57, i32 20 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 301, i32 39 }
@___asan_gen_.735 = private unnamed_addr constant [10 x i8] c"cko1_sels\00", align 1
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 58, i32 20 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 302, i32 39 }
@___asan_gen_.741 = private unnamed_addr constant [10 x i8] c"cko2_sels\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 63, i32 20 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 303, i32 39 }
@___asan_gen_.747 = private unnamed_addr constant [9 x i8] c"cko_sels\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 71, i32 20 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 305, i32 39 }
@___asan_gen_.753 = private unnamed_addr constant [17 x i8] c"ldb_di1_div_sels\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 34, i32 20 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 306, i32 39 }
@___asan_gen_.759 = private unnamed_addr constant [17 x i8] c"ldb_di0_div_sels\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 33, i32 20 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 307, i32 39 }
@___asan_gen_.765 = private unnamed_addr constant [13 x i8] c"ldb_di1_sels\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 36, i32 20 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 308, i32 39 }
@___asan_gen_.771 = private unnamed_addr constant [13 x i8] c"ldb_di0_sels\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 35, i32 20 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 309, i32 39 }
@___asan_gen_.777 = private unnamed_addr constant [16 x i8] c"lcdif1_pre_sels\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 52, i32 20 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 310, i32 39 }
@___asan_gen_.783 = private unnamed_addr constant [12 x i8] c"lcdif1_sels\00", align 1
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 53, i32 20 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 313, i32 39 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 314, i32 39 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 315, i32 39 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 316, i32 39 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 317, i32 39 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 318, i32 39 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 319, i32 39 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 320, i32 39 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 321, i32 39 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 322, i32 39 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 323, i32 39 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 324, i32 39 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 325, i32 39 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 326, i32 39 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 327, i32 39 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 328, i32 39 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 329, i32 39 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 330, i32 39 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 331, i32 39 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 332, i32 39 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 333, i32 39 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 334, i32 39 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 335, i32 39 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 336, i32 39 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 337, i32 39 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 338, i32 39 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 339, i32 39 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 340, i32 39 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 341, i32 39 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 342, i32 39 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 343, i32 39 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 344, i32 39 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 345, i32 39 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 346, i32 39 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 349, i32 39 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 350, i32 39 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 351, i32 39 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 352, i32 39 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 354, i32 63 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 355, i32 63 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 356, i32 63 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 357, i32 63 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 360, i32 53 }
@___asan_gen_.924 = private unnamed_addr constant [12 x i8] c"periph_sels\00", align 1
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 27, i32 20 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 361, i32 53 }
@___asan_gen_.930 = private unnamed_addr constant [13 x i8] c"periph2_sels\00", align 1
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 28, i32 20 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 363, i32 57 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 365, i32 57 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 370, i32 33 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 371, i32 33 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 372, i32 33 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 373, i32 33 }
@___asan_gen_.954 = private unnamed_addr constant [17 x i8] c"share_count_asrc\00", align 1
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 111, i32 12 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 374, i32 33 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 375, i32 33 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 376, i32 33 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 377, i32 33 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 378, i32 33 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 379, i32 33 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 380, i32 33 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 381, i32 33 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 382, i32 33 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 383, i32 33 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 384, i32 33 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 387, i32 33 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 388, i32 33 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 389, i32 33 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 390, i32 33 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 391, i32 33 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 392, i32 33 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 393, i32 33 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 394, i32 33 }
@___asan_gen_.1014 = private unnamed_addr constant [17 x i8] c"share_count_esai\00", align 1
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 113, i32 12 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 395, i32 33 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 396, i32 33 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 397, i32 33 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 398, i32 33 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 399, i32 33 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 400, i32 33 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 401, i32 33 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 402, i32 33 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 405, i32 33 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 406, i32 33 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 407, i32 33 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 408, i32 33 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 409, i32 33 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 410, i32 33 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 411, i32 33 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 412, i32 33 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 413, i32 33 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 414, i32 33 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 415, i32 33 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 416, i32 33 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 419, i32 33 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 420, i32 33 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 421, i32 33 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 422, i32 33 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 423, i32 33 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 424, i32 33 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 425, i32 33 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 426, i32 33 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 427, i32 33 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 428, i32 33 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 429, i32 33 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 430, i32 33 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 431, i32 33 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 434, i32 33 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 435, i32 33 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 436, i32 33 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 437, i32 33 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 438, i32 33 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 439, i32 33 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 440, i32 33 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 441, i32 33 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 442, i32 33 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 443, i32 33 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 444, i32 33 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 445, i32 33 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 448, i32 33 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 449, i32 33 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 450, i32 33 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 451, i32 33 }
@___asan_gen_.1167 = private unnamed_addr constant [18 x i8] c"share_count_audio\00", align 1
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 112, i32 12 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 452, i32 33 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 453, i32 33 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 454, i32 33 }
@___asan_gen_.1179 = private unnamed_addr constant [17 x i8] c"share_count_ssi1\00", align 1
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 114, i32 12 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 455, i32 33 }
@___asan_gen_.1185 = private unnamed_addr constant [17 x i8] c"share_count_ssi2\00", align 1
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 115, i32 12 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 456, i32 33 }
@___asan_gen_.1191 = private unnamed_addr constant [17 x i8] c"share_count_ssi3\00", align 1
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 116, i32 12 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 457, i32 33 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 458, i32 33 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 459, i32 33 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 460, i32 33 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 461, i32 33 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 462, i32 33 }
@___asan_gen_.1212 = private unnamed_addr constant [17 x i8] c"share_count_sai1\00", align 1
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 117, i32 12 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 463, i32 33 }
@___asan_gen_.1218 = private unnamed_addr constant [17 x i8] c"share_count_sai2\00", align 1
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 118, i32 12 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 464, i32 33 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 465, i32 33 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 468, i32 33 }
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 469, i32 33 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 470, i32 33 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 473, i32 33 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 474, i32 33 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 475, i32 33 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 476, i32 33 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 477, i32 33 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 478, i32 33 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 479, i32 33 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 480, i32 33 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 482, i32 33 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 483, i32 33 }
@___asan_gen_.1266 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 507, i32 3 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 37, i32 40 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 47, i32 83 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 64, i32 56 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 65, i32 2 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 65, i32 35 }
@___asan_gen_.1290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1291 = private constant [32 x i8] c"../drivers/clk/imx/clk-imx6sx.c\00", align 1
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 65, i32 50 }
@llvm.compiler.used = appending global [341 x ptr] [ptr @__of_table_imx6sx, ptr @imx6sx_clocks_init._entry, ptr @imx6sx_clocks_init._entry_ptr, ptr @clk_hw_data, ptr @.str, ptr @hws, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @pll_bypass_src_sels, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pll1_bypass_sels, ptr @.str.24, ptr @pll2_bypass_sels, ptr @.str.25, ptr @pll3_bypass_sels, ptr @.str.26, ptr @pll4_bypass_sels, ptr @.str.27, ptr @pll5_bypass_sels, ptr @.str.28, ptr @pll6_bypass_sels, ptr @.str.29, ptr @pll7_bypass_sels, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @clk_enet_ref_table, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @post_div_table, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @video_div_table, ptr @lvds_sels, ptr @.str.73, ptr @step_sels, ptr @.str.74, ptr @pll1_sw_sels, ptr @.str.75, ptr @ocram_sels, ptr @.str.76, ptr @periph_pre_sels, ptr @.str.77, ptr @periph2_pre_sels, ptr @.str.78, ptr @periph_clk2_sels, ptr @.str.79, ptr @periph2_clk2_sels, ptr @.str.80, ptr @pcie_axi_sels, ptr @.str.81, ptr @gpu_axi_sels, ptr @.str.82, ptr @gpu_core_sels, ptr @.str.83, ptr @eim_slow_sels, ptr @.str.84, ptr @usdhc_sels, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @ssi_sels, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @qspi1_sels, ptr @.str.92, ptr @perclk_sels, ptr @.str.93, ptr @vid_sels, ptr @.str.94, ptr @audio_sels, ptr @.str.95, ptr @can_sels, ptr @.str.96, ptr @uart_sels, ptr @.str.97, ptr @qspi2_sels, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @enet_pre_sels, ptr @.str.101, ptr @enet_sels, ptr @.str.102, ptr @m4_pre_sels, ptr @.str.103, ptr @m4_sels, ptr @.str.104, ptr @ecspi_sels, ptr @.str.105, ptr @lcdif2_pre_sels, ptr @.str.106, ptr @lcdif2_sels, ptr @.str.107, ptr @display_sels, ptr @.str.108, ptr @csi_sels, ptr @.str.109, ptr @cko1_sels, ptr @.str.110, ptr @cko2_sels, ptr @.str.111, ptr @cko_sels, ptr @.str.112, ptr @ldb_di1_div_sels, ptr @.str.113, ptr @ldb_di0_div_sels, ptr @.str.114, ptr @ldb_di1_sels, ptr @.str.115, ptr @ldb_di0_sels, ptr @.str.116, ptr @lcdif1_pre_sels, ptr @.str.117, ptr @lcdif1_sels, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @periph_sels, ptr @.str.164, ptr @periph2_sels, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @share_count_asrc, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @share_count_esai, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @share_count_audio, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @share_count_ssi1, ptr @.str.244, ptr @share_count_ssi2, ptr @.str.245, ptr @share_count_ssi3, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @share_count_sai1, ptr @.str.252, ptr @share_count_sai2, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275], section "llvm.metadata"
@0 = internal global [339 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_hw_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hws to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_bypass_src_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll1_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll2_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll3_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll4_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll5_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll6_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll7_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_enet_ref_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @post_div_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_div_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lvds_sels to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @step_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll1_sw_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocram_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_pre_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph2_pre_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_clk2_sels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph2_clk2_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_axi_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_axi_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_core_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eim_slow_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhc_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_sels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi1_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perclk_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enet_pre_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enet_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m4_pre_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m4_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecspi_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcdif2_pre_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcdif2_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cko1_sels to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cko2_sels to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cko_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldb_di1_div_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldb_di0_div_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldb_di1_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldb_di0_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcdif1_pre_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcdif1_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph2_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_asrc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_esai to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_audio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_ssi1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_ssi2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_ssi3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_sai1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_sai2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6sx_clocks_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx6sx_clocks_init(ptr noundef %ccm_node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1084) #7
  store ptr %call7.i.i, ptr @clk_hw_data, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !683

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 127, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end24:                                         ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 270, ptr %call7.i.i, align 8
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1
  store ptr %hws, ptr @hws, align 4
  %call.i = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  %2 = load ptr, ptr @hws, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %2, align 4
  %call26 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %ccm_node, ptr noundef nonnull @.str.2) #4
  %4 = load ptr, ptr @hws, align 4
  %arrayidx27 = getelementptr ptr, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call26, ptr %arrayidx27, align 4
  %call28 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %ccm_node, ptr noundef nonnull @.str.3) #4
  %6 = load ptr, ptr @hws, align 4
  %arrayidx29 = getelementptr ptr, ptr %6, i32 3
  %7 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call28, ptr %arrayidx29, align 4
  %call30 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %ccm_node, ptr noundef nonnull @.str.4) #4
  %8 = load ptr, ptr @hws, align 4
  %arrayidx31 = getelementptr ptr, ptr %8, i32 223
  %9 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call30, ptr %arrayidx31, align 4
  %call32 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %ccm_node, ptr noundef nonnull @.str.5) #4
  %10 = load ptr, ptr @hws, align 4
  %arrayidx33 = getelementptr ptr, ptr %10, i32 224
  %11 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call32, ptr %arrayidx33, align 4
  %call34 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %ccm_node, ptr noundef nonnull @.str.6) #4
  %12 = load ptr, ptr @hws, align 4
  %arrayidx35 = getelementptr ptr, ptr %12, i32 242
  %13 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call34, ptr %arrayidx35, align 4
  %call36 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %ccm_node, ptr noundef nonnull @.str.7) #4
  %14 = load ptr, ptr @hws, align 4
  %arrayidx37 = getelementptr ptr, ptr %14, i32 268
  %15 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call36, ptr %arrayidx37, align 4
  %call38 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8) #4
  %call39 = tail call ptr @of_iomap(ptr noundef %call38, i32 noundef 0) #4
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %do.end59, label %if.end24.if.end65_crit_edge, !prof !683

if.end24.if.end65_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

do.end59:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef null) #4
  br label %if.end65

if.end65:                                         ; preds = %do.end59, %if.end24.if.end65_crit_edge
  tail call void @of_node_put(ptr noundef %call38) #4
  %call.i1317 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %call39, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %16 = load ptr, ptr @hws, align 4
  %arrayidx74 = getelementptr ptr, ptr %16, i32 243
  %17 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i1317, ptr %arrayidx74, align 4
  %add.ptr75 = getelementptr i8, ptr %call39, i32 48
  %call.i1318 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr75, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %18 = load ptr, ptr @hws, align 4
  %arrayidx77 = getelementptr ptr, ptr %18, i32 244
  %19 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i1318, ptr %arrayidx77, align 4
  %add.ptr78 = getelementptr i8, ptr %call39, i32 16
  %call.i1319 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr78, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %20 = load ptr, ptr @hws, align 4
  %arrayidx80 = getelementptr ptr, ptr %20, i32 245
  %21 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i1319, ptr %arrayidx80, align 4
  %add.ptr81 = getelementptr i8, ptr %call39, i32 112
  %call.i1320 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr81, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %22 = load ptr, ptr @hws, align 4
  %arrayidx83 = getelementptr ptr, ptr %22, i32 246
  %23 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i1320, ptr %arrayidx83, align 4
  %add.ptr84 = getelementptr i8, ptr %call39, i32 160
  %call.i1321 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr84, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %24 = load ptr, ptr @hws, align 4
  %arrayidx86 = getelementptr ptr, ptr %24, i32 247
  %25 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i1321, ptr %arrayidx86, align 4
  %add.ptr87 = getelementptr i8, ptr %call39, i32 224
  %call.i1322 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.14, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr87, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %26 = load ptr, ptr @hws, align 4
  %arrayidx89 = getelementptr ptr, ptr %26, i32 248
  %27 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i1322, ptr %arrayidx89, align 4
  %add.ptr90 = getelementptr i8, ptr %call39, i32 32
  %call.i1323 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr90, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %28 = load ptr, ptr @hws, align 4
  %arrayidx92 = getelementptr ptr, ptr %28, i32 249
  %29 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i1323, ptr %arrayidx92, align 4
  %call94 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, ptr noundef %call39, i32 noundef 127) #4
  %30 = load ptr, ptr @hws, align 4
  %arrayidx95 = getelementptr ptr, ptr %30, i32 250
  %31 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call94, ptr %arrayidx95, align 4
  %call97 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, ptr noundef %add.ptr75, i32 noundef 1) #4
  %32 = load ptr, ptr @hws, align 4
  %arrayidx98 = getelementptr ptr, ptr %32, i32 251
  %33 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call97, ptr %arrayidx98, align 4
  %call100 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, ptr noundef %add.ptr78, i32 noundef 3) #4
  %34 = load ptr, ptr @hws, align 4
  %arrayidx101 = getelementptr ptr, ptr %34, i32 252
  %35 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call100, ptr %arrayidx101, align 4
  %call103 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, ptr noundef %add.ptr81, i32 noundef 127) #4
  %36 = load ptr, ptr @hws, align 4
  %arrayidx104 = getelementptr ptr, ptr %36, i32 253
  %37 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call103, ptr %arrayidx104, align 4
  %call106 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3, ptr noundef %add.ptr84, i32 noundef 127) #4
  %38 = load ptr, ptr @hws, align 4
  %arrayidx107 = getelementptr ptr, ptr %38, i32 254
  %39 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call106, ptr %arrayidx107, align 4
  %call109 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 5, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3, ptr noundef %add.ptr87, i32 noundef 3) #4
  %40 = load ptr, ptr @hws, align 4
  %arrayidx110 = getelementptr ptr, ptr %40, i32 255
  %41 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call109, ptr %arrayidx110, align 4
  %call112 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3, ptr noundef %add.ptr90, i32 noundef 3) #4
  %42 = load ptr, ptr @hws, align 4
  %arrayidx113 = getelementptr ptr, ptr %42, i32 256
  %43 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call112, ptr %arrayidx113, align 4
  %call.i1324 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, i8 noundef zeroext 2, ptr noundef nonnull @pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %call39, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %44 = load ptr, ptr @hws, align 4
  %arrayidx116 = getelementptr ptr, ptr %44, i32 257
  %45 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i1324, ptr %arrayidx116, align 4
  %call.i1325 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24, i8 noundef zeroext 2, ptr noundef nonnull @pll2_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr75, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %46 = load ptr, ptr @hws, align 4
  %arrayidx119 = getelementptr ptr, ptr %46, i32 258
  %47 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i1325, ptr %arrayidx119, align 4
  %call.i1326 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, i8 noundef zeroext 2, ptr noundef nonnull @pll3_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr78, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %48 = load ptr, ptr @hws, align 4
  %arrayidx122 = getelementptr ptr, ptr %48, i32 259
  %49 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i1326, ptr %arrayidx122, align 4
  %call.i1327 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26, i8 noundef zeroext 2, ptr noundef nonnull @pll4_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr81, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %50 = load ptr, ptr @hws, align 4
  %arrayidx125 = getelementptr ptr, ptr %50, i32 260
  %51 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i1327, ptr %arrayidx125, align 4
  %call.i1328 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27, i8 noundef zeroext 2, ptr noundef nonnull @pll5_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr84, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %52 = load ptr, ptr @hws, align 4
  %arrayidx128 = getelementptr ptr, ptr %52, i32 261
  %53 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i1328, ptr %arrayidx128, align 4
  %call.i1329 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, i8 noundef zeroext 2, ptr noundef nonnull @pll6_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr87, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %54 = load ptr, ptr @hws, align 4
  %arrayidx131 = getelementptr ptr, ptr %54, i32 262
  %55 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i1329, ptr %arrayidx131, align 4
  %call.i1330 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, i8 noundef zeroext 2, ptr noundef nonnull @pll7_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr90, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %56 = load ptr, ptr @hws, align 4
  %arrayidx134 = getelementptr ptr, ptr %56, i32 263
  %57 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i1330, ptr %arrayidx134, align 4
  %arrayidx135 = getelementptr ptr, ptr %56, i32 257
  %58 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx135, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk, align 4
  %arrayidx136 = getelementptr ptr, ptr %56, i32 250
  %62 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx136, align 4
  %clk137 = getelementptr inbounds %struct.clk_hw, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %clk137 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk137, align 4
  %call138 = tail call i32 @clk_set_parent(ptr noundef %61, ptr noundef %65) #4
  %66 = load ptr, ptr @hws, align 4
  %arrayidx139 = getelementptr ptr, ptr %66, i32 258
  %67 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx139, align 4
  %clk140 = getelementptr inbounds %struct.clk_hw, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %clk140 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %clk140, align 4
  %arrayidx141 = getelementptr ptr, ptr %66, i32 251
  %71 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx141, align 4
  %clk142 = getelementptr inbounds %struct.clk_hw, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %clk142 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %clk142, align 4
  %call143 = tail call i32 @clk_set_parent(ptr noundef %70, ptr noundef %74) #4
  %75 = load ptr, ptr @hws, align 4
  %arrayidx144 = getelementptr ptr, ptr %75, i32 259
  %76 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx144, align 4
  %clk145 = getelementptr inbounds %struct.clk_hw, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %clk145 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clk145, align 4
  %arrayidx146 = getelementptr ptr, ptr %75, i32 252
  %80 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx146, align 4
  %clk147 = getelementptr inbounds %struct.clk_hw, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %clk147 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %clk147, align 4
  %call148 = tail call i32 @clk_set_parent(ptr noundef %79, ptr noundef %83) #4
  %84 = load ptr, ptr @hws, align 4
  %arrayidx149 = getelementptr ptr, ptr %84, i32 260
  %85 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx149, align 4
  %clk150 = getelementptr inbounds %struct.clk_hw, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %clk150 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %clk150, align 4
  %arrayidx151 = getelementptr ptr, ptr %84, i32 253
  %89 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx151, align 4
  %clk152 = getelementptr inbounds %struct.clk_hw, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %clk152 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %clk152, align 4
  %call153 = tail call i32 @clk_set_parent(ptr noundef %88, ptr noundef %92) #4
  %93 = load ptr, ptr @hws, align 4
  %arrayidx154 = getelementptr ptr, ptr %93, i32 261
  %94 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx154, align 4
  %clk155 = getelementptr inbounds %struct.clk_hw, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %clk155 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %clk155, align 4
  %arrayidx156 = getelementptr ptr, ptr %93, i32 254
  %98 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx156, align 4
  %clk157 = getelementptr inbounds %struct.clk_hw, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %clk157 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %clk157, align 4
  %call158 = tail call i32 @clk_set_parent(ptr noundef %97, ptr noundef %101) #4
  %102 = load ptr, ptr @hws, align 4
  %arrayidx159 = getelementptr ptr, ptr %102, i32 262
  %103 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx159, align 4
  %clk160 = getelementptr inbounds %struct.clk_hw, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %clk160 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %clk160, align 4
  %arrayidx161 = getelementptr ptr, ptr %102, i32 255
  %107 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx161, align 4
  %clk162 = getelementptr inbounds %struct.clk_hw, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %clk162 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %clk162, align 4
  %call163 = tail call i32 @clk_set_parent(ptr noundef %106, ptr noundef %110) #4
  %111 = load ptr, ptr @hws, align 4
  %arrayidx164 = getelementptr ptr, ptr %111, i32 263
  %112 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx164, align 4
  %clk165 = getelementptr inbounds %struct.clk_hw, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %clk165 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %clk165, align 4
  %arrayidx166 = getelementptr ptr, ptr %111, i32 256
  %116 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx166, align 4
  %clk167 = getelementptr inbounds %struct.clk_hw, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %clk167 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %clk167, align 4
  %call168 = tail call i32 @clk_set_parent(ptr noundef %115, ptr noundef %119) #4
  %call.i1331 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %call39, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %120 = load ptr, ptr @hws, align 4
  %arrayidx171 = getelementptr ptr, ptr %120, i32 4
  %121 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i1331, ptr %arrayidx171, align 4
  %call.i1332 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr75, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %122 = load ptr, ptr @hws, align 4
  %arrayidx174 = getelementptr ptr, ptr %122, i32 5
  %123 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i1332, ptr %arrayidx174, align 4
  %call.i1333 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr78, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %124 = load ptr, ptr @hws, align 4
  %arrayidx177 = getelementptr ptr, ptr %124, i32 6
  %125 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i1333, ptr %arrayidx177, align 4
  %call.i1334 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr81, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %126 = load ptr, ptr @hws, align 4
  %arrayidx180 = getelementptr ptr, ptr %126, i32 7
  %127 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call.i1334, ptr %arrayidx180, align 4
  %call.i1335 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr84, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %128 = load ptr, ptr @hws, align 4
  %arrayidx183 = getelementptr ptr, ptr %128, i32 8
  %129 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call.i1335, ptr %arrayidx183, align 4
  %call.i1336 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr87, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %130 = load ptr, ptr @hws, align 4
  %arrayidx186 = getelementptr ptr, ptr %130, i32 9
  %131 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call.i1336, ptr %arrayidx186, align 4
  %call.i1337 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.29, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr90, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %132 = load ptr, ptr @hws, align 4
  %arrayidx189 = getelementptr ptr, ptr %132, i32 10
  %133 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i1337, ptr %arrayidx189, align 4
  %call.i1338 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr78, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %134 = load ptr, ptr @hws, align 4
  %arrayidx192 = getelementptr ptr, ptr %134, i32 11
  %135 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call.i1338, ptr %arrayidx192, align 4
  %call.i1339 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr90, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %136 = load ptr, ptr @hws, align 4
  %arrayidx195 = getelementptr ptr, ptr %136, i32 12
  %137 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call.i1339, ptr %arrayidx195, align 4
  %call.i1340 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr78, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %138 = load ptr, ptr @hws, align 4
  %arrayidx198 = getelementptr ptr, ptr %138, i32 13
  %139 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call.i1340, ptr %arrayidx198, align 4
  %call.i1341 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr90, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %140 = load ptr, ptr @hws, align 4
  %arrayidx201 = getelementptr ptr, ptr %140, i32 14
  %141 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call.i1341, ptr %arrayidx201, align 4
  %call.i1342 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.35, i32 noundef 4, i32 noundef 1, i32 noundef 5) #4
  %142 = load ptr, ptr @hws, align 4
  %arrayidx203 = getelementptr ptr, ptr %142, i32 15
  %143 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call.i1342, ptr %arrayidx203, align 4
  %call.i1343 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr87, i8 noundef zeroext 19, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %144 = load ptr, ptr @hws, align 4
  %arrayidx206 = getelementptr ptr, ptr %144, i32 16
  %145 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call.i1343, ptr %arrayidx206, align 4
  %add.ptr207 = getelementptr i8, ptr %call39, i32 352
  %call208 = tail call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef %add.ptr207, i8 noundef zeroext 10, i32 noundef 4096) #4
  %146 = load ptr, ptr @hws, align 4
  %arrayidx209 = getelementptr ptr, ptr %146, i32 234
  %147 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call208, ptr %arrayidx209, align 4
  %call211 = tail call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef %add.ptr207, i8 noundef zeroext 11, i32 noundef 8192) #4
  %148 = load ptr, ptr @hws, align 4
  %arrayidx212 = getelementptr ptr, ptr %148, i32 266
  %149 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call211, ptr %arrayidx212, align 4
  %call214 = tail call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.6, ptr noundef %add.ptr207, i8 noundef zeroext 12, i32 noundef 1024) #4
  %150 = load ptr, ptr @hws, align 4
  %arrayidx215 = getelementptr ptr, ptr %150, i32 241
  %151 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call214, ptr %arrayidx215, align 4
  %call217 = tail call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.7, ptr noundef %add.ptr207, i8 noundef zeroext 13, i32 noundef 2048) #4
  %152 = load ptr, ptr @hws, align 4
  %arrayidx218 = getelementptr ptr, ptr %152, i32 267
  %153 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call217, ptr %arrayidx218, align 4
  %call220 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr87, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @clk_enet_ref_table, ptr noundef nonnull @imx_ccm_lock) #4
  %154 = load ptr, ptr @hws, align 4
  %arrayidx221 = getelementptr ptr, ptr %154, i32 17
  %155 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call220, ptr %arrayidx221, align 4
  %call223 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr87, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @clk_enet_ref_table, ptr noundef nonnull @imx_ccm_lock) #4
  %156 = load ptr, ptr @hws, align 4
  %arrayidx224 = getelementptr ptr, ptr %156, i32 230
  %157 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call223, ptr %arrayidx224, align 4
  %call.i1344 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr87, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %158 = load ptr, ptr @hws, align 4
  %arrayidx227 = getelementptr ptr, ptr %158, i32 231
  %159 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call.i1344, ptr %arrayidx227, align 4
  %call.i1345 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.35, i32 noundef 4, i32 noundef 1, i32 noundef 20) #4
  %160 = load ptr, ptr @hws, align 4
  %arrayidx229 = getelementptr ptr, ptr %160, i32 229
  %161 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call.i1345, ptr %arrayidx229, align 4
  %call.i1346 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr87, i8 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %162 = load ptr, ptr @hws, align 4
  %arrayidx232 = getelementptr ptr, ptr %162, i32 228
  %163 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call.i1346, ptr %arrayidx232, align 4
  %add.ptr233 = getelementptr i8, ptr %call39, i32 256
  %call234 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.31, ptr noundef %add.ptr233, i8 noundef zeroext 0) #4
  %164 = load ptr, ptr @hws, align 4
  %arrayidx235 = getelementptr ptr, ptr %164, i32 18
  %165 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call234, ptr %arrayidx235, align 4
  %call237 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.31, ptr noundef %add.ptr233, i8 noundef zeroext 1) #4
  %166 = load ptr, ptr @hws, align 4
  %arrayidx238 = getelementptr ptr, ptr %166, i32 19
  %167 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call237, ptr %arrayidx238, align 4
  %call240 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.31, ptr noundef %add.ptr233, i8 noundef zeroext 2) #4
  %168 = load ptr, ptr @hws, align 4
  %arrayidx241 = getelementptr ptr, ptr %168, i32 20
  %169 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call240, ptr %arrayidx241, align 4
  %call243 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.31, ptr noundef %add.ptr233, i8 noundef zeroext 3) #4
  %170 = load ptr, ptr @hws, align 4
  %arrayidx244 = getelementptr ptr, ptr %170, i32 21
  %171 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call243, ptr %arrayidx244, align 4
  %add.ptr245 = getelementptr i8, ptr %call39, i32 240
  %call246 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.32, ptr noundef %add.ptr245, i8 noundef zeroext 0) #4
  %172 = load ptr, ptr @hws, align 4
  %arrayidx247 = getelementptr ptr, ptr %172, i32 22
  %173 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call246, ptr %arrayidx247, align 4
  %call249 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.32, ptr noundef %add.ptr245, i8 noundef zeroext 1) #4
  %174 = load ptr, ptr @hws, align 4
  %arrayidx250 = getelementptr ptr, ptr %174, i32 23
  %175 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call249, ptr %arrayidx250, align 4
  %call252 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.32, ptr noundef %add.ptr245, i8 noundef zeroext 2) #4
  %176 = load ptr, ptr @hws, align 4
  %arrayidx253 = getelementptr ptr, ptr %176, i32 24
  %177 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %call252, ptr %arrayidx253, align 4
  %call255 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.32, ptr noundef %add.ptr245, i8 noundef zeroext 3) #4
  %178 = load ptr, ptr @hws, align 4
  %arrayidx256 = getelementptr ptr, ptr %178, i32 25
  %179 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call255, ptr %arrayidx256, align 4
  %call.i1347 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.56, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %180 = load ptr, ptr @hws, align 4
  %arrayidx258 = getelementptr ptr, ptr %180, i32 26
  %181 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %call.i1347, ptr %arrayidx258, align 4
  %call.i1348 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.32, i32 noundef 4, i32 noundef 1, i32 noundef 4) #4
  %182 = load ptr, ptr @hws, align 4
  %arrayidx260 = getelementptr ptr, ptr %182, i32 27
  %183 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call.i1348, ptr %arrayidx260, align 4
  %call.i1349 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.32, i32 noundef 4, i32 noundef 1, i32 noundef 6) #4
  %184 = load ptr, ptr @hws, align 4
  %arrayidx262 = getelementptr ptr, ptr %184, i32 28
  %185 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %call.i1349, ptr %arrayidx262, align 4
  %call.i1350 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.32, i32 noundef 4, i32 noundef 1, i32 noundef 8) #4
  %186 = load ptr, ptr @hws, align 4
  %arrayidx264 = getelementptr ptr, ptr %186, i32 29
  %187 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %call.i1350, ptr %arrayidx264, align 4
  %call.i1351 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %188 = load ptr, ptr @hws, align 4
  %arrayidx266 = getelementptr ptr, ptr %188, i32 30
  %189 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call.i1351, ptr %arrayidx266, align 4
  %call.i1352 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.3, i32 noundef 4, i32 noundef 1, i32 noundef 8) #4
  %190 = load ptr, ptr @hws, align 4
  %arrayidx268 = getelementptr ptr, ptr %190, i32 227
  %191 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call.i1352, ptr %arrayidx268, align 4
  %call270 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr81, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #4
  %192 = load ptr, ptr @hws, align 4
  %arrayidx271 = getelementptr ptr, ptr %192, i32 31
  %193 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %call270, ptr %arrayidx271, align 4
  %add.ptr272 = getelementptr i8, ptr %call39, i32 368
  %call273 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr272, i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %194 = load ptr, ptr @hws, align 4
  %arrayidx274 = getelementptr ptr, ptr %194, i32 32
  %195 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call273, ptr %arrayidx274, align 4
  %call276 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.34, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr84, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #4
  %196 = load ptr, ptr @hws, align 4
  %arrayidx277 = getelementptr ptr, ptr %196, i32 33
  %197 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call276, ptr %arrayidx277, align 4
  %call279 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr272, i8 noundef zeroext 30, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @video_div_table, ptr noundef nonnull @imx_ccm_lock) #4
  %198 = load ptr, ptr @hws, align 4
  %arrayidx280 = getelementptr ptr, ptr %198, i32 34
  %199 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call279, ptr %arrayidx280, align 4
  %call.i1353 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.44, i8 noundef zeroext 14, ptr noundef nonnull @lvds_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr207, i8 noundef zeroext 0, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %200 = load ptr, ptr @hws, align 4
  %arrayidx283 = getelementptr ptr, ptr %200, i32 233
  %201 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %call.i1353, ptr %arrayidx283, align 4
  %call.i1354 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.46, i8 noundef zeroext 14, ptr noundef nonnull @lvds_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr207, i8 noundef zeroext 5, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %202 = load ptr, ptr @hws, align 4
  %arrayidx286 = getelementptr ptr, ptr %202, i32 265
  %203 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %call.i1354, ptr %arrayidx286, align 4
  %call287 = tail call ptr @of_iomap(ptr noundef %ccm_node, i32 noundef 0) #4
  %tobool289.not = icmp eq ptr %call287, null
  br i1 %tobool289.not, label %do.end307, label %if.end65.if.end313_crit_edge, !prof !683

if.end65.if.end313_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end313

do.end307:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 262, i32 noundef 9, ptr noundef null) #4
  br label %if.end313

if.end313:                                        ; preds = %do.end307, %if.end65.if.end313_crit_edge
  %add.ptr321 = getelementptr i8, ptr %call287, i32 12
  %call.i1355 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.73, i8 noundef zeroext 2, ptr noundef nonnull @step_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr321, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %204 = load ptr, ptr @hws, align 4
  %arrayidx323 = getelementptr ptr, ptr %204, i32 35
  %205 = ptrtoint ptr %arrayidx323 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %call.i1355, ptr %arrayidx323, align 4
  %call.i1356 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74, i8 noundef zeroext 2, ptr noundef nonnull @pll1_sw_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr321, i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %206 = load ptr, ptr @hws, align 4
  %arrayidx326 = getelementptr ptr, ptr %206, i32 36
  %207 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call.i1356, ptr %arrayidx326, align 4
  %add.ptr327 = getelementptr i8, ptr %call287, i32 20
  %call.i1357 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.75, i8 noundef zeroext 4, ptr noundef nonnull @ocram_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr327, i8 noundef zeroext 6, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %208 = load ptr, ptr @hws, align 4
  %arrayidx329 = getelementptr ptr, ptr %208, i32 37
  %209 = ptrtoint ptr %arrayidx329 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %call.i1357, ptr %arrayidx329, align 4
  %add.ptr330 = getelementptr i8, ptr %call287, i32 24
  %call.i1358 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.76, i8 noundef zeroext 4, ptr noundef nonnull @periph_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr330, i8 noundef zeroext 18, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %210 = load ptr, ptr @hws, align 4
  %arrayidx332 = getelementptr ptr, ptr %210, i32 38
  %211 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %call.i1358, ptr %arrayidx332, align 4
  %call.i1359 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.77, i8 noundef zeroext 4, ptr noundef nonnull @periph2_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr330, i8 noundef zeroext 21, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %212 = load ptr, ptr @hws, align 4
  %arrayidx335 = getelementptr ptr, ptr %212, i32 39
  %213 = ptrtoint ptr %arrayidx335 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call.i1359, ptr %arrayidx335, align 4
  %call.i1360 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.78, i8 noundef zeroext 3, ptr noundef nonnull @periph_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr330, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %214 = load ptr, ptr @hws, align 4
  %arrayidx338 = getelementptr ptr, ptr %214, i32 40
  %215 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %call.i1360, ptr %arrayidx338, align 4
  %call.i1361 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.79, i8 noundef zeroext 2, ptr noundef nonnull @periph2_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr330, i8 noundef zeroext 20, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %216 = load ptr, ptr @hws, align 4
  %arrayidx341 = getelementptr ptr, ptr %216, i32 41
  %217 = ptrtoint ptr %arrayidx341 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %call.i1361, ptr %arrayidx341, align 4
  %call.i1362 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.80, i8 noundef zeroext 2, ptr noundef nonnull @pcie_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr330, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %218 = load ptr, ptr @hws, align 4
  %arrayidx344 = getelementptr ptr, ptr %218, i32 42
  %219 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %call.i1362, ptr %arrayidx344, align 4
  %call.i1363 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.81, i8 noundef zeroext 4, ptr noundef nonnull @gpu_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr330, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %220 = load ptr, ptr @hws, align 4
  %arrayidx347 = getelementptr ptr, ptr %220, i32 43
  %221 = ptrtoint ptr %arrayidx347 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call.i1363, ptr %arrayidx347, align 4
  %call.i1364 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.82, i8 noundef zeroext 4, ptr noundef nonnull @gpu_core_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr330, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %222 = load ptr, ptr @hws, align 4
  %arrayidx350 = getelementptr ptr, ptr %222, i32 44
  %223 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %call.i1364, ptr %arrayidx350, align 4
  %add.ptr351 = getelementptr i8, ptr %call287, i32 28
  %call.i1365 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.83, i8 noundef zeroext 4, ptr noundef nonnull @eim_slow_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr351, i8 noundef zeroext 29, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %224 = load ptr, ptr @hws, align 4
  %arrayidx353 = getelementptr ptr, ptr %224, i32 45
  %225 = ptrtoint ptr %arrayidx353 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %call.i1365, ptr %arrayidx353, align 4
  %call.i1366 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.84, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr351, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %226 = load ptr, ptr @hws, align 4
  %arrayidx356 = getelementptr ptr, ptr %226, i32 46
  %227 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %call.i1366, ptr %arrayidx356, align 4
  %call.i1367 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.85, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr351, i8 noundef zeroext 17, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %228 = load ptr, ptr @hws, align 4
  %arrayidx359 = getelementptr ptr, ptr %228, i32 47
  %229 = ptrtoint ptr %arrayidx359 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %call.i1367, ptr %arrayidx359, align 4
  %call.i1368 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.86, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr351, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %230 = load ptr, ptr @hws, align 4
  %arrayidx362 = getelementptr ptr, ptr %230, i32 48
  %231 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call.i1368, ptr %arrayidx362, align 4
  %call.i1369 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.87, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr351, i8 noundef zeroext 19, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %232 = load ptr, ptr @hws, align 4
  %arrayidx365 = getelementptr ptr, ptr %232, i32 49
  %233 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %call.i1369, ptr %arrayidx365, align 4
  %call.i1370 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.88, i8 noundef zeroext 3, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr351, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %234 = load ptr, ptr @hws, align 4
  %arrayidx368 = getelementptr ptr, ptr %234, i32 52
  %235 = ptrtoint ptr %arrayidx368 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %call.i1370, ptr %arrayidx368, align 4
  %call.i1371 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.89, i8 noundef zeroext 3, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr351, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %236 = load ptr, ptr @hws, align 4
  %arrayidx371 = getelementptr ptr, ptr %236, i32 51
  %237 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %call.i1371, ptr %arrayidx371, align 4
  %call.i1372 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.90, i8 noundef zeroext 3, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr351, i8 noundef zeroext 10, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %238 = load ptr, ptr @hws, align 4
  %arrayidx374 = getelementptr ptr, ptr %238, i32 50
  %239 = ptrtoint ptr %arrayidx374 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %call.i1372, ptr %arrayidx374, align 4
  %call.i1373 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.91, i8 noundef zeroext 6, ptr noundef nonnull @qspi1_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr351, i8 noundef zeroext 7, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %240 = load ptr, ptr @hws, align 4
  %arrayidx377 = getelementptr ptr, ptr %240, i32 53
  %241 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %call.i1373, ptr %arrayidx377, align 4
  %call.i1374 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.92, i8 noundef zeroext 2, ptr noundef nonnull @perclk_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr351, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %242 = load ptr, ptr @hws, align 4
  %arrayidx380 = getelementptr ptr, ptr %242, i32 54
  %243 = ptrtoint ptr %arrayidx380 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %call.i1374, ptr %arrayidx380, align 4
  %add.ptr381 = getelementptr i8, ptr %call287, i32 32
  %call.i1375 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.93, i8 noundef zeroext 5, ptr noundef nonnull @vid_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr381, i8 noundef zeroext 21, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %244 = load ptr, ptr @hws, align 4
  %arrayidx383 = getelementptr ptr, ptr %244, i32 55
  %245 = ptrtoint ptr %arrayidx383 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %call.i1375, ptr %arrayidx383, align 4
  %call.i1376 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.94, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr381, i8 noundef zeroext 19, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %246 = load ptr, ptr @hws, align 4
  %arrayidx386 = getelementptr ptr, ptr %246, i32 56
  %247 = ptrtoint ptr %arrayidx386 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %call.i1376, ptr %arrayidx386, align 4
  %call.i1377 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.95, i8 noundef zeroext 4, ptr noundef nonnull @can_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr381, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %248 = load ptr, ptr @hws, align 4
  %arrayidx389 = getelementptr ptr, ptr %248, i32 59
  %249 = ptrtoint ptr %arrayidx389 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %call.i1377, ptr %arrayidx389, align 4
  %add.ptr390 = getelementptr i8, ptr %call287, i32 36
  %call.i1378 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.96, i8 noundef zeroext 2, ptr noundef nonnull @uart_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr390, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %250 = load ptr, ptr @hws, align 4
  %arrayidx392 = getelementptr ptr, ptr %250, i32 60
  %251 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %call.i1378, ptr %arrayidx392, align 4
  %add.ptr393 = getelementptr i8, ptr %call287, i32 44
  %call.i1379 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.97, i8 noundef zeroext 8, ptr noundef nonnull @qspi2_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr393, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %252 = load ptr, ptr @hws, align 4
  %arrayidx395 = getelementptr ptr, ptr %252, i32 61
  %253 = ptrtoint ptr %arrayidx395 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %call.i1379, ptr %arrayidx395, align 4
  %add.ptr396 = getelementptr i8, ptr %call287, i32 48
  %call.i1380 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.98, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr396, i8 noundef zeroext 20, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %254 = load ptr, ptr @hws, align 4
  %arrayidx398 = getelementptr ptr, ptr %254, i32 64
  %255 = ptrtoint ptr %arrayidx398 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %call.i1380, ptr %arrayidx398, align 4
  %call.i1381 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.99, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr396, i8 noundef zeroext 7, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %256 = load ptr, ptr @hws, align 4
  %arrayidx401 = getelementptr ptr, ptr %256, i32 65
  %257 = ptrtoint ptr %arrayidx401 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %call.i1381, ptr %arrayidx401, align 4
  %add.ptr402 = getelementptr i8, ptr %call287, i32 52
  %call.i1382 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.100, i8 noundef zeroext 6, ptr noundef nonnull @enet_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr402, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %258 = load ptr, ptr @hws, align 4
  %arrayidx404 = getelementptr ptr, ptr %258, i32 66
  %259 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %call.i1382, ptr %arrayidx404, align 4
  %call.i1383 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.101, i8 noundef zeroext 5, ptr noundef nonnull @enet_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr402, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %260 = load ptr, ptr @hws, align 4
  %arrayidx407 = getelementptr ptr, ptr %260, i32 67
  %261 = ptrtoint ptr %arrayidx407 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %call.i1383, ptr %arrayidx407, align 4
  %call.i1384 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.102, i8 noundef zeroext 6, ptr noundef nonnull @m4_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr402, i8 noundef zeroext 6, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %262 = load ptr, ptr @hws, align 4
  %arrayidx410 = getelementptr ptr, ptr %262, i32 68
  %263 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %call.i1384, ptr %arrayidx410, align 4
  %call.i1385 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.103, i8 noundef zeroext 5, ptr noundef nonnull @m4_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr402, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %264 = load ptr, ptr @hws, align 4
  %arrayidx413 = getelementptr ptr, ptr %264, i32 69
  %265 = ptrtoint ptr %arrayidx413 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %call.i1385, ptr %arrayidx413, align 4
  %add.ptr414 = getelementptr i8, ptr %call287, i32 56
  %call.i1386 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.104, i8 noundef zeroext 2, ptr noundef nonnull @ecspi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr414, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %266 = load ptr, ptr @hws, align 4
  %arrayidx416 = getelementptr ptr, ptr %266, i32 70
  %267 = ptrtoint ptr %arrayidx416 to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %call.i1386, ptr %arrayidx416, align 4
  %call.i1387 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.105, i8 noundef zeroext 6, ptr noundef nonnull @lcdif2_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr414, i8 noundef zeroext 6, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %268 = load ptr, ptr @hws, align 4
  %arrayidx419 = getelementptr ptr, ptr %268, i32 72
  %269 = ptrtoint ptr %arrayidx419 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %call.i1387, ptr %arrayidx419, align 4
  %call.i1388 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.106, i8 noundef zeroext 5, ptr noundef nonnull @lcdif2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr414, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %270 = load ptr, ptr @hws, align 4
  %arrayidx422 = getelementptr ptr, ptr %270, i32 74
  %271 = ptrtoint ptr %arrayidx422 to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %call.i1388, ptr %arrayidx422, align 4
  %add.ptr423 = getelementptr i8, ptr %call287, i32 60
  %call.i1389 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.107, i8 noundef zeroext 4, ptr noundef nonnull @display_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr423, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %272 = load ptr, ptr @hws, align 4
  %arrayidx425 = getelementptr ptr, ptr %272, i32 75
  %273 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %call.i1389, ptr %arrayidx425, align 4
  %call.i1390 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.108, i8 noundef zeroext 4, ptr noundef nonnull @csi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr423, i8 noundef zeroext 9, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %274 = load ptr, ptr @hws, align 4
  %arrayidx428 = getelementptr ptr, ptr %274, i32 76
  %275 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %call.i1390, ptr %arrayidx428, align 4
  %add.ptr429 = getelementptr i8, ptr %call287, i32 96
  %call.i1391 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.109, i8 noundef zeroext 16, ptr noundef nonnull @cko1_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr429, i8 noundef zeroext 0, i32 noundef 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %276 = load ptr, ptr @hws, align 4
  %arrayidx431 = getelementptr ptr, ptr %276, i32 77
  %277 = ptrtoint ptr %arrayidx431 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %call.i1391, ptr %arrayidx431, align 4
  %call.i1392 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.110, i8 noundef zeroext 32, ptr noundef nonnull @cko2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr429, i8 noundef zeroext 16, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %278 = load ptr, ptr @hws, align 4
  %arrayidx434 = getelementptr ptr, ptr %278, i32 78
  %279 = ptrtoint ptr %arrayidx434 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %call.i1392, ptr %arrayidx434, align 4
  %call.i1393 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.111, i8 noundef zeroext 2, ptr noundef nonnull @cko_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr429, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %280 = load ptr, ptr @hws, align 4
  %arrayidx437 = getelementptr ptr, ptr %280, i32 79
  %281 = ptrtoint ptr %arrayidx437 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %call.i1393, ptr %arrayidx437, align 4
  %call.i1394 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.112, i8 noundef zeroext 2, ptr noundef nonnull @ldb_di1_div_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr381, i8 noundef zeroext 11, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %282 = load ptr, ptr @hws, align 4
  %arrayidx440 = getelementptr ptr, ptr %282, i32 58
  %283 = ptrtoint ptr %arrayidx440 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %call.i1394, ptr %arrayidx440, align 4
  %call.i1395 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.113, i8 noundef zeroext 2, ptr noundef nonnull @ldb_di0_div_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr381, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %284 = load ptr, ptr @hws, align 4
  %arrayidx443 = getelementptr ptr, ptr %284, i32 57
  %285 = ptrtoint ptr %arrayidx443 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %call.i1395, ptr %arrayidx443, align 4
  %call.i1396 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.114, i8 noundef zeroext 6, ptr noundef nonnull @ldb_di1_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr393, i8 noundef zeroext 12, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %286 = load ptr, ptr @hws, align 4
  %arrayidx446 = getelementptr ptr, ptr %286, i32 62
  %287 = ptrtoint ptr %arrayidx446 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %call.i1396, ptr %arrayidx446, align 4
  %call.i1397 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.115, i8 noundef zeroext 6, ptr noundef nonnull @ldb_di0_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr393, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %288 = load ptr, ptr @hws, align 4
  %arrayidx449 = getelementptr ptr, ptr %288, i32 63
  %289 = ptrtoint ptr %arrayidx449 to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %call.i1397, ptr %arrayidx449, align 4
  %call.i1398 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.116, i8 noundef zeroext 6, ptr noundef nonnull @lcdif1_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr414, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %290 = load ptr, ptr @hws, align 4
  %arrayidx452 = getelementptr ptr, ptr %290, i32 71
  %291 = ptrtoint ptr %arrayidx452 to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %call.i1398, ptr %arrayidx452, align 4
  %call.i1399 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.117, i8 noundef zeroext 5, ptr noundef nonnull @lcdif1_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr414, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %292 = load ptr, ptr @hws, align 4
  %arrayidx455 = getelementptr ptr, ptr %292, i32 73
  %293 = ptrtoint ptr %arrayidx455 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %call.i1399, ptr %arrayidx455, align 4
  %call.i1400 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.78, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr327, i8 noundef zeroext 27, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %294 = load ptr, ptr @hws, align 4
  %arrayidx458 = getelementptr ptr, ptr %294, i32 80
  %295 = ptrtoint ptr %arrayidx458 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %call.i1400, ptr %arrayidx458, align 4
  %call.i1401 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.79, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr327, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %296 = load ptr, ptr @hws, align 4
  %arrayidx461 = getelementptr ptr, ptr %296, i32 81
  %297 = ptrtoint ptr %arrayidx461 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %call.i1401, ptr %arrayidx461, align 4
  %call.i1402 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr327, i8 noundef zeroext 8, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %298 = load ptr, ptr @hws, align 4
  %arrayidx464 = getelementptr ptr, ptr %298, i32 82
  %299 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %call.i1402, ptr %arrayidx464, align 4
  %call.i1403 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.82, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr330, i8 noundef zeroext 29, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %300 = load ptr, ptr @hws, align 4
  %arrayidx467 = getelementptr ptr, ptr %300, i32 83
  %301 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %call.i1403, ptr %arrayidx467, align 4
  %call.i1404 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.81, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr330, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %302 = load ptr, ptr @hws, align 4
  %arrayidx470 = getelementptr ptr, ptr %302, i32 84
  %303 = ptrtoint ptr %arrayidx470 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %call.i1404, ptr %arrayidx470, align 4
  %call.i1405 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr330, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %304 = load ptr, ptr @hws, align 4
  %arrayidx473 = getelementptr ptr, ptr %304, i32 85
  %305 = ptrtoint ptr %arrayidx473 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %call.i1405, ptr %arrayidx473, align 4
  %call.i1406 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr351, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %306 = load ptr, ptr @hws, align 4
  %arrayidx476 = getelementptr ptr, ptr %306, i32 86
  %307 = ptrtoint ptr %arrayidx476 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %call.i1406, ptr %arrayidx476, align 4
  %call.i1407 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.83, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr351, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %308 = load ptr, ptr @hws, align 4
  %arrayidx479 = getelementptr ptr, ptr %308, i32 87
  %309 = ptrtoint ptr %arrayidx479 to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %call.i1407, ptr %arrayidx479, align 4
  %call.i1408 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr351, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %310 = load ptr, ptr @hws, align 4
  %arrayidx482 = getelementptr ptr, ptr %310, i32 88
  %311 = ptrtoint ptr %arrayidx482 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %call.i1408, ptr %arrayidx482, align 4
  %call.i1409 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.92, ptr noundef null, ptr noundef null, i32 noundef 2048, ptr noundef %add.ptr351, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %312 = load ptr, ptr @hws, align 4
  %arrayidx485 = getelementptr ptr, ptr %312, i32 89
  %313 = ptrtoint ptr %arrayidx485 to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %call.i1409, ptr %arrayidx485, align 4
  %call.i1410 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.93, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr381, i8 noundef zeroext 24, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %314 = load ptr, ptr @hws, align 4
  %arrayidx488 = getelementptr ptr, ptr %314, i32 90
  %315 = ptrtoint ptr %arrayidx488 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %call.i1410, ptr %arrayidx488, align 4
  %call.i1411 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.95, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr381, i8 noundef zeroext 2, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %316 = load ptr, ptr @hws, align 4
  %arrayidx491 = getelementptr ptr, ptr %316, i32 91
  %317 = ptrtoint ptr %arrayidx491 to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr %call.i1411, ptr %arrayidx491, align 4
  %call.i1412 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.87, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr390, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %318 = load ptr, ptr @hws, align 4
  %arrayidx494 = getelementptr ptr, ptr %318, i32 95
  %319 = ptrtoint ptr %arrayidx494 to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %call.i1412, ptr %arrayidx494, align 4
  %call.i1413 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.86, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr390, i8 noundef zeroext 19, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %320 = load ptr, ptr @hws, align 4
  %arrayidx497 = getelementptr ptr, ptr %320, i32 94
  %321 = ptrtoint ptr %arrayidx497 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %call.i1413, ptr %arrayidx497, align 4
  %call.i1414 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.85, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr390, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %322 = load ptr, ptr @hws, align 4
  %arrayidx500 = getelementptr ptr, ptr %322, i32 93
  %323 = ptrtoint ptr %arrayidx500 to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %call.i1414, ptr %arrayidx500, align 4
  %call.i1415 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.84, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr390, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %324 = load ptr, ptr @hws, align 4
  %arrayidx503 = getelementptr ptr, ptr %324, i32 92
  %325 = ptrtoint ptr %arrayidx503 to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %call.i1415, ptr %arrayidx503, align 4
  %call.i1416 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.96, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr390, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %326 = load ptr, ptr @hws, align 4
  %arrayidx506 = getelementptr ptr, ptr %326, i32 96
  %327 = ptrtoint ptr %arrayidx506 to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %call.i1416, ptr %arrayidx506, align 4
  %add.ptr507 = getelementptr i8, ptr %call287, i32 40
  %call.i1417 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.94, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr507, i8 noundef zeroext 9, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %328 = load ptr, ptr @hws, align 4
  %arrayidx509 = getelementptr ptr, ptr %328, i32 97
  %329 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %call.i1417, ptr %arrayidx509, align 4
  %call.i1418 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.138, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr507, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %330 = load ptr, ptr @hws, align 4
  %arrayidx512 = getelementptr ptr, ptr %330, i32 98
  %331 = ptrtoint ptr %arrayidx512 to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %call.i1418, ptr %arrayidx512, align 4
  %call.i1419 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.88, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr507, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %332 = load ptr, ptr @hws, align 4
  %arrayidx515 = getelementptr ptr, ptr %332, i32 99
  %333 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %call.i1419, ptr %arrayidx515, align 4
  %call.i1420 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.140, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr507, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %334 = load ptr, ptr @hws, align 4
  %arrayidx518 = getelementptr ptr, ptr %334, i32 100
  %335 = ptrtoint ptr %arrayidx518 to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %call.i1420, ptr %arrayidx518, align 4
  %call.i1421 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.90, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr507, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %336 = load ptr, ptr @hws, align 4
  %arrayidx521 = getelementptr ptr, ptr %336, i32 101
  %337 = ptrtoint ptr %arrayidx521 to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %call.i1421, ptr %arrayidx521, align 4
  %call.i1422 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.142, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr507, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %338 = load ptr, ptr @hws, align 4
  %arrayidx524 = getelementptr ptr, ptr %338, i32 102
  %339 = ptrtoint ptr %arrayidx524 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %call.i1422, ptr %arrayidx524, align 4
  %call.i1423 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.97, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr393, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %340 = load ptr, ptr @hws, align 4
  %arrayidx527 = getelementptr ptr, ptr %340, i32 103
  %341 = ptrtoint ptr %arrayidx527 to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %call.i1423, ptr %arrayidx527, align 4
  %call.i1424 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.144, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr393, i8 noundef zeroext 21, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %342 = load ptr, ptr @hws, align 4
  %arrayidx530 = getelementptr ptr, ptr %342, i32 104
  %343 = ptrtoint ptr %arrayidx530 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %call.i1424, ptr %arrayidx530, align 4
  %call.i1425 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.89, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr393, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %344 = load ptr, ptr @hws, align 4
  %arrayidx533 = getelementptr ptr, ptr %344, i32 105
  %345 = ptrtoint ptr %arrayidx533 to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %call.i1425, ptr %arrayidx533, align 4
  %call.i1426 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.146, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr393, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %346 = load ptr, ptr @hws, align 4
  %arrayidx536 = getelementptr ptr, ptr %346, i32 106
  %347 = ptrtoint ptr %arrayidx536 to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %call.i1426, ptr %arrayidx536, align 4
  %call.i1427 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.98, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr396, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %348 = load ptr, ptr @hws, align 4
  %arrayidx539 = getelementptr ptr, ptr %348, i32 107
  %349 = ptrtoint ptr %arrayidx539 to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %call.i1427, ptr %arrayidx539, align 4
  %call.i1428 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.148, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr396, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %350 = load ptr, ptr @hws, align 4
  %arrayidx542 = getelementptr ptr, ptr %350, i32 108
  %351 = ptrtoint ptr %arrayidx542 to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %call.i1428, ptr %arrayidx542, align 4
  %call.i1429 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.99, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr396, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %352 = load ptr, ptr @hws, align 4
  %arrayidx545 = getelementptr ptr, ptr %352, i32 109
  %353 = ptrtoint ptr %arrayidx545 to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr %call.i1429, ptr %arrayidx545, align 4
  %call.i1430 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.150, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr396, i8 noundef zeroext 9, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %354 = load ptr, ptr @hws, align 4
  %arrayidx548 = getelementptr ptr, ptr %354, i32 110
  %355 = ptrtoint ptr %arrayidx548 to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr %call.i1430, ptr %arrayidx548, align 4
  %call.i1431 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.100, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr402, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %356 = load ptr, ptr @hws, align 4
  %arrayidx551 = getelementptr ptr, ptr %356, i32 111
  %357 = ptrtoint ptr %arrayidx551 to i32
  call void @__asan_store4_noabort(i32 %357)
  store ptr %call.i1431, ptr %arrayidx551, align 4
  %call.i1432 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.103, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr402, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %358 = load ptr, ptr @hws, align 4
  %arrayidx554 = getelementptr ptr, ptr %358, i32 112
  %359 = ptrtoint ptr %arrayidx554 to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr %call.i1432, ptr %arrayidx554, align 4
  %call.i1433 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.104, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr414, i8 noundef zeroext 19, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %360 = load ptr, ptr @hws, align 4
  %arrayidx557 = getelementptr ptr, ptr %360, i32 113
  %361 = ptrtoint ptr %arrayidx557 to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %call.i1433, ptr %arrayidx557, align 4
  %call.i1434 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.116, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr414, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %362 = load ptr, ptr @hws, align 4
  %arrayidx560 = getelementptr ptr, ptr %362, i32 114
  %363 = ptrtoint ptr %arrayidx560 to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %call.i1434, ptr %arrayidx560, align 4
  %call.i1435 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.105, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr414, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %364 = load ptr, ptr @hws, align 4
  %arrayidx563 = getelementptr ptr, ptr %364, i32 115
  %365 = ptrtoint ptr %arrayidx563 to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr %call.i1435, ptr %arrayidx563, align 4
  %call.i1436 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.107, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr423, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %366 = load ptr, ptr @hws, align 4
  %arrayidx566 = getelementptr ptr, ptr %366, i32 116
  %367 = ptrtoint ptr %arrayidx566 to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %call.i1436, ptr %arrayidx566, align 4
  %call.i1437 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.108, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr423, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %368 = load ptr, ptr @hws, align 4
  %arrayidx569 = getelementptr ptr, ptr %368, i32 117
  %369 = ptrtoint ptr %arrayidx569 to i32
  call void @__asan_store4_noabort(i32 %369)
  store ptr %call.i1437, ptr %arrayidx569, align 4
  %call.i1438 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.109, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr429, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %370 = load ptr, ptr @hws, align 4
  %arrayidx572 = getelementptr ptr, ptr %370, i32 122
  %371 = ptrtoint ptr %arrayidx572 to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %call.i1438, ptr %arrayidx572, align 4
  %call.i1439 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.110, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr429, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %372 = load ptr, ptr @hws, align 4
  %arrayidx575 = getelementptr ptr, ptr %372, i32 123
  %373 = ptrtoint ptr %arrayidx575 to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %call.i1439, ptr %arrayidx575, align 4
  %call.i1440 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.115, i32 noundef 4, i32 noundef 2, i32 noundef 7) #4
  %374 = load ptr, ptr @hws, align 4
  %arrayidx577 = getelementptr ptr, ptr %374, i32 118
  %375 = ptrtoint ptr %arrayidx577 to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr %call.i1440, ptr %arrayidx577, align 4
  %call.i1441 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.115, i32 noundef 4, i32 noundef 1, i32 noundef 7) #4
  %376 = load ptr, ptr @hws, align 4
  %arrayidx579 = getelementptr ptr, ptr %376, i32 119
  %377 = ptrtoint ptr %arrayidx579 to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr %call.i1441, ptr %arrayidx579, align 4
  %call.i1442 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.114, i32 noundef 4, i32 noundef 2, i32 noundef 7) #4
  %378 = load ptr, ptr @hws, align 4
  %arrayidx581 = getelementptr ptr, ptr %378, i32 120
  %379 = ptrtoint ptr %arrayidx581 to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %call.i1442, ptr %arrayidx581, align 4
  %call.i1443 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.114, i32 noundef 4, i32 noundef 1, i32 noundef 7) #4
  %380 = load ptr, ptr @hws, align 4
  %arrayidx583 = getelementptr ptr, ptr %380, i32 121
  %381 = ptrtoint ptr %arrayidx583 to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr %call.i1443, ptr %arrayidx583, align 4
  %add.ptr585 = getelementptr i8, ptr %call287, i32 72
  %call586 = tail call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.163, ptr noundef %add.ptr327, i8 noundef zeroext 25, i8 noundef zeroext 1, ptr noundef %add.ptr585, i8 noundef zeroext 5, ptr noundef nonnull @periph_sels, i32 noundef 2) #4
  %382 = load ptr, ptr @hws, align 4
  %arrayidx587 = getelementptr ptr, ptr %382, i32 124
  %383 = ptrtoint ptr %arrayidx587 to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr %call586, ptr %arrayidx587, align 4
  %call590 = tail call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.164, ptr noundef %add.ptr327, i8 noundef zeroext 26, i8 noundef zeroext 1, ptr noundef %add.ptr585, i8 noundef zeroext 3, ptr noundef nonnull @periph2_sels, i32 noundef 2) #4
  %384 = load ptr, ptr @hws, align 4
  %arrayidx591 = getelementptr ptr, ptr %384, i32 125
  %385 = ptrtoint ptr %arrayidx591 to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr %call590, ptr %arrayidx591, align 4
  %call594 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.75, ptr noundef %add.ptr327, i8 noundef zeroext 16, i8 noundef zeroext 3, ptr noundef %add.ptr585, i8 noundef zeroext 0) #4
  %386 = load ptr, ptr @hws, align 4
  %arrayidx595 = getelementptr ptr, ptr %386, i32 226
  %387 = ptrtoint ptr %arrayidx595 to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr %call594, ptr %arrayidx595, align 4
  %call598 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.163, ptr noundef %add.ptr327, i8 noundef zeroext 10, i8 noundef zeroext 3, ptr noundef %add.ptr585, i8 noundef zeroext 1) #4
  %388 = load ptr, ptr @hws, align 4
  %arrayidx599 = getelementptr ptr, ptr %388, i32 127
  %389 = ptrtoint ptr %arrayidx599 to i32
  call void @__asan_store4_noabort(i32 %389)
  store ptr %call598, ptr %arrayidx599, align 4
  %call602 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.164, ptr noundef %add.ptr327, i8 noundef zeroext 3, i8 noundef zeroext 3, ptr noundef %add.ptr585, i8 noundef zeroext 2) #4
  %390 = load ptr, ptr @hws, align 4
  %arrayidx603 = getelementptr ptr, ptr %390, i32 128
  %391 = ptrtoint ptr %arrayidx603 to i32
  call void @__asan_store4_noabort(i32 %391)
  store ptr %call602, ptr %arrayidx603, align 4
  %add.ptr604 = getelementptr i8, ptr %call287, i32 16
  %call606 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.74, ptr noundef %add.ptr604, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef %add.ptr585, i8 noundef zeroext 16) #4
  %392 = load ptr, ptr @hws, align 4
  %arrayidx607 = getelementptr ptr, ptr %392, i32 129
  %393 = ptrtoint ptr %arrayidx607 to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr %call606, ptr %arrayidx607, align 4
  %add.ptr608 = getelementptr i8, ptr %call287, i32 104
  %call.i1444 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.121, i32 noundef 2052, ptr noundef %add.ptr608, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %394 = load ptr, ptr @hws, align 4
  %arrayidx610 = getelementptr ptr, ptr %394, i32 130
  %395 = ptrtoint ptr %arrayidx610 to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr %call.i1444, ptr %arrayidx610, align 4
  %call.i1445 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.121, i32 noundef 2052, ptr noundef %add.ptr608, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %396 = load ptr, ptr @hws, align 4
  %arrayidx613 = getelementptr ptr, ptr %396, i32 131
  %397 = ptrtoint ptr %arrayidx613 to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr %call.i1445, ptr %arrayidx613, align 4
  %call.i1446 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, i32 noundef 4, ptr noundef %add.ptr608, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %398 = load ptr, ptr @hws, align 4
  %arrayidx616 = getelementptr ptr, ptr %398, i32 132
  %399 = ptrtoint ptr %arrayidx616 to i32
  call void @__asan_store4_noabort(i32 %399)
  store ptr %call.i1446, ptr %arrayidx616, align 4
  %call.i1447 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %add.ptr608, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_asrc) #4
  %400 = load ptr, ptr @hws, align 4
  %arrayidx619 = getelementptr ptr, ptr %400, i32 236
  %401 = ptrtoint ptr %arrayidx619 to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr %call.i1447, ptr %arrayidx619, align 4
  %call.i1448 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %add.ptr608, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_asrc) #4
  %402 = load ptr, ptr @hws, align 4
  %arrayidx622 = getelementptr ptr, ptr %402, i32 235
  %403 = ptrtoint ptr %arrayidx622 to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr %call.i1448, ptr %arrayidx622, align 4
  %call.i1449 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %add.ptr608, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %404 = load ptr, ptr @hws, align 4
  %arrayidx625 = getelementptr ptr, ptr %404, i32 134
  %405 = ptrtoint ptr %arrayidx625 to i32
  call void @__asan_store4_noabort(i32 %405)
  store ptr %call.i1449, ptr %arrayidx625, align 4
  %call.i1450 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %add.ptr608, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %406 = load ptr, ptr @hws, align 4
  %arrayidx628 = getelementptr ptr, ptr %406, i32 135
  %407 = ptrtoint ptr %arrayidx628 to i32
  call void @__asan_store4_noabort(i32 %407)
  store ptr %call.i1450, ptr %arrayidx628, align 4
  %call.i1451 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr608, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %408 = load ptr, ptr @hws, align 4
  %arrayidx631 = getelementptr ptr, ptr %408, i32 136
  %409 = ptrtoint ptr %arrayidx631 to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr %call.i1451, ptr %arrayidx631, align 4
  %call.i1452 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr608, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %410 = load ptr, ptr @hws, align 4
  %arrayidx634 = getelementptr ptr, ptr %410, i32 137
  %411 = ptrtoint ptr %arrayidx634 to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr %call.i1452, ptr %arrayidx634, align 4
  %call.i1453 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.132, i32 noundef 4, ptr noundef %add.ptr608, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %412 = load ptr, ptr @hws, align 4
  %arrayidx637 = getelementptr ptr, ptr %412, i32 138
  %413 = ptrtoint ptr %arrayidx637 to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr %call.i1453, ptr %arrayidx637, align 4
  %call.i1454 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr608, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %414 = load ptr, ptr @hws, align 4
  %arrayidx640 = getelementptr ptr, ptr %414, i32 139
  %415 = ptrtoint ptr %arrayidx640 to i32
  call void @__asan_store4_noabort(i32 %415)
  store ptr %call.i1454, ptr %arrayidx640, align 4
  %call.i1455 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.132, i32 noundef 4, ptr noundef %add.ptr608, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %416 = load ptr, ptr @hws, align 4
  %arrayidx643 = getelementptr ptr, ptr %416, i32 140
  %417 = ptrtoint ptr %arrayidx643 to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %call.i1455, ptr %arrayidx643, align 4
  %call.i1456 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef %add.ptr608, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %418 = load ptr, ptr @hws, align 4
  %arrayidx646 = getelementptr ptr, ptr %418, i32 142
  %419 = ptrtoint ptr %arrayidx646 to i32
  call void @__asan_store4_noabort(i32 %419)
  store ptr %call.i1456, ptr %arrayidx646, align 4
  %call.i1457 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef %add.ptr608, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %420 = load ptr, ptr @hws, align 4
  %arrayidx649 = getelementptr ptr, ptr %420, i32 143
  %421 = ptrtoint ptr %arrayidx649 to i32
  call void @__asan_store4_noabort(i32 %421)
  store ptr %call.i1457, ptr %arrayidx649, align 4
  %call.i1458 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.121, i32 noundef 2052, ptr noundef %add.ptr608, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %422 = load ptr, ptr @hws, align 4
  %arrayidx652 = getelementptr ptr, ptr %422, i32 144
  %423 = ptrtoint ptr %arrayidx652 to i32
  call void @__asan_store4_noabort(i32 %423)
  store ptr %call.i1458, ptr %arrayidx652, align 4
  %add.ptr653 = getelementptr i8, ptr %call287, i32 108
  %call.i1459 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.154, i32 noundef 4, ptr noundef %add.ptr653, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %424 = load ptr, ptr @hws, align 4
  %arrayidx655 = getelementptr ptr, ptr %424, i32 145
  %425 = ptrtoint ptr %arrayidx655 to i32
  call void @__asan_store4_noabort(i32 %425)
  store ptr %call.i1459, ptr %arrayidx655, align 4
  %call.i1460 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.154, i32 noundef 4, ptr noundef %add.ptr653, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %426 = load ptr, ptr @hws, align 4
  %arrayidx658 = getelementptr ptr, ptr %426, i32 146
  %427 = ptrtoint ptr %arrayidx658 to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr %call.i1460, ptr %arrayidx658, align 4
  %call.i1461 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.154, i32 noundef 4, ptr noundef %add.ptr653, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %428 = load ptr, ptr @hws, align 4
  %arrayidx661 = getelementptr ptr, ptr %428, i32 147
  %429 = ptrtoint ptr %arrayidx661 to i32
  call void @__asan_store4_noabort(i32 %429)
  store ptr %call.i1461, ptr %arrayidx661, align 4
  %call.i1462 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.154, i32 noundef 4, ptr noundef %add.ptr653, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %430 = load ptr, ptr @hws, align 4
  %arrayidx664 = getelementptr ptr, ptr %430, i32 148
  %431 = ptrtoint ptr %arrayidx664 to i32
  call void @__asan_store4_noabort(i32 %431)
  store ptr %call.i1462, ptr %arrayidx664, align 4
  %call.i1463 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.154, i32 noundef 4, ptr noundef %add.ptr653, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %432 = load ptr, ptr @hws, align 4
  %arrayidx667 = getelementptr ptr, ptr %432, i32 149
  %433 = ptrtoint ptr %arrayidx667 to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %call.i1463, ptr %arrayidx667, align 4
  %call.i1464 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr653, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %434 = load ptr, ptr @hws, align 4
  %arrayidx670 = getelementptr ptr, ptr %434, i32 150
  %435 = ptrtoint ptr %arrayidx670 to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr %call.i1464, ptr %arrayidx670, align 4
  %call.i1465 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr653, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %436 = load ptr, ptr @hws, align 4
  %arrayidx673 = getelementptr ptr, ptr %436, i32 151
  %437 = ptrtoint ptr %arrayidx673 to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr %call.i1465, ptr %arrayidx673, align 4
  %call.i1466 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.139, i32 noundef 4, ptr noundef %add.ptr653, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #4
  %438 = load ptr, ptr @hws, align 4
  %arrayidx676 = getelementptr ptr, ptr %438, i32 152
  %439 = ptrtoint ptr %arrayidx676 to i32
  call void @__asan_store4_noabort(i32 %439)
  store ptr %call.i1466, ptr %arrayidx676, align 4
  %call.i1467 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %add.ptr653, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #4
  %440 = load ptr, ptr @hws, align 4
  %arrayidx679 = getelementptr ptr, ptr %440, i32 239
  %441 = ptrtoint ptr %arrayidx679 to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr %call.i1467, ptr %arrayidx679, align 4
  %call.i1468 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %add.ptr653, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #4
  %442 = load ptr, ptr @hws, align 4
  %arrayidx682 = getelementptr ptr, ptr %442, i32 240
  %443 = ptrtoint ptr %arrayidx682 to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr %call.i1468, ptr %arrayidx682, align 4
  %call.i1469 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.120, i32 noundef 2052, ptr noundef %add.ptr653, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %444 = load ptr, ptr @hws, align 4
  %arrayidx685 = getelementptr ptr, ptr %444, i32 153
  %445 = ptrtoint ptr %arrayidx685 to i32
  call void @__asan_store4_noabort(i32 %445)
  store ptr %call.i1469, ptr %arrayidx685, align 4
  %call.i1470 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr653, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %446 = load ptr, ptr @hws, align 4
  %arrayidx688 = getelementptr ptr, ptr %446, i32 154
  %447 = ptrtoint ptr %arrayidx688 to i32
  call void @__asan_store4_noabort(i32 %447)
  store ptr %call.i1470, ptr %arrayidx688, align 4
  %call.i1471 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr653, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %448 = load ptr, ptr @hws, align 4
  %arrayidx691 = getelementptr ptr, ptr %448, i32 155
  %449 = ptrtoint ptr %arrayidx691 to i32
  call void @__asan_store4_noabort(i32 %449)
  store ptr %call.i1471, ptr %arrayidx691, align 4
  %call.i1472 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.122, i32 noundef 4, ptr noundef %add.ptr653, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %450 = load ptr, ptr @hws, align 4
  %arrayidx694 = getelementptr ptr, ptr %450, i32 156
  %451 = ptrtoint ptr %arrayidx694 to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr %call.i1472, ptr %arrayidx694, align 4
  %call.i1473 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %add.ptr653, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %452 = load ptr, ptr @hws, align 4
  %arrayidx697 = getelementptr ptr, ptr %452, i32 157
  %453 = ptrtoint ptr %arrayidx697 to i32
  call void @__asan_store4_noabort(i32 %453)
  store ptr %call.i1473, ptr %arrayidx697, align 4
  %call.i1474 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.132, i32 noundef 4, ptr noundef %add.ptr653, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %454 = load ptr, ptr @hws, align 4
  %arrayidx700 = getelementptr ptr, ptr %454, i32 158
  %455 = ptrtoint ptr %arrayidx700 to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr %call.i1474, ptr %arrayidx700, align 4
  %add.ptr701 = getelementptr i8, ptr %call287, i32 112
  %call.i1475 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.156, i32 noundef 4, ptr noundef %add.ptr701, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %456 = load ptr, ptr @hws, align 4
  %arrayidx703 = getelementptr ptr, ptr %456, i32 159
  %457 = ptrtoint ptr %arrayidx703 to i32
  call void @__asan_store4_noabort(i32 %457)
  store ptr %call.i1475, ptr %arrayidx703, align 4
  %call.i1476 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr701, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %458 = load ptr, ptr @hws, align 4
  %arrayidx706 = getelementptr ptr, ptr %458, i32 160
  %459 = ptrtoint ptr %arrayidx706 to i32
  call void @__asan_store4_noabort(i32 %459)
  store ptr %call.i1476, ptr %arrayidx706, align 4
  %call.i1477 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr701, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %460 = load ptr, ptr @hws, align 4
  %arrayidx709 = getelementptr ptr, ptr %460, i32 161
  %461 = ptrtoint ptr %arrayidx709 to i32
  call void @__asan_store4_noabort(i32 %461)
  store ptr %call.i1477, ptr %arrayidx709, align 4
  %call.i1478 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr701, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %462 = load ptr, ptr @hws, align 4
  %arrayidx712 = getelementptr ptr, ptr %462, i32 162
  %463 = ptrtoint ptr %arrayidx712 to i32
  call void @__asan_store4_noabort(i32 %463)
  store ptr %call.i1478, ptr %arrayidx712, align 4
  %call.i1479 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr701, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %464 = load ptr, ptr @hws, align 4
  %arrayidx715 = getelementptr ptr, ptr %464, i32 163
  %465 = ptrtoint ptr %arrayidx715 to i32
  call void @__asan_store4_noabort(i32 %465)
  store ptr %call.i1479, ptr %arrayidx715, align 4
  %call.i1480 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.124, i32 noundef 4, ptr noundef %add.ptr701, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %466 = load ptr, ptr @hws, align 4
  %arrayidx718 = getelementptr ptr, ptr %466, i32 164
  %467 = ptrtoint ptr %arrayidx718 to i32
  call void @__asan_store4_noabort(i32 %467)
  store ptr %call.i1480, ptr %arrayidx718, align 4
  %call.i1481 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.121, i32 noundef 2052, ptr noundef %add.ptr701, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %468 = load ptr, ptr @hws, align 4
  %arrayidx721 = getelementptr ptr, ptr %468, i32 165
  %469 = ptrtoint ptr %arrayidx721 to i32
  call void @__asan_store4_noabort(i32 %469)
  store ptr %call.i1481, ptr %arrayidx721, align 4
  %call.i1482 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.121, i32 noundef 2052, ptr noundef %add.ptr701, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %470 = load ptr, ptr @hws, align 4
  %arrayidx724 = getelementptr ptr, ptr %470, i32 166
  %471 = ptrtoint ptr %arrayidx724 to i32
  call void @__asan_store4_noabort(i32 %471)
  store ptr %call.i1482, ptr %arrayidx724, align 4
  %call.i1483 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.121, i32 noundef 2052, ptr noundef %add.ptr701, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %472 = load ptr, ptr @hws, align 4
  %arrayidx727 = getelementptr ptr, ptr %472, i32 167
  %473 = ptrtoint ptr %arrayidx727 to i32
  call void @__asan_store4_noabort(i32 %473)
  store ptr %call.i1483, ptr %arrayidx727, align 4
  %call.i1484 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.166, i32 noundef 2052, ptr noundef %add.ptr701, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %474 = load ptr, ptr @hws, align 4
  %arrayidx730 = getelementptr ptr, ptr %474, i32 168
  %475 = ptrtoint ptr %arrayidx730 to i32
  call void @__asan_store4_noabort(i32 %475)
  store ptr %call.i1484, ptr %arrayidx730, align 4
  %call.i1485 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef %add.ptr701, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %476 = load ptr, ptr @hws, align 4
  %arrayidx733 = getelementptr ptr, ptr %476, i32 169
  %477 = ptrtoint ptr %arrayidx733 to i32
  call void @__asan_store4_noabort(i32 %477)
  store ptr %call.i1485, ptr %arrayidx733, align 4
  %call.i1486 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef %add.ptr701, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %478 = load ptr, ptr @hws, align 4
  %arrayidx736 = getelementptr ptr, ptr %478, i32 170
  %479 = ptrtoint ptr %arrayidx736 to i32
  call void @__asan_store4_noabort(i32 %479)
  store ptr %call.i1486, ptr %arrayidx736, align 4
  %add.ptr737 = getelementptr i8, ptr %call287, i32 116
  %call.i1487 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.153, i32 noundef 4, ptr noundef %add.ptr737, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %480 = load ptr, ptr @hws, align 4
  %arrayidx739 = getelementptr ptr, ptr %480, i32 171
  %481 = ptrtoint ptr %arrayidx739 to i32
  call void @__asan_store4_noabort(i32 %481)
  store ptr %call.i1487, ptr %arrayidx739, align 4
  %call.i1488 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr737, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %482 = load ptr, ptr @hws, align 4
  %arrayidx742 = getelementptr ptr, ptr %482, i32 172
  %483 = ptrtoint ptr %arrayidx742 to i32
  call void @__asan_store4_noabort(i32 %483)
  store ptr %call.i1488, ptr %arrayidx742, align 4
  %call.i1489 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.101, i32 noundef 4, ptr noundef %add.ptr737, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %484 = load ptr, ptr @hws, align 4
  %arrayidx745 = getelementptr ptr, ptr %484, i32 225
  %485 = ptrtoint ptr %arrayidx745 to i32
  call void @__asan_store4_noabort(i32 %485)
  store ptr %call.i1489, ptr %arrayidx745, align 4
  %call.i1490 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef %add.ptr737, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %486 = load ptr, ptr @hws, align 4
  %arrayidx748 = getelementptr ptr, ptr %486, i32 173
  %487 = ptrtoint ptr %arrayidx748 to i32
  call void @__asan_store4_noabort(i32 %487)
  store ptr %call.i1490, ptr %arrayidx748, align 4
  %call.i1491 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr737, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %488 = load ptr, ptr @hws, align 4
  %arrayidx751 = getelementptr ptr, ptr %488, i32 174
  %489 = ptrtoint ptr %arrayidx751 to i32
  call void @__asan_store4_noabort(i32 %489)
  store ptr %call.i1491, ptr %arrayidx751, align 4
  %call.i1492 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.117, i32 noundef 4, ptr noundef %add.ptr737, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %490 = load ptr, ptr @hws, align 4
  %arrayidx754 = getelementptr ptr, ptr %490, i32 175
  %491 = ptrtoint ptr %arrayidx754 to i32
  call void @__asan_store4_noabort(i32 %491)
  store ptr %call.i1492, ptr %arrayidx754, align 4
  %call.i1493 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.113, i32 noundef 4, ptr noundef %add.ptr737, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %492 = load ptr, ptr @hws, align 4
  %arrayidx757 = getelementptr ptr, ptr %492, i32 176
  %493 = ptrtoint ptr %arrayidx757 to i32
  call void @__asan_store4_noabort(i32 %493)
  store ptr %call.i1493, ptr %arrayidx757, align 4
  %call.i1494 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %add.ptr737, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %494 = load ptr, ptr @hws, align 4
  %arrayidx760 = getelementptr ptr, ptr %494, i32 177
  %495 = ptrtoint ptr %arrayidx760 to i32
  call void @__asan_store4_noabort(i32 %495)
  store ptr %call.i1494, ptr %arrayidx760, align 4
  %call.i1495 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %add.ptr737, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %496 = load ptr, ptr @hws, align 4
  %arrayidx763 = getelementptr ptr, ptr %496, i32 178
  %497 = ptrtoint ptr %arrayidx763 to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr %call.i1495, ptr %arrayidx763, align 4
  %call.i1496 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.166, i32 noundef 2052, ptr noundef %add.ptr737, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %498 = load ptr, ptr @hws, align 4
  %arrayidx766 = getelementptr ptr, ptr %498, i32 179
  %499 = ptrtoint ptr %arrayidx766 to i32
  call void @__asan_store4_noabort(i32 %499)
  store ptr %call.i1496, ptr %arrayidx766, align 4
  %call.i1497 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.120, i32 noundef 2052, ptr noundef %add.ptr737, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %500 = load ptr, ptr @hws, align 4
  %arrayidx769 = getelementptr ptr, ptr %500, i32 180
  %501 = ptrtoint ptr %arrayidx769 to i32
  call void @__asan_store4_noabort(i32 %501)
  store ptr %call.i1497, ptr %arrayidx769, align 4
  %call.i1498 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.120, i32 noundef 2052, ptr noundef %add.ptr737, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %502 = load ptr, ptr @hws, align 4
  %arrayidx772 = getelementptr ptr, ptr %502, i32 269
  %503 = ptrtoint ptr %arrayidx772 to i32
  call void @__asan_store4_noabort(i32 %503)
  store ptr %call.i1498, ptr %arrayidx772, align 4
  %call.i1499 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.165, i32 noundef 2052, ptr noundef %add.ptr737, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %504 = load ptr, ptr @hws, align 4
  %arrayidx775 = getelementptr ptr, ptr %504, i32 126
  %505 = ptrtoint ptr %arrayidx775 to i32
  call void @__asan_store4_noabort(i32 %505)
  store ptr %call.i1499, ptr %arrayidx775, align 4
  %add.ptr776 = getelementptr i8, ptr %call287, i32 120
  %call.i1500 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef %add.ptr776, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %506 = load ptr, ptr @hws, align 4
  %arrayidx778 = getelementptr ptr, ptr %506, i32 182
  %507 = ptrtoint ptr %arrayidx778 to i32
  call void @__asan_store4_noabort(i32 %507)
  store ptr %call.i1500, ptr %arrayidx778, align 4
  %call.i1501 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.145, i32 noundef 4, ptr noundef %add.ptr776, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %508 = load ptr, ptr @hws, align 4
  %arrayidx781 = getelementptr ptr, ptr %508, i32 183
  %509 = ptrtoint ptr %arrayidx781 to i32
  call void @__asan_store4_noabort(i32 %509)
  store ptr %call.i1501, ptr %arrayidx781, align 4
  %call.i1502 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.170, i32 noundef 4, ptr noundef %add.ptr776, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %510 = load ptr, ptr @hws, align 4
  %arrayidx784 = getelementptr ptr, ptr %510, i32 184
  %511 = ptrtoint ptr %arrayidx784 to i32
  call void @__asan_store4_noabort(i32 %511)
  store ptr %call.i1502, ptr %arrayidx784, align 4
  %call.i1503 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.121, i32 noundef 2052, ptr noundef %add.ptr776, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %512 = load ptr, ptr @hws, align 4
  %arrayidx787 = getelementptr ptr, ptr %512, i32 185
  %513 = ptrtoint ptr %arrayidx787 to i32
  call void @__asan_store4_noabort(i32 %513)
  store ptr %call.i1503, ptr %arrayidx787, align 4
  %call.i1504 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr776, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %514 = load ptr, ptr @hws, align 4
  %arrayidx790 = getelementptr ptr, ptr %514, i32 186
  %515 = ptrtoint ptr %arrayidx790 to i32
  call void @__asan_store4_noabort(i32 %515)
  store ptr %call.i1504, ptr %arrayidx790, align 4
  %call.i1505 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr776, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %516 = load ptr, ptr @hws, align 4
  %arrayidx793 = getelementptr ptr, ptr %516, i32 187
  %517 = ptrtoint ptr %arrayidx793 to i32
  call void @__asan_store4_noabort(i32 %517)
  store ptr %call.i1505, ptr %arrayidx793, align 4
  %call.i1506 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr776, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %518 = load ptr, ptr @hws, align 4
  %arrayidx796 = getelementptr ptr, ptr %518, i32 188
  %519 = ptrtoint ptr %arrayidx796 to i32
  call void @__asan_store4_noabort(i32 %519)
  store ptr %call.i1506, ptr %arrayidx796, align 4
  %call.i1507 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr776, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %520 = load ptr, ptr @hws, align 4
  %arrayidx799 = getelementptr ptr, ptr %520, i32 189
  %521 = ptrtoint ptr %arrayidx799 to i32
  call void @__asan_store4_noabort(i32 %521)
  store ptr %call.i1507, ptr %arrayidx799, align 4
  %call.i1508 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.170, i32 noundef 4, ptr noundef %add.ptr776, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %522 = load ptr, ptr @hws, align 4
  %arrayidx802 = getelementptr ptr, ptr %522, i32 190
  %523 = ptrtoint ptr %arrayidx802 to i32
  call void @__asan_store4_noabort(i32 %523)
  store ptr %call.i1508, ptr %arrayidx802, align 4
  %call.i1509 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.234, i32 noundef 4, ptr noundef %add.ptr776, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %524 = load ptr, ptr @hws, align 4
  %arrayidx805 = getelementptr ptr, ptr %524, i32 191
  %525 = ptrtoint ptr %arrayidx805 to i32
  call void @__asan_store4_noabort(i32 %525)
  store ptr %call.i1509, ptr %arrayidx805, align 4
  %call.i1510 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.145, i32 noundef 4, ptr noundef %add.ptr776, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %526 = load ptr, ptr @hws, align 4
  %arrayidx808 = getelementptr ptr, ptr %526, i32 192
  %527 = ptrtoint ptr %arrayidx808 to i32
  call void @__asan_store4_noabort(i32 %527)
  store ptr %call.i1510, ptr %arrayidx808, align 4
  %call.i1511 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.170, i32 noundef 4, ptr noundef %add.ptr776, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %528 = load ptr, ptr @hws, align 4
  %arrayidx811 = getelementptr ptr, ptr %528, i32 193
  %529 = ptrtoint ptr %arrayidx811 to i32
  call void @__asan_store4_noabort(i32 %529)
  store ptr %call.i1511, ptr %arrayidx811, align 4
  %add.ptr812 = getelementptr i8, ptr %call287, i32 124
  %call.i1512 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.121, i32 noundef 2052, ptr noundef %add.ptr812, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %530 = load ptr, ptr @hws, align 4
  %arrayidx814 = getelementptr ptr, ptr %530, i32 194
  %531 = ptrtoint ptr %arrayidx814 to i32
  call void @__asan_store4_noabort(i32 %531)
  store ptr %call.i1512, ptr %arrayidx814, align 4
  %call.i1513 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %add.ptr812, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %532 = load ptr, ptr @hws, align 4
  %arrayidx817 = getelementptr ptr, ptr %532, i32 195
  %533 = ptrtoint ptr %arrayidx817 to i32
  call void @__asan_store4_noabort(i32 %533)
  store ptr %call.i1513, ptr %arrayidx817, align 4
  %call.i1514 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr812, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %534 = load ptr, ptr @hws, align 4
  %arrayidx820 = getelementptr ptr, ptr %534, i32 196
  %535 = ptrtoint ptr %arrayidx820 to i32
  call void @__asan_store4_noabort(i32 %535)
  store ptr %call.i1514, ptr %arrayidx820, align 4
  %call.i1515 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.151, i32 noundef 4, ptr noundef %add.ptr812, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_audio) #4
  %536 = load ptr, ptr @hws, align 4
  %arrayidx823 = getelementptr ptr, ptr %536, i32 232
  %537 = ptrtoint ptr %arrayidx823 to i32
  call void @__asan_store4_noabort(i32 %537)
  store ptr %call.i1515, ptr %arrayidx823, align 4
  %call.i1516 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.149, i32 noundef 4, ptr noundef %add.ptr812, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_audio) #4
  %538 = load ptr, ptr @hws, align 4
  %arrayidx826 = getelementptr ptr, ptr %538, i32 197
  %539 = ptrtoint ptr %arrayidx826 to i32
  call void @__asan_store4_noabort(i32 %539)
  store ptr %call.i1516, ptr %arrayidx826, align 4
  %call.i1517 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr812, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_audio) #4
  %540 = load ptr, ptr @hws, align 4
  %arrayidx829 = getelementptr ptr, ptr %540, i32 264
  %541 = ptrtoint ptr %arrayidx829 to i32
  call void @__asan_store4_noabort(i32 %541)
  store ptr %call.i1517, ptr %arrayidx829, align 4
  %call.i1518 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr812, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi1) #4
  %542 = load ptr, ptr @hws, align 4
  %arrayidx832 = getelementptr ptr, ptr %542, i32 198
  %543 = ptrtoint ptr %arrayidx832 to i32
  call void @__asan_store4_noabort(i32 %543)
  store ptr %call.i1518, ptr %arrayidx832, align 4
  %call.i1519 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr812, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi2) #4
  %544 = load ptr, ptr @hws, align 4
  %arrayidx835 = getelementptr ptr, ptr %544, i32 199
  %545 = ptrtoint ptr %arrayidx835 to i32
  call void @__asan_store4_noabort(i32 %545)
  store ptr %call.i1519, ptr %arrayidx835, align 4
  %call.i1520 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr812, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi3) #4
  %546 = load ptr, ptr @hws, align 4
  %arrayidx838 = getelementptr ptr, ptr %546, i32 200
  %547 = ptrtoint ptr %arrayidx838 to i32
  call void @__asan_store4_noabort(i32 %547)
  store ptr %call.i1520, ptr %arrayidx838, align 4
  %call.i1521 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.143, i32 noundef 4, ptr noundef %add.ptr812, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi1) #4
  %548 = load ptr, ptr @hws, align 4
  %arrayidx841 = getelementptr ptr, ptr %548, i32 201
  %549 = ptrtoint ptr %arrayidx841 to i32
  call void @__asan_store4_noabort(i32 %549)
  store ptr %call.i1521, ptr %arrayidx841, align 4
  %call.i1522 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.147, i32 noundef 4, ptr noundef %add.ptr812, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi2) #4
  %550 = load ptr, ptr @hws, align 4
  %arrayidx844 = getelementptr ptr, ptr %550, i32 202
  %551 = ptrtoint ptr %arrayidx844 to i32
  call void @__asan_store4_noabort(i32 %551)
  store ptr %call.i1522, ptr %arrayidx844, align 4
  %call.i1523 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.141, i32 noundef 4, ptr noundef %add.ptr812, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi3) #4
  %552 = load ptr, ptr @hws, align 4
  %arrayidx847 = getelementptr ptr, ptr %552, i32 203
  %553 = ptrtoint ptr %arrayidx847 to i32
  call void @__asan_store4_noabort(i32 %553)
  store ptr %call.i1523, ptr %arrayidx847, align 4
  %call.i1524 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr812, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %554 = load ptr, ptr @hws, align 4
  %arrayidx850 = getelementptr ptr, ptr %554, i32 204
  %555 = ptrtoint ptr %arrayidx850 to i32
  call void @__asan_store4_noabort(i32 %555)
  store ptr %call.i1524, ptr %arrayidx850, align 4
  %call.i1525 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.137, i32 noundef 4, ptr noundef %add.ptr812, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %556 = load ptr, ptr @hws, align 4
  %arrayidx853 = getelementptr ptr, ptr %556, i32 205
  %557 = ptrtoint ptr %arrayidx853 to i32
  call void @__asan_store4_noabort(i32 %557)
  store ptr %call.i1525, ptr %arrayidx853, align 4
  %call.i1526 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr812, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai1) #4
  %558 = load ptr, ptr @hws, align 4
  %arrayidx856 = getelementptr ptr, ptr %558, i32 237
  %559 = ptrtoint ptr %arrayidx856 to i32
  call void @__asan_store4_noabort(i32 %559)
  store ptr %call.i1526, ptr %arrayidx856, align 4
  %call.i1527 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr812, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai2) #4
  %560 = load ptr, ptr @hws, align 4
  %arrayidx859 = getelementptr ptr, ptr %560, i32 238
  %561 = ptrtoint ptr %arrayidx859 to i32
  call void @__asan_store4_noabort(i32 %561)
  store ptr %call.i1527, ptr %arrayidx859, align 4
  %call.i1528 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.143, i32 noundef 4, ptr noundef %add.ptr812, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai1) #4
  %562 = load ptr, ptr @hws, align 4
  %arrayidx862 = getelementptr ptr, ptr %562, i32 206
  %563 = ptrtoint ptr %arrayidx862 to i32
  call void @__asan_store4_noabort(i32 %563)
  store ptr %call.i1528, ptr %arrayidx862, align 4
  %call.i1529 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.254, ptr noundef nonnull @.str.147, i32 noundef 4, ptr noundef %add.ptr812, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai2) #4
  %564 = load ptr, ptr @hws, align 4
  %arrayidx865 = getelementptr ptr, ptr %564, i32 207
  %565 = ptrtoint ptr %arrayidx865 to i32
  call void @__asan_store4_noabort(i32 %565)
  store ptr %call.i1529, ptr %arrayidx865, align 4
  %add.ptr866 = getelementptr i8, ptr %call287, i32 128
  %call.i1530 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr866, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %566 = load ptr, ptr @hws, align 4
  %arrayidx868 = getelementptr ptr, ptr %566, i32 208
  %567 = ptrtoint ptr %arrayidx868 to i32
  call void @__asan_store4_noabort(i32 %567)
  store ptr %call.i1530, ptr %arrayidx868, align 4
  %call.i1531 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.136, i32 noundef 4, ptr noundef %add.ptr866, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %568 = load ptr, ptr @hws, align 4
  %arrayidx871 = getelementptr ptr, ptr %568, i32 209
  %569 = ptrtoint ptr %arrayidx871 to i32
  call void @__asan_store4_noabort(i32 %569)
  store ptr %call.i1531, ptr %arrayidx871, align 4
  %call.i1532 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.135, i32 noundef 4, ptr noundef %add.ptr866, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %570 = load ptr, ptr @hws, align 4
  %arrayidx874 = getelementptr ptr, ptr %570, i32 210
  %571 = ptrtoint ptr %arrayidx874 to i32
  call void @__asan_store4_noabort(i32 %571)
  store ptr %call.i1532, ptr %arrayidx874, align 4
  %call.i1533 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.134, i32 noundef 4, ptr noundef %add.ptr866, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %572 = load ptr, ptr @hws, align 4
  %arrayidx877 = getelementptr ptr, ptr %572, i32 211
  %573 = ptrtoint ptr %arrayidx877 to i32
  call void @__asan_store4_noabort(i32 %573)
  store ptr %call.i1533, ptr %arrayidx877, align 4
  %call.i1534 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %add.ptr866, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %574 = load ptr, ptr @hws, align 4
  %arrayidx880 = getelementptr ptr, ptr %574, i32 212
  %575 = ptrtoint ptr %arrayidx880 to i32
  call void @__asan_store4_noabort(i32 %575)
  store ptr %call.i1534, ptr %arrayidx880, align 4
  %call.i1535 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.127, i32 noundef 4, ptr noundef %add.ptr866, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %576 = load ptr, ptr @hws, align 4
  %arrayidx883 = getelementptr ptr, ptr %576, i32 213
  %577 = ptrtoint ptr %arrayidx883 to i32
  call void @__asan_store4_noabort(i32 %577)
  store ptr %call.i1535, ptr %arrayidx883, align 4
  %call.i1536 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr866, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %578 = load ptr, ptr @hws, align 4
  %arrayidx886 = getelementptr ptr, ptr %578, i32 214
  %579 = ptrtoint ptr %arrayidx886 to i32
  call void @__asan_store4_noabort(i32 %579)
  store ptr %call.i1536, ptr %arrayidx886, align 4
  %call.i1537 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.131, i32 noundef 4, ptr noundef %add.ptr866, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %580 = load ptr, ptr @hws, align 4
  %arrayidx889 = getelementptr ptr, ptr %580, i32 215
  %581 = ptrtoint ptr %arrayidx889 to i32
  call void @__asan_store4_noabort(i32 %581)
  store ptr %call.i1537, ptr %arrayidx889, align 4
  %call.i1538 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef %add.ptr866, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %582 = load ptr, ptr @hws, align 4
  %arrayidx892 = getelementptr ptr, ptr %582, i32 216
  %583 = ptrtoint ptr %arrayidx892 to i32
  call void @__asan_store4_noabort(i32 %583)
  store ptr %call.i1538, ptr %arrayidx892, align 4
  %call.i1539 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr866, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %584 = load ptr, ptr @hws, align 4
  %arrayidx895 = getelementptr ptr, ptr %584, i32 217
  %585 = ptrtoint ptr %arrayidx895 to i32
  call void @__asan_store4_noabort(i32 %585)
  store ptr %call.i1539, ptr %arrayidx895, align 4
  %call.i1540 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr866, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %586 = load ptr, ptr @hws, align 4
  %arrayidx898 = getelementptr ptr, ptr %586, i32 218
  %587 = ptrtoint ptr %arrayidx898 to i32
  call void @__asan_store4_noabort(i32 %587)
  store ptr %call.i1540, ptr %arrayidx898, align 4
  %call.i1541 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr866, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %588 = load ptr, ptr @hws, align 4
  %arrayidx901 = getelementptr ptr, ptr %588, i32 219
  %589 = ptrtoint ptr %arrayidx901 to i32
  call void @__asan_store4_noabort(i32 %589)
  store ptr %call.i1541, ptr %arrayidx901, align 4
  %call.i1542 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.265, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr866, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %590 = load ptr, ptr @hws, align 4
  %arrayidx904 = getelementptr ptr, ptr %590, i32 220
  %591 = ptrtoint ptr %arrayidx904 to i32
  call void @__asan_store4_noabort(i32 %591)
  store ptr %call.i1542, ptr %arrayidx904, align 4
  %call.i1543 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.157, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr429, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %592 = load ptr, ptr @hws, align 4
  %arrayidx907 = getelementptr ptr, ptr %592, i32 221
  %593 = ptrtoint ptr %arrayidx907 to i32
  call void @__asan_store4_noabort(i32 %593)
  store ptr %call.i1543, ptr %arrayidx907, align 4
  %call.i1544 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.158, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr429, i8 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %594 = load ptr, ptr @hws, align 4
  %arrayidx910 = getelementptr ptr, ptr %594, i32 222
  %595 = ptrtoint ptr %arrayidx910 to i32
  call void @__asan_store4_noabort(i32 %595)
  store ptr %call.i1544, ptr %arrayidx910, align 4
  tail call void @imx_mmdc_mask_handshake(ptr noundef %call287, i32 noundef 0) #4
  %596 = load ptr, ptr @hws, align 4
  tail call void @imx_check_clk_hws(ptr noundef %596, i32 noundef 270) #4
  %597 = load ptr, ptr @clk_hw_data, align 4
  %call911 = tail call i32 @of_clk_add_hw_provider(ptr noundef %ccm_node, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %597) #4
  %598 = load ptr, ptr @hws, align 4
  %arrayidx912 = getelementptr ptr, ptr %598, i32 13
  %599 = ptrtoint ptr %arrayidx912 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %arrayidx912, align 4
  %clk913 = getelementptr inbounds %struct.clk_hw, ptr %600, i32 0, i32 1
  %601 = ptrtoint ptr %clk913 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %clk913, align 4
  %call.i1545 = tail call i32 @clk_prepare(ptr noundef %602) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1545)
  %tobool.not.i = icmp eq i32 %call.i1545, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end313.clk_prepare_enable.exit_crit_edge

if.end313.clk_prepare_enable.exit_crit_edge:      ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end313
  %call1.i = tail call i32 @clk_enable(ptr noundef %602) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %602) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end313.clk_prepare_enable.exit_crit_edge
  %603 = load ptr, ptr @hws, align 4
  %arrayidx915 = getelementptr ptr, ptr %603, i32 14
  %604 = ptrtoint ptr %arrayidx915 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %arrayidx915, align 4
  %clk916 = getelementptr inbounds %struct.clk_hw, ptr %605, i32 0, i32 1
  %606 = ptrtoint ptr %clk916 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %clk916, align 4
  %call.i1546 = tail call i32 @clk_prepare(ptr noundef %607) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1546)
  %tobool.not.i1547 = icmp eq i32 %call.i1546, 0
  br i1 %tobool.not.i1547, label %if.end.i1550, label %clk_prepare_enable.exit.clk_prepare_enable.exit1552_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit1552_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit1552

if.end.i1550:                                     ; preds = %clk_prepare_enable.exit
  %call1.i1548 = tail call i32 @clk_enable(ptr noundef %607) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1548)
  %tobool2.not.i1549 = icmp eq i32 %call1.i1548, 0
  br i1 %tobool2.not.i1549, label %if.end.i1550.clk_prepare_enable.exit1552_crit_edge, label %if.then3.i1551

if.end.i1550.clk_prepare_enable.exit1552_crit_edge: ; preds = %if.end.i1550
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit1552

if.then3.i1551:                                   ; preds = %if.end.i1550
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %607) #4
  br label %clk_prepare_enable.exit1552

clk_prepare_enable.exit1552:                      ; preds = %if.then3.i1551, %if.end.i1550.clk_prepare_enable.exit1552_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit1552_crit_edge
  %608 = load ptr, ptr @hws, align 4
  %arrayidx918 = getelementptr ptr, ptr %608, i32 45
  %609 = ptrtoint ptr %arrayidx918 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %arrayidx918, align 4
  %clk919 = getelementptr inbounds %struct.clk_hw, ptr %610, i32 0, i32 1
  %611 = ptrtoint ptr %clk919 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %clk919, align 4
  %arrayidx920 = getelementptr ptr, ptr %608, i32 20
  %613 = ptrtoint ptr %arrayidx920 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %arrayidx920, align 4
  %clk921 = getelementptr inbounds %struct.clk_hw, ptr %614, i32 0, i32 1
  %615 = ptrtoint ptr %clk921 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %clk921, align 4
  %call922 = tail call i32 @clk_set_parent(ptr noundef %612, ptr noundef %616) #4
  %617 = load ptr, ptr @hws, align 4
  %arrayidx923 = getelementptr ptr, ptr %617, i32 213
  %618 = ptrtoint ptr %arrayidx923 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %arrayidx923, align 4
  %clk924 = getelementptr inbounds %struct.clk_hw, ptr %619, i32 0, i32 1
  %620 = ptrtoint ptr %clk924 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %clk924, align 4
  %call925 = tail call i32 @clk_set_rate(ptr noundef %621, i32 noundef 132000000) #4
  %622 = load ptr, ptr @hws, align 4
  %arrayidx926 = getelementptr ptr, ptr %622, i32 71
  %623 = ptrtoint ptr %arrayidx926 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %arrayidx926, align 4
  %clk927 = getelementptr inbounds %struct.clk_hw, ptr %624, i32 0, i32 1
  %625 = ptrtoint ptr %clk927 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %clk927, align 4
  %arrayidx928 = getelementptr ptr, ptr %622, i32 34
  %627 = ptrtoint ptr %arrayidx928 to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %arrayidx928, align 4
  %clk929 = getelementptr inbounds %struct.clk_hw, ptr %628, i32 0, i32 1
  %629 = ptrtoint ptr %clk929 to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %clk929, align 4
  %call930 = tail call i32 @clk_set_parent(ptr noundef %626, ptr noundef %630) #4
  %631 = load ptr, ptr @hws, align 4
  %arrayidx931 = getelementptr ptr, ptr %631, i32 73
  %632 = ptrtoint ptr %arrayidx931 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %arrayidx931, align 4
  %clk932 = getelementptr inbounds %struct.clk_hw, ptr %633, i32 0, i32 1
  %634 = ptrtoint ptr %clk932 to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %clk932, align 4
  %arrayidx933 = getelementptr ptr, ptr %631, i32 85
  %636 = ptrtoint ptr %arrayidx933 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %arrayidx933, align 4
  %clk934 = getelementptr inbounds %struct.clk_hw, ptr %637, i32 0, i32 1
  %638 = ptrtoint ptr %clk934 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %clk934, align 4
  %call935 = tail call i32 @clk_set_parent(ptr noundef %635, ptr noundef %639) #4
  %640 = load ptr, ptr @hws, align 4
  %arrayidx936 = getelementptr ptr, ptr %640, i32 233
  %641 = ptrtoint ptr %arrayidx936 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %arrayidx936, align 4
  %clk937 = getelementptr inbounds %struct.clk_hw, ptr %642, i32 0, i32 1
  %643 = ptrtoint ptr %clk937 to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %clk937, align 4
  %arrayidx938 = getelementptr ptr, ptr %640, i32 16
  %645 = ptrtoint ptr %arrayidx938 to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %arrayidx938, align 4
  %clk939 = getelementptr inbounds %struct.clk_hw, ptr %646, i32 0, i32 1
  %647 = ptrtoint ptr %clk939 to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %clk939, align 4
  %call940 = tail call i32 @clk_set_parent(ptr noundef %644, ptr noundef %648) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call940)
  %tobool941.not = icmp eq i32 %call940, 0
  br i1 %tobool941.not, label %clk_prepare_enable.exit1552.if.end948_crit_edge, label %do.end945

clk_prepare_enable.exit1552.if.end948_crit_edge:  ; preds = %clk_prepare_enable.exit1552
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end948

do.end945:                                        ; preds = %clk_prepare_enable.exit1552
  call void @__sanitizer_cov_trace_pc() #6
  %call947 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268) #8
  br label %if.end948

if.end948:                                        ; preds = %do.end945, %clk_prepare_enable.exit1552.if.end948_crit_edge
  %649 = load ptr, ptr @hws, align 4
  %arrayidx949 = getelementptr ptr, ptr %649, i32 66
  %650 = ptrtoint ptr %arrayidx949 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %arrayidx949, align 4
  %clk950 = getelementptr inbounds %struct.clk_hw, ptr %651, i32 0, i32 1
  %652 = ptrtoint ptr %clk950 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %clk950, align 4
  %arrayidx951 = getelementptr ptr, ptr %649, i32 20
  %654 = ptrtoint ptr %arrayidx951 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %arrayidx951, align 4
  %clk952 = getelementptr inbounds %struct.clk_hw, ptr %655, i32 0, i32 1
  %656 = ptrtoint ptr %clk952 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %clk952, align 4
  %call953 = tail call i32 @clk_set_parent(ptr noundef %653, ptr noundef %657) #4
  %658 = load ptr, ptr @hws, align 4
  %arrayidx954 = getelementptr ptr, ptr %658, i32 67
  %659 = ptrtoint ptr %arrayidx954 to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %arrayidx954, align 4
  %clk955 = getelementptr inbounds %struct.clk_hw, ptr %660, i32 0, i32 1
  %661 = ptrtoint ptr %clk955 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %clk955, align 4
  %arrayidx956 = getelementptr ptr, ptr %658, i32 111
  %663 = ptrtoint ptr %arrayidx956 to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %arrayidx956, align 4
  %clk957 = getelementptr inbounds %struct.clk_hw, ptr %664, i32 0, i32 1
  %665 = ptrtoint ptr %clk957 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %clk957, align 4
  %call958 = tail call i32 @clk_set_parent(ptr noundef %662, ptr noundef %666) #4
  %667 = load ptr, ptr @hws, align 4
  %arrayidx959 = getelementptr ptr, ptr %667, i32 111
  %668 = ptrtoint ptr %arrayidx959 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %arrayidx959, align 4
  %clk960 = getelementptr inbounds %struct.clk_hw, ptr %669, i32 0, i32 1
  %670 = ptrtoint ptr %clk960 to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %clk960, align 4
  %call961 = tail call i32 @clk_set_rate(ptr noundef %671, i32 noundef 200000000) #4
  %672 = load ptr, ptr @hws, align 4
  %arrayidx962 = getelementptr ptr, ptr %672, i32 17
  %673 = ptrtoint ptr %arrayidx962 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %arrayidx962, align 4
  %clk963 = getelementptr inbounds %struct.clk_hw, ptr %674, i32 0, i32 1
  %675 = ptrtoint ptr %clk963 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %clk963, align 4
  %call964 = tail call i32 @clk_set_rate(ptr noundef %676, i32 noundef 125000000) #4
  %677 = load ptr, ptr @hws, align 4
  %arrayidx965 = getelementptr ptr, ptr %677, i32 230
  %678 = ptrtoint ptr %arrayidx965 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %arrayidx965, align 4
  %clk966 = getelementptr inbounds %struct.clk_hw, ptr %679, i32 0, i32 1
  %680 = ptrtoint ptr %clk966 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %clk966, align 4
  %call967 = tail call i32 @clk_set_rate(ptr noundef %681, i32 noundef 125000000) #4
  %682 = load ptr, ptr @hws, align 4
  %arrayidx968 = getelementptr ptr, ptr %682, i32 32
  %683 = ptrtoint ptr %arrayidx968 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %arrayidx968, align 4
  %clk969 = getelementptr inbounds %struct.clk_hw, ptr %684, i32 0, i32 1
  %685 = ptrtoint ptr %clk969 to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %clk969, align 4
  %call970 = tail call i32 @clk_set_rate(ptr noundef %686, i32 noundef 393216000) #4
  %687 = load ptr, ptr @hws, align 4
  %arrayidx971 = getelementptr ptr, ptr %687, i32 64
  %688 = ptrtoint ptr %arrayidx971 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %arrayidx971, align 4
  %clk972 = getelementptr inbounds %struct.clk_hw, ptr %689, i32 0, i32 1
  %690 = ptrtoint ptr %clk972 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %clk972, align 4
  %arrayidx973 = getelementptr ptr, ptr %687, i32 32
  %692 = ptrtoint ptr %arrayidx973 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %arrayidx973, align 4
  %clk974 = getelementptr inbounds %struct.clk_hw, ptr %693, i32 0, i32 1
  %694 = ptrtoint ptr %clk974 to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %clk974, align 4
  %call975 = tail call i32 @clk_set_parent(ptr noundef %691, ptr noundef %695) #4
  %696 = load ptr, ptr @hws, align 4
  %arrayidx976 = getelementptr ptr, ptr %696, i32 108
  %697 = ptrtoint ptr %arrayidx976 to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %arrayidx976, align 4
  %clk977 = getelementptr inbounds %struct.clk_hw, ptr %698, i32 0, i32 1
  %699 = ptrtoint ptr %clk977 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %clk977, align 4
  %call978 = tail call i32 @clk_set_rate(ptr noundef %700, i32 noundef 98304000) #4
  %701 = load ptr, ptr @hws, align 4
  %arrayidx979 = getelementptr ptr, ptr %701, i32 65
  %702 = ptrtoint ptr %arrayidx979 to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %arrayidx979, align 4
  %clk980 = getelementptr inbounds %struct.clk_hw, ptr %703, i32 0, i32 1
  %704 = ptrtoint ptr %clk980 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %clk980, align 4
  %arrayidx981 = getelementptr ptr, ptr %701, i32 6
  %706 = ptrtoint ptr %arrayidx981 to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %arrayidx981, align 4
  %clk982 = getelementptr inbounds %struct.clk_hw, ptr %707, i32 0, i32 1
  %708 = ptrtoint ptr %clk982 to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %clk982, align 4
  %call983 = tail call i32 @clk_set_parent(ptr noundef %705, ptr noundef %709) #4
  %710 = load ptr, ptr @hws, align 4
  %arrayidx984 = getelementptr ptr, ptr %710, i32 110
  %711 = ptrtoint ptr %arrayidx984 to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %arrayidx984, align 4
  %clk985 = getelementptr inbounds %struct.clk_hw, ptr %712, i32 0, i32 1
  %713 = ptrtoint ptr %clk985 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %clk985, align 4
  %call986 = tail call i32 @clk_set_rate(ptr noundef %714, i32 noundef 24000000) #4
  %715 = load ptr, ptr @hws, align 4
  %arrayidx987 = getelementptr ptr, ptr %715, i32 50
  %716 = ptrtoint ptr %arrayidx987 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %arrayidx987, align 4
  %clk988 = getelementptr inbounds %struct.clk_hw, ptr %717, i32 0, i32 1
  %718 = ptrtoint ptr %clk988 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %clk988, align 4
  %arrayidx989 = getelementptr ptr, ptr %715, i32 32
  %720 = ptrtoint ptr %arrayidx989 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %arrayidx989, align 4
  %clk990 = getelementptr inbounds %struct.clk_hw, ptr %721, i32 0, i32 1
  %722 = ptrtoint ptr %clk990 to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %clk990, align 4
  %call991 = tail call i32 @clk_set_parent(ptr noundef %719, ptr noundef %723) #4
  %724 = load ptr, ptr @hws, align 4
  %arrayidx992 = getelementptr ptr, ptr %724, i32 51
  %725 = ptrtoint ptr %arrayidx992 to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %arrayidx992, align 4
  %clk993 = getelementptr inbounds %struct.clk_hw, ptr %726, i32 0, i32 1
  %727 = ptrtoint ptr %clk993 to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %clk993, align 4
  %arrayidx994 = getelementptr ptr, ptr %724, i32 32
  %729 = ptrtoint ptr %arrayidx994 to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %arrayidx994, align 4
  %clk995 = getelementptr inbounds %struct.clk_hw, ptr %730, i32 0, i32 1
  %731 = ptrtoint ptr %clk995 to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %clk995, align 4
  %call996 = tail call i32 @clk_set_parent(ptr noundef %728, ptr noundef %732) #4
  %733 = load ptr, ptr @hws, align 4
  %arrayidx997 = getelementptr ptr, ptr %733, i32 52
  %734 = ptrtoint ptr %arrayidx997 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %arrayidx997, align 4
  %clk998 = getelementptr inbounds %struct.clk_hw, ptr %735, i32 0, i32 1
  %736 = ptrtoint ptr %clk998 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %clk998, align 4
  %arrayidx999 = getelementptr ptr, ptr %733, i32 32
  %738 = ptrtoint ptr %arrayidx999 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %arrayidx999, align 4
  %clk1000 = getelementptr inbounds %struct.clk_hw, ptr %739, i32 0, i32 1
  %740 = ptrtoint ptr %clk1000 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %clk1000, align 4
  %call1001 = tail call i32 @clk_set_parent(ptr noundef %737, ptr noundef %741) #4
  %742 = load ptr, ptr @hws, align 4
  %arrayidx1002 = getelementptr ptr, ptr %742, i32 102
  %743 = ptrtoint ptr %arrayidx1002 to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %arrayidx1002, align 4
  %clk1003 = getelementptr inbounds %struct.clk_hw, ptr %744, i32 0, i32 1
  %745 = ptrtoint ptr %clk1003 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %clk1003, align 4
  %call1004 = tail call i32 @clk_set_rate(ptr noundef %746, i32 noundef 24576000) #4
  %747 = load ptr, ptr @hws, align 4
  %arrayidx1005 = getelementptr ptr, ptr %747, i32 106
  %748 = ptrtoint ptr %arrayidx1005 to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %arrayidx1005, align 4
  %clk1006 = getelementptr inbounds %struct.clk_hw, ptr %749, i32 0, i32 1
  %750 = ptrtoint ptr %clk1006 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %clk1006, align 4
  %call1007 = tail call i32 @clk_set_rate(ptr noundef %751, i32 noundef 24576000) #4
  %752 = load ptr, ptr @hws, align 4
  %arrayidx1008 = getelementptr ptr, ptr %752, i32 100
  %753 = ptrtoint ptr %arrayidx1008 to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %arrayidx1008, align 4
  %clk1009 = getelementptr inbounds %struct.clk_hw, ptr %754, i32 0, i32 1
  %755 = ptrtoint ptr %clk1009 to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %clk1009, align 4
  %call1010 = tail call i32 @clk_set_rate(ptr noundef %756, i32 noundef 24576000) #4
  %757 = load ptr, ptr @hws, align 4
  %arrayidx1011 = getelementptr ptr, ptr %757, i32 56
  %758 = ptrtoint ptr %arrayidx1011 to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %arrayidx1011, align 4
  %clk1012 = getelementptr inbounds %struct.clk_hw, ptr %759, i32 0, i32 1
  %760 = ptrtoint ptr %clk1012 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %clk1012, align 4
  %arrayidx1013 = getelementptr ptr, ptr %757, i32 32
  %762 = ptrtoint ptr %arrayidx1013 to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %arrayidx1013, align 4
  %clk1014 = getelementptr inbounds %struct.clk_hw, ptr %763, i32 0, i32 1
  %764 = ptrtoint ptr %clk1014 to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %clk1014, align 4
  %call1015 = tail call i32 @clk_set_parent(ptr noundef %761, ptr noundef %765) #4
  %766 = load ptr, ptr @hws, align 4
  %arrayidx1016 = getelementptr ptr, ptr %766, i32 98
  %767 = ptrtoint ptr %arrayidx1016 to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %arrayidx1016, align 4
  %clk1017 = getelementptr inbounds %struct.clk_hw, ptr %768, i32 0, i32 1
  %769 = ptrtoint ptr %clk1017 to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %clk1017, align 4
  %call1018 = tail call i32 @clk_set_rate(ptr noundef %770, i32 noundef 24576000) #4
  %771 = load ptr, ptr @hws, align 4
  %arrayidx1019 = getelementptr ptr, ptr %771, i32 55
  %772 = ptrtoint ptr %arrayidx1019 to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %arrayidx1019, align 4
  %clk1020 = getelementptr inbounds %struct.clk_hw, ptr %773, i32 0, i32 1
  %774 = ptrtoint ptr %clk1020 to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %clk1020, align 4
  %arrayidx1021 = getelementptr ptr, ptr %771, i32 6
  %776 = ptrtoint ptr %arrayidx1021 to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %arrayidx1021, align 4
  %clk1022 = getelementptr inbounds %struct.clk_hw, ptr %777, i32 0, i32 1
  %778 = ptrtoint ptr %clk1022 to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %clk1022, align 4
  %call1023 = tail call i32 @clk_set_parent(ptr noundef %775, ptr noundef %779) #4
  %780 = load ptr, ptr @hws, align 4
  %arrayidx1024 = getelementptr ptr, ptr %780, i32 59
  %781 = ptrtoint ptr %arrayidx1024 to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %arrayidx1024, align 4
  %clk1025 = getelementptr inbounds %struct.clk_hw, ptr %782, i32 0, i32 1
  %783 = ptrtoint ptr %clk1025 to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %clk1025, align 4
  %arrayidx1026 = getelementptr ptr, ptr %780, i32 29
  %785 = ptrtoint ptr %arrayidx1026 to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %arrayidx1026, align 4
  %clk1027 = getelementptr inbounds %struct.clk_hw, ptr %786, i32 0, i32 1
  %787 = ptrtoint ptr %clk1027 to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %clk1027, align 4
  %call1028 = tail call i32 @clk_set_parent(ptr noundef %784, ptr noundef %788) #4
  %789 = load ptr, ptr @hws, align 4
  %arrayidx1029 = getelementptr ptr, ptr %789, i32 44
  %790 = ptrtoint ptr %arrayidx1029 to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %arrayidx1029, align 4
  %clk1030 = getelementptr inbounds %struct.clk_hw, ptr %791, i32 0, i32 1
  %792 = ptrtoint ptr %clk1030 to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %clk1030, align 4
  %arrayidx1031 = getelementptr ptr, ptr %789, i32 22
  %794 = ptrtoint ptr %arrayidx1031 to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %arrayidx1031, align 4
  %clk1032 = getelementptr inbounds %struct.clk_hw, ptr %795, i32 0, i32 1
  %796 = ptrtoint ptr %clk1032 to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %clk1032, align 4
  %call1033 = tail call i32 @clk_set_parent(ptr noundef %793, ptr noundef %797) #4
  %798 = load ptr, ptr @hws, align 4
  %arrayidx1034 = getelementptr ptr, ptr %798, i32 43
  %799 = ptrtoint ptr %arrayidx1034 to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load ptr, ptr %arrayidx1034, align 4
  %clk1035 = getelementptr inbounds %struct.clk_hw, ptr %800, i32 0, i32 1
  %801 = ptrtoint ptr %clk1035 to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load ptr, ptr %clk1035, align 4
  %arrayidx1036 = getelementptr ptr, ptr %798, i32 22
  %803 = ptrtoint ptr %arrayidx1036 to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load ptr, ptr %arrayidx1036, align 4
  %clk1037 = getelementptr inbounds %struct.clk_hw, ptr %804, i32 0, i32 1
  %805 = ptrtoint ptr %clk1037 to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %clk1037, align 4
  %call1038 = tail call i32 @clk_set_parent(ptr noundef %802, ptr noundef %806) #4
  %807 = load ptr, ptr @hws, align 4
  %arrayidx1039 = getelementptr ptr, ptr %807, i32 53
  %808 = ptrtoint ptr %arrayidx1039 to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %arrayidx1039, align 4
  %clk1040 = getelementptr inbounds %struct.clk_hw, ptr %809, i32 0, i32 1
  %810 = ptrtoint ptr %clk1040 to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %clk1040, align 4
  %arrayidx1041 = getelementptr ptr, ptr %807, i32 5
  %812 = ptrtoint ptr %arrayidx1041 to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %arrayidx1041, align 4
  %clk1042 = getelementptr inbounds %struct.clk_hw, ptr %813, i32 0, i32 1
  %814 = ptrtoint ptr %clk1042 to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %clk1042, align 4
  %call1043 = tail call i32 @clk_set_parent(ptr noundef %811, ptr noundef %815) #4
  %816 = load ptr, ptr @hws, align 4
  %arrayidx1044 = getelementptr ptr, ptr %816, i32 61
  %817 = ptrtoint ptr %arrayidx1044 to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load ptr, ptr %arrayidx1044, align 4
  %clk1045 = getelementptr inbounds %struct.clk_hw, ptr %818, i32 0, i32 1
  %819 = ptrtoint ptr %clk1045 to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %clk1045, align 4
  %arrayidx1046 = getelementptr ptr, ptr %816, i32 5
  %821 = ptrtoint ptr %arrayidx1046 to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load ptr, ptr %arrayidx1046, align 4
  %clk1047 = getelementptr inbounds %struct.clk_hw, ptr %822, i32 0, i32 1
  %823 = ptrtoint ptr %clk1047 to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load ptr, ptr %clk1047, align 4
  %call1048 = tail call i32 @clk_set_parent(ptr noundef %820, ptr noundef %824) #4
  tail call void @imx_register_uart_clocks(i32 noundef 2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end948, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_obtain_fixed_clk_hw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pllv3(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_gate_exclusive(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pfd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_busy_mux(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_busy_divider(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_mmdc_mask_handshake(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_check_clk_hws(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_register_uart_clocks(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_gate2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 339)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 339)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !245, !247, !249, !251, !252, !254, !256, !258, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !536, !537, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672}
!llvm.module.flags = !{!674, !675, !676, !677, !678, !679, !680, !681}
!llvm.ident = !{!682}

!0 = !{ptr @__of_table_imx6sx, !1, !"__of_table_imx6sx", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 553, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 127, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 133, i32 43}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 135, i32 59}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 136, i32 58}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 139, i32 62}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 140, i32 62}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 143, i32 62}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 144, i32 62}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 146, i32 43}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 151, i32 32}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 152, i32 32}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 153, i32 32}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 154, i32 32}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 155, i32 32}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 156, i32 32}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 157, i32 32}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 160, i32 61}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 161, i32 61}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 162, i32 61}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 163, i32 61}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 164, i32 61}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 165, i32 61}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 166, i32 61}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 168, i32 28}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 169, i32 28}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 170, i32 28}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 171, i32 28}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 172, i32 28}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 173, i32 28}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 174, i32 28}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 185, i32 34}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 186, i32 34}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 187, i32 34}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 188, i32 34}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 189, i32 34}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 190, i32 34}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 191, i32 34}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 199, i32 28}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 200, i32 28}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 206, i32 33}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 207, i32 33}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 210, i32 53}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 211, i32 34}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 213, i32 56}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 213, i32 69}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 214, i32 56}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 214, i32 69}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 215, i32 56}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 216, i32 56}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 218, i32 29}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 221, i32 30}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 224, i32 35}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 226, i32 57}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 227, i32 29}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 230, i32 45}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 231, i32 45}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 232, i32 45}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 233, i32 45}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 234, i32 45}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 235, i32 45}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 236, i32 45}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 237, i32 45}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 240, i32 54}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 241, i32 54}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 242, i32 54}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 243, i32 54}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 244, i32 54}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 244, i32 67}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 245, i32 54}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 247, i32 35}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 249, i32 35}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 251, i32 35}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 253, i32 35}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 265, i32 39}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 266, i32 39}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 267, i32 39}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 268, i32 39}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 269, i32 39}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 270, i32 39}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 271, i32 39}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 272, i32 39}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 273, i32 39}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 274, i32 39}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 275, i32 39}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 276, i32 39}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 277, i32 39}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 278, i32 39}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 279, i32 39}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 280, i32 39}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 281, i32 39}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 282, i32 39}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 283, i32 39}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 284, i32 39}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 285, i32 39}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 286, i32 39}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 287, i32 39}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 288, i32 39}
!196 = !{ptr @.str.97, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 289, i32 39}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 290, i32 39}
!200 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 291, i32 39}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 292, i32 39}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 293, i32 39}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 294, i32 39}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 295, i32 39}
!210 = !{ptr @.str.104, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 296, i32 39}
!212 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 297, i32 39}
!214 = !{ptr @.str.106, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 298, i32 39}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 299, i32 39}
!218 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 300, i32 39}
!220 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 301, i32 39}
!222 = !{ptr @.str.110, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 302, i32 39}
!224 = !{ptr @.str.111, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 303, i32 39}
!226 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 305, i32 39}
!228 = !{ptr @.str.113, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 306, i32 39}
!230 = !{ptr @.str.114, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 307, i32 39}
!232 = !{ptr @.str.115, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 308, i32 39}
!234 = !{ptr @.str.116, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 309, i32 39}
!236 = !{ptr @.str.117, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 310, i32 39}
!238 = !{ptr @.str.118, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 313, i32 39}
!240 = !{ptr @.str.119, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 314, i32 39}
!242 = !{ptr @.str.120, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 315, i32 39}
!244 = !{ptr @.str.121, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.122, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 316, i32 39}
!247 = !{ptr @.str.123, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 317, i32 39}
!249 = !{ptr @.str.124, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 318, i32 39}
!251 = !{ptr @.str.125, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.126, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 319, i32 39}
!254 = !{ptr @.str.127, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 320, i32 39}
!256 = !{ptr @.str.128, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 321, i32 39}
!258 = !{ptr @.str.129, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.130, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 322, i32 39}
!261 = !{ptr @.str.131, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 323, i32 39}
!263 = !{ptr @.str.132, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 324, i32 39}
!265 = !{ptr @.str.133, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 325, i32 39}
!267 = !{ptr @.str.134, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 326, i32 39}
!269 = !{ptr @.str.135, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 327, i32 39}
!271 = !{ptr @.str.136, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 328, i32 39}
!273 = !{ptr @.str.137, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 329, i32 39}
!275 = !{ptr @.str.138, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 330, i32 39}
!277 = !{ptr @.str.139, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 331, i32 39}
!279 = !{ptr @.str.140, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 332, i32 39}
!281 = !{ptr @.str.141, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 333, i32 39}
!283 = !{ptr @.str.142, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 334, i32 39}
!285 = !{ptr @.str.143, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 335, i32 39}
!287 = !{ptr @.str.144, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 336, i32 39}
!289 = !{ptr @.str.145, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 337, i32 39}
!291 = !{ptr @.str.146, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 338, i32 39}
!293 = !{ptr @.str.147, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 339, i32 39}
!295 = !{ptr @.str.148, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 340, i32 39}
!297 = !{ptr @.str.149, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 341, i32 39}
!299 = !{ptr @.str.150, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 342, i32 39}
!301 = !{ptr @.str.151, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 343, i32 39}
!303 = !{ptr @.str.152, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 344, i32 39}
!305 = !{ptr @.str.153, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 345, i32 39}
!307 = !{ptr @.str.154, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 346, i32 39}
!309 = !{ptr @.str.155, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 349, i32 39}
!311 = !{ptr @.str.156, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 350, i32 39}
!313 = !{ptr @.str.157, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 351, i32 39}
!315 = !{ptr @.str.158, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 352, i32 39}
!317 = !{ptr @.str.159, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 354, i32 63}
!319 = !{ptr @.str.160, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 355, i32 63}
!321 = !{ptr @.str.161, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 356, i32 63}
!323 = !{ptr @.str.162, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 357, i32 63}
!325 = !{ptr @.str.163, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 360, i32 53}
!327 = !{ptr @.str.164, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 361, i32 53}
!329 = !{ptr @.str.165, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 363, i32 57}
!331 = !{ptr @.str.166, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 365, i32 57}
!333 = !{ptr @.str.167, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 370, i32 33}
!335 = !{ptr @.str.168, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 371, i32 33}
!337 = !{ptr @.str.169, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 372, i32 33}
!339 = !{ptr @.str.170, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @.str.171, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 373, i32 33}
!342 = !{ptr @.str.172, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 374, i32 33}
!344 = !{ptr @.str.173, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 375, i32 33}
!346 = !{ptr @.str.174, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 376, i32 33}
!348 = !{ptr @.str.175, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 377, i32 33}
!350 = !{ptr @.str.176, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 378, i32 33}
!352 = !{ptr @.str.177, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 379, i32 33}
!354 = !{ptr @.str.178, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 380, i32 33}
!356 = !{ptr @.str.179, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 381, i32 33}
!358 = !{ptr @.str.180, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 382, i32 33}
!360 = !{ptr @.str.181, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 383, i32 33}
!362 = !{ptr @.str.182, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 384, i32 33}
!364 = !{ptr @.str.183, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 387, i32 33}
!366 = !{ptr @.str.184, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 388, i32 33}
!368 = !{ptr @.str.185, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 389, i32 33}
!370 = !{ptr @.str.186, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 390, i32 33}
!372 = !{ptr @.str.187, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 391, i32 33}
!374 = !{ptr @.str.188, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 392, i32 33}
!376 = !{ptr @.str.189, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 393, i32 33}
!378 = !{ptr @.str.190, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 394, i32 33}
!380 = !{ptr @.str.191, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 395, i32 33}
!382 = !{ptr @.str.192, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 396, i32 33}
!384 = !{ptr @.str.193, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 397, i32 33}
!386 = !{ptr @.str.194, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 398, i32 33}
!388 = !{ptr @.str.195, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 399, i32 33}
!390 = !{ptr @.str.196, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 400, i32 33}
!392 = !{ptr @.str.197, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 401, i32 33}
!394 = !{ptr @.str.198, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 402, i32 33}
!396 = !{ptr @.str.199, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 405, i32 33}
!398 = !{ptr @.str.200, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 406, i32 33}
!400 = !{ptr @.str.201, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 407, i32 33}
!402 = !{ptr @.str.202, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 408, i32 33}
!404 = !{ptr @.str.203, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 409, i32 33}
!406 = !{ptr @.str.204, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 410, i32 33}
!408 = !{ptr @.str.205, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 411, i32 33}
!410 = !{ptr @.str.206, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 412, i32 33}
!412 = !{ptr @.str.207, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 413, i32 33}
!414 = !{ptr @.str.208, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 414, i32 33}
!416 = !{ptr @.str.209, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 415, i32 33}
!418 = !{ptr @.str.210, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 416, i32 33}
!420 = !{ptr @.str.211, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 419, i32 33}
!422 = !{ptr @.str.212, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 420, i32 33}
!424 = !{ptr @.str.213, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 421, i32 33}
!426 = !{ptr @.str.214, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 422, i32 33}
!428 = !{ptr @.str.215, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 423, i32 33}
!430 = !{ptr @.str.216, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 424, i32 33}
!432 = !{ptr @.str.217, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 425, i32 33}
!434 = !{ptr @.str.218, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 426, i32 33}
!436 = !{ptr @.str.219, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 427, i32 33}
!438 = !{ptr @.str.220, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 428, i32 33}
!440 = !{ptr @.str.221, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 429, i32 33}
!442 = !{ptr @.str.222, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 430, i32 33}
!444 = !{ptr @.str.223, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 431, i32 33}
!446 = !{ptr @.str.224, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 434, i32 33}
!448 = !{ptr @.str.225, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 435, i32 33}
!450 = !{ptr @.str.226, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 436, i32 33}
!452 = !{ptr @.str.227, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 437, i32 33}
!454 = !{ptr @.str.228, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 438, i32 33}
!456 = !{ptr @.str.229, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 439, i32 33}
!458 = !{ptr @.str.230, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 440, i32 33}
!460 = !{ptr @.str.231, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 441, i32 33}
!462 = !{ptr @.str.232, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 442, i32 33}
!464 = !{ptr @.str.233, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 443, i32 33}
!466 = !{ptr @.str.234, !465, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @.str.235, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 444, i32 33}
!469 = !{ptr @.str.236, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 445, i32 33}
!471 = !{ptr @.str.237, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 448, i32 33}
!473 = !{ptr @.str.238, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 449, i32 33}
!475 = !{ptr @.str.239, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 450, i32 33}
!477 = !{ptr @.str.240, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 451, i32 33}
!479 = !{ptr @.str.241, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 452, i32 33}
!481 = !{ptr @.str.242, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 453, i32 33}
!483 = !{ptr @.str.243, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 454, i32 33}
!485 = !{ptr @.str.244, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 455, i32 33}
!487 = !{ptr @.str.245, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 456, i32 33}
!489 = !{ptr @.str.246, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 457, i32 33}
!491 = !{ptr @.str.247, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 458, i32 33}
!493 = !{ptr @.str.248, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 459, i32 33}
!495 = !{ptr @.str.249, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 460, i32 33}
!497 = !{ptr @.str.250, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 461, i32 33}
!499 = !{ptr @.str.251, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 462, i32 33}
!501 = !{ptr @.str.252, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 463, i32 33}
!503 = !{ptr @.str.253, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 464, i32 33}
!505 = !{ptr @.str.254, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 465, i32 33}
!507 = !{ptr @.str.255, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 468, i32 33}
!509 = !{ptr @.str.256, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 469, i32 33}
!511 = !{ptr @.str.257, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 470, i32 33}
!513 = !{ptr @.str.258, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 473, i32 33}
!515 = !{ptr @.str.259, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 474, i32 33}
!517 = !{ptr @.str.260, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 475, i32 33}
!519 = !{ptr @.str.261, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 476, i32 33}
!521 = !{ptr @.str.262, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 477, i32 33}
!523 = !{ptr @.str.263, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 478, i32 33}
!525 = !{ptr @.str.264, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 479, i32 33}
!527 = !{ptr @.str.265, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 480, i32 33}
!529 = !{ptr @.str.266, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 482, i32 33}
!531 = !{ptr @.str.267, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 483, i32 33}
!533 = !{ptr @.str.268, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 507, i32 3}
!535 = !{ptr @.str.269, !534, !"<string literal>", i1 false, i1 false}
!536 = !{ptr @imx6sx_clocks_init._entry, !534, !"_entry", i1 false, i1 false}
!537 = !{ptr @imx6sx_clocks_init._entry_ptr, !534, !"_entry_ptr", i1 false, i1 false}
!538 = !{ptr @clk_hw_data, !539, !"clk_hw_data", i1 false, i1 false}
!539 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 86, i32 36}
!540 = !{ptr @hws, !541, !"hws", i1 false, i1 false}
!541 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 85, i32 24}
!542 = !{ptr @pll_bypass_src_sels, !543, !"pll_bypass_src_sels", i1 false, i1 false}
!543 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 76, i32 20}
!544 = !{ptr @pll1_bypass_sels, !545, !"pll1_bypass_sels", i1 false, i1 false}
!545 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 77, i32 20}
!546 = !{ptr @pll2_bypass_sels, !547, !"pll2_bypass_sels", i1 false, i1 false}
!547 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 78, i32 20}
!548 = !{ptr @pll3_bypass_sels, !549, !"pll3_bypass_sels", i1 false, i1 false}
!549 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 79, i32 20}
!550 = !{ptr @pll4_bypass_sels, !551, !"pll4_bypass_sels", i1 false, i1 false}
!551 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 80, i32 20}
!552 = !{ptr @pll5_bypass_sels, !553, !"pll5_bypass_sels", i1 false, i1 false}
!553 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 81, i32 20}
!554 = !{ptr @pll6_bypass_sels, !555, !"pll6_bypass_sels", i1 false, i1 false}
!555 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 82, i32 20}
!556 = !{ptr @pll7_bypass_sels, !557, !"pll7_bypass_sels", i1 false, i1 false}
!557 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 83, i32 20}
!558 = !{ptr @clk_enet_ref_table, !559, !"clk_enet_ref_table", i1 false, i1 false}
!559 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 88, i32 35}
!560 = !{ptr @post_div_table, !561, !"post_div_table", i1 false, i1 false}
!561 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 96, i32 35}
!562 = !{ptr @video_div_table, !563, !"video_div_table", i1 false, i1 false}
!563 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 103, i32 35}
!564 = !{ptr @lvds_sels, !565, !"lvds_sels", i1 false, i1 false}
!565 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 72, i32 20}
!566 = !{ptr @step_sels, !567, !"step_sels", i1 false, i1 false}
!567 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 21, i32 20}
!568 = !{ptr @pll1_sw_sels, !569, !"pll1_sw_sels", i1 false, i1 false}
!569 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 22, i32 20}
!570 = !{ptr @ocram_sels, !571, !"ocram_sels", i1 false, i1 false}
!571 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 29, i32 20}
!572 = !{ptr @periph_pre_sels, !573, !"periph_pre_sels", i1 false, i1 false}
!573 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 23, i32 20}
!574 = !{ptr @periph2_pre_sels, !575, !"periph2_pre_sels", i1 false, i1 false}
!575 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 24, i32 20}
!576 = !{ptr @periph_clk2_sels, !577, !"periph_clk2_sels", i1 false, i1 false}
!577 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 25, i32 20}
!578 = !{ptr @periph2_clk2_sels, !579, !"periph2_clk2_sels", i1 false, i1 false}
!579 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 26, i32 20}
!580 = !{ptr @.str.270, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 37, i32 40}
!582 = !{ptr @pcie_axi_sels, !583, !"pcie_axi_sels", i1 false, i1 false}
!583 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 37, i32 20}
!584 = !{ptr @gpu_axi_sels, !585, !"gpu_axi_sels", i1 false, i1 false}
!585 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 31, i32 20}
!586 = !{ptr @gpu_core_sels, !587, !"gpu_core_sels", i1 false, i1 false}
!587 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 32, i32 20}
!588 = !{ptr @eim_slow_sels, !589, !"eim_slow_sels", i1 false, i1 false}
!589 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 50, i32 20}
!590 = !{ptr @usdhc_sels, !591, !"usdhc_sels", i1 false, i1 false}
!591 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 41, i32 20}
!592 = !{ptr @ssi_sels, !593, !"ssi_sels", i1 false, i1 false}
!593 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 38, i32 20}
!594 = !{ptr @qspi1_sels, !595, !"qspi1_sels", i1 false, i1 false}
!595 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 39, i32 20}
!596 = !{ptr @perclk_sels, !597, !"perclk_sels", i1 false, i1 false}
!597 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 40, i32 20}
!598 = !{ptr @vid_sels, !599, !"vid_sels", i1 false, i1 false}
!599 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 42, i32 20}
!600 = !{ptr @audio_sels, !601, !"audio_sels", i1 false, i1 false}
!601 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 30, i32 20}
!602 = !{ptr @can_sels, !603, !"can_sels", i1 false, i1 false}
!603 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 43, i32 20}
!604 = !{ptr @uart_sels, !605, !"uart_sels", i1 false, i1 false}
!605 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 44, i32 20}
!606 = !{ptr @qspi2_sels, !607, !"qspi2_sels", i1 false, i1 false}
!607 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 45, i32 20}
!608 = !{ptr @enet_pre_sels, !609, !"enet_pre_sels", i1 false, i1 false}
!609 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 46, i32 20}
!610 = !{ptr @.str.271, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 47, i32 83}
!612 = !{ptr @enet_sels, !613, !"enet_sels", i1 false, i1 false}
!613 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 47, i32 20}
!614 = !{ptr @m4_pre_sels, !615, !"m4_pre_sels", i1 false, i1 false}
!615 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 48, i32 20}
!616 = !{ptr @m4_sels, !617, !"m4_sels", i1 false, i1 false}
!617 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 49, i32 20}
!618 = !{ptr @ecspi_sels, !619, !"ecspi_sels", i1 false, i1 false}
!619 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 51, i32 20}
!620 = !{ptr @lcdif2_pre_sels, !621, !"lcdif2_pre_sels", i1 false, i1 false}
!621 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 54, i32 20}
!622 = !{ptr @lcdif2_sels, !623, !"lcdif2_sels", i1 false, i1 false}
!623 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 55, i32 20}
!624 = !{ptr @display_sels, !625, !"display_sels", i1 false, i1 false}
!625 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 56, i32 20}
!626 = !{ptr @csi_sels, !627, !"csi_sels", i1 false, i1 false}
!627 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 57, i32 20}
!628 = !{ptr @cko1_sels, !629, !"cko1_sels", i1 false, i1 false}
!629 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 58, i32 20}
!630 = !{ptr @.str.272, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 64, i32 56}
!632 = !{ptr @.str.273, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 65, i32 2}
!634 = !{ptr @.str.274, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 65, i32 35}
!636 = !{ptr @.str.275, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 65, i32 50}
!638 = !{ptr @cko2_sels, !639, !"cko2_sels", i1 false, i1 false}
!639 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 63, i32 20}
!640 = !{ptr @cko_sels, !641, !"cko_sels", i1 false, i1 false}
!641 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 71, i32 20}
!642 = !{ptr @ldb_di1_div_sels, !643, !"ldb_di1_div_sels", i1 false, i1 false}
!643 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 34, i32 20}
!644 = !{ptr @ldb_di0_div_sels, !645, !"ldb_di0_div_sels", i1 false, i1 false}
!645 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 33, i32 20}
!646 = !{ptr @ldb_di1_sels, !647, !"ldb_di1_sels", i1 false, i1 false}
!647 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 36, i32 20}
!648 = !{ptr @ldb_di0_sels, !649, !"ldb_di0_sels", i1 false, i1 false}
!649 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 35, i32 20}
!650 = !{ptr @lcdif1_pre_sels, !651, !"lcdif1_pre_sels", i1 false, i1 false}
!651 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 52, i32 20}
!652 = !{ptr @lcdif1_sels, !653, !"lcdif1_sels", i1 false, i1 false}
!653 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 53, i32 20}
!654 = !{ptr @periph_sels, !655, !"periph_sels", i1 false, i1 false}
!655 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 27, i32 20}
!656 = !{ptr @periph2_sels, !657, !"periph2_sels", i1 false, i1 false}
!657 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 28, i32 20}
!658 = !{ptr @share_count_asrc, !659, !"share_count_asrc", i1 false, i1 false}
!659 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 111, i32 12}
!660 = !{ptr @share_count_esai, !661, !"share_count_esai", i1 false, i1 false}
!661 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 113, i32 12}
!662 = !{ptr @share_count_audio, !663, !"share_count_audio", i1 false, i1 false}
!663 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 112, i32 12}
!664 = !{ptr @share_count_ssi1, !665, !"share_count_ssi1", i1 false, i1 false}
!665 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 114, i32 12}
!666 = !{ptr @share_count_ssi2, !667, !"share_count_ssi2", i1 false, i1 false}
!667 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 115, i32 12}
!668 = !{ptr @share_count_ssi3, !669, !"share_count_ssi3", i1 false, i1 false}
!669 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 116, i32 12}
!670 = !{ptr @share_count_sai1, !671, !"share_count_sai1", i1 false, i1 false}
!671 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 117, i32 12}
!672 = !{ptr @share_count_sai2, !673, !"share_count_sai2", i1 false, i1 false}
!673 = !{!"../drivers/clk/imx/clk-imx6sx.c", i32 118, i32 12}
!674 = !{i32 1, !"wchar_size", i32 2}
!675 = !{i32 1, !"min_enum_size", i32 4}
!676 = !{i32 8, !"branch-target-enforcement", i32 0}
!677 = !{i32 8, !"sign-return-address", i32 0}
!678 = !{i32 8, !"sign-return-address-all", i32 0}
!679 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!680 = !{i32 7, !"uwtable", i32 1}
!681 = !{i32 7, !"frame-pointer", i32 2}
!682 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!683 = !{!"branch_weights", i32 1, i32 2000}
