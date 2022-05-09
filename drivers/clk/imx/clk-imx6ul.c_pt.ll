; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-imx6ul.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx6ul.c"
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
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_imx6ul = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6ul_clocks_init }, section "__clk_of_table", align 4
@clk_hw_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/clk/imx/clk-imx6ul.c\00", [35 x i8] zeroinitializer }, align 32
@hws = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ckil\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osc\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipp_di0\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipp_di1\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,imx6ul-anatop\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll1_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@pll_bypass_src_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.1], [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll2_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll3_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll4_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll5_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll6_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll7_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll1\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll2\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll3\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll4\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll5\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll6\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll7\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll1_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll1_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.14, ptr @.str.7], [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll2_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll2_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.15, ptr @.str.8], [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll3_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll3_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.16, ptr @.str.9], [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll4_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll4_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.17, ptr @.str.10], [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll5_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll5_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.18, ptr @.str.11], [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll6_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll6_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.19, ptr @.str.12], [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll7_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll7_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.20, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll1_sys\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll2_bus\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll3_usb_otg\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll4_audio\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll5_video\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll6_enet\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll7_usb_host\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbphy1\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbphy2\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbphy1_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbphy2_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll2_pfd0_352m\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll2_pfd1_594m\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll2_pfd2_396m\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll2_pfd3_594m\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll3_pfd0_720m\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll3_pfd1_540m\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll3_pfd2_508m\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll3_pfd3_454m\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_ref\00", [23 x i8] zeroinitializer }, align 32
@clk_enet_ref_table = internal constant { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 20 }, %struct.clk_div_table { i32 1, i32 10 }, %struct.clk_div_table { i32 2, i32 5 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"enet2_ref\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enet_ref_125m\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enet_ptp_ref\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_ptp\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll4_post_div\00", [18 x i8] zeroinitializer }, align 32
@post_div_table = internal constant { [4 x %struct.clk_div_table], [32 x i8] } { [4 x %struct.clk_div_table] [%struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll4_audio_div\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll5_post_div\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll5_video_div\00", [17 x i8] zeroinitializer }, align 32
@video_div_table = internal constant { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll2_198m\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll3_80m\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll3_60m\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpt_3m\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ca7_secondary_sel\00", [46 x i8] zeroinitializer }, align 32
@ca7_secondary_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.41, ptr @.str.29], [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"step\00", [27 x i8] zeroinitializer }, align 32
@step_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.60], [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll1_sw\00", [24 x i8] zeroinitializer }, align 32
@pll1_sw_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.28, ptr @.str.61], [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"axi_alt_sel\00", [20 x i8] zeroinitializer }, align 32
@axi_alt_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.41, ptr @.str.44], [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axi_sel\00", [24 x i8] zeroinitializer }, align 32
@axi_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.102, ptr @.str.63], [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"periph_pre\00", [21 x i8] zeroinitializer }, align 32
@periph_pre_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.29, ptr @.str.41, ptr @.str.39, ptr @.str.56], [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"periph2_pre\00", [20 x i8] zeroinitializer }, align 32
@periph2_pre_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.29, ptr @.str.41, ptr @.str.39, ptr @.str.53], [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"periph_clk2_sel\00", [16 x i8] zeroinitializer }, align 32
@periph_clk2_sels = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.30, ptr @.str.3, ptr @.str.8], [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"periph2_clk2_sel\00", [47 x i8] zeroinitializer }, align 32
@periph2_clk2_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eim_slow_sel\00", [19 x i8] zeroinitializer }, align 32
@eim_slow_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.187, ptr @.str.30, ptr @.str.41, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpmi_sel\00", [23 x i8] zeroinitializer }, align 32
@gpmi_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.41, ptr @.str.39], [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bch_sel\00", [24 x i8] zeroinitializer }, align 32
@bch_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.41, ptr @.str.39], [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhc2_sel\00", [21 x i8] zeroinitializer }, align 32
@usdhc_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.41, ptr @.str.39], [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhc1_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai3_sel\00", [23 x i8] zeroinitializer }, align 32
@sai_sels = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.45, ptr @.str.55, ptr @.str.53], [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai2_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai1_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qspi1_sel\00", [22 x i8] zeroinitializer }, align 32
@qspi1_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.30, ptr @.str.39, ptr @.str.41, ptr @.str.29, ptr @.str.46, ptr @.str.45], [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"perclk_sel\00", [21 x i8] zeroinitializer }, align 32
@perclk_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.106, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"can_sel\00", [24 x i8] zeroinitializer }, align 32
@can_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.58, ptr @.str.3, ptr @.str.57, ptr @.str.1], [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"esai_sel\00", [23 x i8] zeroinitializer }, align 32
@esai_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.53, ptr @.str.45, ptr @.str.55, ptr @.str.30], [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_sel\00", [23 x i8] zeroinitializer }, align 32
@uart_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.57, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enfc_sel\00", [23 x i8] zeroinitializer }, align 32
@enfc_sels = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.39, ptr @.str.29, ptr @.str.30, ptr @.str.41, ptr @.str.46, ptr @.str.1, ptr @.str.1, ptr @.str.1], [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldb_di0_sel\00", [20 x i8] zeroinitializer }, align 32
@ldb_di0_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.55, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.40, ptr @.str.46], [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_sel\00", [22 x i8] zeroinitializer }, align 32
@spdif_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.53, ptr @.str.45, ptr @.str.55, ptr @.str.30], [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sim_pre_sel\00", [20 x i8] zeroinitializer }, align 32
@sim_pre_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.55, ptr @.str.39, ptr @.str.41, ptr @.str.45], [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sim_sel\00", [24 x i8] zeroinitializer }, align 32
@sim_sels = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.131, ptr @.str.4, ptr @.str.5, ptr @.str.93, ptr @.str.94], [44 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"epdc_pre_sel\00", [19 x i8] zeroinitializer }, align 32
@epdc_pre_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.55, ptr @.str.39, ptr @.str.41, ptr @.str.45], [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"epdc_sel\00", [23 x i8] zeroinitializer }, align 32
@epdc_sels = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.132, ptr @.str.4, ptr @.str.5, ptr @.str.93, ptr @.str.94], [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ecspi_sel\00", [22 x i8] zeroinitializer }, align 32
@ecspi_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.58, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lcdif_pre_sel\00", [18 x i8] zeroinitializer }, align 32
@lcdif_pre_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.29, ptr @.str.46, ptr @.str.55, ptr @.str.39, ptr @.str.40, ptr @.str.44], [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcdif_sel\00", [22 x i8] zeroinitializer }, align 32
@lcdif_sels = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.108, ptr @.str.4, ptr @.str.5, ptr @.str.93, ptr @.str.94], [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"csi_sel\00", [24 x i8] zeroinitializer }, align 32
@csi_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.3, ptr @.str.41, ptr @.str.247, ptr @.str.44], [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldb_di0\00", [24 x i8] zeroinitializer }, align 32
@ldb_di0_div_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.98, ptr @.str.99], [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldb_di1\00", [24 x i8] zeroinitializer }, align 32
@ldb_di1_div_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.100, ptr @.str.101], [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cko1_sel\00", [23 x i8] zeroinitializer }, align 32
@cko1_sels = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.187, ptr @.str.248, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.196, ptr @.str.107, ptr @.str.106, ptr @.str.249, ptr @.str.2, ptr @.str.53], [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cko2_sel\00", [23 x i8] zeroinitializer }, align 32
@cko2_sels = internal global { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.230, ptr @.str.1, ptr @.str.1, ptr @.str.250, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.3, ptr @.str.1, ptr @.str.1, ptr @.str.231, ptr @.str.225, ptr @.str.227, ptr @.str.219, ptr @.str.1, ptr @.str.1, ptr @.str.251, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.252, ptr @.str.217, ptr @.str.1, ptr @.str.1], [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cko\00", [28 x i8] zeroinitializer }, align 32
@cko_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.243, ptr @.str.244], [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ldb_di0_div_3_5\00", [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ldb_di0_div_7\00", [18 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ldb_di1_div_3_5\00", [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ldb_di1_div_7\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"periph\00", [25 x i8] zeroinitializer }, align 32
@periph_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.65, ptr @.str.104], [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"periph2\00", [24 x i8] zeroinitializer }, align 32
@periph2_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.66, ptr @.str.105], [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"periph_clk2\00", [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"periph2_clk2\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lcdif_podf\00", [21 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lcdif_pred\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qspi1_podf\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"eim_slow_podf\00", [18 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"perclk\00", [25 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can_podf\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpmi_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bch_podf\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhc2_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhc1_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sai3_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sai3_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sai1_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sai1_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"esai_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"esai_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"enfc_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"enfc_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sai2_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sai2_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif_pred\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif_podf\00", [21 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sim_podf\00", [23 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"epdc_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ecspi_podf\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi_podf\00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cko1_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cko2_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arm\00", [28 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmdc_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"axi_podf\00", [23 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aips_tz1\00", [23 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aips_tz2\00", [23 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apbh_dma\00", [23 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"asrc_ipg\00", [23 x i8] zeroinitializer }, align 32
@share_count_asrc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"asrc_mem\00", [23 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"caam_mem\00", [23 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"caam_aclk\00", [22 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"caam_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dcp\00", [28 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"enet\00", [27 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_ahb\00", [23 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can1_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"can1_serial\00", [20 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can2_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"can2_serial\00", [20 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpt2_bus\00", [23 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpt2_serial\00", [20 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_ipg\00", [22 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart2_serial\00", [19 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aips_tz3\00", [23 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi1\00", [25 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi2\00", [25 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi3\00", [25 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi4\00", [25 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc2\00", [27 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3_ipg\00", [22 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart3_serial\00", [19 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"epit1\00", [26 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"epit2\00", [26 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adc1\00", [27 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpt1_bus\00", [23 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpt1_serial\00", [20 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart4_ipg\00", [22 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart4_serial\00", [19 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"esai_extal\00", [21 x i8] zeroinitializer }, align 32
@share_count_esai = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.178 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"esai_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"esai_mem\00", [23 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocotp\00", [26 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iomuxc\00", [25 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcdif_apb\00", [22 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pxp\00", [28 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"csi\00", [28 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart5_ipg\00", [22 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart5_serial\00", [19 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"epdc_aclk\00", [22 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"epdc_pix\00", [23 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart6_ipg\00", [22 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart6_serial\00", [19 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcdif_pix\00", [22 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qspi1\00", [26 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wdog1\00", [26 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmdc_p0_fast\00", [19 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmdc_p0_ipg\00", [20 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmdc_p1_ipg\00", [20 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"per_bch\00", [24 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpmi_bch_apb\00", [19 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpmi_bch\00", [23 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpmi_io\00", [24 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpmi_apb\00", [23 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rom\00", [28 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdma\00", [27 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kpp\00", [28 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wdog2\00", [26 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spba\00", [27 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@share_count_audio = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.218 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai3\00", [27 x i8] zeroinitializer }, align 32
@share_count_sai3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.220 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai3_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_ipg\00", [22 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart1_serial\00", [19 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart7_ipg\00", [22 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart7_serial\00", [19 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai1\00", [27 x i8] zeroinitializer }, align 32
@share_count_sai1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.226 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai1_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai2\00", [27 x i8] zeroinitializer }, align 32
@share_count_sai2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.228 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai2_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usboh3\00", [25 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc1\00", [25 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc2\00", [25 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sim1\00", [27 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sim2\00", [27 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eim\00", [28 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm8\00", [27 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart8_ipg\00", [22 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart8_serial\00", [19 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wdog3\00", [26 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c4\00", [27 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm5\00", [27 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm6\00", [27 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm7\00", [27 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cko1\00", [27 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cko2\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.245 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl,imx6ull\00", [20 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx6ul\00", [21 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll3_120m\00", [22 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"enfc\00", [27 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipg_per\00", [24 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ecspi_root\00", [21 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can_root\00", [23 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uart_serial\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.253 = private unnamed_addr constant [12 x i8] c"clk_hw_data\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 72, i32 36 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 121, i32 6 }
@___asan_gen_.259 = private unnamed_addr constant [4 x i8] c"hws\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 71, i32 24 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 127, i32 43 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 129, i32 59 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 130, i32 58 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 133, i32 62 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 134, i32 62 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 136, i32 43 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 141, i32 32 }
@___asan_gen_.283 = private unnamed_addr constant [20 x i8] c"pll_bypass_src_sels\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 20, i32 20 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 142, i32 32 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 143, i32 32 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 144, i32 32 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 145, i32 32 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 146, i32 32 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 147, i32 32 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 149, i32 58 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 150, i32 61 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 151, i32 58 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 152, i32 57 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 153, i32 57 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 154, i32 59 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 155, i32 58 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 157, i32 28 }
@___asan_gen_.328 = private unnamed_addr constant [17 x i8] c"pll1_bypass_sels\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 21, i32 20 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 158, i32 28 }
@___asan_gen_.334 = private unnamed_addr constant [17 x i8] c"pll2_bypass_sels\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 22, i32 20 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 159, i32 28 }
@___asan_gen_.340 = private unnamed_addr constant [17 x i8] c"pll3_bypass_sels\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 23, i32 20 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 160, i32 28 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"pll4_bypass_sels\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 24, i32 20 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 161, i32 28 }
@___asan_gen_.352 = private unnamed_addr constant [17 x i8] c"pll5_bypass_sels\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 25, i32 20 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 162, i32 28 }
@___asan_gen_.358 = private unnamed_addr constant [17 x i8] c"pll6_bypass_sels\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 26, i32 20 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 163, i32 28 }
@___asan_gen_.364 = private unnamed_addr constant [17 x i8] c"pll7_bypass_sels\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 27, i32 20 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 174, i32 53 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 175, i32 29 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 176, i32 33 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 177, i32 31 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 178, i32 31 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 179, i32 30 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 180, i32 34 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 188, i32 28 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 189, i32 28 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 195, i32 33 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 196, i32 33 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 199, i32 45 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 200, i32 45 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 201, i32 45 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 202, i32 45 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 203, i32 45 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 204, i32 45 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 205, i32 45 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 206, i32 45 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 208, i32 29 }
@___asan_gen_.427 = private unnamed_addr constant [19 x i8] c"clk_enet_ref_table\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 74, i32 35 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 210, i32 30 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 213, i32 35 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 214, i32 57 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 215, i32 29 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 217, i32 35 }
@___asan_gen_.445 = private unnamed_addr constant [15 x i8] c"post_div_table\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 82, i32 35 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 219, i32 35 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 221, i32 35 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 223, i32 35 }
@___asan_gen_.457 = private unnamed_addr constant [16 x i8] c"video_div_table\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 89, i32 35 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 227, i32 54 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 228, i32 54 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 229, i32 54 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 230, i32 54 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 236, i32 36 }
@___asan_gen_.475 = private unnamed_addr constant [19 x i8] c"ca7_secondary_sels\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 28, i32 20 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 237, i32 28 }
@___asan_gen_.481 = private unnamed_addr constant [10 x i8] c"step_sels\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 29, i32 20 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 238, i32 30 }
@___asan_gen_.487 = private unnamed_addr constant [13 x i8] c"pll1_sw_sels\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 30, i32 20 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 239, i32 34 }
@___asan_gen_.493 = private unnamed_addr constant [13 x i8] c"axi_alt_sels\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 31, i32 20 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 240, i32 30 }
@___asan_gen_.499 = private unnamed_addr constant [9 x i8] c"axi_sels\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 32, i32 20 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 241, i32 33 }
@___asan_gen_.505 = private unnamed_addr constant [16 x i8] c"periph_pre_sels\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 33, i32 20 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 242, i32 34 }
@___asan_gen_.511 = private unnamed_addr constant [17 x i8] c"periph2_pre_sels\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 34, i32 20 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 243, i32 37 }
@___asan_gen_.517 = private unnamed_addr constant [17 x i8] c"periph_clk2_sels\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 35, i32 20 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 244, i32 37 }
@___asan_gen_.523 = private unnamed_addr constant [18 x i8] c"periph2_clk2_sels\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 36, i32 20 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 245, i32 35 }
@___asan_gen_.529 = private unnamed_addr constant [14 x i8] c"eim_slow_sels\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 42, i32 20 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 246, i32 31 }
@___asan_gen_.535 = private unnamed_addr constant [10 x i8] c"gpmi_sels\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 41, i32 20 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 247, i32 30 }
@___asan_gen_.541 = private unnamed_addr constant [9 x i8] c"bch_sels\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 40, i32 20 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 248, i32 33 }
@___asan_gen_.547 = private unnamed_addr constant [11 x i8] c"usdhc_sels\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 39, i32 20 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 249, i32 33 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 250, i32 31 }
@___asan_gen_.556 = private unnamed_addr constant [9 x i8] c"sai_sels\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 44, i32 20 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 251, i32 37 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 252, i32 31 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 253, i32 32 }
@___asan_gen_.568 = private unnamed_addr constant [11 x i8] c"qspi1_sels\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 50, i32 20 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 254, i32 33 }
@___asan_gen_.574 = private unnamed_addr constant [12 x i8] c"perclk_sels\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 55, i32 20 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 255, i32 30 }
@___asan_gen_.580 = private unnamed_addr constant [9 x i8] c"can_sels\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 52, i32 20 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 257, i32 33 }
@___asan_gen_.586 = private unnamed_addr constant [10 x i8] c"esai_sels\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 61, i32 20 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 258, i32 31 }
@___asan_gen_.592 = private unnamed_addr constant [10 x i8] c"uart_sels\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 54, i32 20 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 259, i32 31 }
@___asan_gen_.598 = private unnamed_addr constant [10 x i8] c"enfc_sels\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 51, i32 20 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 260, i32 34 }
@___asan_gen_.604 = private unnamed_addr constant [13 x i8] c"ldb_di0_sels\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 47, i32 20 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 261, i32 32 }
@___asan_gen_.610 = private unnamed_addr constant [11 x i8] c"spdif_sels\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 43, i32 20 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 263, i32 33 }
@___asan_gen_.616 = private unnamed_addr constant [13 x i8] c"sim_pre_sels\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 46, i32 20 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 264, i32 30 }
@___asan_gen_.622 = private unnamed_addr constant [9 x i8] c"sim_sels\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 58, i32 20 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 266, i32 35 }
@___asan_gen_.628 = private unnamed_addr constant [14 x i8] c"epdc_pre_sels\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 60, i32 20 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 267, i32 31 }
@___asan_gen_.634 = private unnamed_addr constant [10 x i8] c"epdc_sels\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 62, i32 20 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 269, i32 32 }
@___asan_gen_.640 = private unnamed_addr constant [11 x i8] c"ecspi_sels\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 53, i32 20 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 270, i32 36 }
@___asan_gen_.646 = private unnamed_addr constant [15 x i8] c"lcdif_pre_sels\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 45, i32 20 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 271, i32 32 }
@___asan_gen_.652 = private unnamed_addr constant [11 x i8] c"lcdif_sels\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 56, i32 20 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 272, i32 31 }
@___asan_gen_.658 = private unnamed_addr constant [9 x i8] c"csi_sels\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 57, i32 20 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 274, i32 37 }
@___asan_gen_.664 = private unnamed_addr constant [17 x i8] c"ldb_di0_div_sels\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 48, i32 20 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 275, i32 37 }
@___asan_gen_.670 = private unnamed_addr constant [17 x i8] c"ldb_di1_div_sels\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 49, i32 20 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 277, i32 31 }
@___asan_gen_.676 = private unnamed_addr constant [10 x i8] c"cko1_sels\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 63, i32 20 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 278, i32 31 }
@___asan_gen_.682 = private unnamed_addr constant [10 x i8] c"cko2_sels\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 65, i32 20 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 279, i32 27 }
@___asan_gen_.688 = private unnamed_addr constant [9 x i8] c"cko_sels\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 69, i32 20 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 281, i32 60 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 282, i32 59 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 283, i32 60 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 284, i32 59 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 286, i32 48 }
@___asan_gen_.706 = private unnamed_addr constant [12 x i8] c"periph_sels\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 37, i32 20 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 287, i32 48 }
@___asan_gen_.712 = private unnamed_addr constant [13 x i8] c"periph2_sels\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 38, i32 20 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 289, i32 32 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 290, i32 33 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 291, i32 25 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 292, i32 31 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 293, i32 31 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 294, i32 34 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 295, i32 28 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 296, i32 29 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 297, i32 30 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 298, i32 29 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 299, i32 32 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 300, i32 32 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 301, i32 30 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 302, i32 30 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 303, i32 30 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 304, i32 30 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 305, i32 30 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 307, i32 32 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 308, i32 32 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 310, i32 30 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 311, i32 30 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 312, i32 30 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 313, i32 30 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 314, i32 31 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 315, i32 31 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 317, i32 30 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 319, i32 32 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 320, i32 31 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 322, i32 35 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 324, i32 30 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 325, i32 30 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 327, i32 49 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 328, i32 54 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 329, i32 53 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 333, i32 28 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 334, i32 28 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 335, i32 28 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 336, i32 29 }
@___asan_gen_.835 = private unnamed_addr constant [17 x i8] c"share_count_asrc\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 97, i32 12 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 337, i32 29 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 339, i32 30 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 340, i32 31 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 341, i32 30 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 343, i32 30 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 344, i32 27 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 345, i32 30 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 347, i32 29 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 348, i32 32 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 349, i32 29 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 350, i32 32 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 351, i32 29 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 352, i32 32 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 353, i32 30 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 354, i32 33 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 356, i32 29 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 357, i32 27 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 360, i32 28 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 361, i32 28 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 362, i32 28 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 363, i32 28 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 364, i32 26 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 365, i32 30 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 366, i32 33 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 367, i32 27 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 368, i32 27 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 369, i32 26 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 370, i32 29 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 371, i32 32 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 372, i32 30 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 373, i32 33 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 374, i32 27 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 375, i32 27 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 379, i32 33 }
@___asan_gen_.940 = private unnamed_addr constant [17 x i8] c"share_count_esai\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 102, i32 12 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 380, i32 31 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 381, i32 31 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 383, i32 26 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 384, i32 26 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 385, i32 26 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 386, i32 27 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 387, i32 28 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 388, i32 27 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 389, i32 30 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 390, i32 25 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 398, i32 25 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 399, i32 30 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 400, i32 33 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 405, i32 32 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 406, i32 31 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 408, i32 30 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 409, i32 33 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 410, i32 30 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 411, i32 27 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 412, i32 26 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 413, i32 27 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 414, i32 33 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 415, i32 32 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 416, i32 32 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 420, i32 28 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 421, i32 26 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 422, i32 26 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 423, i32 26 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 424, i32 26 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 425, i32 33 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 426, i32 29 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 427, i32 28 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 428, i32 29 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 431, i32 25 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 432, i32 26 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 433, i32 25 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 434, i32 27 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 435, i32 26 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 436, i32 27 }
@___asan_gen_.1063 = private unnamed_addr constant [18 x i8] c"share_count_audio\00", align 1
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 98, i32 12 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 437, i32 31 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 438, i32 26 }
@___asan_gen_.1072 = private unnamed_addr constant [17 x i8] c"share_count_sai3\00", align 1
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 101, i32 12 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 439, i32 29 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 440, i32 30 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 441, i32 33 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 442, i32 30 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 443, i32 33 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 444, i32 26 }
@___asan_gen_.1093 = private unnamed_addr constant [17 x i8] c"share_count_sai1\00", align 1
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 99, i32 12 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 445, i32 29 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 446, i32 26 }
@___asan_gen_.1102 = private unnamed_addr constant [17 x i8] c"share_count_sai2\00", align 1
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 100, i32 12 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 447, i32 29 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 450, i32 28 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 451, i32 28 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 452, i32 28 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 454, i32 27 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 455, i32 27 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 457, i32 25 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 458, i32 26 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 459, i32 30 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 460, i32 33 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 461, i32 27 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 462, i32 26 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 463, i32 26 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 464, i32 26 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 465, i32 26 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 468, i32 26 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 469, i32 26 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 111, i32 34 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 106, i32 34 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 57, i32 60 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 63, i32 88 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 64, i32 44 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 65, i32 91 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 67, i32 69 }
@___asan_gen_.1177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1178 = private constant [32 x i8] c"../drivers/clk/imx/clk-imx6ul.c\00", align 1
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1178, i32 68, i32 44 }
@llvm.compiler.used = appending global [310 x ptr] [ptr @__of_table_imx6ul, ptr @clk_hw_data, ptr @.str, ptr @hws, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pll_bypass_src_sels, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @pll1_bypass_sels, ptr @.str.22, ptr @pll2_bypass_sels, ptr @.str.23, ptr @pll3_bypass_sels, ptr @.str.24, ptr @pll4_bypass_sels, ptr @.str.25, ptr @pll5_bypass_sels, ptr @.str.26, ptr @pll6_bypass_sels, ptr @.str.27, ptr @pll7_bypass_sels, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @clk_enet_ref_table, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @post_div_table, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @video_div_table, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @ca7_secondary_sels, ptr @.str.61, ptr @step_sels, ptr @.str.62, ptr @pll1_sw_sels, ptr @.str.63, ptr @axi_alt_sels, ptr @.str.64, ptr @axi_sels, ptr @.str.65, ptr @periph_pre_sels, ptr @.str.66, ptr @periph2_pre_sels, ptr @.str.67, ptr @periph_clk2_sels, ptr @.str.68, ptr @periph2_clk2_sels, ptr @.str.69, ptr @eim_slow_sels, ptr @.str.70, ptr @gpmi_sels, ptr @.str.71, ptr @bch_sels, ptr @.str.72, ptr @usdhc_sels, ptr @.str.73, ptr @.str.74, ptr @sai_sels, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @qspi1_sels, ptr @.str.78, ptr @perclk_sels, ptr @.str.79, ptr @can_sels, ptr @.str.80, ptr @esai_sels, ptr @.str.81, ptr @uart_sels, ptr @.str.82, ptr @enfc_sels, ptr @.str.83, ptr @ldb_di0_sels, ptr @.str.84, ptr @spdif_sels, ptr @.str.85, ptr @sim_pre_sels, ptr @.str.86, ptr @sim_sels, ptr @.str.87, ptr @epdc_pre_sels, ptr @.str.88, ptr @epdc_sels, ptr @.str.89, ptr @ecspi_sels, ptr @.str.90, ptr @lcdif_pre_sels, ptr @.str.91, ptr @lcdif_sels, ptr @.str.92, ptr @csi_sels, ptr @.str.93, ptr @ldb_di0_div_sels, ptr @.str.94, ptr @ldb_di1_div_sels, ptr @.str.95, ptr @cko1_sels, ptr @.str.96, ptr @cko2_sels, ptr @.str.97, ptr @cko_sels, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @periph_sels, ptr @.str.103, ptr @periph2_sels, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @share_count_asrc, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @share_count_esai, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @share_count_audio, ptr @.str.218, ptr @.str.219, ptr @share_count_sai3, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @share_count_sai1, ptr @.str.226, ptr @.str.227, ptr @share_count_sai2, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252], section "llvm.metadata"
@0 = internal global [309 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_hw_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hws to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_bypass_src_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll1_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll2_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll3_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll4_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll5_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll6_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll7_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_enet_ref_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @post_div_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_div_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca7_secondary_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @step_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll1_sw_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_alt_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_pre_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph2_pre_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_clk2_sels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph2_clk2_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eim_slow_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhc_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sai_sels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi1_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perclk_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esai_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enfc_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldb_di0_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sim_pre_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sim_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epdc_pre_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epdc_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecspi_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcdif_pre_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcdif_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csi_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldb_di0_div_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldb_di1_div_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cko1_sels to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cko2_sels to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cko_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph2_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_asrc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_esai to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_audio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_sai3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_sai1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_sai2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx6ul_clocks_init(ptr noundef %ccm_node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1004) #6
  store ptr %call7.i.i, ptr @clk_hw_data, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !626

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 250, ptr %call7.i.i, align 8
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1
  store ptr %hws, ptr @hws, align 4
  %call.i = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #3
  %2 = load ptr, ptr @hws, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %2, align 4
  %call26 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %ccm_node, ptr noundef nonnull @.str.2) #3
  %4 = load ptr, ptr @hws, align 4
  %arrayidx27 = getelementptr ptr, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call26, ptr %arrayidx27, align 4
  %call28 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %ccm_node, ptr noundef nonnull @.str.3) #3
  %6 = load ptr, ptr @hws, align 4
  %arrayidx29 = getelementptr ptr, ptr %6, i32 3
  %7 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call28, ptr %arrayidx29, align 4
  %call30 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %ccm_node, ptr noundef nonnull @.str.4) #3
  %8 = load ptr, ptr @hws, align 4
  %arrayidx31 = getelementptr ptr, ptr %8, i32 217
  %9 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call30, ptr %arrayidx31, align 4
  %call32 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %ccm_node, ptr noundef nonnull @.str.5) #3
  %10 = load ptr, ptr @hws, align 4
  %arrayidx33 = getelementptr ptr, ptr %10, i32 218
  %11 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call32, ptr %arrayidx33, align 4
  %call34 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6) #3
  %call35 = tail call ptr @of_iomap(ptr noundef %call34, i32 noundef 0) #3
  tail call void @of_node_put(ptr noundef %call34) #3
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %do.end55, label %if.end24.if.end61_crit_edge, !prof !626

if.end24.if.end61_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

do.end55:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 139, i32 noundef 9, ptr noundef null) #3
  br label %if.end61

if.end61:                                         ; preds = %do.end55, %if.end24.if.end61_crit_edge
  %call.i1239 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %call35, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %12 = load ptr, ptr @hws, align 4
  %arrayidx70 = getelementptr ptr, ptr %12, i32 4
  %13 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i1239, ptr %arrayidx70, align 4
  %add.ptr71 = getelementptr i8, ptr %call35, i32 48
  %call.i1240 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr71, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %14 = load ptr, ptr @hws, align 4
  %arrayidx73 = getelementptr ptr, ptr %14, i32 5
  %15 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i1240, ptr %arrayidx73, align 4
  %add.ptr74 = getelementptr i8, ptr %call35, i32 16
  %call.i1241 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr74, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %16 = load ptr, ptr @hws, align 4
  %arrayidx76 = getelementptr ptr, ptr %16, i32 6
  %17 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i1241, ptr %arrayidx76, align 4
  %add.ptr77 = getelementptr i8, ptr %call35, i32 112
  %call.i1242 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr77, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %18 = load ptr, ptr @hws, align 4
  %arrayidx79 = getelementptr ptr, ptr %18, i32 7
  %19 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i1242, ptr %arrayidx79, align 4
  %add.ptr80 = getelementptr i8, ptr %call35, i32 160
  %call.i1243 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr80, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %20 = load ptr, ptr @hws, align 4
  %arrayidx82 = getelementptr ptr, ptr %20, i32 8
  %21 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i1243, ptr %arrayidx82, align 4
  %add.ptr83 = getelementptr i8, ptr %call35, i32 224
  %call.i1244 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr83, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %22 = load ptr, ptr @hws, align 4
  %arrayidx85 = getelementptr ptr, ptr %22, i32 9
  %23 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i1244, ptr %arrayidx85, align 4
  %add.ptr86 = getelementptr i8, ptr %call35, i32 32
  %call.i1245 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr86, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %24 = load ptr, ptr @hws, align 4
  %arrayidx88 = getelementptr ptr, ptr %24, i32 10
  %25 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i1245, ptr %arrayidx88, align 4
  %call90 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3, ptr noundef %call35, i32 noundef 127) #3
  %26 = load ptr, ptr @hws, align 4
  %arrayidx91 = getelementptr ptr, ptr %26, i32 11
  %27 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call90, ptr %arrayidx91, align 4
  %call93 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3, ptr noundef %add.ptr71, i32 noundef 1) #3
  %28 = load ptr, ptr @hws, align 4
  %arrayidx94 = getelementptr ptr, ptr %28, i32 12
  %29 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call93, ptr %arrayidx94, align 4
  %call96 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, ptr noundef %add.ptr74, i32 noundef 3) #3
  %30 = load ptr, ptr @hws, align 4
  %arrayidx97 = getelementptr ptr, ptr %30, i32 13
  %31 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call96, ptr %arrayidx97, align 4
  %call99 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, ptr noundef %add.ptr77, i32 noundef 127) #3
  %32 = load ptr, ptr @hws, align 4
  %arrayidx100 = getelementptr ptr, ptr %32, i32 14
  %33 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call99, ptr %arrayidx100, align 4
  %call102 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, ptr noundef %add.ptr80, i32 noundef 127) #3
  %34 = load ptr, ptr @hws, align 4
  %arrayidx103 = getelementptr ptr, ptr %34, i32 15
  %35 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call102, ptr %arrayidx103, align 4
  %call105 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 5, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, ptr noundef %add.ptr83, i32 noundef 3) #3
  %36 = load ptr, ptr @hws, align 4
  %arrayidx106 = getelementptr ptr, ptr %36, i32 16
  %37 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call105, ptr %arrayidx106, align 4
  %call108 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3, ptr noundef %add.ptr86, i32 noundef 3) #3
  %38 = load ptr, ptr @hws, align 4
  %arrayidx109 = getelementptr ptr, ptr %38, i32 17
  %39 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call108, ptr %arrayidx109, align 4
  %call.i1246 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21, i8 noundef zeroext 2, ptr noundef nonnull @pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %call35, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %40 = load ptr, ptr @hws, align 4
  %arrayidx112 = getelementptr ptr, ptr %40, i32 18
  %41 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i1246, ptr %arrayidx112, align 4
  %call.i1247 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.22, i8 noundef zeroext 2, ptr noundef nonnull @pll2_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr71, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %42 = load ptr, ptr @hws, align 4
  %arrayidx115 = getelementptr ptr, ptr %42, i32 19
  %43 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i1247, ptr %arrayidx115, align 4
  %call.i1248 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, i8 noundef zeroext 2, ptr noundef nonnull @pll3_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr74, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %44 = load ptr, ptr @hws, align 4
  %arrayidx118 = getelementptr ptr, ptr %44, i32 20
  %45 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i1248, ptr %arrayidx118, align 4
  %call.i1249 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24, i8 noundef zeroext 2, ptr noundef nonnull @pll4_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr77, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %46 = load ptr, ptr @hws, align 4
  %arrayidx121 = getelementptr ptr, ptr %46, i32 21
  %47 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i1249, ptr %arrayidx121, align 4
  %call.i1250 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, i8 noundef zeroext 2, ptr noundef nonnull @pll5_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr80, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %48 = load ptr, ptr @hws, align 4
  %arrayidx124 = getelementptr ptr, ptr %48, i32 22
  %49 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i1250, ptr %arrayidx124, align 4
  %call.i1251 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26, i8 noundef zeroext 2, ptr noundef nonnull @pll6_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr83, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %50 = load ptr, ptr @hws, align 4
  %arrayidx127 = getelementptr ptr, ptr %50, i32 23
  %51 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i1251, ptr %arrayidx127, align 4
  %call.i1252 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27, i8 noundef zeroext 2, ptr noundef nonnull @pll7_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr86, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %52 = load ptr, ptr @hws, align 4
  %arrayidx130 = getelementptr ptr, ptr %52, i32 24
  %53 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i1252, ptr %arrayidx130, align 4
  %arrayidx131 = getelementptr ptr, ptr %52, i32 18
  %54 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx131, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clk, align 4
  %arrayidx132 = getelementptr ptr, ptr %52, i32 11
  %58 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx132, align 4
  %clk133 = getelementptr inbounds %struct.clk_hw, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %clk133 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk133, align 4
  %call134 = tail call i32 @clk_set_parent(ptr noundef %57, ptr noundef %61) #3
  %62 = load ptr, ptr @hws, align 4
  %arrayidx135 = getelementptr ptr, ptr %62, i32 19
  %63 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx135, align 4
  %clk136 = getelementptr inbounds %struct.clk_hw, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %clk136 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clk136, align 4
  %arrayidx137 = getelementptr ptr, ptr %62, i32 12
  %67 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx137, align 4
  %clk138 = getelementptr inbounds %struct.clk_hw, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %clk138 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %clk138, align 4
  %call139 = tail call i32 @clk_set_parent(ptr noundef %66, ptr noundef %70) #3
  %71 = load ptr, ptr @hws, align 4
  %arrayidx140 = getelementptr ptr, ptr %71, i32 20
  %72 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx140, align 4
  %clk141 = getelementptr inbounds %struct.clk_hw, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %clk141 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %clk141, align 4
  %arrayidx142 = getelementptr ptr, ptr %71, i32 13
  %76 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx142, align 4
  %clk143 = getelementptr inbounds %struct.clk_hw, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %clk143 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clk143, align 4
  %call144 = tail call i32 @clk_set_parent(ptr noundef %75, ptr noundef %79) #3
  %80 = load ptr, ptr @hws, align 4
  %arrayidx145 = getelementptr ptr, ptr %80, i32 21
  %81 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx145, align 4
  %clk146 = getelementptr inbounds %struct.clk_hw, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %clk146 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %clk146, align 4
  %arrayidx147 = getelementptr ptr, ptr %80, i32 14
  %85 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx147, align 4
  %clk148 = getelementptr inbounds %struct.clk_hw, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %clk148 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %clk148, align 4
  %call149 = tail call i32 @clk_set_parent(ptr noundef %84, ptr noundef %88) #3
  %89 = load ptr, ptr @hws, align 4
  %arrayidx150 = getelementptr ptr, ptr %89, i32 22
  %90 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx150, align 4
  %clk151 = getelementptr inbounds %struct.clk_hw, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %clk151 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %clk151, align 4
  %arrayidx152 = getelementptr ptr, ptr %89, i32 15
  %94 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx152, align 4
  %clk153 = getelementptr inbounds %struct.clk_hw, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %clk153 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %clk153, align 4
  %call154 = tail call i32 @clk_set_parent(ptr noundef %93, ptr noundef %97) #3
  %98 = load ptr, ptr @hws, align 4
  %arrayidx155 = getelementptr ptr, ptr %98, i32 23
  %99 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx155, align 4
  %clk156 = getelementptr inbounds %struct.clk_hw, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %clk156 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %clk156, align 4
  %arrayidx157 = getelementptr ptr, ptr %98, i32 16
  %103 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx157, align 4
  %clk158 = getelementptr inbounds %struct.clk_hw, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %clk158 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %clk158, align 4
  %call159 = tail call i32 @clk_set_parent(ptr noundef %102, ptr noundef %106) #3
  %107 = load ptr, ptr @hws, align 4
  %arrayidx160 = getelementptr ptr, ptr %107, i32 24
  %108 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx160, align 4
  %clk161 = getelementptr inbounds %struct.clk_hw, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %clk161 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %clk161, align 4
  %arrayidx162 = getelementptr ptr, ptr %107, i32 17
  %112 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx162, align 4
  %clk163 = getelementptr inbounds %struct.clk_hw, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %clk163 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %clk163, align 4
  %call164 = tail call i32 @clk_set_parent(ptr noundef %111, ptr noundef %115) #3
  %call.i1253 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.21, i32 noundef 4, i32 noundef 1, i32 noundef 1) #3
  %116 = load ptr, ptr @hws, align 4
  %arrayidx166 = getelementptr ptr, ptr %116, i32 25
  %117 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call.i1253, ptr %arrayidx166, align 4
  %call.i1254 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr71, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %118 = load ptr, ptr @hws, align 4
  %arrayidx169 = getelementptr ptr, ptr %118, i32 26
  %119 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i1254, ptr %arrayidx169, align 4
  %call.i1255 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr74, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %120 = load ptr, ptr @hws, align 4
  %arrayidx172 = getelementptr ptr, ptr %120, i32 27
  %121 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i1255, ptr %arrayidx172, align 4
  %call.i1256 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr77, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %122 = load ptr, ptr @hws, align 4
  %arrayidx175 = getelementptr ptr, ptr %122, i32 28
  %123 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i1256, ptr %arrayidx175, align 4
  %call.i1257 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr80, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %124 = load ptr, ptr @hws, align 4
  %arrayidx178 = getelementptr ptr, ptr %124, i32 29
  %125 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i1257, ptr %arrayidx178, align 4
  %call.i1258 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr83, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %126 = load ptr, ptr @hws, align 4
  %arrayidx181 = getelementptr ptr, ptr %126, i32 30
  %127 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call.i1258, ptr %arrayidx181, align 4
  %call.i1259 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr86, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %128 = load ptr, ptr @hws, align 4
  %arrayidx184 = getelementptr ptr, ptr %128, i32 31
  %129 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call.i1259, ptr %arrayidx184, align 4
  %call.i1260 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.30, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr74, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %130 = load ptr, ptr @hws, align 4
  %arrayidx187 = getelementptr ptr, ptr %130, i32 32
  %131 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call.i1260, ptr %arrayidx187, align 4
  %call.i1261 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr86, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %132 = load ptr, ptr @hws, align 4
  %arrayidx190 = getelementptr ptr, ptr %132, i32 33
  %133 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i1261, ptr %arrayidx190, align 4
  %call.i1262 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr74, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %134 = load ptr, ptr @hws, align 4
  %arrayidx193 = getelementptr ptr, ptr %134, i32 34
  %135 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call.i1262, ptr %arrayidx193, align 4
  %call.i1263 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr86, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %136 = load ptr, ptr @hws, align 4
  %arrayidx196 = getelementptr ptr, ptr %136, i32 35
  %137 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call.i1263, ptr %arrayidx196, align 4
  %add.ptr197 = getelementptr i8, ptr %call35, i32 256
  %call198 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.29, ptr noundef %add.ptr197, i8 noundef zeroext 0) #3
  %138 = load ptr, ptr @hws, align 4
  %arrayidx199 = getelementptr ptr, ptr %138, i32 36
  %139 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call198, ptr %arrayidx199, align 4
  %call201 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.29, ptr noundef %add.ptr197, i8 noundef zeroext 1) #3
  %140 = load ptr, ptr @hws, align 4
  %arrayidx202 = getelementptr ptr, ptr %140, i32 37
  %141 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call201, ptr %arrayidx202, align 4
  %call204 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.29, ptr noundef %add.ptr197, i8 noundef zeroext 2) #3
  %142 = load ptr, ptr @hws, align 4
  %arrayidx205 = getelementptr ptr, ptr %142, i32 38
  %143 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call204, ptr %arrayidx205, align 4
  %call207 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.29, ptr noundef %add.ptr197, i8 noundef zeroext 3) #3
  %144 = load ptr, ptr @hws, align 4
  %arrayidx208 = getelementptr ptr, ptr %144, i32 39
  %145 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call207, ptr %arrayidx208, align 4
  %add.ptr209 = getelementptr i8, ptr %call35, i32 240
  %call210 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.30, ptr noundef %add.ptr209, i8 noundef zeroext 0) #3
  %146 = load ptr, ptr @hws, align 4
  %arrayidx211 = getelementptr ptr, ptr %146, i32 40
  %147 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call210, ptr %arrayidx211, align 4
  %call213 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.30, ptr noundef %add.ptr209, i8 noundef zeroext 1) #3
  %148 = load ptr, ptr @hws, align 4
  %arrayidx214 = getelementptr ptr, ptr %148, i32 41
  %149 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call213, ptr %arrayidx214, align 4
  %call216 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.30, ptr noundef %add.ptr209, i8 noundef zeroext 2) #3
  %150 = load ptr, ptr @hws, align 4
  %arrayidx217 = getelementptr ptr, ptr %150, i32 42
  %151 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call216, ptr %arrayidx217, align 4
  %call219 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.30, ptr noundef %add.ptr209, i8 noundef zeroext 3) #3
  %152 = load ptr, ptr @hws, align 4
  %arrayidx220 = getelementptr ptr, ptr %152, i32 43
  %153 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call219, ptr %arrayidx220, align 4
  %call222 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr83, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @clk_enet_ref_table, ptr noundef nonnull @imx_ccm_lock) #3
  %154 = load ptr, ptr @hws, align 4
  %arrayidx223 = getelementptr ptr, ptr %154, i32 44
  %155 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call222, ptr %arrayidx223, align 4
  %call225 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr83, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @clk_enet_ref_table, ptr noundef nonnull @imx_ccm_lock) #3
  %156 = load ptr, ptr @hws, align 4
  %arrayidx226 = getelementptr ptr, ptr %156, i32 45
  %157 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call225, ptr %arrayidx226, align 4
  %call.i1264 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr83, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %158 = load ptr, ptr @hws, align 4
  %arrayidx229 = getelementptr ptr, ptr %158, i32 46
  %159 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call.i1264, ptr %arrayidx229, align 4
  %call.i1265 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.33, i32 noundef 4, i32 noundef 1, i32 noundef 20) #3
  %160 = load ptr, ptr @hws, align 4
  %arrayidx231 = getelementptr ptr, ptr %160, i32 47
  %161 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call.i1265, ptr %arrayidx231, align 4
  %call.i1266 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr83, i8 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %162 = load ptr, ptr @hws, align 4
  %arrayidx234 = getelementptr ptr, ptr %162, i32 48
  %163 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call.i1266, ptr %arrayidx234, align 4
  %call236 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %add.ptr77, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #3
  %164 = load ptr, ptr @hws, align 4
  %arrayidx237 = getelementptr ptr, ptr %164, i32 49
  %165 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call236, ptr %arrayidx237, align 4
  %add.ptr238 = getelementptr i8, ptr %call35, i32 368
  %call239 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %add.ptr238, i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %166 = load ptr, ptr @hws, align 4
  %arrayidx240 = getelementptr ptr, ptr %166, i32 50
  %167 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call239, ptr %arrayidx240, align 4
  %call242 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %add.ptr80, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #3
  %168 = load ptr, ptr @hws, align 4
  %arrayidx243 = getelementptr ptr, ptr %168, i32 51
  %169 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call242, ptr %arrayidx243, align 4
  %call245 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %add.ptr238, i8 noundef zeroext 30, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @video_div_table, ptr noundef nonnull @imx_ccm_lock) #3
  %170 = load ptr, ptr @hws, align 4
  %arrayidx246 = getelementptr ptr, ptr %170, i32 52
  %171 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call245, ptr %arrayidx246, align 4
  %call.i1267 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.41, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %172 = load ptr, ptr @hws, align 4
  %arrayidx248 = getelementptr ptr, ptr %172, i32 53
  %173 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call.i1267, ptr %arrayidx248, align 4
  %call.i1268 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.30, i32 noundef 4, i32 noundef 1, i32 noundef 6) #3
  %174 = load ptr, ptr @hws, align 4
  %arrayidx250 = getelementptr ptr, ptr %174, i32 54
  %175 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call.i1268, ptr %arrayidx250, align 4
  %call.i1269 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.30, i32 noundef 4, i32 noundef 1, i32 noundef 8) #3
  %176 = load ptr, ptr @hws, align 4
  %arrayidx252 = getelementptr ptr, ptr %176, i32 55
  %177 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %call.i1269, ptr %arrayidx252, align 4
  %call.i1270 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.3, i32 noundef 4, i32 noundef 1, i32 noundef 8) #3
  %178 = load ptr, ptr @hws, align 4
  %arrayidx254 = getelementptr ptr, ptr %178, i32 214
  %179 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call.i1270, ptr %arrayidx254, align 4
  %call255 = tail call ptr @of_iomap(ptr noundef %ccm_node, i32 noundef 0) #3
  %tobool257.not = icmp eq ptr %call255, null
  br i1 %tobool257.not, label %do.end275, label %if.end61.if.end281_crit_edge, !prof !626

if.end61.if.end281_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end281

do.end275:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef null) #3
  br label %if.end281

if.end281:                                        ; preds = %do.end275, %if.end61.if.end281_crit_edge
  %add.ptr289 = getelementptr i8, ptr %call255, i32 12
  %call.i1271 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.60, i8 noundef zeroext 2, ptr noundef nonnull @ca7_secondary_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr289, i8 noundef zeroext 3, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %180 = load ptr, ptr @hws, align 4
  %arrayidx291 = getelementptr ptr, ptr %180, i32 219
  %181 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %call.i1271, ptr %arrayidx291, align 4
  %call.i1272 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.61, i8 noundef zeroext 2, ptr noundef nonnull @step_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr289, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %182 = load ptr, ptr @hws, align 4
  %arrayidx294 = getelementptr ptr, ptr %182, i32 56
  %183 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call.i1272, ptr %arrayidx294, align 4
  %call.i1273 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.62, i8 noundef zeroext 2, ptr noundef nonnull @pll1_sw_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr289, i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %184 = load ptr, ptr @hws, align 4
  %arrayidx297 = getelementptr ptr, ptr %184, i32 57
  %185 = ptrtoint ptr %arrayidx297 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %call.i1273, ptr %arrayidx297, align 4
  %add.ptr298 = getelementptr i8, ptr %call255, i32 20
  %call.i1274 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.63, i8 noundef zeroext 2, ptr noundef nonnull @axi_alt_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr298, i8 noundef zeroext 7, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %186 = load ptr, ptr @hws, align 4
  %arrayidx300 = getelementptr ptr, ptr %186, i32 58
  %187 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %call.i1274, ptr %arrayidx300, align 4
  %call.i1275 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.64, i8 noundef zeroext 2, ptr noundef nonnull @axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr298, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %188 = load ptr, ptr @hws, align 4
  %arrayidx303 = getelementptr ptr, ptr %188, i32 59
  %189 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call.i1275, ptr %arrayidx303, align 4
  %add.ptr304 = getelementptr i8, ptr %call255, i32 24
  %call.i1276 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.65, i8 noundef zeroext 4, ptr noundef nonnull @periph_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr304, i8 noundef zeroext 18, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %190 = load ptr, ptr @hws, align 4
  %arrayidx306 = getelementptr ptr, ptr %190, i32 60
  %191 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call.i1276, ptr %arrayidx306, align 4
  %call.i1277 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.66, i8 noundef zeroext 4, ptr noundef nonnull @periph2_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr304, i8 noundef zeroext 21, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %192 = load ptr, ptr @hws, align 4
  %arrayidx309 = getelementptr ptr, ptr %192, i32 61
  %193 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %call.i1277, ptr %arrayidx309, align 4
  %call.i1278 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.67, i8 noundef zeroext 3, ptr noundef nonnull @periph_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr304, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %194 = load ptr, ptr @hws, align 4
  %arrayidx312 = getelementptr ptr, ptr %194, i32 62
  %195 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call.i1278, ptr %arrayidx312, align 4
  %call.i1279 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.68, i8 noundef zeroext 2, ptr noundef nonnull @periph2_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr304, i8 noundef zeroext 20, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %196 = load ptr, ptr @hws, align 4
  %arrayidx315 = getelementptr ptr, ptr %196, i32 63
  %197 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call.i1279, ptr %arrayidx315, align 4
  %add.ptr316 = getelementptr i8, ptr %call255, i32 28
  %call.i1280 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.69, i8 noundef zeroext 4, ptr noundef nonnull @eim_slow_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr316, i8 noundef zeroext 29, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %198 = load ptr, ptr @hws, align 4
  %arrayidx318 = getelementptr ptr, ptr %198, i32 68
  %199 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call.i1280, ptr %arrayidx318, align 4
  %call.i1281 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.70, i8 noundef zeroext 2, ptr noundef nonnull @gpmi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr316, i8 noundef zeroext 19, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %200 = load ptr, ptr @hws, align 4
  %arrayidx321 = getelementptr ptr, ptr %200, i32 67
  %201 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %call.i1281, ptr %arrayidx321, align 4
  %call.i1282 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.71, i8 noundef zeroext 2, ptr noundef nonnull @bch_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr316, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %202 = load ptr, ptr @hws, align 4
  %arrayidx324 = getelementptr ptr, ptr %202, i32 66
  %203 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %call.i1282, ptr %arrayidx324, align 4
  %call.i1283 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.72, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr316, i8 noundef zeroext 17, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %204 = load ptr, ptr @hws, align 4
  %arrayidx327 = getelementptr ptr, ptr %204, i32 65
  %205 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %call.i1283, ptr %arrayidx327, align 4
  %call.i1284 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.73, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr316, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %206 = load ptr, ptr @hws, align 4
  %arrayidx330 = getelementptr ptr, ptr %206, i32 64
  %207 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call.i1284, ptr %arrayidx330, align 4
  %call.i1285 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74, i8 noundef zeroext 3, ptr noundef nonnull @sai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr316, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %208 = load ptr, ptr @hws, align 4
  %arrayidx333 = getelementptr ptr, ptr %208, i32 72
  %209 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %call.i1285, ptr %arrayidx333, align 4
  %call.i1286 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.75, i8 noundef zeroext 3, ptr noundef nonnull @sai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr316, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %210 = load ptr, ptr @hws, align 4
  %arrayidx336 = getelementptr ptr, ptr %210, i32 71
  %211 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %call.i1286, ptr %arrayidx336, align 4
  %call.i1287 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.76, i8 noundef zeroext 3, ptr noundef nonnull @sai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr316, i8 noundef zeroext 10, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %212 = load ptr, ptr @hws, align 4
  %arrayidx339 = getelementptr ptr, ptr %212, i32 70
  %213 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call.i1287, ptr %arrayidx339, align 4
  %call.i1288 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.77, i8 noundef zeroext 6, ptr noundef nonnull @qspi1_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr316, i8 noundef zeroext 7, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %214 = load ptr, ptr @hws, align 4
  %arrayidx342 = getelementptr ptr, ptr %214, i32 81
  %215 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %call.i1288, ptr %arrayidx342, align 4
  %call.i1289 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.78, i8 noundef zeroext 2, ptr noundef nonnull @perclk_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr316, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %216 = load ptr, ptr @hws, align 4
  %arrayidx345 = getelementptr ptr, ptr %216, i32 82
  %217 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %call.i1289, ptr %arrayidx345, align 4
  %add.ptr346 = getelementptr i8, ptr %call255, i32 32
  %call.i1290 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.79, i8 noundef zeroext 4, ptr noundef nonnull @can_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr346, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %218 = load ptr, ptr @hws, align 4
  %arrayidx348 = getelementptr ptr, ptr %218, i32 78
  %219 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %call.i1290, ptr %arrayidx348, align 4
  %call.i1291 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1291)
  %tobool350.not = icmp eq i32 %call.i1291, 0
  br i1 %tobool350.not, label %if.end281.if.end355_crit_edge, label %if.then351

if.end281.if.end355_crit_edge:                    ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end355

if.then351:                                       ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #5
  %call.i1292 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.80, i8 noundef zeroext 4, ptr noundef nonnull @esai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr346, i8 noundef zeroext 19, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %220 = load ptr, ptr @hws, align 4
  %arrayidx354 = getelementptr ptr, ptr %220, i32 236
  %221 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call.i1292, ptr %arrayidx354, align 4
  br label %if.end355

if.end355:                                        ; preds = %if.then351, %if.end281.if.end355_crit_edge
  %add.ptr356 = getelementptr i8, ptr %call255, i32 36
  %call.i1293 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.81, i8 noundef zeroext 2, ptr noundef nonnull @uart_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr356, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %222 = load ptr, ptr @hws, align 4
  %arrayidx358 = getelementptr ptr, ptr %222, i32 80
  %223 = ptrtoint ptr %arrayidx358 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %call.i1293, ptr %arrayidx358, align 4
  %add.ptr359 = getelementptr i8, ptr %call255, i32 44
  %call.i1294 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.82, i8 noundef zeroext 8, ptr noundef nonnull @enfc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr359, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %224 = load ptr, ptr @hws, align 4
  %arrayidx361 = getelementptr ptr, ptr %224, i32 77
  %225 = ptrtoint ptr %arrayidx361 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %call.i1294, ptr %arrayidx361, align 4
  %call.i1295 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.83, i8 noundef zeroext 6, ptr noundef nonnull @ldb_di0_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr359, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %226 = load ptr, ptr @hws, align 4
  %arrayidx364 = getelementptr ptr, ptr %226, i32 75
  %227 = ptrtoint ptr %arrayidx364 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %call.i1295, ptr %arrayidx364, align 4
  %add.ptr365 = getelementptr i8, ptr %call255, i32 48
  %call.i1296 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.84, i8 noundef zeroext 4, ptr noundef nonnull @spdif_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr365, i8 noundef zeroext 20, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %228 = load ptr, ptr @hws, align 4
  %arrayidx367 = getelementptr ptr, ptr %228, i32 69
  %229 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %call.i1296, ptr %arrayidx367, align 4
  %call.i1297 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.246) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1297)
  %tobool369.not = icmp eq i32 %call.i1297, 0
  br i1 %tobool369.not, label %if.else, label %if.then370

if.then370:                                       ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr371 = getelementptr i8, ptr %call255, i32 52
  %call.i1298 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.85, i8 noundef zeroext 6, ptr noundef nonnull @sim_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr371, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %230 = load ptr, ptr @hws, align 4
  %arrayidx373 = getelementptr ptr, ptr %230, i32 74
  %231 = ptrtoint ptr %arrayidx373 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call.i1298, ptr %arrayidx373, align 4
  %call.i1299 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.86, i8 noundef zeroext 5, ptr noundef nonnull @sim_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr371, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  br label %if.end387.sink.split

if.else:                                          ; preds = %if.end355
  %call.i1300 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1300)
  %tobool378.not = icmp eq i32 %call.i1300, 0
  br i1 %tobool378.not, label %if.else.if.end387_crit_edge, label %if.then379

if.else.if.end387_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end387

if.then379:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr380 = getelementptr i8, ptr %call255, i32 52
  %call.i1301 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.87, i8 noundef zeroext 6, ptr noundef nonnull @epdc_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr380, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %232 = load ptr, ptr @hws, align 4
  %arrayidx382 = getelementptr ptr, ptr %232, i32 231
  %233 = ptrtoint ptr %arrayidx382 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %call.i1301, ptr %arrayidx382, align 4
  %call.i1302 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.88, i8 noundef zeroext 5, ptr noundef nonnull @epdc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr380, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  br label %if.end387.sink.split

if.end387.sink.split:                             ; preds = %if.then379, %if.then370
  %.sink1483 = phi i32 [ 232, %if.then379 ], [ 84, %if.then370 ]
  %call.i1302.sink = phi ptr [ %call.i1302, %if.then379 ], [ %call.i1299, %if.then370 ]
  %234 = load ptr, ptr @hws, align 4
  %arrayidx385 = getelementptr ptr, ptr %234, i32 %.sink1483
  %235 = ptrtoint ptr %arrayidx385 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %call.i1302.sink, ptr %arrayidx385, align 4
  br label %if.end387

if.end387:                                        ; preds = %if.end387.sink.split, %if.else.if.end387_crit_edge
  %add.ptr388 = getelementptr i8, ptr %call255, i32 56
  %call.i1303 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.89, i8 noundef zeroext 2, ptr noundef nonnull @ecspi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr388, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %236 = load ptr, ptr @hws, align 4
  %arrayidx390 = getelementptr ptr, ptr %236, i32 79
  %237 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %call.i1303, ptr %arrayidx390, align 4
  %call.i1304 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.90, i8 noundef zeroext 6, ptr noundef nonnull @lcdif_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr388, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %238 = load ptr, ptr @hws, align 4
  %arrayidx393 = getelementptr ptr, ptr %238, i32 73
  %239 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %call.i1304, ptr %arrayidx393, align 4
  %call.i1305 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.91, i8 noundef zeroext 5, ptr noundef nonnull @lcdif_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr388, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %240 = load ptr, ptr @hws, align 4
  %arrayidx396 = getelementptr ptr, ptr %240, i32 83
  %241 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %call.i1305, ptr %arrayidx396, align 4
  %add.ptr397 = getelementptr i8, ptr %call255, i32 60
  %call.i1306 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.92, i8 noundef zeroext 4, ptr noundef nonnull @csi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr397, i8 noundef zeroext 9, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %242 = load ptr, ptr @hws, align 4
  %arrayidx399 = getelementptr ptr, ptr %242, i32 221
  %243 = ptrtoint ptr %arrayidx399 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %call.i1306, ptr %arrayidx399, align 4
  %call.i1307 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.93, i8 noundef zeroext 2, ptr noundef nonnull @ldb_di0_div_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr346, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %244 = load ptr, ptr @hws, align 4
  %arrayidx402 = getelementptr ptr, ptr %244, i32 91
  %245 = ptrtoint ptr %arrayidx402 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %call.i1307, ptr %arrayidx402, align 4
  %call.i1308 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.94, i8 noundef zeroext 2, ptr noundef nonnull @ldb_di1_div_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr346, i8 noundef zeroext 11, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %246 = load ptr, ptr @hws, align 4
  %arrayidx405 = getelementptr ptr, ptr %246, i32 92
  %247 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %call.i1308, ptr %arrayidx405, align 4
  %add.ptr406 = getelementptr i8, ptr %call255, i32 96
  %call.i1309 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.95, i8 noundef zeroext 16, ptr noundef nonnull @cko1_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr406, i8 noundef zeroext 0, i32 noundef 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %248 = load ptr, ptr @hws, align 4
  %arrayidx408 = getelementptr ptr, ptr %248, i32 237
  %249 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %call.i1309, ptr %arrayidx408, align 4
  %call.i1310 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.96, i8 noundef zeroext 32, ptr noundef nonnull @cko2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr406, i8 noundef zeroext 16, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %250 = load ptr, ptr @hws, align 4
  %arrayidx411 = getelementptr ptr, ptr %250, i32 240
  %251 = ptrtoint ptr %arrayidx411 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %call.i1310, ptr %arrayidx411, align 4
  %call.i1311 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.97, i8 noundef zeroext 2, ptr noundef nonnull @cko_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr406, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %252 = load ptr, ptr @hws, align 4
  %arrayidx414 = getelementptr ptr, ptr %252, i32 243
  %253 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %call.i1311, ptr %arrayidx414, align 4
  %call.i1312 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.83, i32 noundef 4, i32 noundef 2, i32 noundef 7) #3
  %254 = load ptr, ptr @hws, align 4
  %arrayidx416 = getelementptr ptr, ptr %254, i32 87
  %255 = ptrtoint ptr %arrayidx416 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %call.i1312, ptr %arrayidx416, align 4
  %call.i1313 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.83, i32 noundef 4, i32 noundef 1, i32 noundef 7) #3
  %256 = load ptr, ptr @hws, align 4
  %arrayidx418 = getelementptr ptr, ptr %256, i32 88
  %257 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %call.i1313, ptr %arrayidx418, align 4
  %call.i1314 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.77, i32 noundef 4, i32 noundef 2, i32 noundef 7) #3
  %258 = load ptr, ptr @hws, align 4
  %arrayidx420 = getelementptr ptr, ptr %258, i32 89
  %259 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %call.i1314, ptr %arrayidx420, align 4
  %call.i1315 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.77, i32 noundef 4, i32 noundef 1, i32 noundef 7) #3
  %260 = load ptr, ptr @hws, align 4
  %arrayidx422 = getelementptr ptr, ptr %260, i32 90
  %261 = ptrtoint ptr %arrayidx422 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %call.i1315, ptr %arrayidx422, align 4
  %add.ptr424 = getelementptr i8, ptr %call255, i32 72
  %call425 = tail call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.102, ptr noundef %add.ptr298, i8 noundef zeroext 25, i8 noundef zeroext 1, ptr noundef %add.ptr424, i8 noundef zeroext 5, ptr noundef nonnull @periph_sels, i32 noundef 2) #3
  %262 = load ptr, ptr @hws, align 4
  %arrayidx426 = getelementptr ptr, ptr %262, i32 85
  %263 = ptrtoint ptr %arrayidx426 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %call425, ptr %arrayidx426, align 4
  %call429 = tail call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.103, ptr noundef %add.ptr298, i8 noundef zeroext 26, i8 noundef zeroext 1, ptr noundef %add.ptr424, i8 noundef zeroext 3, ptr noundef nonnull @periph2_sels, i32 noundef 2) #3
  %264 = load ptr, ptr @hws, align 4
  %arrayidx430 = getelementptr ptr, ptr %264, i32 86
  %265 = ptrtoint ptr %arrayidx430 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %call429, ptr %arrayidx430, align 4
  %call.i1316 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.67, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr298, i8 noundef zeroext 27, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %266 = load ptr, ptr @hws, align 4
  %arrayidx433 = getelementptr ptr, ptr %266, i32 94
  %267 = ptrtoint ptr %arrayidx433 to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %call.i1316, ptr %arrayidx433, align 4
  %call.i1317 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.68, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr298, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %268 = load ptr, ptr @hws, align 4
  %arrayidx436 = getelementptr ptr, ptr %268, i32 95
  %269 = ptrtoint ptr %arrayidx436 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %call.i1317, ptr %arrayidx436, align 4
  %call.i1318 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr298, i8 noundef zeroext 8, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %270 = load ptr, ptr @hws, align 4
  %arrayidx439 = getelementptr ptr, ptr %270, i32 100
  %271 = ptrtoint ptr %arrayidx439 to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %call.i1318, ptr %arrayidx439, align 4
  %call.i1319 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr304, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %272 = load ptr, ptr @hws, align 4
  %arrayidx442 = getelementptr ptr, ptr %272, i32 115
  %273 = ptrtoint ptr %arrayidx442 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %call.i1319, ptr %arrayidx442, align 4
  %call.i1320 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.77, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr316, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %274 = load ptr, ptr @hws, align 4
  %arrayidx445 = getelementptr ptr, ptr %274, i32 117
  %275 = ptrtoint ptr %arrayidx445 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %call.i1320, ptr %arrayidx445, align 4
  %call.i1321 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.69, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr316, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %276 = load ptr, ptr @hws, align 4
  %arrayidx448 = getelementptr ptr, ptr %276, i32 105
  %277 = ptrtoint ptr %arrayidx448 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %call.i1321, ptr %arrayidx448, align 4
  %call.i1322 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.78, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr316, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %278 = load ptr, ptr @hws, align 4
  %arrayidx451 = getelementptr ptr, ptr %278, i32 99
  %279 = ptrtoint ptr %arrayidx451 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %call.i1322, ptr %arrayidx451, align 4
  %call.i1323 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.79, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr346, i8 noundef zeroext 2, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %280 = load ptr, ptr @hws, align 4
  %arrayidx454 = getelementptr ptr, ptr %280, i32 120
  %281 = ptrtoint ptr %arrayidx454 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %call.i1323, ptr %arrayidx454, align 4
  %call.i1324 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.70, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr356, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %282 = load ptr, ptr @hws, align 4
  %arrayidx457 = getelementptr ptr, ptr %282, i32 104
  %283 = ptrtoint ptr %arrayidx457 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %call.i1324, ptr %arrayidx457, align 4
  %call.i1325 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.71, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr356, i8 noundef zeroext 19, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %284 = load ptr, ptr @hws, align 4
  %arrayidx460 = getelementptr ptr, ptr %284, i32 103
  %285 = ptrtoint ptr %arrayidx460 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %call.i1325, ptr %arrayidx460, align 4
  %call.i1326 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.72, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr356, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %286 = load ptr, ptr @hws, align 4
  %arrayidx463 = getelementptr ptr, ptr %286, i32 102
  %287 = ptrtoint ptr %arrayidx463 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %call.i1326, ptr %arrayidx463, align 4
  %call.i1327 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.73, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr356, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %288 = load ptr, ptr @hws, align 4
  %arrayidx466 = getelementptr ptr, ptr %288, i32 101
  %289 = ptrtoint ptr %arrayidx466 to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %call.i1327, ptr %arrayidx466, align 4
  %call.i1328 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.81, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr356, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %290 = load ptr, ptr @hws, align 4
  %arrayidx469 = getelementptr ptr, ptr %290, i32 122
  %291 = ptrtoint ptr %arrayidx469 to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %call.i1328, ptr %arrayidx469, align 4
  %add.ptr470 = getelementptr i8, ptr %call255, i32 40
  %call.i1329 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.74, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr470, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %292 = load ptr, ptr @hws, align 4
  %arrayidx472 = getelementptr ptr, ptr %292, i32 112
  %293 = ptrtoint ptr %arrayidx472 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %call.i1329, ptr %arrayidx472, align 4
  %call.i1330 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.119, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr470, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %294 = load ptr, ptr @hws, align 4
  %arrayidx475 = getelementptr ptr, ptr %294, i32 113
  %295 = ptrtoint ptr %arrayidx475 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %call.i1330, ptr %arrayidx475, align 4
  %call.i1331 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.76, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr470, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %296 = load ptr, ptr @hws, align 4
  %arrayidx478 = getelementptr ptr, ptr %296, i32 108
  %297 = ptrtoint ptr %arrayidx478 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %call.i1331, ptr %arrayidx478, align 4
  %call.i1332 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.121, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr470, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %298 = load ptr, ptr @hws, align 4
  %arrayidx481 = getelementptr ptr, ptr %298, i32 109
  %299 = ptrtoint ptr %arrayidx481 to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %call.i1332, ptr %arrayidx481, align 4
  %call.i1333 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1333)
  %tobool483.not = icmp eq i32 %call.i1333, 0
  br i1 %tobool483.not, label %if.end387.if.end491_crit_edge, label %if.then484

if.end387.if.end491_crit_edge:                    ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end491

if.then484:                                       ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #5
  %call.i1334 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.80, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr470, i8 noundef zeroext 9, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %300 = load ptr, ptr @hws, align 4
  %arrayidx487 = getelementptr ptr, ptr %300, i32 225
  %301 = ptrtoint ptr %arrayidx487 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %call.i1334, ptr %arrayidx487, align 4
  %call.i1335 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.123, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr470, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %302 = load ptr, ptr @hws, align 4
  %arrayidx490 = getelementptr ptr, ptr %302, i32 226
  %303 = ptrtoint ptr %arrayidx490 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %call.i1335, ptr %arrayidx490, align 4
  br label %if.end491

if.end491:                                        ; preds = %if.then484, %if.end387.if.end491_crit_edge
  %call.i1336 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.82, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr359, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %304 = load ptr, ptr @hws, align 4
  %arrayidx494 = getelementptr ptr, ptr %304, i32 118
  %305 = ptrtoint ptr %arrayidx494 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %call.i1336, ptr %arrayidx494, align 4
  %call.i1337 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.125, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr359, i8 noundef zeroext 21, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %306 = load ptr, ptr @hws, align 4
  %arrayidx497 = getelementptr ptr, ptr %306, i32 119
  %307 = ptrtoint ptr %arrayidx497 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %call.i1337, ptr %arrayidx497, align 4
  %call.i1338 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr359, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %308 = load ptr, ptr @hws, align 4
  %arrayidx500 = getelementptr ptr, ptr %308, i32 110
  %309 = ptrtoint ptr %arrayidx500 to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %call.i1338, ptr %arrayidx500, align 4
  %call.i1339 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.127, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr359, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %310 = load ptr, ptr @hws, align 4
  %arrayidx503 = getelementptr ptr, ptr %310, i32 111
  %311 = ptrtoint ptr %arrayidx503 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %call.i1339, ptr %arrayidx503, align 4
  %call.i1340 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.84, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr365, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %312 = load ptr, ptr @hws, align 4
  %arrayidx506 = getelementptr ptr, ptr %312, i32 106
  %313 = ptrtoint ptr %arrayidx506 to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %call.i1340, ptr %arrayidx506, align 4
  %call.i1341 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.129, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr365, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %314 = load ptr, ptr @hws, align 4
  %arrayidx509 = getelementptr ptr, ptr %314, i32 107
  %315 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %call.i1341, ptr %arrayidx509, align 4
  %call.i1342 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.246) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1342)
  %tobool511.not = icmp eq i32 %call.i1342, 0
  br i1 %tobool511.not, label %if.else516, label %if.then512

if.then512:                                       ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr513 = getelementptr i8, ptr %call255, i32 52
  %call.i1343 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.85, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr513, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  br label %if.end524.sink.split

if.else516:                                       ; preds = %if.end491
  %call.i1344 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1344)
  %tobool518.not = icmp eq i32 %call.i1344, 0
  br i1 %tobool518.not, label %if.else516.if.end524_crit_edge, label %if.then519

if.else516.if.end524_crit_edge:                   ; preds = %if.else516
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end524

if.then519:                                       ; preds = %if.else516
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr520 = getelementptr i8, ptr %call255, i32 52
  %call.i1345 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.87, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr520, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  br label %if.end524.sink.split

if.end524.sink.split:                             ; preds = %if.then519, %if.then512
  %.sink1484 = phi i32 [ 233, %if.then519 ], [ 116, %if.then512 ]
  %call.i1345.sink = phi ptr [ %call.i1345, %if.then519 ], [ %call.i1343, %if.then512 ]
  %316 = load ptr, ptr @hws, align 4
  %arrayidx522 = getelementptr ptr, ptr %316, i32 %.sink1484
  %317 = ptrtoint ptr %arrayidx522 to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr %call.i1345.sink, ptr %arrayidx522, align 4
  br label %if.end524

if.end524:                                        ; preds = %if.end524.sink.split, %if.else516.if.end524_crit_edge
  %call.i1346 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.89, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr388, i8 noundef zeroext 19, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %318 = load ptr, ptr @hws, align 4
  %arrayidx527 = getelementptr ptr, ptr %318, i32 121
  %319 = ptrtoint ptr %arrayidx527 to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %call.i1346, ptr %arrayidx527, align 4
  %call.i1347 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.90, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr388, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %320 = load ptr, ptr @hws, align 4
  %arrayidx530 = getelementptr ptr, ptr %320, i32 114
  %321 = ptrtoint ptr %arrayidx530 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %call.i1347, ptr %arrayidx530, align 4
  %call.i1348 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.92, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr397, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %322 = load ptr, ptr @hws, align 4
  %arrayidx533 = getelementptr ptr, ptr %322, i32 222
  %323 = ptrtoint ptr %arrayidx533 to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %call.i1348, ptr %arrayidx533, align 4
  %call.i1349 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.95, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr406, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %324 = load ptr, ptr @hws, align 4
  %arrayidx536 = getelementptr ptr, ptr %324, i32 238
  %325 = ptrtoint ptr %arrayidx536 to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %call.i1349, ptr %arrayidx536, align 4
  %call.i1350 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.96, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr406, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %326 = load ptr, ptr @hws, align 4
  %arrayidx539 = getelementptr ptr, ptr %326, i32 241
  %327 = ptrtoint ptr %arrayidx539 to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %call.i1350, ptr %arrayidx539, align 4
  %add.ptr540 = getelementptr i8, ptr %call255, i32 16
  %call542 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.62, ptr noundef %add.ptr540, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef %add.ptr424, i8 noundef zeroext 16) #3
  %328 = load ptr, ptr @hws, align 4
  %arrayidx543 = getelementptr ptr, ptr %328, i32 93
  %329 = ptrtoint ptr %arrayidx543 to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %call542, ptr %arrayidx543, align 4
  %call546 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.103, ptr noundef %add.ptr298, i8 noundef zeroext 3, i8 noundef zeroext 3, ptr noundef %add.ptr424, i8 noundef zeroext 2) #3
  %330 = load ptr, ptr @hws, align 4
  %arrayidx547 = getelementptr ptr, ptr %330, i32 97
  %331 = ptrtoint ptr %arrayidx547 to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %call546, ptr %arrayidx547, align 4
  %call550 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.64, ptr noundef %add.ptr298, i8 noundef zeroext 16, i8 noundef zeroext 3, ptr noundef %add.ptr424, i8 noundef zeroext 0) #3
  %332 = load ptr, ptr @hws, align 4
  %arrayidx551 = getelementptr ptr, ptr %332, i32 98
  %333 = ptrtoint ptr %arrayidx551 to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %call550, ptr %arrayidx551, align 4
  %call554 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.102, ptr noundef %add.ptr298, i8 noundef zeroext 10, i8 noundef zeroext 3, ptr noundef %add.ptr424, i8 noundef zeroext 1) #3
  %334 = load ptr, ptr @hws, align 4
  %arrayidx555 = getelementptr ptr, ptr %334, i32 96
  %335 = ptrtoint ptr %arrayidx555 to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %call554, ptr %arrayidx555, align 4
  %add.ptr556 = getelementptr i8, ptr %call255, i32 104
  %call.i1351 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.107, i32 noundef 2052, ptr noundef %add.ptr556, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %336 = load ptr, ptr @hws, align 4
  %arrayidx558 = getelementptr ptr, ptr %336, i32 125
  %337 = ptrtoint ptr %arrayidx558 to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %call.i1351, ptr %arrayidx558, align 4
  %call.i1352 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.107, i32 noundef 2052, ptr noundef %add.ptr556, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %338 = load ptr, ptr @hws, align 4
  %arrayidx561 = getelementptr ptr, ptr %338, i32 126
  %339 = ptrtoint ptr %arrayidx561 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %call.i1352, ptr %arrayidx561, align 4
  %call.i1353 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %340 = load ptr, ptr @hws, align 4
  %arrayidx564 = getelementptr ptr, ptr %340, i32 128
  %341 = ptrtoint ptr %arrayidx564 to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %call.i1353, ptr %arrayidx564, align 4
  %call.i1354 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_asrc) #3
  %342 = load ptr, ptr @hws, align 4
  %arrayidx567 = getelementptr ptr, ptr %342, i32 129
  %343 = ptrtoint ptr %arrayidx567 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %call.i1354, ptr %arrayidx567, align 4
  %call.i1355 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_asrc) #3
  %344 = load ptr, ptr @hws, align 4
  %arrayidx570 = getelementptr ptr, ptr %344, i32 130
  %345 = ptrtoint ptr %arrayidx570 to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %call.i1355, ptr %arrayidx570, align 4
  %call.i1356 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.246) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1356)
  %tobool572.not = icmp eq i32 %call.i1356, 0
  br i1 %tobool572.not, label %if.else583, label %if.then573

if.then573:                                       ; preds = %if.end524
  call void @__sanitizer_cov_trace_pc() #5
  %call.i1357 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %346 = load ptr, ptr @hws, align 4
  %arrayidx576 = getelementptr ptr, ptr %346, i32 135
  %347 = ptrtoint ptr %arrayidx576 to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %call.i1357, ptr %arrayidx576, align 4
  %call.i1358 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %348 = load ptr, ptr @hws, align 4
  %arrayidx579 = getelementptr ptr, ptr %348, i32 136
  %349 = ptrtoint ptr %arrayidx579 to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %call.i1358, ptr %arrayidx579, align 4
  %call.i1359 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  br label %if.end597.sink.split

if.else583:                                       ; preds = %if.end524
  %call.i1360 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1360)
  %tobool585.not = icmp eq i32 %call.i1360, 0
  br i1 %tobool585.not, label %if.else583.if.end597_crit_edge, label %if.then586

if.else583.if.end597_crit_edge:                   ; preds = %if.else583
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end597

if.then586:                                       ; preds = %if.else583
  call void @__sanitizer_cov_trace_pc() #5
  %call.i1361 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %350 = load ptr, ptr @hws, align 4
  %arrayidx589 = getelementptr ptr, ptr %350, i32 230
  %351 = ptrtoint ptr %arrayidx589 to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %call.i1361, ptr %arrayidx589, align 4
  %call.i1362 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %352 = load ptr, ptr @hws, align 4
  %arrayidx592 = getelementptr ptr, ptr %352, i32 144
  %353 = ptrtoint ptr %arrayidx592 to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr %call.i1362, ptr %arrayidx592, align 4
  %call.i1363 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  br label %if.end597.sink.split

if.end597.sink.split:                             ; preds = %if.then586, %if.then573
  %.sink1485 = phi i32 [ 145, %if.then586 ], [ 137, %if.then573 ]
  %call.i1363.sink = phi ptr [ %call.i1363, %if.then586 ], [ %call.i1359, %if.then573 ]
  %354 = load ptr, ptr @hws, align 4
  %arrayidx595 = getelementptr ptr, ptr %354, i32 %.sink1485
  %355 = ptrtoint ptr %arrayidx595 to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr %call.i1363.sink, ptr %arrayidx595, align 4
  br label %if.end597

if.end597:                                        ; preds = %if.end597.sink.split, %if.else583.if.end597_crit_edge
  %call.i1364 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %356 = load ptr, ptr @hws, align 4
  %arrayidx600 = getelementptr ptr, ptr %356, i32 148
  %357 = ptrtoint ptr %arrayidx600 to i32
  call void @__asan_store4_noabort(i32 %357)
  store ptr %call.i1364, ptr %arrayidx600, align 4
  %call.i1365 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.113, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %358 = load ptr, ptr @hws, align 4
  %arrayidx603 = getelementptr ptr, ptr %358, i32 149
  %359 = ptrtoint ptr %arrayidx603 to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr %call.i1365, ptr %arrayidx603, align 4
  %call.i1366 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %360 = load ptr, ptr @hws, align 4
  %arrayidx606 = getelementptr ptr, ptr %360, i32 150
  %361 = ptrtoint ptr %arrayidx606 to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %call.i1366, ptr %arrayidx606, align 4
  %call.i1367 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.113, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %362 = load ptr, ptr @hws, align 4
  %arrayidx609 = getelementptr ptr, ptr %362, i32 151
  %363 = ptrtoint ptr %arrayidx609 to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %call.i1367, ptr %arrayidx609, align 4
  %call.i1368 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %364 = load ptr, ptr @hws, align 4
  %arrayidx612 = getelementptr ptr, ptr %364, i32 154
  %365 = ptrtoint ptr %arrayidx612 to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr %call.i1368, ptr %arrayidx612, align 4
  %call.i1369 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %366 = load ptr, ptr @hws, align 4
  %arrayidx615 = getelementptr ptr, ptr %366, i32 155
  %367 = ptrtoint ptr %arrayidx615 to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %call.i1369, ptr %arrayidx615, align 4
  %call.i1370 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %368 = load ptr, ptr @hws, align 4
  %arrayidx618 = getelementptr ptr, ptr %368, i32 191
  %369 = ptrtoint ptr %arrayidx618 to i32
  call void @__asan_store4_noabort(i32 %369)
  store ptr %call.i1370, ptr %arrayidx618, align 4
  %call.i1371 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %370 = load ptr, ptr @hws, align 4
  %arrayidx621 = getelementptr ptr, ptr %370, i32 192
  %371 = ptrtoint ptr %arrayidx621 to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %call.i1371, ptr %arrayidx621, align 4
  %call.i1372 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1372)
  %tobool623.not = icmp eq i32 %call.i1372, 0
  br i1 %tobool623.not, label %if.end597.if.end628_crit_edge, label %if.then624

if.end597.if.end628_crit_edge:                    ; preds = %if.end597
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end628

if.then624:                                       ; preds = %if.end597
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr625 = getelementptr i8, ptr %call255, i32 128
  %call.i1373 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %add.ptr625, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %372 = load ptr, ptr @hws, align 4
  %arrayidx627 = getelementptr ptr, ptr %372, i32 127
  %373 = ptrtoint ptr %arrayidx627 to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %call.i1373, ptr %arrayidx627, align 4
  br label %if.end628

if.end628:                                        ; preds = %if.then624, %if.end597.if.end628_crit_edge
  %call.i1374 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr556, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %374 = load ptr, ptr @hws, align 4
  %arrayidx631 = getelementptr ptr, ptr %374, i32 245
  %375 = ptrtoint ptr %arrayidx631 to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr %call.i1374, ptr %arrayidx631, align 4
  %add.ptr632 = getelementptr i8, ptr %call255, i32 108
  %call.i1375 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %add.ptr632, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %376 = load ptr, ptr @hws, align 4
  %arrayidx634 = getelementptr ptr, ptr %376, i32 139
  %377 = ptrtoint ptr %arrayidx634 to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr %call.i1375, ptr %arrayidx634, align 4
  %call.i1376 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %add.ptr632, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %378 = load ptr, ptr @hws, align 4
  %arrayidx637 = getelementptr ptr, ptr %378, i32 140
  %379 = ptrtoint ptr %arrayidx637 to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %call.i1376, ptr %arrayidx637, align 4
  %call.i1377 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %add.ptr632, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %380 = load ptr, ptr @hws, align 4
  %arrayidx640 = getelementptr ptr, ptr %380, i32 141
  %381 = ptrtoint ptr %arrayidx640 to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr %call.i1377, ptr %arrayidx640, align 4
  %call.i1378 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %add.ptr632, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %382 = load ptr, ptr @hws, align 4
  %arrayidx643 = getelementptr ptr, ptr %382, i32 142
  %383 = ptrtoint ptr %arrayidx643 to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr %call.i1378, ptr %arrayidx643, align 4
  %call.i1379 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr632, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %384 = load ptr, ptr @hws, align 4
  %arrayidx646 = getelementptr ptr, ptr %384, i32 124
  %385 = ptrtoint ptr %arrayidx646 to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr %call.i1379, ptr %arrayidx646, align 4
  %call.i1380 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr632, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %386 = load ptr, ptr @hws, align 4
  %arrayidx649 = getelementptr ptr, ptr %386, i32 193
  %387 = ptrtoint ptr %arrayidx649 to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr %call.i1380, ptr %arrayidx649, align 4
  %call.i1381 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef %add.ptr632, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %388 = load ptr, ptr @hws, align 4
  %arrayidx652 = getelementptr ptr, ptr %388, i32 194
  %389 = ptrtoint ptr %arrayidx652 to i32
  call void @__asan_store4_noabort(i32 %389)
  store ptr %call.i1381, ptr %arrayidx652, align 4
  %call.i1382 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr632, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %390 = load ptr, ptr @hws, align 4
  %arrayidx655 = getelementptr ptr, ptr %390, i32 146
  %391 = ptrtoint ptr %arrayidx655 to i32
  call void @__asan_store4_noabort(i32 %391)
  store ptr %call.i1382, ptr %arrayidx655, align 4
  %call.i1383 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr632, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %392 = load ptr, ptr @hws, align 4
  %arrayidx658 = getelementptr ptr, ptr %392, i32 147
  %393 = ptrtoint ptr %arrayidx658 to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr %call.i1383, ptr %arrayidx658, align 4
  %call.i1384 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr632, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %394 = load ptr, ptr @hws, align 4
  %arrayidx661 = getelementptr ptr, ptr %394, i32 123
  %395 = ptrtoint ptr %arrayidx661 to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr %call.i1384, ptr %arrayidx661, align 4
  %call.i1385 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr632, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %396 = load ptr, ptr @hws, align 4
  %arrayidx664 = getelementptr ptr, ptr %396, i32 152
  %397 = ptrtoint ptr %arrayidx664 to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr %call.i1385, ptr %arrayidx664, align 4
  %call.i1386 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr632, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %398 = load ptr, ptr @hws, align 4
  %arrayidx667 = getelementptr ptr, ptr %398, i32 153
  %399 = ptrtoint ptr %arrayidx667 to i32
  call void @__asan_store4_noabort(i32 %399)
  store ptr %call.i1386, ptr %arrayidx667, align 4
  %call.i1387 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr632, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %400 = load ptr, ptr @hws, align 4
  %arrayidx670 = getelementptr ptr, ptr %400, i32 195
  %401 = ptrtoint ptr %arrayidx670 to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr %call.i1387, ptr %arrayidx670, align 4
  %call.i1388 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef %add.ptr632, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %402 = load ptr, ptr @hws, align 4
  %arrayidx673 = getelementptr ptr, ptr %402, i32 196
  %403 = ptrtoint ptr %arrayidx673 to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr %call.i1388, ptr %arrayidx673, align 4
  %call.i1389 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr632, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %404 = load ptr, ptr @hws, align 4
  %arrayidx676 = getelementptr ptr, ptr %404, i32 244
  %405 = ptrtoint ptr %arrayidx676 to i32
  call void @__asan_store4_noabort(i32 %405)
  store ptr %call.i1389, ptr %arrayidx676, align 4
  %call.i1390 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr632, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %406 = load ptr, ptr @hws, align 4
  %arrayidx679 = getelementptr ptr, ptr %406, i32 248
  %407 = ptrtoint ptr %arrayidx679 to i32
  call void @__asan_store4_noabort(i32 %407)
  store ptr %call.i1390, ptr %arrayidx679, align 4
  %call.i1391 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1391)
  %tobool681.not = icmp eq i32 %call.i1391, 0
  br i1 %tobool681.not, label %if.end628.if.end692_crit_edge, label %if.then682

if.end628.if.end692_crit_edge:                    ; preds = %if.end628
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end692

if.then682:                                       ; preds = %if.end628
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr683 = getelementptr i8, ptr %call255, i32 112
  %call.i1392 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.124, i32 noundef 4, ptr noundef %add.ptr683, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #3
  %408 = load ptr, ptr @hws, align 4
  %arrayidx685 = getelementptr ptr, ptr %408, i32 227
  %409 = ptrtoint ptr %arrayidx685 to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr %call.i1392, ptr %arrayidx685, align 4
  %call.i1393 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %add.ptr683, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #3
  %410 = load ptr, ptr @hws, align 4
  %arrayidx688 = getelementptr ptr, ptr %410, i32 229
  %411 = ptrtoint ptr %arrayidx688 to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr %call.i1393, ptr %arrayidx688, align 4
  %call.i1394 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %add.ptr683, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #3
  %412 = load ptr, ptr @hws, align 4
  %arrayidx691 = getelementptr ptr, ptr %412, i32 228
  %413 = ptrtoint ptr %arrayidx691 to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr %call.i1394, ptr %arrayidx691, align 4
  br label %if.end692

if.end692:                                        ; preds = %if.then682, %if.end628.if.end692_crit_edge
  %add.ptr693 = getelementptr i8, ptr %call255, i32 112
  %call.i1395 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr693, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %414 = load ptr, ptr @hws, align 4
  %arrayidx695 = getelementptr ptr, ptr %414, i32 156
  %415 = ptrtoint ptr %arrayidx695 to i32
  call void @__asan_store4_noabort(i32 %415)
  store ptr %call.i1395, ptr %arrayidx695, align 4
  %call.i1396 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr693, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %416 = load ptr, ptr @hws, align 4
  %arrayidx698 = getelementptr ptr, ptr %416, i32 157
  %417 = ptrtoint ptr %arrayidx698 to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %call.i1396, ptr %arrayidx698, align 4
  %call.i1397 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr693, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %418 = load ptr, ptr @hws, align 4
  %arrayidx701 = getelementptr ptr, ptr %418, i32 158
  %419 = ptrtoint ptr %arrayidx701 to i32
  call void @__asan_store4_noabort(i32 %419)
  store ptr %call.i1397, ptr %arrayidx701, align 4
  %call.i1398 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr693, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %420 = load ptr, ptr @hws, align 4
  %arrayidx704 = getelementptr ptr, ptr %420, i32 165
  %421 = ptrtoint ptr %arrayidx704 to i32
  call void @__asan_store4_noabort(i32 %421)
  store ptr %call.i1398, ptr %arrayidx704, align 4
  %call.i1399 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.108, i32 noundef 4, ptr noundef %add.ptr693, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %422 = load ptr, ptr @hws, align 4
  %arrayidx707 = getelementptr ptr, ptr %422, i32 160
  %423 = ptrtoint ptr %arrayidx707 to i32
  call void @__asan_store4_noabort(i32 %423)
  store ptr %call.i1399, ptr %arrayidx707, align 4
  %call.i1400 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr693, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %424 = load ptr, ptr @hws, align 4
  %arrayidx710 = getelementptr ptr, ptr %424, i32 246
  %425 = ptrtoint ptr %arrayidx710 to i32
  call void @__asan_store4_noabort(i32 %425)
  store ptr %call.i1400, ptr %arrayidx710, align 4
  %call.i1401 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, i32 noundef 4, ptr noundef %add.ptr693, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %426 = load ptr, ptr @hws, align 4
  %arrayidx713 = getelementptr ptr, ptr %426, i32 161
  %427 = ptrtoint ptr %arrayidx713 to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr %call.i1401, ptr %arrayidx713, align 4
  %call.i1402 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.187, i32 noundef 4, ptr noundef %add.ptr693, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %428 = load ptr, ptr @hws, align 4
  %arrayidx716 = getelementptr ptr, ptr %428, i32 175
  %429 = ptrtoint ptr %arrayidx716 to i32
  call void @__asan_store4_noabort(i32 %429)
  store ptr %call.i1402, ptr %arrayidx716, align 4
  %add.ptr717 = getelementptr i8, ptr %call255, i32 116
  %call.i1403 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.134, i32 noundef 4, ptr noundef %add.ptr717, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %430 = load ptr, ptr @hws, align 4
  %arrayidx719 = getelementptr ptr, ptr %430, i32 138
  %431 = ptrtoint ptr %arrayidx719 to i32
  call void @__asan_store4_noabort(i32 %431)
  store ptr %call.i1403, ptr %arrayidx719, align 4
  %call.i1404 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr717, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %432 = load ptr, ptr @hws, align 4
  %arrayidx722 = getelementptr ptr, ptr %432, i32 197
  %433 = ptrtoint ptr %arrayidx722 to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %call.i1404, ptr %arrayidx722, align 4
  %call.i1405 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef %add.ptr717, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %434 = load ptr, ptr @hws, align 4
  %arrayidx725 = getelementptr ptr, ptr %434, i32 198
  %435 = ptrtoint ptr %arrayidx725 to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr %call.i1405, ptr %arrayidx725, align 4
  %call.i1406 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.246) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1406)
  %tobool727.not = icmp eq i32 %call.i1406, 0
  br i1 %tobool727.not, label %if.else735, label %if.then728

if.then728:                                       ; preds = %if.end692
  call void @__sanitizer_cov_trace_pc() #5
  %call.i1407 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr717, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %436 = load ptr, ptr @hws, align 4
  %arrayidx731 = getelementptr ptr, ptr %436, i32 144
  %437 = ptrtoint ptr %arrayidx731 to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr %call.i1407, ptr %arrayidx731, align 4
  %call.i1408 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %add.ptr717, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  br label %if.end746.sink.split

if.else735:                                       ; preds = %if.end692
  %call.i1409 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1409)
  %tobool737.not = icmp eq i32 %call.i1409, 0
  br i1 %tobool737.not, label %if.else735.if.end746_crit_edge, label %if.then738

if.else735.if.end746_crit_edge:                   ; preds = %if.else735
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end746

if.then738:                                       ; preds = %if.else735
  call void @__sanitizer_cov_trace_pc() #5
  %call.i1410 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.187, i32 noundef 4, ptr noundef %add.ptr717, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %438 = load ptr, ptr @hws, align 4
  %arrayidx741 = getelementptr ptr, ptr %438, i32 234
  %439 = ptrtoint ptr %arrayidx741 to i32
  call void @__asan_store4_noabort(i32 %439)
  store ptr %call.i1410, ptr %arrayidx741, align 4
  %call.i1411 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.132, i32 noundef 4, ptr noundef %add.ptr717, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  br label %if.end746.sink.split

if.end746.sink.split:                             ; preds = %if.then738, %if.then728
  %.sink1486 = phi i32 [ 235, %if.then738 ], [ 145, %if.then728 ]
  %call.i1411.sink = phi ptr [ %call.i1411, %if.then738 ], [ %call.i1408, %if.then728 ]
  %440 = load ptr, ptr @hws, align 4
  %arrayidx744 = getelementptr ptr, ptr %440, i32 %.sink1486
  %441 = ptrtoint ptr %arrayidx744 to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr %call.i1411.sink, ptr %arrayidx744, align 4
  br label %if.end746

if.end746:                                        ; preds = %if.end746.sink.split, %if.else735.if.end746_crit_edge
  %call.i1412 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr717, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %442 = load ptr, ptr @hws, align 4
  %arrayidx749 = getelementptr ptr, ptr %442, i32 199
  %443 = ptrtoint ptr %arrayidx749 to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr %call.i1412, ptr %arrayidx749, align 4
  %call.i1413 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef %add.ptr717, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %444 = load ptr, ptr @hws, align 4
  %arrayidx752 = getelementptr ptr, ptr %444, i32 200
  %445 = ptrtoint ptr %arrayidx752 to i32
  call void @__asan_store4_noabort(i32 %445)
  store ptr %call.i1413, ptr %arrayidx752, align 4
  %call.i1414 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.108, i32 noundef 4, ptr noundef %add.ptr717, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %446 = load ptr, ptr @hws, align 4
  %arrayidx755 = getelementptr ptr, ptr %446, i32 162
  %447 = ptrtoint ptr %arrayidx755 to i32
  call void @__asan_store4_noabort(i32 %447)
  store ptr %call.i1414, ptr %arrayidx755, align 4
  %call.i1415 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr717, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %448 = load ptr, ptr @hws, align 4
  %arrayidx758 = getelementptr ptr, ptr %448, i32 247
  %449 = ptrtoint ptr %arrayidx758 to i32
  call void @__asan_store4_noabort(i32 %449)
  store ptr %call.i1415, ptr %arrayidx758, align 4
  %call.i1416 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.110, i32 noundef 4, ptr noundef %add.ptr717, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %450 = load ptr, ptr @hws, align 4
  %arrayidx761 = getelementptr ptr, ptr %450, i32 176
  %451 = ptrtoint ptr %arrayidx761 to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr %call.i1416, ptr %arrayidx761, align 4
  %call.i1417 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr717, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %452 = load ptr, ptr @hws, align 4
  %arrayidx764 = getelementptr ptr, ptr %452, i32 208
  %453 = ptrtoint ptr %arrayidx764 to i32
  call void @__asan_store4_noabort(i32 %453)
  store ptr %call.i1417, ptr %arrayidx764, align 4
  %call.i1418 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.138, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %add.ptr717, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %454 = load ptr, ptr @hws, align 4
  %arrayidx767 = getelementptr ptr, ptr %454, i32 163
  %455 = ptrtoint ptr %arrayidx767 to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr %call.i1418, ptr %arrayidx767, align 4
  %call.i1419 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.106, i32 noundef 2052, ptr noundef %add.ptr717, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %456 = load ptr, ptr @hws, align 4
  %arrayidx770 = getelementptr ptr, ptr %456, i32 164
  %457 = ptrtoint ptr %arrayidx770 to i32
  call void @__asan_store4_noabort(i32 %457)
  store ptr %call.i1419, ptr %arrayidx770, align 4
  %call.i1420 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.106, i32 noundef 2052, ptr noundef %add.ptr717, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %458 = load ptr, ptr @hws, align 4
  %arrayidx773 = getelementptr ptr, ptr %458, i32 249
  %459 = ptrtoint ptr %arrayidx773 to i32
  call void @__asan_store4_noabort(i32 %459)
  store ptr %call.i1420, ptr %arrayidx773, align 4
  %call.i1421 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.139, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %add.ptr717, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %460 = load ptr, ptr @hws, align 4
  %arrayidx776 = getelementptr ptr, ptr %460, i32 212
  %461 = ptrtoint ptr %arrayidx776 to i32
  call void @__asan_store4_noabort(i32 %461)
  store ptr %call.i1421, ptr %arrayidx776, align 4
  %add.ptr777 = getelementptr i8, ptr %call255, i32 120
  %call.i1422 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %add.ptr777, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %462 = load ptr, ptr @hws, align 4
  %arrayidx779 = getelementptr ptr, ptr %462, i32 220
  %463 = ptrtoint ptr %arrayidx779 to i32
  call void @__asan_store4_noabort(i32 %463)
  store ptr %call.i1422, ptr %arrayidx779, align 4
  %call.i1423 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr777, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %464 = load ptr, ptr @hws, align 4
  %arrayidx782 = getelementptr ptr, ptr %464, i32 167
  %465 = ptrtoint ptr %arrayidx782 to i32
  call void @__asan_store4_noabort(i32 %465)
  store ptr %call.i1423, ptr %arrayidx782, align 4
  %call.i1424 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr777, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %466 = load ptr, ptr @hws, align 4
  %arrayidx785 = getelementptr ptr, ptr %466, i32 168
  %467 = ptrtoint ptr %arrayidx785 to i32
  call void @__asan_store4_noabort(i32 %467)
  store ptr %call.i1424, ptr %arrayidx785, align 4
  %call.i1425 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr777, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %468 = load ptr, ptr @hws, align 4
  %arrayidx788 = getelementptr ptr, ptr %468, i32 169
  %469 = ptrtoint ptr %arrayidx788 to i32
  call void @__asan_store4_noabort(i32 %469)
  store ptr %call.i1425, ptr %arrayidx788, align 4
  %call.i1426 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr777, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %470 = load ptr, ptr @hws, align 4
  %arrayidx791 = getelementptr ptr, ptr %470, i32 170
  %471 = ptrtoint ptr %arrayidx791 to i32
  call void @__asan_store4_noabort(i32 %471)
  store ptr %call.i1426, ptr %arrayidx791, align 4
  %call.i1427 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %add.ptr777, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %472 = load ptr, ptr @hws, align 4
  %arrayidx794 = getelementptr ptr, ptr %472, i32 131
  %473 = ptrtoint ptr %arrayidx794 to i32
  call void @__asan_store4_noabort(i32 %473)
  store ptr %call.i1427, ptr %arrayidx794, align 4
  %call.i1428 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.114, i32 noundef 4, ptr noundef %add.ptr777, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %474 = load ptr, ptr @hws, align 4
  %arrayidx797 = getelementptr ptr, ptr %474, i32 132
  %475 = ptrtoint ptr %arrayidx797 to i32
  call void @__asan_store4_noabort(i32 %475)
  store ptr %call.i1428, ptr %arrayidx797, align 4
  %call.i1429 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %add.ptr777, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %476 = load ptr, ptr @hws, align 4
  %arrayidx800 = getelementptr ptr, ptr %476, i32 133
  %477 = ptrtoint ptr %arrayidx800 to i32
  call void @__asan_store4_noabort(i32 %477)
  store ptr %call.i1429, ptr %arrayidx800, align 4
  %call.i1430 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %add.ptr777, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %478 = load ptr, ptr @hws, align 4
  %arrayidx803 = getelementptr ptr, ptr %478, i32 134
  %479 = ptrtoint ptr %arrayidx803 to i32
  call void @__asan_store4_noabort(i32 %479)
  store ptr %call.i1430, ptr %arrayidx803, align 4
  %add.ptr804 = getelementptr i8, ptr %call255, i32 124
  %call.i1431 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.107, i32 noundef 2052, ptr noundef %add.ptr804, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %480 = load ptr, ptr @hws, align 4
  %arrayidx806 = getelementptr ptr, ptr %480, i32 177
  %481 = ptrtoint ptr %arrayidx806 to i32
  call void @__asan_store4_noabort(i32 %481)
  store ptr %call.i1431, ptr %arrayidx806, align 4
  %call.i1432 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %add.ptr804, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %482 = load ptr, ptr @hws, align 4
  %arrayidx809 = getelementptr ptr, ptr %482, i32 184
  %483 = ptrtoint ptr %arrayidx809 to i32
  call void @__asan_store4_noabort(i32 %483)
  store ptr %call.i1432, ptr %arrayidx809, align 4
  %call.i1433 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr804, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %484 = load ptr, ptr @hws, align 4
  %arrayidx812 = getelementptr ptr, ptr %484, i32 224
  %485 = ptrtoint ptr %arrayidx812 to i32
  call void @__asan_store4_noabort(i32 %485)
  store ptr %call.i1433, ptr %arrayidx812, align 4
  %call.i1434 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr804, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %486 = load ptr, ptr @hws, align 4
  %arrayidx815 = getelementptr ptr, ptr %486, i32 209
  %487 = ptrtoint ptr %arrayidx815 to i32
  call void @__asan_store4_noabort(i32 %487)
  store ptr %call.i1434, ptr %arrayidx815, align 4
  %call.i1435 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr804, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %488 = load ptr, ptr @hws, align 4
  %arrayidx818 = getelementptr ptr, ptr %488, i32 187
  %489 = ptrtoint ptr %arrayidx818 to i32
  call void @__asan_store4_noabort(i32 %489)
  store ptr %call.i1435, ptr %arrayidx818, align 4
  %call.i1436 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr804, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_audio) #3
  %490 = load ptr, ptr @hws, align 4
  %arrayidx821 = getelementptr ptr, ptr %490, i32 188
  %491 = ptrtoint ptr %arrayidx821 to i32
  call void @__asan_store4_noabort(i32 %491)
  store ptr %call.i1436, ptr %arrayidx821, align 4
  %call.i1437 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr804, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_audio) #3
  %492 = load ptr, ptr @hws, align 4
  %arrayidx824 = getelementptr ptr, ptr %492, i32 213
  %493 = ptrtoint ptr %arrayidx824 to i32
  call void @__asan_store4_noabort(i32 %493)
  store ptr %call.i1437, ptr %arrayidx824, align 4
  %call.i1438 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr804, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai3) #3
  %494 = load ptr, ptr @hws, align 4
  %arrayidx827 = getelementptr ptr, ptr %494, i32 182
  %495 = ptrtoint ptr %arrayidx827 to i32
  call void @__asan_store4_noabort(i32 %495)
  store ptr %call.i1438, ptr %arrayidx827, align 4
  %call.i1439 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr804, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai3) #3
  %496 = load ptr, ptr @hws, align 4
  %arrayidx830 = getelementptr ptr, ptr %496, i32 183
  %497 = ptrtoint ptr %arrayidx830 to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr %call.i1439, ptr %arrayidx830, align 4
  %call.i1440 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr804, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %498 = load ptr, ptr @hws, align 4
  %arrayidx833 = getelementptr ptr, ptr %498, i32 189
  %499 = ptrtoint ptr %arrayidx833 to i32
  call void @__asan_store4_noabort(i32 %499)
  store ptr %call.i1440, ptr %arrayidx833, align 4
  %call.i1441 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef %add.ptr804, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %500 = load ptr, ptr @hws, align 4
  %arrayidx836 = getelementptr ptr, ptr %500, i32 190
  %501 = ptrtoint ptr %arrayidx836 to i32
  call void @__asan_store4_noabort(i32 %501)
  store ptr %call.i1441, ptr %arrayidx836, align 4
  %call.i1442 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr804, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %502 = load ptr, ptr @hws, align 4
  %arrayidx839 = getelementptr ptr, ptr %502, i32 201
  %503 = ptrtoint ptr %arrayidx839 to i32
  call void @__asan_store4_noabort(i32 %503)
  store ptr %call.i1442, ptr %arrayidx839, align 4
  %call.i1443 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef %add.ptr804, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %504 = load ptr, ptr @hws, align 4
  %arrayidx842 = getelementptr ptr, ptr %504, i32 202
  %505 = ptrtoint ptr %arrayidx842 to i32
  call void @__asan_store4_noabort(i32 %505)
  store ptr %call.i1443, ptr %arrayidx842, align 4
  %call.i1444 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.122, i32 noundef 4, ptr noundef %add.ptr804, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai1) #3
  %506 = load ptr, ptr @hws, align 4
  %arrayidx845 = getelementptr ptr, ptr %506, i32 178
  %507 = ptrtoint ptr %arrayidx845 to i32
  call void @__asan_store4_noabort(i32 %507)
  store ptr %call.i1444, ptr %arrayidx845, align 4
  %call.i1445 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr804, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai1) #3
  %508 = load ptr, ptr @hws, align 4
  %arrayidx848 = getelementptr ptr, ptr %508, i32 179
  %509 = ptrtoint ptr %arrayidx848 to i32
  call void @__asan_store4_noabort(i32 %509)
  store ptr %call.i1445, ptr %arrayidx848, align 4
  %call.i1446 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.128, i32 noundef 4, ptr noundef %add.ptr804, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai2) #3
  %510 = load ptr, ptr @hws, align 4
  %arrayidx851 = getelementptr ptr, ptr %510, i32 180
  %511 = ptrtoint ptr %arrayidx851 to i32
  call void @__asan_store4_noabort(i32 %511)
  store ptr %call.i1446, ptr %arrayidx851, align 4
  %call.i1447 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr804, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai2) #3
  %512 = load ptr, ptr @hws, align 4
  %arrayidx854 = getelementptr ptr, ptr %512, i32 181
  %513 = ptrtoint ptr %arrayidx854 to i32
  call void @__asan_store4_noabort(i32 %513)
  store ptr %call.i1447, ptr %arrayidx854, align 4
  %add.ptr855 = getelementptr i8, ptr %call255, i32 128
  %call.i1448 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr855, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %514 = load ptr, ptr @hws, align 4
  %arrayidx857 = getelementptr ptr, ptr %514, i32 205
  %515 = ptrtoint ptr %arrayidx857 to i32
  call void @__asan_store4_noabort(i32 %515)
  store ptr %call.i1448, ptr %arrayidx857, align 4
  %call.i1449 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.117, i32 noundef 4, ptr noundef %add.ptr855, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %516 = load ptr, ptr @hws, align 4
  %arrayidx860 = getelementptr ptr, ptr %516, i32 206
  %517 = ptrtoint ptr %arrayidx860 to i32
  call void @__asan_store4_noabort(i32 %517)
  store ptr %call.i1449, ptr %arrayidx860, align 4
  %call.i1450 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.116, i32 noundef 4, ptr noundef %add.ptr855, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %518 = load ptr, ptr @hws, align 4
  %arrayidx863 = getelementptr ptr, ptr %518, i32 207
  %519 = ptrtoint ptr %arrayidx863 to i32
  call void @__asan_store4_noabort(i32 %519)
  store ptr %call.i1450, ptr %arrayidx863, align 4
  %call.i1451 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.246) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1451)
  %tobool865.not = icmp eq i32 %call.i1451, 0
  br i1 %tobool865.not, label %if.end746.if.end873_crit_edge, label %if.then866

if.end746.if.end873_crit_edge:                    ; preds = %if.end746
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end873

if.then866:                                       ; preds = %if.end746
  call void @__sanitizer_cov_trace_pc() #5
  %call.i1452 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %add.ptr855, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %520 = load ptr, ptr @hws, align 4
  %arrayidx869 = getelementptr ptr, ptr %520, i32 216
  %521 = ptrtoint ptr %arrayidx869 to i32
  call void @__asan_store4_noabort(i32 %521)
  store ptr %call.i1452, ptr %arrayidx869, align 4
  %call.i1453 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %add.ptr855, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %522 = load ptr, ptr @hws, align 4
  %arrayidx872 = getelementptr ptr, ptr %522, i32 215
  %523 = ptrtoint ptr %arrayidx872 to i32
  call void @__asan_store4_noabort(i32 %523)
  store ptr %call.i1453, ptr %arrayidx872, align 4
  br label %if.end873

if.end873:                                        ; preds = %if.then866, %if.end746.if.end873_crit_edge
  %call.i1454 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.111, i32 noundef 4, ptr noundef %add.ptr855, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %524 = load ptr, ptr @hws, align 4
  %arrayidx876 = getelementptr ptr, ptr %524, i32 143
  %525 = ptrtoint ptr %arrayidx876 to i32
  call void @__asan_store4_noabort(i32 %525)
  store ptr %call.i1454, ptr %arrayidx876, align 4
  %call.i1455 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr855, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %526 = load ptr, ptr @hws, align 4
  %arrayidx879 = getelementptr ptr, ptr %526, i32 174
  %527 = ptrtoint ptr %arrayidx879 to i32
  call void @__asan_store4_noabort(i32 %527)
  store ptr %call.i1455, ptr %arrayidx879, align 4
  %call.i1456 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr855, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %528 = load ptr, ptr @hws, align 4
  %arrayidx882 = getelementptr ptr, ptr %528, i32 203
  %529 = ptrtoint ptr %arrayidx882 to i32
  call void @__asan_store4_noabort(i32 %529)
  store ptr %call.i1456, ptr %arrayidx882, align 4
  %call.i1457 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef %add.ptr855, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %530 = load ptr, ptr @hws, align 4
  %arrayidx885 = getelementptr ptr, ptr %530, i32 204
  %531 = ptrtoint ptr %arrayidx885 to i32
  call void @__asan_store4_noabort(i32 %531)
  store ptr %call.i1457, ptr %arrayidx885, align 4
  %call.i1458 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %add.ptr855, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %532 = load ptr, ptr @hws, align 4
  %arrayidx888 = getelementptr ptr, ptr %532, i32 210
  %533 = ptrtoint ptr %arrayidx888 to i32
  call void @__asan_store4_noabort(i32 %533)
  store ptr %call.i1458, ptr %arrayidx888, align 4
  %call.i1459 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr855, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %534 = load ptr, ptr @hws, align 4
  %arrayidx891 = getelementptr ptr, ptr %534, i32 159
  %535 = ptrtoint ptr %arrayidx891 to i32
  call void @__asan_store4_noabort(i32 %535)
  store ptr %call.i1459, ptr %arrayidx891, align 4
  %call.i1460 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr855, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %536 = load ptr, ptr @hws, align 4
  %arrayidx894 = getelementptr ptr, ptr %536, i32 171
  %537 = ptrtoint ptr %arrayidx894 to i32
  call void @__asan_store4_noabort(i32 %537)
  store ptr %call.i1460, ptr %arrayidx894, align 4
  %call.i1461 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr855, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %538 = load ptr, ptr @hws, align 4
  %arrayidx897 = getelementptr ptr, ptr %538, i32 172
  %539 = ptrtoint ptr %arrayidx897 to i32
  call void @__asan_store4_noabort(i32 %539)
  store ptr %call.i1461, ptr %arrayidx897, align 4
  %call.i1462 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %add.ptr855, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %540 = load ptr, ptr @hws, align 4
  %arrayidx900 = getelementptr ptr, ptr %540, i32 173
  %541 = ptrtoint ptr %arrayidx900 to i32
  call void @__asan_store4_noabort(i32 %541)
  store ptr %call.i1462, ptr %arrayidx900, align 4
  %call.i1463 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.135, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr406, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %542 = load ptr, ptr @hws, align 4
  %arrayidx903 = getelementptr ptr, ptr %542, i32 239
  %543 = ptrtoint ptr %arrayidx903 to i32
  call void @__asan_store4_noabort(i32 %543)
  store ptr %call.i1463, ptr %arrayidx903, align 4
  %call.i1464 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.136, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr406, i8 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %544 = load ptr, ptr @hws, align 4
  %arrayidx906 = getelementptr ptr, ptr %544, i32 242
  %545 = ptrtoint ptr %arrayidx906 to i32
  call void @__asan_store4_noabort(i32 %545)
  store ptr %call.i1464, ptr %arrayidx906, align 4
  tail call void @imx_mmdc_mask_handshake(ptr noundef %call255, i32 noundef 0) #3
  %546 = load ptr, ptr @hws, align 4
  tail call void @imx_check_clk_hws(ptr noundef %546, i32 noundef 250) #3
  %547 = load ptr, ptr @clk_hw_data, align 4
  %call907 = tail call i32 @of_clk_add_hw_provider(ptr noundef %ccm_node, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %547) #3
  %548 = load ptr, ptr @hws, align 4
  %arrayidx908 = getelementptr ptr, ptr %548, i32 96
  %549 = ptrtoint ptr %arrayidx908 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %arrayidx908, align 4
  %clk909 = getelementptr inbounds %struct.clk_hw, ptr %550, i32 0, i32 1
  %551 = ptrtoint ptr %clk909 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %clk909, align 4
  %call910 = tail call i32 @clk_set_rate(ptr noundef %552, i32 noundef 99000000) #3
  %553 = load ptr, ptr @hws, align 4
  %arrayidx911 = getelementptr ptr, ptr %553, i32 62
  %554 = ptrtoint ptr %arrayidx911 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %arrayidx911, align 4
  %clk912 = getelementptr inbounds %struct.clk_hw, ptr %555, i32 0, i32 1
  %556 = ptrtoint ptr %clk912 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %clk912, align 4
  %arrayidx913 = getelementptr ptr, ptr %553, i32 3
  %558 = ptrtoint ptr %arrayidx913 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %arrayidx913, align 4
  %clk914 = getelementptr inbounds %struct.clk_hw, ptr %559, i32 0, i32 1
  %560 = ptrtoint ptr %clk914 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %clk914, align 4
  %call915 = tail call i32 @clk_set_parent(ptr noundef %557, ptr noundef %561) #3
  %562 = load ptr, ptr @hws, align 4
  %arrayidx916 = getelementptr ptr, ptr %562, i32 85
  %563 = ptrtoint ptr %arrayidx916 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %arrayidx916, align 4
  %clk917 = getelementptr inbounds %struct.clk_hw, ptr %564, i32 0, i32 1
  %565 = ptrtoint ptr %clk917 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %clk917, align 4
  %arrayidx918 = getelementptr ptr, ptr %562, i32 94
  %567 = ptrtoint ptr %arrayidx918 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %arrayidx918, align 4
  %clk919 = getelementptr inbounds %struct.clk_hw, ptr %568, i32 0, i32 1
  %569 = ptrtoint ptr %clk919 to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %clk919, align 4
  %call920 = tail call i32 @clk_set_parent(ptr noundef %566, ptr noundef %570) #3
  %571 = load ptr, ptr @hws, align 4
  %arrayidx921 = getelementptr ptr, ptr %571, i32 60
  %572 = ptrtoint ptr %arrayidx921 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %arrayidx921, align 4
  %clk922 = getelementptr inbounds %struct.clk_hw, ptr %573, i32 0, i32 1
  %574 = ptrtoint ptr %clk922 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %clk922, align 4
  %arrayidx923 = getelementptr ptr, ptr %571, i32 26
  %576 = ptrtoint ptr %arrayidx923 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %arrayidx923, align 4
  %clk924 = getelementptr inbounds %struct.clk_hw, ptr %577, i32 0, i32 1
  %578 = ptrtoint ptr %clk924 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %clk924, align 4
  %call925 = tail call i32 @clk_set_parent(ptr noundef %575, ptr noundef %579) #3
  %580 = load ptr, ptr @hws, align 4
  %arrayidx926 = getelementptr ptr, ptr %580, i32 85
  %581 = ptrtoint ptr %arrayidx926 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %arrayidx926, align 4
  %clk927 = getelementptr inbounds %struct.clk_hw, ptr %582, i32 0, i32 1
  %583 = ptrtoint ptr %clk927 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %clk927, align 4
  %arrayidx928 = getelementptr ptr, ptr %580, i32 60
  %585 = ptrtoint ptr %arrayidx928 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %arrayidx928, align 4
  %clk929 = getelementptr inbounds %struct.clk_hw, ptr %586, i32 0, i32 1
  %587 = ptrtoint ptr %clk929 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %clk929, align 4
  %call930 = tail call i32 @clk_set_parent(ptr noundef %584, ptr noundef %588) #3
  %589 = load ptr, ptr @hws, align 4
  %arrayidx931 = getelementptr ptr, ptr %589, i32 96
  %590 = ptrtoint ptr %arrayidx931 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %arrayidx931, align 4
  %clk932 = getelementptr inbounds %struct.clk_hw, ptr %591, i32 0, i32 1
  %592 = ptrtoint ptr %clk932 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %clk932, align 4
  %call933 = tail call i32 @clk_set_rate(ptr noundef %593, i32 noundef 132000000) #3
  %594 = load ptr, ptr @hws, align 4
  %arrayidx934 = getelementptr ptr, ptr %594, i32 82
  %595 = ptrtoint ptr %arrayidx934 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %arrayidx934, align 4
  %clk935 = getelementptr inbounds %struct.clk_hw, ptr %596, i32 0, i32 1
  %597 = ptrtoint ptr %clk935 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %clk935, align 4
  %arrayidx936 = getelementptr ptr, ptr %594, i32 3
  %599 = ptrtoint ptr %arrayidx936 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %arrayidx936, align 4
  %clk937 = getelementptr inbounds %struct.clk_hw, ptr %600, i32 0, i32 1
  %601 = ptrtoint ptr %clk937 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %clk937, align 4
  %call938 = tail call i32 @clk_set_parent(ptr noundef %598, ptr noundef %602) #3
  %603 = load ptr, ptr @hws, align 4
  %arrayidx939 = getelementptr ptr, ptr %603, i32 44
  %604 = ptrtoint ptr %arrayidx939 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %arrayidx939, align 4
  %clk940 = getelementptr inbounds %struct.clk_hw, ptr %605, i32 0, i32 1
  %606 = ptrtoint ptr %clk940 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %clk940, align 4
  %call941 = tail call i32 @clk_set_rate(ptr noundef %607, i32 noundef 50000000) #3
  %608 = load ptr, ptr @hws, align 4
  %arrayidx942 = getelementptr ptr, ptr %608, i32 45
  %609 = ptrtoint ptr %arrayidx942 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %arrayidx942, align 4
  %clk943 = getelementptr inbounds %struct.clk_hw, ptr %610, i32 0, i32 1
  %611 = ptrtoint ptr %clk943 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %clk943, align 4
  %call944 = tail call i32 @clk_set_rate(ptr noundef %612, i32 noundef 50000000) #3
  %613 = load ptr, ptr @hws, align 4
  %arrayidx945 = getelementptr ptr, ptr %613, i32 138
  %614 = ptrtoint ptr %arrayidx945 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %arrayidx945, align 4
  %clk946 = getelementptr inbounds %struct.clk_hw, ptr %615, i32 0, i32 1
  %616 = ptrtoint ptr %clk946 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %clk946, align 4
  %call947 = tail call i32 @clk_set_rate(ptr noundef %617, i32 noundef 24000000) #3
  %call.i1465 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1465)
  %tobool949.not = icmp eq i32 %call.i1465, 0
  br i1 %tobool949.not, label %if.end873.if.end954_crit_edge, label %if.then950

if.end873.if.end954_crit_edge:                    ; preds = %if.end873
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end954

if.then950:                                       ; preds = %if.end873
  %618 = load ptr, ptr @hws, align 4
  %arrayidx951 = getelementptr ptr, ptr %618, i32 127
  %619 = ptrtoint ptr %arrayidx951 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %arrayidx951, align 4
  %clk952 = getelementptr inbounds %struct.clk_hw, ptr %620, i32 0, i32 1
  %621 = ptrtoint ptr %clk952 to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %clk952, align 4
  %call.i1466 = tail call i32 @clk_prepare(ptr noundef %622) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1466)
  %tobool.not.i = icmp eq i32 %call.i1466, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then950.if.end954_crit_edge

if.then950.if.end954_crit_edge:                   ; preds = %if.then950
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end954

if.end.i:                                         ; preds = %if.then950
  %call1.i = tail call i32 @clk_enable(ptr noundef %622) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end954_crit_edge, label %if.then3.i

if.end.i.if.end954_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end954

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %622) #3
  br label %if.end954

if.end954:                                        ; preds = %if.then3.i, %if.end.i.if.end954_crit_edge, %if.then950.if.end954_crit_edge, %if.end873.if.end954_crit_edge
  %623 = load ptr, ptr @hws, align 4
  %arrayidx955 = getelementptr ptr, ptr %623, i32 34
  %624 = ptrtoint ptr %arrayidx955 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %arrayidx955, align 4
  %clk956 = getelementptr inbounds %struct.clk_hw, ptr %625, i32 0, i32 1
  %626 = ptrtoint ptr %clk956 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %clk956, align 4
  %call.i1467 = tail call i32 @clk_prepare(ptr noundef %627) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1467)
  %tobool.not.i1468 = icmp eq i32 %call.i1467, 0
  br i1 %tobool.not.i1468, label %if.end.i1471, label %if.end954.clk_prepare_enable.exit1473_crit_edge

if.end954.clk_prepare_enable.exit1473_crit_edge:  ; preds = %if.end954
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1473

if.end.i1471:                                     ; preds = %if.end954
  %call1.i1469 = tail call i32 @clk_enable(ptr noundef %627) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1469)
  %tobool2.not.i1470 = icmp eq i32 %call1.i1469, 0
  br i1 %tobool2.not.i1470, label %if.end.i1471.clk_prepare_enable.exit1473_crit_edge, label %if.then3.i1472

if.end.i1471.clk_prepare_enable.exit1473_crit_edge: ; preds = %if.end.i1471
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1473

if.then3.i1472:                                   ; preds = %if.end.i1471
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %627) #3
  br label %clk_prepare_enable.exit1473

clk_prepare_enable.exit1473:                      ; preds = %if.then3.i1472, %if.end.i1471.clk_prepare_enable.exit1473_crit_edge, %if.end954.clk_prepare_enable.exit1473_crit_edge
  %628 = load ptr, ptr @hws, align 4
  %arrayidx958 = getelementptr ptr, ptr %628, i32 35
  %629 = ptrtoint ptr %arrayidx958 to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %arrayidx958, align 4
  %clk959 = getelementptr inbounds %struct.clk_hw, ptr %630, i32 0, i32 1
  %631 = ptrtoint ptr %clk959 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %clk959, align 4
  %call.i1474 = tail call i32 @clk_prepare(ptr noundef %632) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1474)
  %tobool.not.i1475 = icmp eq i32 %call.i1474, 0
  br i1 %tobool.not.i1475, label %if.end.i1478, label %clk_prepare_enable.exit1473.clk_prepare_enable.exit1480_crit_edge

clk_prepare_enable.exit1473.clk_prepare_enable.exit1480_crit_edge: ; preds = %clk_prepare_enable.exit1473
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1480

if.end.i1478:                                     ; preds = %clk_prepare_enable.exit1473
  %call1.i1476 = tail call i32 @clk_enable(ptr noundef %632) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1476)
  %tobool2.not.i1477 = icmp eq i32 %call1.i1476, 0
  br i1 %tobool2.not.i1477, label %if.end.i1478.clk_prepare_enable.exit1480_crit_edge, label %if.then3.i1479

if.end.i1478.clk_prepare_enable.exit1480_crit_edge: ; preds = %if.end.i1478
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit1480

if.then3.i1479:                                   ; preds = %if.end.i1478
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %632) #3
  br label %clk_prepare_enable.exit1480

clk_prepare_enable.exit1480:                      ; preds = %if.then3.i1479, %if.end.i1478.clk_prepare_enable.exit1480_crit_edge, %clk_prepare_enable.exit1473.clk_prepare_enable.exit1480_crit_edge
  %633 = load ptr, ptr @hws, align 4
  %arrayidx961 = getelementptr ptr, ptr %633, i32 78
  %634 = ptrtoint ptr %arrayidx961 to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %arrayidx961, align 4
  %clk962 = getelementptr inbounds %struct.clk_hw, ptr %635, i32 0, i32 1
  %636 = ptrtoint ptr %clk962 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %clk962, align 4
  %arrayidx963 = getelementptr ptr, ptr %633, i32 54
  %638 = ptrtoint ptr %arrayidx963 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %arrayidx963, align 4
  %clk964 = getelementptr inbounds %struct.clk_hw, ptr %639, i32 0, i32 1
  %640 = ptrtoint ptr %clk964 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %clk964, align 4
  %call965 = tail call i32 @clk_set_parent(ptr noundef %637, ptr noundef %641) #3
  %call.i1481 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.246) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1481)
  %tobool967.not = icmp eq i32 %call.i1481, 0
  br i1 %tobool967.not, label %if.else974, label %if.then968

if.then968:                                       ; preds = %clk_prepare_enable.exit1480
  call void @__sanitizer_cov_trace_pc() #5
  %642 = load ptr, ptr @hws, align 4
  %arrayidx969 = getelementptr ptr, ptr %642, i32 74
  %arrayidx971 = getelementptr ptr, ptr %642, i32 27
  br label %if.end984.sink.split

if.else974:                                       ; preds = %clk_prepare_enable.exit1480
  %call.i1482 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1482)
  %tobool976.not = icmp eq i32 %call.i1482, 0
  br i1 %tobool976.not, label %if.else974.if.end984_crit_edge, label %if.then977

if.else974.if.end984_crit_edge:                   ; preds = %if.else974
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end984

if.then977:                                       ; preds = %if.else974
  call void @__sanitizer_cov_trace_pc() #5
  %643 = load ptr, ptr @hws, align 4
  %arrayidx978 = getelementptr ptr, ptr %643, i32 231
  %arrayidx980 = getelementptr ptr, ptr %643, i32 42
  br label %if.end984.sink.split

if.end984.sink.split:                             ; preds = %if.then977, %if.then968
  %arrayidx980.sink = phi ptr [ %arrayidx980, %if.then977 ], [ %arrayidx971, %if.then968 ]
  %.pn.in = phi ptr [ %arrayidx978, %if.then977 ], [ %arrayidx969, %if.then968 ]
  %644 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %644)
  %.pn = load ptr, ptr %.pn.in, align 4
  %.sink.in = getelementptr inbounds %struct.clk_hw, ptr %.pn, i32 0, i32 1
  %645 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %645)
  %.sink = load ptr, ptr %.sink.in, align 4
  %646 = ptrtoint ptr %arrayidx980.sink to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %arrayidx980.sink, align 4
  %clk981 = getelementptr inbounds %struct.clk_hw, ptr %647, i32 0, i32 1
  %648 = ptrtoint ptr %clk981 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %clk981, align 4
  %call982 = tail call i32 @clk_set_parent(ptr noundef %.sink, ptr noundef %649) #3
  br label %if.end984

if.end984:                                        ; preds = %if.end984.sink.split, %if.else974.if.end984_crit_edge
  %650 = load ptr, ptr @hws, align 4
  %arrayidx985 = getelementptr ptr, ptr %650, i32 77
  %651 = ptrtoint ptr %arrayidx985 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %arrayidx985, align 4
  %clk986 = getelementptr inbounds %struct.clk_hw, ptr %652, i32 0, i32 1
  %653 = ptrtoint ptr %clk986 to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %clk986, align 4
  %arrayidx987 = getelementptr ptr, ptr %650, i32 38
  %655 = ptrtoint ptr %arrayidx987 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %arrayidx987, align 4
  %clk988 = getelementptr inbounds %struct.clk_hw, ptr %656, i32 0, i32 1
  %657 = ptrtoint ptr %clk988 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %clk988, align 4
  %call989 = tail call i32 @clk_set_parent(ptr noundef %654, ptr noundef %658) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end984, %do.end
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
declare dso_local ptr @imx_clk_hw_pfd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_gate2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 309)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 309)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !217, !219, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615}
!llvm.module.flags = !{!617, !618, !619, !620, !621, !622, !623, !624}
!llvm.ident = !{!625}

!0 = !{ptr @__of_table_imx6ul, !1, !"__of_table_imx6ul", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 520, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 121, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 127, i32 43}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 129, i32 59}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 130, i32 58}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 133, i32 62}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 134, i32 62}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 136, i32 43}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 141, i32 32}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 142, i32 32}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 143, i32 32}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 144, i32 32}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 145, i32 32}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 146, i32 32}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 147, i32 32}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 149, i32 58}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 150, i32 61}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 151, i32 58}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 152, i32 57}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 153, i32 57}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 154, i32 59}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 155, i32 58}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 157, i32 28}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 158, i32 28}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 159, i32 28}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 160, i32 28}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 161, i32 28}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 162, i32 28}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 163, i32 28}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 174, i32 53}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 175, i32 29}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 176, i32 33}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 177, i32 31}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 178, i32 31}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 179, i32 30}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 180, i32 34}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 188, i32 28}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 189, i32 28}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 195, i32 33}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 196, i32 33}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 199, i32 45}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 200, i32 45}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 201, i32 45}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 202, i32 45}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 203, i32 45}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 204, i32 45}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 205, i32 45}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 206, i32 45}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 208, i32 29}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 210, i32 30}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 213, i32 35}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 214, i32 57}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 215, i32 29}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 217, i32 35}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 219, i32 35}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 221, i32 35}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 223, i32 35}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 227, i32 54}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 228, i32 54}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 229, i32 54}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 230, i32 54}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 236, i32 36}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 237, i32 28}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 238, i32 30}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 239, i32 34}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 240, i32 30}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 241, i32 33}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 242, i32 34}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 243, i32 37}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 244, i32 37}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 245, i32 35}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 246, i32 31}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 247, i32 30}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 248, i32 33}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 249, i32 33}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 250, i32 31}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 251, i32 37}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 252, i32 31}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 253, i32 32}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 254, i32 33}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 255, i32 30}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 257, i32 33}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 258, i32 31}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 259, i32 31}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 260, i32 34}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 261, i32 32}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 263, i32 33}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 264, i32 30}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 266, i32 35}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 267, i32 31}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 269, i32 32}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 270, i32 36}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 271, i32 32}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 272, i32 31}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 274, i32 37}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 275, i32 37}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 277, i32 31}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 278, i32 31}
!196 = !{ptr @.str.97, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 279, i32 27}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 281, i32 60}
!200 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 282, i32 59}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 283, i32 60}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 284, i32 59}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 286, i32 48}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 287, i32 48}
!210 = !{ptr @.str.104, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 289, i32 32}
!212 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 290, i32 33}
!214 = !{ptr @.str.106, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 291, i32 25}
!216 = !{ptr @.str.107, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 292, i32 31}
!219 = !{ptr @.str.109, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.110, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 293, i32 31}
!222 = !{ptr @.str.111, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 294, i32 34}
!224 = !{ptr @.str.112, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 295, i32 28}
!226 = !{ptr @.str.113, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 296, i32 29}
!228 = !{ptr @.str.114, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 297, i32 30}
!230 = !{ptr @.str.115, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 298, i32 29}
!232 = !{ptr @.str.116, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 299, i32 32}
!234 = !{ptr @.str.117, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 300, i32 32}
!236 = !{ptr @.str.118, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 301, i32 30}
!238 = !{ptr @.str.119, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 302, i32 30}
!240 = !{ptr @.str.120, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 303, i32 30}
!242 = !{ptr @.str.121, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 304, i32 30}
!244 = !{ptr @.str.122, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 305, i32 30}
!246 = !{ptr @.str.123, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 307, i32 32}
!248 = !{ptr @.str.124, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 308, i32 32}
!250 = !{ptr @.str.125, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 310, i32 30}
!252 = !{ptr @.str.126, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 311, i32 30}
!254 = !{ptr @.str.127, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 312, i32 30}
!256 = !{ptr @.str.128, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 313, i32 30}
!258 = !{ptr @.str.129, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 314, i32 31}
!260 = !{ptr @.str.130, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 315, i32 31}
!262 = !{ptr @.str.131, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 317, i32 30}
!264 = !{ptr @.str.132, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 319, i32 32}
!266 = !{ptr @.str.133, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 320, i32 31}
!268 = !{ptr @.str.134, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 322, i32 35}
!270 = !{ptr @.str.135, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 324, i32 30}
!272 = !{ptr @.str.136, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 325, i32 30}
!274 = !{ptr @.str.137, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 327, i32 49}
!276 = !{ptr @.str.138, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 328, i32 54}
!278 = !{ptr @.str.139, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 329, i32 53}
!280 = !{ptr @.str.140, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 333, i32 28}
!282 = !{ptr @.str.141, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 334, i32 28}
!284 = !{ptr @.str.142, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 335, i32 28}
!286 = !{ptr @.str.143, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 336, i32 29}
!288 = !{ptr @.str.144, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 337, i32 29}
!290 = !{ptr @.str.145, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 339, i32 30}
!292 = !{ptr @.str.146, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 340, i32 31}
!294 = !{ptr @.str.147, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 341, i32 30}
!296 = !{ptr @.str.148, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 343, i32 30}
!298 = !{ptr @.str.149, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 344, i32 27}
!300 = !{ptr @.str.150, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 345, i32 30}
!302 = !{ptr @.str.151, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 347, i32 29}
!304 = !{ptr @.str.152, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 348, i32 32}
!306 = !{ptr @.str.153, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 349, i32 29}
!308 = !{ptr @.str.154, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 350, i32 32}
!310 = !{ptr @.str.155, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 351, i32 29}
!312 = !{ptr @.str.156, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 352, i32 32}
!314 = !{ptr @.str.157, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 353, i32 30}
!316 = !{ptr @.str.158, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 354, i32 33}
!318 = !{ptr @.str.159, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 356, i32 29}
!320 = !{ptr @.str.160, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 357, i32 27}
!322 = !{ptr @.str.161, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 360, i32 28}
!324 = !{ptr @.str.162, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 361, i32 28}
!326 = !{ptr @.str.163, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 362, i32 28}
!328 = !{ptr @.str.164, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 363, i32 28}
!330 = !{ptr @.str.165, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 364, i32 26}
!332 = !{ptr @.str.166, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 365, i32 30}
!334 = !{ptr @.str.167, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 366, i32 33}
!336 = !{ptr @.str.168, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 367, i32 27}
!338 = !{ptr @.str.169, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 368, i32 27}
!340 = !{ptr @.str.170, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 369, i32 26}
!342 = !{ptr @.str.171, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 370, i32 29}
!344 = !{ptr @.str.172, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 371, i32 32}
!346 = !{ptr @.str.173, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 372, i32 30}
!348 = !{ptr @.str.174, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 373, i32 33}
!350 = !{ptr @.str.175, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 374, i32 27}
!352 = !{ptr @.str.176, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 375, i32 27}
!354 = !{ptr @.str.177, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 379, i32 33}
!356 = !{ptr @.str.178, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 380, i32 31}
!358 = !{ptr @.str.179, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 381, i32 31}
!360 = !{ptr @.str.180, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 383, i32 26}
!362 = !{ptr @.str.181, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 384, i32 26}
!364 = !{ptr @.str.182, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 385, i32 26}
!366 = !{ptr @.str.183, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 386, i32 27}
!368 = !{ptr @.str.184, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 387, i32 28}
!370 = !{ptr @.str.185, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 388, i32 27}
!372 = !{ptr @.str.186, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 389, i32 30}
!374 = !{ptr @.str.187, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @.str.188, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 390, i32 25}
!377 = !{ptr @.str.189, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 398, i32 25}
!379 = !{ptr @.str.190, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 399, i32 30}
!381 = !{ptr @.str.191, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 400, i32 33}
!383 = !{ptr @.str.192, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 405, i32 32}
!385 = !{ptr @.str.193, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 406, i32 31}
!387 = !{ptr @.str.194, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 408, i32 30}
!389 = !{ptr @.str.195, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 409, i32 33}
!391 = !{ptr @.str.196, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 410, i32 30}
!393 = !{ptr @.str.197, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 411, i32 27}
!395 = !{ptr @.str.198, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 412, i32 26}
!397 = !{ptr @.str.199, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 413, i32 27}
!399 = !{ptr @.str.200, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 414, i32 33}
!401 = !{ptr @.str.201, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 415, i32 32}
!403 = !{ptr @.str.202, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 416, i32 32}
!405 = !{ptr @.str.203, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 420, i32 28}
!407 = !{ptr @.str.204, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 421, i32 26}
!409 = !{ptr @.str.205, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 422, i32 26}
!411 = !{ptr @.str.206, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 423, i32 26}
!413 = !{ptr @.str.207, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 424, i32 26}
!415 = !{ptr @.str.208, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 425, i32 33}
!417 = !{ptr @.str.209, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 426, i32 29}
!419 = !{ptr @.str.210, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 427, i32 28}
!421 = !{ptr @.str.211, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 428, i32 29}
!423 = !{ptr @.str.212, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 431, i32 25}
!425 = !{ptr @.str.213, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 432, i32 26}
!427 = !{ptr @.str.214, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 433, i32 25}
!429 = !{ptr @.str.215, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 434, i32 27}
!431 = !{ptr @.str.216, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 435, i32 26}
!433 = !{ptr @.str.217, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 436, i32 27}
!435 = !{ptr @.str.218, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 437, i32 31}
!437 = !{ptr @.str.219, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 438, i32 26}
!439 = !{ptr @.str.220, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 439, i32 29}
!441 = !{ptr @.str.221, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 440, i32 30}
!443 = !{ptr @.str.222, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 441, i32 33}
!445 = !{ptr @.str.223, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 442, i32 30}
!447 = !{ptr @.str.224, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 443, i32 33}
!449 = !{ptr @.str.225, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 444, i32 26}
!451 = !{ptr @.str.226, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 445, i32 29}
!453 = !{ptr @.str.227, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 446, i32 26}
!455 = !{ptr @.str.228, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 447, i32 29}
!457 = !{ptr @.str.229, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 450, i32 28}
!459 = !{ptr @.str.230, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 451, i32 28}
!461 = !{ptr @.str.231, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 452, i32 28}
!463 = !{ptr @.str.232, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 454, i32 27}
!465 = !{ptr @.str.233, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 455, i32 27}
!467 = !{ptr @.str.234, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 457, i32 25}
!469 = !{ptr @.str.235, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 458, i32 26}
!471 = !{ptr @.str.236, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 459, i32 30}
!473 = !{ptr @.str.237, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 460, i32 33}
!475 = !{ptr @.str.238, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 461, i32 27}
!477 = !{ptr @.str.239, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 462, i32 26}
!479 = !{ptr @.str.240, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 463, i32 26}
!481 = !{ptr @.str.241, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 464, i32 26}
!483 = !{ptr @.str.242, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 465, i32 26}
!485 = !{ptr @.str.243, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 468, i32 26}
!487 = !{ptr @.str.244, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 469, i32 26}
!489 = !{ptr @clk_hw_data, !490, !"clk_hw_data", i1 false, i1 false}
!490 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 72, i32 36}
!491 = !{ptr @hws, !492, !"hws", i1 false, i1 false}
!492 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 71, i32 24}
!493 = !{ptr @pll_bypass_src_sels, !494, !"pll_bypass_src_sels", i1 false, i1 false}
!494 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 20, i32 20}
!495 = !{ptr @pll1_bypass_sels, !496, !"pll1_bypass_sels", i1 false, i1 false}
!496 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 21, i32 20}
!497 = !{ptr @pll2_bypass_sels, !498, !"pll2_bypass_sels", i1 false, i1 false}
!498 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 22, i32 20}
!499 = !{ptr @pll3_bypass_sels, !500, !"pll3_bypass_sels", i1 false, i1 false}
!500 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 23, i32 20}
!501 = !{ptr @pll4_bypass_sels, !502, !"pll4_bypass_sels", i1 false, i1 false}
!502 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 24, i32 20}
!503 = !{ptr @pll5_bypass_sels, !504, !"pll5_bypass_sels", i1 false, i1 false}
!504 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 25, i32 20}
!505 = !{ptr @pll6_bypass_sels, !506, !"pll6_bypass_sels", i1 false, i1 false}
!506 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 26, i32 20}
!507 = !{ptr @pll7_bypass_sels, !508, !"pll7_bypass_sels", i1 false, i1 false}
!508 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 27, i32 20}
!509 = !{ptr @clk_enet_ref_table, !510, !"clk_enet_ref_table", i1 false, i1 false}
!510 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 74, i32 35}
!511 = !{ptr @post_div_table, !512, !"post_div_table", i1 false, i1 false}
!512 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 82, i32 35}
!513 = !{ptr @video_div_table, !514, !"video_div_table", i1 false, i1 false}
!514 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 89, i32 35}
!515 = !{ptr @ca7_secondary_sels, !516, !"ca7_secondary_sels", i1 false, i1 false}
!516 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 28, i32 20}
!517 = !{ptr @step_sels, !518, !"step_sels", i1 false, i1 false}
!518 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 29, i32 20}
!519 = !{ptr @pll1_sw_sels, !520, !"pll1_sw_sels", i1 false, i1 false}
!520 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 30, i32 20}
!521 = !{ptr @axi_alt_sels, !522, !"axi_alt_sels", i1 false, i1 false}
!522 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 31, i32 20}
!523 = !{ptr @axi_sels, !524, !"axi_sels", i1 false, i1 false}
!524 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 32, i32 20}
!525 = !{ptr @periph_pre_sels, !526, !"periph_pre_sels", i1 false, i1 false}
!526 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 33, i32 20}
!527 = !{ptr @periph2_pre_sels, !528, !"periph2_pre_sels", i1 false, i1 false}
!528 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 34, i32 20}
!529 = !{ptr @periph_clk2_sels, !530, !"periph_clk2_sels", i1 false, i1 false}
!530 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 35, i32 20}
!531 = !{ptr @periph2_clk2_sels, !532, !"periph2_clk2_sels", i1 false, i1 false}
!532 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 36, i32 20}
!533 = !{ptr @eim_slow_sels, !534, !"eim_slow_sels", i1 false, i1 false}
!534 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 42, i32 20}
!535 = !{ptr @gpmi_sels, !536, !"gpmi_sels", i1 false, i1 false}
!536 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 41, i32 20}
!537 = !{ptr @bch_sels, !538, !"bch_sels", i1 false, i1 false}
!538 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 40, i32 20}
!539 = !{ptr @usdhc_sels, !540, !"usdhc_sels", i1 false, i1 false}
!540 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 39, i32 20}
!541 = !{ptr @sai_sels, !542, !"sai_sels", i1 false, i1 false}
!542 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 44, i32 20}
!543 = !{ptr @qspi1_sels, !544, !"qspi1_sels", i1 false, i1 false}
!544 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 50, i32 20}
!545 = !{ptr @perclk_sels, !546, !"perclk_sels", i1 false, i1 false}
!546 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 55, i32 20}
!547 = !{ptr @can_sels, !548, !"can_sels", i1 false, i1 false}
!548 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 52, i32 20}
!549 = !{ptr @.str.245, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 111, i32 34}
!551 = !{ptr @esai_sels, !552, !"esai_sels", i1 false, i1 false}
!552 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 61, i32 20}
!553 = !{ptr @uart_sels, !554, !"uart_sels", i1 false, i1 false}
!554 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 54, i32 20}
!555 = !{ptr @enfc_sels, !556, !"enfc_sels", i1 false, i1 false}
!556 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 51, i32 20}
!557 = !{ptr @ldb_di0_sels, !558, !"ldb_di0_sels", i1 false, i1 false}
!558 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 47, i32 20}
!559 = !{ptr @spdif_sels, !560, !"spdif_sels", i1 false, i1 false}
!560 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 43, i32 20}
!561 = !{ptr @.str.246, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 106, i32 34}
!563 = !{ptr @sim_pre_sels, !564, !"sim_pre_sels", i1 false, i1 false}
!564 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 46, i32 20}
!565 = !{ptr @sim_sels, !566, !"sim_sels", i1 false, i1 false}
!566 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 58, i32 20}
!567 = !{ptr @epdc_pre_sels, !568, !"epdc_pre_sels", i1 false, i1 false}
!568 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 60, i32 20}
!569 = !{ptr @epdc_sels, !570, !"epdc_sels", i1 false, i1 false}
!570 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 62, i32 20}
!571 = !{ptr @ecspi_sels, !572, !"ecspi_sels", i1 false, i1 false}
!572 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 53, i32 20}
!573 = !{ptr @lcdif_pre_sels, !574, !"lcdif_pre_sels", i1 false, i1 false}
!574 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 45, i32 20}
!575 = !{ptr @lcdif_sels, !576, !"lcdif_sels", i1 false, i1 false}
!576 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 56, i32 20}
!577 = !{ptr @.str.247, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 57, i32 60}
!579 = !{ptr @csi_sels, !580, !"csi_sels", i1 false, i1 false}
!580 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 57, i32 20}
!581 = !{ptr @ldb_di0_div_sels, !582, !"ldb_di0_div_sels", i1 false, i1 false}
!582 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 48, i32 20}
!583 = !{ptr @ldb_di1_div_sels, !584, !"ldb_di1_div_sels", i1 false, i1 false}
!584 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 49, i32 20}
!585 = !{ptr @.str.248, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 63, i32 88}
!587 = !{ptr @.str.249, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 64, i32 44}
!589 = !{ptr @cko1_sels, !590, !"cko1_sels", i1 false, i1 false}
!590 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 63, i32 20}
!591 = !{ptr @.str.250, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 65, i32 91}
!593 = !{ptr @.str.251, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 67, i32 69}
!595 = !{ptr @.str.252, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 68, i32 44}
!597 = !{ptr @cko2_sels, !598, !"cko2_sels", i1 false, i1 false}
!598 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 65, i32 20}
!599 = !{ptr @cko_sels, !600, !"cko_sels", i1 false, i1 false}
!600 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 69, i32 20}
!601 = !{ptr @periph_sels, !602, !"periph_sels", i1 false, i1 false}
!602 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 37, i32 20}
!603 = !{ptr @periph2_sels, !604, !"periph2_sels", i1 false, i1 false}
!604 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 38, i32 20}
!605 = !{ptr @share_count_asrc, !606, !"share_count_asrc", i1 false, i1 false}
!606 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 97, i32 12}
!607 = !{ptr @share_count_esai, !608, !"share_count_esai", i1 false, i1 false}
!608 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 102, i32 12}
!609 = !{ptr @share_count_audio, !610, !"share_count_audio", i1 false, i1 false}
!610 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 98, i32 12}
!611 = !{ptr @share_count_sai3, !612, !"share_count_sai3", i1 false, i1 false}
!612 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 101, i32 12}
!613 = !{ptr @share_count_sai1, !614, !"share_count_sai1", i1 false, i1 false}
!614 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 99, i32 12}
!615 = !{ptr @share_count_sai2, !616, !"share_count_sai2", i1 false, i1 false}
!616 = !{!"../drivers/clk/imx/clk-imx6ul.c", i32 100, i32 12}
!617 = !{i32 1, !"wchar_size", i32 2}
!618 = !{i32 1, !"min_enum_size", i32 4}
!619 = !{i32 8, !"branch-target-enforcement", i32 0}
!620 = !{i32 8, !"sign-return-address", i32 0}
!621 = !{i32 8, !"sign-return-address-all", i32 0}
!622 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!623 = !{i32 7, !"uwtable", i32 1}
!624 = !{i32 7, !"frame-pointer", i32 2}
!625 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!626 = !{!"branch_weights", i32 1, i32 2000}
