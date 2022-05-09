; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-imx6q.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx6q.c"
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
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_imx6q = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6q_clocks_init }, section "__clk_of_table", align 4
@clk_hw_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/imx/clk-imx6q.c\00", [36 x i8] zeroinitializer }, align 32
@hws = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ckil\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ckih1\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osc\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"anaclk1\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"anaclk2\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,imx6q-anatop\00", [47 x i8] zeroinitializer }, align 32
@post_div_table = internal global { [4 x %struct.clk_div_table], [32 x i8] } { [4 x %struct.clk_div_table] [%struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@video_div_table = internal global { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll1_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@pll_bypass_src_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.49, ptr @.str.50, ptr @.str.1], [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll2_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll3_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll4_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll5_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll6_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pll7_bypass_src\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll1\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll2\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll3\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll4\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll5\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll6\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll7\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll1_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll1_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.15, ptr @.str.8], [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll2_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll2_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.16, ptr @.str.9], [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll3_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll3_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.17, ptr @.str.10], [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll4_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll4_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.18, ptr @.str.11], [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll5_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll5_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.19, ptr @.str.12], [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll6_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll6_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.20, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll7_bypass\00", [20 x i8] zeroinitializer }, align 32
@pll7_bypass_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.14], [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll1_sys\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll2_bus\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll3_usb_otg\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll4_audio\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll5_video\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll6_enet\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll7_usb_host\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbphy1\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbphy2\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbphy1_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbphy2_gate\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata_ref\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_ref\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_ref\00", [23 x i8] zeroinitializer }, align 32
@clk_enet_ref_table = internal global { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 20 }, %struct.clk_div_table { i32 1, i32 10 }, %struct.clk_div_table { i32 2, i32 5 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sata_ref_100m\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcie_ref_125m\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lvds1_sel\00", [22 x i8] zeroinitializer }, align 32
@lvds_sels = internal global { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.32, ptr @.str.33, ptr @.str.274, ptr @.str.42, ptr @.str.44, ptr @.str.43, ptr @.str.36, ptr @.str.37, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.4], [52 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lvds2_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lvds1_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lvds2_gate\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lvds1_in\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lvds2_in\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll2_pfd0_352m\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll2_pfd1_594m\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll2_pfd2_396m\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll3_pfd0_720m\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll3_pfd1_540m\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll3_pfd2_508m\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll3_pfd3_454m\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll2_198m\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll3_120m\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll3_80m\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll3_60m\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"twd\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arm\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpt_3m\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"video_27m\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpu2d_axi\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmdc_ch0_axi_podf\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpu3d_axi\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll4_post_div\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll4_audio_div\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll5_post_div\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll5_video_div\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"step\00", [27 x i8] zeroinitializer }, align 32
@step_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.53], [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll1_sw\00", [24 x i8] zeroinitializer }, align 32
@pll1_sw_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.29, ptr @.str.73], [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"periph_pre\00", [21 x i8] zeroinitializer }, align 32
@periph_pre_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.30, ptr @.str.53, ptr @.str.51, ptr @.str.58], [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"periph2_pre\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"periph_clk2_sel\00", [16 x i8] zeroinitializer }, align 32
@periph_clk2_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.31, ptr @.str.4, ptr @.str.4, ptr @.str.1], [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"periph2_clk2_sel\00", [47 x i8] zeroinitializer }, align 32
@periph2_clk2_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.31, ptr @.str.30], [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axi_sel\00", [24 x i8] zeroinitializer }, align 32
@axi_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.121, ptr @.str.53, ptr @.str.121, ptr @.str.55], [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"esai_sel\00", [23 x i8] zeroinitializer }, align 32
@audio_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.70, ptr @.str.56, ptr @.str.57, ptr @.str.31], [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"asrc_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_sel\00", [22 x i8] zeroinitializer }, align 32
@gpu_axi_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.171, ptr @.str.126], [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"can_sel\00", [24 x i8] zeroinitializer }, align 32
@can_sels = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.61, ptr @.str.4, ptr @.str.60], [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ecspi_sel\00", [22 x i8] zeroinitializer }, align 32
@ecspi_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.61, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ipg_per_sel\00", [20 x i8] zeroinitializer }, align 32
@ipg_per_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.125, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_sel\00", [23 x i8] zeroinitializer }, align 32
@uart_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.60, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpu2d_core_sel\00", [17 x i8] zeroinitializer }, align 32
@gpu2d_core_sels_2 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.223, ptr @.str.31, ptr @.str.52, ptr @.str.54], [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlb_sel\00", [24 x i8] zeroinitializer }, align 32
@gpu2d_core_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.171, ptr @.str.31, ptr @.str.51, ptr @.str.53], [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpu3d_core_sel\00", [17 x i8] zeroinitializer }, align 32
@gpu3d_core_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.223, ptr @.str.31, ptr @.str.52, ptr @.str.53], [16 x i8] zeroinitializer }, align 32
@gpu3d_shader_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.223, ptr @.str.31, ptr @.str.52, ptr @.str.54], [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpu3d_shader_sel\00", [47 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipu1_sel\00", [23 x i8] zeroinitializer }, align 32
@ipu_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.223, ptr @.str.53, ptr @.str.59, ptr @.str.55], [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipu2_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldb_di0_sel\00", [20 x i8] zeroinitializer }, align 32
@ldb_di_sels = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.72, ptr @.str.51, ptr @.str.53, ptr @.str.224, ptr @.str.31], [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldb_di1_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipu1_di0_pre_sel\00", [47 x i8] zeroinitializer }, align 32
@ipu_di_pre_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.223, ptr @.str.31, ptr @.str.72, ptr @.str.51, ptr @.str.53, ptr @.str.55], [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipu1_di1_pre_sel\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipu2_di0_pre_sel\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipu2_di1_pre_sel\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hsi_tx_sel\00", [21 x i8] zeroinitializer }, align 32
@hsi_tx_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.59, ptr @.str.53], [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcie_axi_sel\00", [19 x i8] zeroinitializer }, align 32
@pcie_axi_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.171, ptr @.str.126], [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipu1_di0_sel\00", [19 x i8] zeroinitializer }, align 32
@ipu1_di0_sels_2 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.149, ptr @.str.1, ptr @.str.1, ptr @.str.147, ptr @.str.148], [44 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipu1_di1_sel\00", [19 x i8] zeroinitializer }, align 32
@ipu1_di1_sels_2 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.150, ptr @.str.1, ptr @.str.1, ptr @.str.147, ptr @.str.148], [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipu2_di0_sel\00", [19 x i8] zeroinitializer }, align 32
@ipu2_di0_sels_2 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.151, ptr @.str.1, ptr @.str.1, ptr @.str.147, ptr @.str.148], [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipu2_di1_sel\00", [19 x i8] zeroinitializer }, align 32
@ipu2_di1_sels_2 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.152, ptr @.str.1, ptr @.str.1, ptr @.str.147, ptr @.str.148], [44 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi1_sel\00", [23 x i8] zeroinitializer }, align 32
@ssi_sels = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.70], [20 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi2_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi3_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhc1_sel\00", [21 x i8] zeroinitializer }, align 32
@usdhc_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.53, ptr @.str.51], [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhc2_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhc3_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhc4_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enfc_sel\00", [23 x i8] zeroinitializer }, align 32
@enfc_sels_2 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.51, ptr @.str.30, ptr @.str.31, ptr @.str.53, ptr @.str.57, ptr @.str.1], [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eim_sel\00", [24 x i8] zeroinitializer }, align 32
@eim_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.53, ptr @.str.31, ptr @.str.171, ptr @.str.51], [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eim_slow_sel\00", [19 x i8] zeroinitializer }, align 32
@eim_slow_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.171, ptr @.str.31, ptr @.str.53, ptr @.str.51], [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pre_axi\00", [24 x i8] zeroinitializer }, align 32
@pre_axi_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.171, ptr @.str.126], [24 x i8] zeroinitializer }, align 32
@ipu1_di0_sels = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.149, ptr @.str.1, ptr @.str.1, ptr @.str.138, ptr @.str.140], [44 x i8] zeroinitializer }, align 32
@ipu1_di1_sels = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.150, ptr @.str.1, ptr @.str.1, ptr @.str.138, ptr @.str.140], [44 x i8] zeroinitializer }, align 32
@ipu2_di0_sels = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.151, ptr @.str.1, ptr @.str.1, ptr @.str.138, ptr @.str.140], [44 x i8] zeroinitializer }, align 32
@ipu2_di1_sels = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.152, ptr @.str.1, ptr @.str.1, ptr @.str.138, ptr @.str.140], [44 x i8] zeroinitializer }, align 32
@enfc_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.51, ptr @.str.30, ptr @.str.31, ptr @.str.53], [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdo_axi_sel\00", [20 x i8] zeroinitializer }, align 32
@vdo_axi_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.171, ptr @.str.126], [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vpu_axi_sel\00", [20 x i8] zeroinitializer }, align 32
@vpu_axi_sels = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.171, ptr @.str.53, ptr @.str.51], [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cko1_sel\00", [23 x i8] zeroinitializer }, align 32
@cko1_sels = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.31, ptr @.str.30, ptr @.str.29, ptr @.str.72, ptr @.str.65, ptr @.str.171, ptr @.str.211, ptr @.str.215, ptr @.str.216, ptr @.str.218, ptr @.str.219, ptr @.str.126, ptr @.str.125, ptr @.str.133, ptr @.str.2, ptr @.str.70], [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cko2_sel\00", [23 x i8] zeroinitializer }, align 32
@cko2_sels = internal global { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.223, ptr @.str.224, ptr @.str.236, ptr @.str.254, ptr @.str.66, ptr @.str.1, ptr @.str.134, ptr @.str.68, ptr @.str.175, ptr @.str.1, ptr @.str.63, ptr @.str.214, ptr @.str.217, ptr @.str.213, ptr @.str.4, ptr @.str.202, ptr @.str.203, ptr @.str.255, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.144, ptr @.str.257, ptr @.str.135, ptr @.str.138, ptr @.str.140, ptr @.str.197, ptr @.str.256, ptr @.str.252, ptr @.str.243, ptr @.str.176, ptr @.str.220], [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cko\00", [28 x i8] zeroinitializer }, align 32
@cko_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.266, ptr @.str.267], [24 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"periph\00", [25 x i8] zeroinitializer }, align 32
@periph_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.75, ptr @.str.123], [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"periph2\00", [24 x i8] zeroinitializer }, align 32
@periph2_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.76, ptr @.str.124], [24 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"periph_clk2\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"periph2_clk2\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"esai_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"esai_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"asrc_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"asrc_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif_pred\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif_podf\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipg_per\00", [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ecspi_root\00", [21 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can_root\00", [23 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uart_serial_podf\00", [47 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ldb_di0_div_3_5\00", [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldb_di0\00", [24 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ldb_di1_div_3_5\00", [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldb_di1\00", [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mlb_podf\00", [23 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpu2d_core_podf\00", [16 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpu3d_core_podf\00", [16 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpu3d_shader\00", [19 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipu1_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipu2_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ldb_di0_podf\00", [19 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ldb_di1_podf\00", [19 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipu1_di0_pre\00", [19 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipu1_di1_pre\00", [19 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipu2_di0_pre\00", [19 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipu2_di1_pre\00", [19 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hsi_tx_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi1_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi1_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi2_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi2_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi3_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi3_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhc1_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhc2_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhc3_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhc4_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"enfc_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"enfc_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eim_podf\00", [23 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"eim_slow_podf\00", [18 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vpu_axi_podf\00", [19 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cko1_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cko2_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mmdc_ch1_axi_cg\00", [16 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmdc_ch1_axi_podf\00", [46 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apbh_dma\00", [23 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc3\00", [25 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"asrc\00", [27 x i8] zeroinitializer }, align 32
@share_count_asrc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.177 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"asrc_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"asrc_mem\00", [23 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"caam_mem\00", [23 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"caam_aclk\00", [22 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"caam_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can1_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"can1_serial\00", [20 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"can2_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"can2_serial\00", [20 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcic1\00", [26 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dcic2\00", [26 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi1\00", [25 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi2\00", [25 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi3\00", [25 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi4\00", [25 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c4\00", [27 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi5\00", [25 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"enet\00", [27 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"epit1\00", [26 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"epit2\00", [26 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"esai_extal\00", [21 x i8] zeroinitializer }, align 32
@share_count_esai = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.198 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"esai_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"esai_mem\00", [23 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpt_ipg\00", [24 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpt_ipg_per\00", [20 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpu2d_core\00", [21 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpu3d_core\00", [21 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hdmi_iahb\00", [22 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hdmi_isfr\00", [22 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mipi_core_cfg\00", [18 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iim\00", [28 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"enfc\00", [27 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdoa\00", [27 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdo_axi\00", [24 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipu1\00", [27 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipu1_di0\00", [23 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipu1_di1\00", [23 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipu2\00", [27 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipu2_di0\00", [23 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipu2_di1\00", [23 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hsi_tx\00", [25 x i8] zeroinitializer }, align 32
@share_count_mipi_core_cfg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.221 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mipi_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mlb\00", [28 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmdc_ch0_axi\00", [19 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmdc_ch1_axi\00", [19 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmdc_p0_ipg\00", [20 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocram\00", [26 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"openvg_axi\00", [21 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_axi\00", [23 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per1_bch\00", [23 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpmi_bch_apb\00", [19 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpmi_bch\00", [23 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc4\00", [25 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpmi_io\00", [24 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpmi_apb\00", [23 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rom\00", [28 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sata\00", [27 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdma\00", [27 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spba\00", [27 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@share_count_spdif = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.244 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi1_ipg\00", [23 x i8] zeroinitializer }, align 32
@share_count_ssi1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.246 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi2_ipg\00", [23 x i8] zeroinitializer }, align 32
@share_count_ssi2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.247 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi3_ipg\00", [23 x i8] zeroinitializer }, align 32
@share_count_ssi3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.248 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi1\00", [27 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi2\00", [27 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi3\00", [27 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uart_serial\00", [20 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usboh3\00", [25 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc1\00", [25 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc2\00", [25 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eim_slow\00", [23 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vpu_axi\00", [24 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pre0\00", [27 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pre1\00", [27 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pre2\00", [27 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pre3\00", [27 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prg0_axi\00", [23 x i8] zeroinitializer }, align 32
@share_count_prg0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.263 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prg1_axi\00", [23 x i8] zeroinitializer }, align 32
@share_count_prg1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.264 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prg0_apb\00", [23 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prg1_apb\00", [23 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cko1\00", [27 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cko2\00", [27 x i8] zeroinitializer }, align 32
@imx6q_clocks_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.269, ptr @.str, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014failed to set up CLKO: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx6q_clocks_init\00", [46 x i8] zeroinitializer }, align 32
@imx6q_clocks_init._entry_ptr = internal global ptr @imx6q_clocks_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.270 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsl,imx6q\00", [22 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"assigned-clocks\00", [16 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"assigned-clock-parents\00", [41 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll8_mlb\00", [23 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx6dl\00", [21 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl,imx6qp\00", [21 x i8] zeroinitializer }, align 32
@init_ldb_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.278, ptr @.str, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\015ccm: possible glitch: ldb_di%d_sel already changed from reset value: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_ldb_clks\00", [18 x i8] zeroinitializer }, align 32
@init_ldb_clks._entry_ptr = internal global ptr @init_ldb_clks._entry, section ".printk_index", align 4
@init_ldb_clks._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.278, ptr @.str, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013ccm: ldb_di%d_sel: couldn't disable pll2_pfd2_396m\0A\00", [42 x i8] zeroinitializer }, align 32
@init_ldb_clks._entry_ptr.281 = internal global ptr @init_ldb_clks._entry.279, section ".printk_index", align 4
@init_ldb_clks.__UNIQUE_ID_ddebug175 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.282, ptr @.str.278, ptr @.str, ptr @.str.283, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.282 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_imx6q\00", [22 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ccm: switching ldb_di%d_sel: %d->%d->%d->%d\0A\00", [51 x i8] zeroinitializer }, align 32
@of_assigned_ldb_sels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.285, ptr @.str, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013ccm: parent clock %d not in ccm\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"of_assigned_ldb_sels\00", [43 x i8] zeroinitializer }, align 32
@of_assigned_ldb_sels._entry_ptr = internal global ptr @of_assigned_ldb_sels._entry, section ".printk_index", align 4
@of_assigned_ldb_sels._entry.286 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.285, ptr @.str, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013ccm: child clock %d not in ccm\0A\00", [62 x i8] zeroinitializer }, align 32
@of_assigned_ldb_sels._entry_ptr.288 = internal global ptr @of_assigned_ldb_sels._entry.286, section ".printk_index", align 4
@of_assigned_ldb_sels._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.290, ptr @.str.285, ptr @.str, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ccm: invalid ldb_di%d parent clock: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@of_assigned_ldb_sels._entry_ptr.291 = internal global ptr @of_assigned_ldb_sels._entry.289, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 6, i64 141, i64 172, i64 195]
@__sancov_gen_cov_switch_values.292 = internal global [4 x i64] [i64 2, i64 32, i64 33, i64 34]
@___asan_gen_.293 = private unnamed_addr constant [12 x i8] c"clk_hw_data\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 93, i32 36 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 439, i32 6 }
@___asan_gen_.299 = private unnamed_addr constant [4 x i8] c"hws\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 92, i32 24 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 445, i32 44 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 447, i32 62 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 448, i32 62 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 449, i32 61 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 452, i32 65 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 453, i32 65 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 455, i32 43 }
@___asan_gen_.323 = private unnamed_addr constant [15 x i8] c"post_div_table\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 103, i32 29 }
@___asan_gen_.326 = private unnamed_addr constant [16 x i8] c"video_div_table\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 110, i32 29 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 468, i32 33 }
@___asan_gen_.332 = private unnamed_addr constant [20 x i8] c"pll_bypass_src_sels\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 83, i32 20 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 469, i32 33 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 470, i32 33 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 471, i32 33 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 472, i32 33 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 473, i32 33 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 474, i32 33 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 477, i32 62 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 478, i32 62 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 479, i32 62 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 480, i32 62 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 481, i32 62 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 482, i32 62 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 483, i32 62 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 485, i32 29 }
@___asan_gen_.377 = private unnamed_addr constant [17 x i8] c"pll1_bypass_sels\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 84, i32 20 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 486, i32 29 }
@___asan_gen_.383 = private unnamed_addr constant [17 x i8] c"pll2_bypass_sels\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 85, i32 20 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 487, i32 29 }
@___asan_gen_.389 = private unnamed_addr constant [17 x i8] c"pll3_bypass_sels\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 86, i32 20 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 488, i32 29 }
@___asan_gen_.395 = private unnamed_addr constant [17 x i8] c"pll4_bypass_sels\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 87, i32 20 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 489, i32 29 }
@___asan_gen_.401 = private unnamed_addr constant [17 x i8] c"pll5_bypass_sels\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 88, i32 20 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 490, i32 29 }
@___asan_gen_.407 = private unnamed_addr constant [17 x i8] c"pll6_bypass_sels\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 89, i32 20 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 491, i32 29 }
@___asan_gen_.413 = private unnamed_addr constant [17 x i8] c"pll7_bypass_sels\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 90, i32 20 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 502, i32 35 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 503, i32 35 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 504, i32 35 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 505, i32 35 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 506, i32 35 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 507, i32 35 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 508, i32 35 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 516, i32 29 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 517, i32 29 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 523, i32 34 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 524, i32 34 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 538, i32 55 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 539, i32 55 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 540, i32 31 }
@___asan_gen_.458 = private unnamed_addr constant [19 x i8] c"clk_enet_ref_table\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 95, i32 29 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 549, i32 35 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 550, i32 35 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 552, i32 31 }
@___asan_gen_.470 = private unnamed_addr constant [10 x i8] c"lvds_sels\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 77, i32 20 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 553, i32 31 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 565, i32 58 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 566, i32 58 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 568, i32 56 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 569, i32 56 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 572, i32 51 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 573, i32 51 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 574, i32 51 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 575, i32 51 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 576, i32 51 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 577, i32 51 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 578, i32 51 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 581, i32 55 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 582, i32 55 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 583, i32 55 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 584, i32 55 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 585, i32 55 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 585, i32 68 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 586, i32 55 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 587, i32 55 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 589, i32 56 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 589, i32 69 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 590, i32 56 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 593, i32 35 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 595, i32 61 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 598, i32 35 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 599, i32 36 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 606, i32 38 }
@___asan_gen_.557 = private unnamed_addr constant [10 x i8] c"step_sels\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 23, i32 20 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 607, i32 38 }
@___asan_gen_.563 = private unnamed_addr constant [13 x i8] c"pll1_sw_sels\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 24, i32 20 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 608, i32 38 }
@___asan_gen_.569 = private unnamed_addr constant [16 x i8] c"periph_pre_sels\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 25, i32 20 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 609, i32 38 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 610, i32 38 }
@___asan_gen_.578 = private unnamed_addr constant [17 x i8] c"periph_clk2_sels\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 26, i32 20 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 611, i32 38 }
@___asan_gen_.584 = private unnamed_addr constant [18 x i8] c"periph2_clk2_sels\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 27, i32 20 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 612, i32 38 }
@___asan_gen_.590 = private unnamed_addr constant [9 x i8] c"axi_sels\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 30, i32 20 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 613, i32 38 }
@___asan_gen_.596 = private unnamed_addr constant [11 x i8] c"audio_sels\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 31, i32 20 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 614, i32 38 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 615, i32 38 }
@___asan_gen_.605 = private unnamed_addr constant [13 x i8] c"gpu_axi_sels\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 32, i32 20 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 621, i32 32 }
@___asan_gen_.611 = private unnamed_addr constant [9 x i8] c"can_sels\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 62, i32 20 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 622, i32 32 }
@___asan_gen_.617 = private unnamed_addr constant [11 x i8] c"ecspi_sels\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 61, i32 20 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 623, i32 34 }
@___asan_gen_.623 = private unnamed_addr constant [13 x i8] c"ipg_per_sels\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 60, i32 20 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 624, i32 31 }
@___asan_gen_.629 = private unnamed_addr constant [10 x i8] c"uart_sels\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 59, i32 20 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 625, i32 37 }
@___asan_gen_.635 = private unnamed_addr constant [18 x i8] c"gpu2d_core_sels_2\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 35, i32 20 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 627, i32 30 }
@___asan_gen_.641 = private unnamed_addr constant [16 x i8] c"gpu2d_core_sels\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 34, i32 20 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 631, i32 38 }
@___asan_gen_.647 = private unnamed_addr constant [16 x i8] c"gpu3d_core_sels\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 36, i32 20 }
@___asan_gen_.650 = private unnamed_addr constant [18 x i8] c"gpu3d_shader_sels\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 37, i32 20 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 635, i32 39 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 636, i32 38 }
@___asan_gen_.659 = private unnamed_addr constant [9 x i8] c"ipu_sels\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 38, i32 20 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 637, i32 38 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 644, i32 39 }
@___asan_gen_.668 = private unnamed_addr constant [12 x i8] c"ldb_di_sels\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 39, i32 20 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 645, i32 39 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 658, i32 38 }
@___asan_gen_.677 = private unnamed_addr constant [16 x i8] c"ipu_di_pre_sels\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 40, i32 20 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 659, i32 38 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 660, i32 38 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 661, i32 38 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 662, i32 38 }
@___asan_gen_.692 = private unnamed_addr constant [12 x i8] c"hsi_tx_sels\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 49, i32 20 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 663, i32 38 }
@___asan_gen_.698 = private unnamed_addr constant [14 x i8] c"pcie_axi_sels\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 50, i32 20 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 666, i32 39 }
@___asan_gen_.704 = private unnamed_addr constant [16 x i8] c"ipu1_di0_sels_2\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 45, i32 20 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 667, i32 39 }
@___asan_gen_.710 = private unnamed_addr constant [16 x i8] c"ipu1_di1_sels_2\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 46, i32 20 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 668, i32 39 }
@___asan_gen_.716 = private unnamed_addr constant [16 x i8] c"ipu2_di0_sels_2\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 47, i32 20 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 669, i32 39 }
@___asan_gen_.722 = private unnamed_addr constant [16 x i8] c"ipu2_di1_sels_2\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 48, i32 20 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 670, i32 39 }
@___asan_gen_.728 = private unnamed_addr constant [9 x i8] c"ssi_sels\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 51, i32 20 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 671, i32 39 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 672, i32 39 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 673, i32 39 }
@___asan_gen_.740 = private unnamed_addr constant [11 x i8] c"usdhc_sels\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 52, i32 20 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 674, i32 39 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 675, i32 39 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 676, i32 39 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 677, i32 39 }
@___asan_gen_.755 = private unnamed_addr constant [12 x i8] c"enfc_sels_2\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 54, i32 20 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 678, i32 39 }
@___asan_gen_.761 = private unnamed_addr constant [9 x i8] c"eim_sels\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 55, i32 20 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 679, i32 39 }
@___asan_gen_.767 = private unnamed_addr constant [14 x i8] c"eim_slow_sels\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 56, i32 20 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 680, i32 32 }
@___asan_gen_.773 = private unnamed_addr constant [13 x i8] c"pre_axi_sels\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 33, i32 20 }
@___asan_gen_.776 = private unnamed_addr constant [14 x i8] c"ipu1_di0_sels\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 41, i32 20 }
@___asan_gen_.779 = private unnamed_addr constant [14 x i8] c"ipu1_di1_sels\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 42, i32 20 }
@___asan_gen_.782 = private unnamed_addr constant [14 x i8] c"ipu2_di0_sels\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 43, i32 20 }
@___asan_gen_.785 = private unnamed_addr constant [14 x i8] c"ipu2_di1_sels\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 44, i32 20 }
@___asan_gen_.788 = private unnamed_addr constant [10 x i8] c"enfc_sels\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 53, i32 20 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 698, i32 38 }
@___asan_gen_.794 = private unnamed_addr constant [13 x i8] c"vdo_axi_sels\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 57, i32 20 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 699, i32 38 }
@___asan_gen_.800 = private unnamed_addr constant [13 x i8] c"vpu_axi_sels\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 58, i32 20 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 700, i32 38 }
@___asan_gen_.806 = private unnamed_addr constant [10 x i8] c"cko1_sels\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 63, i32 20 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 701, i32 38 }
@___asan_gen_.812 = private unnamed_addr constant [10 x i8] c"cko2_sels\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 66, i32 20 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 702, i32 38 }
@___asan_gen_.818 = private unnamed_addr constant [9 x i8] c"cko_sels\00", align 1
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 76, i32 20 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 705, i32 49 }
@___asan_gen_.824 = private unnamed_addr constant [12 x i8] c"periph_sels\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 28, i32 20 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 706, i32 49 }
@___asan_gen_.830 = private unnamed_addr constant [13 x i8] c"periph2_sels\00", align 1
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 29, i32 20 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 709, i32 38 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 710, i32 38 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 711, i32 38 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 712, i32 38 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 713, i32 38 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 714, i32 38 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 715, i32 38 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 716, i32 38 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 717, i32 38 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 720, i32 30 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 721, i32 33 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 722, i32 31 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 723, i32 39 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 724, i32 62 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 724, i32 81 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 725, i32 62 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 725, i32 81 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 736, i32 32 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 738, i32 39 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 739, i32 38 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 743, i32 39 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 744, i32 38 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 745, i32 38 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 746, i32 38 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 747, i32 38 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 748, i32 38 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 749, i32 38 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 750, i32 38 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 751, i32 38 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 752, i32 38 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 753, i32 38 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 754, i32 38 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 755, i32 38 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 756, i32 38 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 757, i32 38 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 758, i32 38 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 759, i32 38 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 760, i32 38 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 761, i32 38 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 762, i32 38 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 763, i32 38 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 764, i32 38 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 766, i32 39 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 767, i32 39 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 773, i32 38 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 774, i32 38 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 775, i32 38 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 778, i32 63 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 781, i32 38 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 782, i32 64 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 790, i32 34 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 791, i32 34 }
@___asan_gen_.995 = private unnamed_addr constant [17 x i8] c"share_count_asrc\00", align 1
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 119, i32 21 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 792, i32 34 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 793, i32 34 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 794, i32 34 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 795, i32 34 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 796, i32 34 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 797, i32 34 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 798, i32 34 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 799, i32 34 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 800, i32 34 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 801, i32 34 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 802, i32 34 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 803, i32 34 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 804, i32 34 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 805, i32 34 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 806, i32 34 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 808, i32 27 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 810, i32 27 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 811, i32 34 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 812, i32 34 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 813, i32 34 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 814, i32 34 }
@___asan_gen_.1061 = private unnamed_addr constant [17 x i8] c"share_count_esai\00", align 1
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 118, i32 21 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 815, i32 34 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 816, i32 34 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 817, i32 34 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 818, i32 34 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 819, i32 32 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 820, i32 34 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 821, i32 34 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 822, i32 34 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 823, i32 34 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 824, i32 34 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 825, i32 34 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 826, i32 34 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 827, i32 34 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 828, i32 34 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 829, i32 34 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 830, i32 34 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 831, i32 34 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 832, i32 34 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 833, i32 34 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 841, i32 34 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 842, i32 34 }
@___asan_gen_.1133 = private unnamed_addr constant [26 x i8] c"share_count_mipi_core_cfg\00", align 1
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 123, i32 21 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 844, i32 34 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 851, i32 26 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 854, i32 34 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 855, i32 34 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 856, i32 34 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 857, i32 34 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 858, i32 34 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 859, i32 34 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 860, i32 34 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 861, i32 34 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 862, i32 34 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 863, i32 34 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 864, i32 34 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 865, i32 34 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 866, i32 34 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 867, i32 34 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 868, i32 34 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 869, i32 34 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 870, i32 34 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 871, i32 34 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 872, i32 34 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 873, i32 34 }
@___asan_gen_.1205 = private unnamed_addr constant [18 x i8] c"share_count_spdif\00", align 1
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 124, i32 21 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 874, i32 34 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 875, i32 34 }
@___asan_gen_.1214 = private unnamed_addr constant [17 x i8] c"share_count_ssi1\00", align 1
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 120, i32 21 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 876, i32 34 }
@___asan_gen_.1220 = private unnamed_addr constant [17 x i8] c"share_count_ssi2\00", align 1
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 121, i32 21 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 877, i32 34 }
@___asan_gen_.1226 = private unnamed_addr constant [17 x i8] c"share_count_ssi3\00", align 1
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 122, i32 21 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 878, i32 34 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 879, i32 34 }
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 880, i32 34 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 881, i32 34 }
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 882, i32 34 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 883, i32 34 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 884, i32 34 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 885, i32 34 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 888, i32 34 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 890, i32 34 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 892, i32 27 }
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 893, i32 27 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 894, i32 27 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 895, i32 27 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 896, i32 31 }
@___asan_gen_.1274 = private unnamed_addr constant [17 x i8] c"share_count_prg0\00", align 1
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 125, i32 21 }
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 897, i32 31 }
@___asan_gen_.1280 = private unnamed_addr constant [17 x i8] c"share_count_prg1\00", align 1
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 126, i32 21 }
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 898, i32 31 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 899, i32 31 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 901, i32 34 }
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 902, i32 34 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 950, i32 3 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 130, i32 34 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 223, i32 48 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 224, i32 7 }
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 244, i32 41 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 79, i32 30 }
@___asan_gen_.1321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 140, i32 34 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 135, i32 34 }
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 336, i32 4 }
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 347, i32 4 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 359, i32 3 }
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 185, i32 4 }
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 195, i32 4 }
@___asan_gen_.1361 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1364 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1365 = private constant [31 x i8] c"../drivers/clk/imx/clk-imx6q.c\00", align 1
@___asan_gen_.1366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1365, i32 206, i32 4 }
@llvm.compiler.used = appending global [365 x ptr] [ptr @__of_table_imx6q, ptr @imx6q_clocks_init._entry, ptr @imx6q_clocks_init._entry_ptr, ptr @init_ldb_clks._entry, ptr @init_ldb_clks._entry.279, ptr @init_ldb_clks._entry_ptr, ptr @init_ldb_clks._entry_ptr.281, ptr @of_assigned_ldb_sels._entry, ptr @of_assigned_ldb_sels._entry.286, ptr @of_assigned_ldb_sels._entry.289, ptr @of_assigned_ldb_sels._entry_ptr, ptr @of_assigned_ldb_sels._entry_ptr.288, ptr @of_assigned_ldb_sels._entry_ptr.291, ptr @clk_hw_data, ptr @.str, ptr @hws, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @post_div_table, ptr @video_div_table, ptr @.str.8, ptr @pll_bypass_src_sels, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @pll1_bypass_sels, ptr @.str.23, ptr @pll2_bypass_sels, ptr @.str.24, ptr @pll3_bypass_sels, ptr @.str.25, ptr @pll4_bypass_sels, ptr @.str.26, ptr @pll5_bypass_sels, ptr @.str.27, ptr @pll6_bypass_sels, ptr @.str.28, ptr @pll7_bypass_sels, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @clk_enet_ref_table, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @lvds_sels, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @step_sels, ptr @.str.74, ptr @pll1_sw_sels, ptr @.str.75, ptr @periph_pre_sels, ptr @.str.76, ptr @.str.77, ptr @periph_clk2_sels, ptr @.str.78, ptr @periph2_clk2_sels, ptr @.str.79, ptr @axi_sels, ptr @.str.80, ptr @audio_sels, ptr @.str.81, ptr @.str.82, ptr @gpu_axi_sels, ptr @.str.83, ptr @can_sels, ptr @.str.84, ptr @ecspi_sels, ptr @.str.85, ptr @ipg_per_sels, ptr @.str.86, ptr @uart_sels, ptr @.str.87, ptr @gpu2d_core_sels_2, ptr @.str.88, ptr @gpu2d_core_sels, ptr @.str.89, ptr @gpu3d_core_sels, ptr @gpu3d_shader_sels, ptr @.str.90, ptr @.str.91, ptr @ipu_sels, ptr @.str.92, ptr @.str.93, ptr @ldb_di_sels, ptr @.str.94, ptr @.str.95, ptr @ipu_di_pre_sels, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @hsi_tx_sels, ptr @.str.100, ptr @pcie_axi_sels, ptr @.str.101, ptr @ipu1_di0_sels_2, ptr @.str.102, ptr @ipu1_di1_sels_2, ptr @.str.103, ptr @ipu2_di0_sels_2, ptr @.str.104, ptr @ipu2_di1_sels_2, ptr @.str.105, ptr @ssi_sels, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @usdhc_sels, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @enfc_sels_2, ptr @.str.113, ptr @eim_sels, ptr @.str.114, ptr @eim_slow_sels, ptr @.str.115, ptr @pre_axi_sels, ptr @ipu1_di0_sels, ptr @ipu1_di1_sels, ptr @ipu2_di0_sels, ptr @ipu2_di1_sels, ptr @enfc_sels, ptr @.str.116, ptr @vdo_axi_sels, ptr @.str.117, ptr @vpu_axi_sels, ptr @.str.118, ptr @cko1_sels, ptr @.str.119, ptr @cko2_sels, ptr @.str.120, ptr @cko_sels, ptr @.str.121, ptr @periph_sels, ptr @.str.122, ptr @periph2_sels, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @share_count_asrc, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @share_count_esai, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @share_count_mipi_core_cfg, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @share_count_spdif, ptr @.str.244, ptr @.str.245, ptr @share_count_ssi1, ptr @.str.246, ptr @share_count_ssi2, ptr @.str.247, ptr @share_count_ssi3, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @share_count_prg0, ptr @.str.263, ptr @share_count_prg1, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.280, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.287, ptr @.str.290], section "llvm.metadata"
@0 = internal global [358 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_hw_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hws to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @post_div_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_div_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_bypass_src_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll1_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll2_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll3_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll4_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll5_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll6_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll7_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_enet_ref_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lvds_sels to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @step_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll1_sw_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_pre_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_clk2_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph2_clk2_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_axi_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_sels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecspi_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipg_per_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu2d_core_sels_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu2d_core_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu3d_core_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu3d_shader_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldb_di_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_di_pre_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsi_tx_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_axi_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu1_di0_sels_2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu1_di1_sels_2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu2_di0_sels_2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu2_di1_sels_2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_sels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhc_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enfc_sels_2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eim_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eim_slow_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pre_axi_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu1_di0_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu1_di1_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu2_di0_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu2_di1_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enfc_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdo_axi_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_axi_sels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cko1_sels to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cko2_sels to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cko_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph2_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_asrc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_esai to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_mipi_core_cfg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_spdif to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_ssi1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_ssi2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_ssi3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_prg0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_prg1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_clocks_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ldb_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ldb_clks._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_assigned_ldb_sels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_assigned_ldb_sels._entry.286 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_assigned_ldb_sels._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx6q_clocks_init(ptr noundef %ccm_node) #0 section ".init.text" align 64 {
entry:
  %clkspec.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1068) #10
  store ptr %call7.i.i, ptr @clk_hw_data, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !719

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 439, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 266, ptr %call7.i.i, align 8
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1
  store ptr %hws, ptr @hws, align 4
  %call.i = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %2 = load ptr, ptr @hws, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %2, align 4
  %call26 = tail call fastcc ptr @imx6q_obtain_fixed_clk_hw(ptr noundef %ccm_node, ptr noundef nonnull @.str.2) #11
  %4 = load ptr, ptr @hws, align 4
  %arrayidx27 = getelementptr ptr, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call26, ptr %arrayidx27, align 4
  %call28 = tail call fastcc ptr @imx6q_obtain_fixed_clk_hw(ptr noundef %ccm_node, ptr noundef nonnull @.str.3) #11
  %6 = load ptr, ptr @hws, align 4
  %arrayidx29 = getelementptr ptr, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call28, ptr %arrayidx29, align 4
  %call30 = tail call fastcc ptr @imx6q_obtain_fixed_clk_hw(ptr noundef %ccm_node, ptr noundef nonnull @.str.4) #11
  %8 = load ptr, ptr @hws, align 4
  %arrayidx31 = getelementptr ptr, ptr %8, i32 3
  %9 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call30, ptr %arrayidx31, align 4
  %call32 = tail call fastcc ptr @imx6q_obtain_fixed_clk_hw(ptr noundef %ccm_node, ptr noundef nonnull @.str.5) #11
  %10 = load ptr, ptr @hws, align 4
  %arrayidx33 = getelementptr ptr, ptr %10, i32 214
  %11 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call32, ptr %arrayidx33, align 4
  %call34 = tail call fastcc ptr @imx6q_obtain_fixed_clk_hw(ptr noundef %ccm_node, ptr noundef nonnull @.str.6) #11
  %12 = load ptr, ptr @hws, align 4
  %arrayidx35 = getelementptr ptr, ptr %12, i32 215
  %13 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call34, ptr %arrayidx35, align 4
  %call36 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7) #7
  %call37 = tail call ptr @of_iomap(ptr noundef %call36, i32 noundef 0) #7
  %tobool39.not = icmp eq ptr %call37, null
  br i1 %tobool39.not, label %do.end57, label %if.end24.if.end63_crit_edge, !prof !719

if.end24.if.end63_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

do.end57:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 457, i32 noundef 9, ptr noundef null) #7
  br label %if.end63

if.end63:                                         ; preds = %do.end57, %if.end24.if.end63_crit_edge
  tail call void @of_node_put(ptr noundef %call36) #7
  %call.i1570 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.270) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1570)
  %tobool72.not = icmp eq i32 %call.i1570, 0
  br i1 %tobool72.not, label %if.end63.if.end75_crit_edge, label %land.lhs.true

if.end63.if.end75_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

land.lhs.true:                                    ; preds = %if.end63
  %call73 = tail call i32 @imx_get_soc_revision() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call73)
  %cmp = icmp eq i32 %call73, 16
  br i1 %cmp, label %if.then74, label %land.lhs.true.if.end75_crit_edge

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then74:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  store i32 1, ptr getelementptr inbounds ([4 x %struct.clk_div_table], ptr @post_div_table, i32 0, i32 1, i32 1), align 4
  store i32 1, ptr getelementptr inbounds ([4 x %struct.clk_div_table], ptr @post_div_table, i32 0, i32 2, i32 1), align 4
  store i32 1, ptr getelementptr inbounds ([5 x %struct.clk_div_table], ptr @video_div_table, i32 0, i32 1, i32 1), align 4
  store i32 1, ptr getelementptr inbounds ([5 x %struct.clk_div_table], ptr @video_div_table, i32 0, i32 3, i32 1), align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %land.lhs.true.if.end75_crit_edge, %if.end63.if.end75_crit_edge
  %call.i1571 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %call37, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %14 = load ptr, ptr @hws, align 4
  %arrayidx77 = getelementptr ptr, ptr %14, i32 216
  %15 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i1571, ptr %arrayidx77, align 4
  %add.ptr78 = getelementptr i8, ptr %call37, i32 48
  %call.i1572 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr78, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %16 = load ptr, ptr @hws, align 4
  %arrayidx80 = getelementptr ptr, ptr %16, i32 217
  %17 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i1572, ptr %arrayidx80, align 4
  %add.ptr81 = getelementptr i8, ptr %call37, i32 16
  %call.i1573 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr81, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %18 = load ptr, ptr @hws, align 4
  %arrayidx83 = getelementptr ptr, ptr %18, i32 218
  %19 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i1573, ptr %arrayidx83, align 4
  %add.ptr84 = getelementptr i8, ptr %call37, i32 112
  %call.i1574 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr84, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %20 = load ptr, ptr @hws, align 4
  %arrayidx86 = getelementptr ptr, ptr %20, i32 219
  %21 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i1574, ptr %arrayidx86, align 4
  %add.ptr87 = getelementptr i8, ptr %call37, i32 160
  %call.i1575 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr87, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %22 = load ptr, ptr @hws, align 4
  %arrayidx89 = getelementptr ptr, ptr %22, i32 220
  %23 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i1575, ptr %arrayidx89, align 4
  %add.ptr90 = getelementptr i8, ptr %call37, i32 224
  %call.i1576 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr90, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %24 = load ptr, ptr @hws, align 4
  %arrayidx92 = getelementptr ptr, ptr %24, i32 221
  %25 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i1576, ptr %arrayidx92, align 4
  %add.ptr93 = getelementptr i8, ptr %call37, i32 32
  %call.i1577 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.14, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr93, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %26 = load ptr, ptr @hws, align 4
  %arrayidx95 = getelementptr ptr, ptr %26, i32 222
  %27 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i1577, ptr %arrayidx95, align 4
  %call97 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, ptr noundef %call37, i32 noundef 127) #7
  %28 = load ptr, ptr @hws, align 4
  %arrayidx98 = getelementptr ptr, ptr %28, i32 223
  %29 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call97, ptr %arrayidx98, align 4
  %call100 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.4, ptr noundef %add.ptr78, i32 noundef 1) #7
  %30 = load ptr, ptr @hws, align 4
  %arrayidx101 = getelementptr ptr, ptr %30, i32 224
  %31 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call100, ptr %arrayidx101, align 4
  %call103 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.4, ptr noundef %add.ptr81, i32 noundef 3) #7
  %32 = load ptr, ptr @hws, align 4
  %arrayidx104 = getelementptr ptr, ptr %32, i32 225
  %33 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call103, ptr %arrayidx104, align 4
  %call106 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.4, ptr noundef %add.ptr84, i32 noundef 127) #7
  %34 = load ptr, ptr @hws, align 4
  %arrayidx107 = getelementptr ptr, ptr %34, i32 226
  %35 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call106, ptr %arrayidx107, align 4
  %call109 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.4, ptr noundef %add.ptr87, i32 noundef 127) #7
  %36 = load ptr, ptr @hws, align 4
  %arrayidx110 = getelementptr ptr, ptr %36, i32 227
  %37 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call109, ptr %arrayidx110, align 4
  %call112 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.4, ptr noundef %add.ptr90, i32 noundef 3) #7
  %38 = load ptr, ptr @hws, align 4
  %arrayidx113 = getelementptr ptr, ptr %38, i32 228
  %39 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call112, ptr %arrayidx113, align 4
  %call115 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.4, ptr noundef %add.ptr93, i32 noundef 3) #7
  %40 = load ptr, ptr @hws, align 4
  %arrayidx116 = getelementptr ptr, ptr %40, i32 229
  %41 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call115, ptr %arrayidx116, align 4
  %call.i1578 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.22, i8 noundef zeroext 2, ptr noundef nonnull @pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %call37, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %42 = load ptr, ptr @hws, align 4
  %arrayidx119 = getelementptr ptr, ptr %42, i32 230
  %43 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i1578, ptr %arrayidx119, align 4
  %call.i1579 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, i8 noundef zeroext 2, ptr noundef nonnull @pll2_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr78, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %44 = load ptr, ptr @hws, align 4
  %arrayidx122 = getelementptr ptr, ptr %44, i32 231
  %45 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i1579, ptr %arrayidx122, align 4
  %call.i1580 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24, i8 noundef zeroext 2, ptr noundef nonnull @pll3_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr81, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %46 = load ptr, ptr @hws, align 4
  %arrayidx125 = getelementptr ptr, ptr %46, i32 232
  %47 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i1580, ptr %arrayidx125, align 4
  %call.i1581 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, i8 noundef zeroext 2, ptr noundef nonnull @pll4_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr84, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %48 = load ptr, ptr @hws, align 4
  %arrayidx128 = getelementptr ptr, ptr %48, i32 233
  %49 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i1581, ptr %arrayidx128, align 4
  %call.i1582 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26, i8 noundef zeroext 2, ptr noundef nonnull @pll5_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr87, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %50 = load ptr, ptr @hws, align 4
  %arrayidx131 = getelementptr ptr, ptr %50, i32 234
  %51 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i1582, ptr %arrayidx131, align 4
  %call.i1583 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27, i8 noundef zeroext 2, ptr noundef nonnull @pll6_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr90, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %52 = load ptr, ptr @hws, align 4
  %arrayidx134 = getelementptr ptr, ptr %52, i32 235
  %53 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i1583, ptr %arrayidx134, align 4
  %call.i1584 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, i8 noundef zeroext 2, ptr noundef nonnull @pll7_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr93, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %54 = load ptr, ptr @hws, align 4
  %arrayidx137 = getelementptr ptr, ptr %54, i32 236
  %55 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i1584, ptr %arrayidx137, align 4
  %arrayidx138 = getelementptr ptr, ptr %54, i32 230
  %56 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx138, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk, align 4
  %arrayidx139 = getelementptr ptr, ptr %54, i32 223
  %60 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx139, align 4
  %clk140 = getelementptr inbounds %struct.clk_hw, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %clk140 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk140, align 4
  %call141 = tail call i32 @clk_set_parent(ptr noundef %59, ptr noundef %63) #7
  %64 = load ptr, ptr @hws, align 4
  %arrayidx142 = getelementptr ptr, ptr %64, i32 231
  %65 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx142, align 4
  %clk143 = getelementptr inbounds %struct.clk_hw, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %clk143 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clk143, align 4
  %arrayidx144 = getelementptr ptr, ptr %64, i32 224
  %69 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx144, align 4
  %clk145 = getelementptr inbounds %struct.clk_hw, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %clk145 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %clk145, align 4
  %call146 = tail call i32 @clk_set_parent(ptr noundef %68, ptr noundef %72) #7
  %73 = load ptr, ptr @hws, align 4
  %arrayidx147 = getelementptr ptr, ptr %73, i32 232
  %74 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx147, align 4
  %clk148 = getelementptr inbounds %struct.clk_hw, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %clk148 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %clk148, align 4
  %arrayidx149 = getelementptr ptr, ptr %73, i32 225
  %78 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx149, align 4
  %clk150 = getelementptr inbounds %struct.clk_hw, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %clk150 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %clk150, align 4
  %call151 = tail call i32 @clk_set_parent(ptr noundef %77, ptr noundef %81) #7
  %82 = load ptr, ptr @hws, align 4
  %arrayidx152 = getelementptr ptr, ptr %82, i32 233
  %83 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx152, align 4
  %clk153 = getelementptr inbounds %struct.clk_hw, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %clk153 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %clk153, align 4
  %arrayidx154 = getelementptr ptr, ptr %82, i32 226
  %87 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx154, align 4
  %clk155 = getelementptr inbounds %struct.clk_hw, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %clk155 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %clk155, align 4
  %call156 = tail call i32 @clk_set_parent(ptr noundef %86, ptr noundef %90) #7
  %91 = load ptr, ptr @hws, align 4
  %arrayidx157 = getelementptr ptr, ptr %91, i32 234
  %92 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx157, align 4
  %clk158 = getelementptr inbounds %struct.clk_hw, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %clk158 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %clk158, align 4
  %arrayidx159 = getelementptr ptr, ptr %91, i32 227
  %96 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx159, align 4
  %clk160 = getelementptr inbounds %struct.clk_hw, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %clk160 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %clk160, align 4
  %call161 = tail call i32 @clk_set_parent(ptr noundef %95, ptr noundef %99) #7
  %100 = load ptr, ptr @hws, align 4
  %arrayidx162 = getelementptr ptr, ptr %100, i32 235
  %101 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx162, align 4
  %clk163 = getelementptr inbounds %struct.clk_hw, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %clk163 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %clk163, align 4
  %arrayidx164 = getelementptr ptr, ptr %100, i32 228
  %105 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx164, align 4
  %clk165 = getelementptr inbounds %struct.clk_hw, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %clk165 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %clk165, align 4
  %call166 = tail call i32 @clk_set_parent(ptr noundef %104, ptr noundef %108) #7
  %109 = load ptr, ptr @hws, align 4
  %arrayidx167 = getelementptr ptr, ptr %109, i32 236
  %110 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx167, align 4
  %clk168 = getelementptr inbounds %struct.clk_hw, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %clk168 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %clk168, align 4
  %arrayidx169 = getelementptr ptr, ptr %109, i32 229
  %114 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx169, align 4
  %clk170 = getelementptr inbounds %struct.clk_hw, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %clk170 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %clk170, align 4
  %call171 = tail call i32 @clk_set_parent(ptr noundef %113, ptr noundef %117) #7
  %call.i1585 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %call37, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %118 = load ptr, ptr @hws, align 4
  %arrayidx174 = getelementptr ptr, ptr %118, i32 170
  %119 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i1585, ptr %arrayidx174, align 4
  %call.i1586 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr78, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %120 = load ptr, ptr @hws, align 4
  %arrayidx177 = getelementptr ptr, ptr %120, i32 171
  %121 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i1586, ptr %arrayidx177, align 4
  %call.i1587 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr81, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %122 = load ptr, ptr @hws, align 4
  %arrayidx180 = getelementptr ptr, ptr %122, i32 172
  %123 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i1587, ptr %arrayidx180, align 4
  %call.i1588 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr84, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %124 = load ptr, ptr @hws, align 4
  %arrayidx183 = getelementptr ptr, ptr %124, i32 173
  %125 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i1588, ptr %arrayidx183, align 4
  %call.i1589 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr87, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %126 = load ptr, ptr @hws, align 4
  %arrayidx186 = getelementptr ptr, ptr %126, i32 174
  %127 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call.i1589, ptr %arrayidx186, align 4
  %call.i1590 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr90, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %128 = load ptr, ptr @hws, align 4
  %arrayidx189 = getelementptr ptr, ptr %128, i32 177
  %129 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call.i1590, ptr %arrayidx189, align 4
  %call.i1591 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr93, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %130 = load ptr, ptr @hws, align 4
  %arrayidx192 = getelementptr ptr, ptr %130, i32 176
  %131 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call.i1591, ptr %arrayidx192, align 4
  %call.i1592 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr81, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %132 = load ptr, ptr @hws, align 4
  %arrayidx195 = getelementptr ptr, ptr %132, i32 182
  %133 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i1592, ptr %arrayidx195, align 4
  %call.i1593 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr93, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %134 = load ptr, ptr @hws, align 4
  %arrayidx198 = getelementptr ptr, ptr %134, i32 183
  %135 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call.i1593, ptr %arrayidx198, align 4
  %call.i1594 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr81, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %136 = load ptr, ptr @hws, align 4
  %arrayidx201 = getelementptr ptr, ptr %136, i32 191
  %137 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call.i1594, ptr %arrayidx201, align 4
  %call.i1595 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr93, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %138 = load ptr, ptr @hws, align 4
  %arrayidx204 = getelementptr ptr, ptr %138, i32 192
  %139 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call.i1595, ptr %arrayidx204, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec.i) #7
  %140 = call ptr @memset(ptr %clkspec.i, i32 255, i32 72)
  %call.i1596 = tail call i32 @of_count_phandle_with_args(ptr noundef %ccm_node, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.272) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1596)
  %cmp.i = icmp slt i32 %call.i1596, 0
  br i1 %cmp.i, label %if.end75.pll6_bypassed.exit.thread_crit_edge, label %for.cond.preheader.i

if.end75.pll6_bypassed.exit.thread_crit_edge:     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll6_bypassed.exit.thread

for.cond.preheader.i:                             ; preds = %if.end75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1596)
  %cmp133.not.i = icmp eq i32 %call.i1596, 0
  br i1 %cmp133.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %args.i = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %index.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %ccm_node, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.272, i32 noundef -1, i32 noundef %index.034.i, ptr noundef nonnull %clkspec.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %for.body.i.pll6_bypassed.exit.thread_crit_edge, label %if.end5.i

for.body.i.pll6_bypassed.exit.thread_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll6_bypassed.exit.thread

if.end5.i:                                        ; preds = %for.body.i
  %141 = ptrtoint ptr %clkspec.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %clkspec.i, align 4
  %cmp6.i = icmp eq ptr %142, %ccm_node
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end5.i.for.inc.i_crit_edge

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %143 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %args.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 235, i32 %144)
  %cmp7.i = icmp eq i32 %144, 235
  br i1 %cmp7.i, label %land.lhs.true.i.for.end.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end5.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %index.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i1596
  br i1 %exitcond.not.i, label %for.inc.i.pll6_bypassed.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.pll6_bypassed.exit.thread_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll6_bypassed.exit.thread

for.end.i:                                        ; preds = %land.lhs.true.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %index.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %index.034.i, %land.lhs.true.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.lcssa.i, i32 %call.i1596)
  %cmp10.i = icmp eq i32 %index.0.lcssa.i, %call.i1596
  br i1 %cmp10.i, label %for.end.i.pll6_bypassed.exit.thread_crit_edge, label %pll6_bypassed.exit

for.end.i.pll6_bypassed.exit.thread_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll6_bypassed.exit.thread

pll6_bypassed.exit.thread:                        ; preds = %for.end.i.pll6_bypassed.exit.thread_crit_edge, %for.inc.i.pll6_bypassed.exit.thread_crit_edge, %for.body.i.pll6_bypassed.exit.thread_crit_edge, %if.end75.pll6_bypassed.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec.i) #7
  br label %if.then206

pll6_bypassed.exit:                               ; preds = %for.end.i
  %call.i31.i = call i32 @__of_parse_phandle_with_args(ptr noundef %ccm_node, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.272, i32 noundef -1, i32 noundef %index.0.lcssa.i, ptr noundef nonnull %clkspec.i) #7
  %args14.i = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec.i, i32 0, i32 2
  %145 = ptrtoint ptr %args14.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %args14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 228, i32 %146)
  %cmp16.not.i.not = icmp eq i32 %146, 228
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec.i) #7
  br i1 %cmp16.not.i.not, label %pll6_bypassed.exit.if.then206_crit_edge, label %if.else

pll6_bypassed.exit.if.then206_crit_edge:          ; preds = %pll6_bypassed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then206

if.then206:                                       ; preds = %pll6_bypassed.exit.if.then206_crit_edge, %pll6_bypassed.exit.thread
  %call.i1597 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.34, i32 noundef 4, i32 noundef 1, i32 noundef 5) #7
  %147 = load ptr, ptr @hws, align 4
  %arrayidx208 = getelementptr ptr, ptr %147, i32 186
  %148 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call.i1597, ptr %arrayidx208, align 4
  %call.i1598 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.34, i32 noundef 4, i32 noundef 1, i32 noundef 4) #7
  %149 = load ptr, ptr @hws, align 4
  %arrayidx210 = getelementptr ptr, ptr %149, i32 188
  %150 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call.i1598, ptr %arrayidx210, align 4
  %call212 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.34, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr90, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @clk_enet_ref_table, ptr noundef nonnull @imx_ccm_lock) #7
  br label %if.end220

if.else:                                          ; preds = %pll6_bypassed.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1599 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.34, i32 noundef 4, i32 noundef 1, i32 noundef 1) #7
  %151 = load ptr, ptr @hws, align 4
  %arrayidx215 = getelementptr ptr, ptr %151, i32 186
  %152 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call.i1599, ptr %arrayidx215, align 4
  %call.i1600 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.34, i32 noundef 4, i32 noundef 1, i32 noundef 1) #7
  %153 = load ptr, ptr @hws, align 4
  %arrayidx217 = getelementptr ptr, ptr %153, i32 188
  %154 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call.i1600, ptr %arrayidx217, align 4
  %call.i1601 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.34, i32 noundef 4, i32 noundef 1, i32 noundef 1) #7
  br label %if.end220

if.end220:                                        ; preds = %if.else, %if.then206
  %call.i1601.sink = phi ptr [ %call.i1601, %if.else ], [ %call212, %if.then206 ]
  %155 = load ptr, ptr @hws, align 4
  %arrayidx219 = getelementptr ptr, ptr %155, i32 190
  %156 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call.i1601.sink, ptr %arrayidx219, align 4
  %call.i1602 = call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.40, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr90, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %157 = load ptr, ptr @hws, align 4
  %arrayidx223 = getelementptr ptr, ptr %157, i32 187
  %158 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call.i1602, ptr %arrayidx223, align 4
  %call.i1603 = call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.41, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr90, i8 noundef zeroext 19, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %159 = load ptr, ptr @hws, align 4
  %arrayidx226 = getelementptr ptr, ptr %159, i32 189
  %160 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call.i1603, ptr %arrayidx226, align 4
  %add.ptr227 = getelementptr i8, ptr %call37, i32 352
  %call.i1604 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.45, i8 noundef zeroext 19, ptr noundef nonnull @lvds_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr227, i8 noundef zeroext 0, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %161 = load ptr, ptr @hws, align 4
  %arrayidx229 = getelementptr ptr, ptr %161, i32 204
  %162 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call.i1604, ptr %arrayidx229, align 4
  %call.i1605 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.46, i8 noundef zeroext 19, ptr noundef nonnull @lvds_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr227, i8 noundef zeroext 5, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %163 = load ptr, ptr @hws, align 4
  %arrayidx232 = getelementptr ptr, ptr %163, i32 205
  %164 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call.i1605, ptr %arrayidx232, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !720
  call void @arm_heavy_mb() #7
  %165 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr227) #7, !srcloc !721
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !722
  %166 = and i32 %165, -3932161
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr227, i32 %166) #7, !srcloc !723
  %call242 = call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, ptr noundef %add.ptr227, i8 noundef zeroext 10, i32 noundef 4096) #7
  %167 = load ptr, ptr @hws, align 4
  %arrayidx243 = getelementptr ptr, ptr %167, i32 206
  %168 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call242, ptr %arrayidx243, align 4
  %call245 = call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, ptr noundef %add.ptr227, i8 noundef zeroext 11, i32 noundef 8192) #7
  %169 = load ptr, ptr @hws, align 4
  %arrayidx246 = getelementptr ptr, ptr %169, i32 207
  %170 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call245, ptr %arrayidx246, align 4
  %call248 = call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.5, ptr noundef %add.ptr227, i8 noundef zeroext 12, i32 noundef 1024) #7
  %171 = load ptr, ptr @hws, align 4
  %arrayidx249 = getelementptr ptr, ptr %171, i32 212
  %172 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call248, ptr %arrayidx249, align 4
  %call251 = call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.6, ptr noundef %add.ptr227, i8 noundef zeroext 13, i32 noundef 2048) #7
  %173 = load ptr, ptr @hws, align 4
  %arrayidx252 = getelementptr ptr, ptr %173, i32 213
  %174 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call251, ptr %arrayidx252, align 4
  %add.ptr253 = getelementptr i8, ptr %call37, i32 256
  %call254 = call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.30, ptr noundef %add.ptr253, i8 noundef zeroext 0) #7
  %175 = load ptr, ptr @hws, align 4
  %arrayidx255 = getelementptr ptr, ptr %175, i32 4
  %176 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call254, ptr %arrayidx255, align 4
  %call257 = call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.30, ptr noundef %add.ptr253, i8 noundef zeroext 1) #7
  %177 = load ptr, ptr @hws, align 4
  %arrayidx258 = getelementptr ptr, ptr %177, i32 5
  %178 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %call257, ptr %arrayidx258, align 4
  %call260 = call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.30, ptr noundef %add.ptr253, i8 noundef zeroext 2) #7
  %179 = load ptr, ptr @hws, align 4
  %arrayidx261 = getelementptr ptr, ptr %179, i32 6
  %180 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call260, ptr %arrayidx261, align 4
  %add.ptr262 = getelementptr i8, ptr %call37, i32 240
  %call263 = call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.31, ptr noundef %add.ptr262, i8 noundef zeroext 0) #7
  %181 = load ptr, ptr @hws, align 4
  %arrayidx264 = getelementptr ptr, ptr %181, i32 7
  %182 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %call263, ptr %arrayidx264, align 4
  %call266 = call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.31, ptr noundef %add.ptr262, i8 noundef zeroext 1) #7
  %183 = load ptr, ptr @hws, align 4
  %arrayidx267 = getelementptr ptr, ptr %183, i32 8
  %184 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %call266, ptr %arrayidx267, align 4
  %call269 = call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.31, ptr noundef %add.ptr262, i8 noundef zeroext 2) #7
  %185 = load ptr, ptr @hws, align 4
  %arrayidx270 = getelementptr ptr, ptr %185, i32 9
  %186 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %call269, ptr %arrayidx270, align 4
  %call272 = call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.31, ptr noundef %add.ptr262, i8 noundef zeroext 3) #7
  %187 = load ptr, ptr @hws, align 4
  %arrayidx273 = getelementptr ptr, ptr %187, i32 10
  %188 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call272, ptr %arrayidx273, align 4
  %call.i1606 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.53, i32 noundef 4, i32 noundef 1, i32 noundef 2) #7
  %189 = load ptr, ptr @hws, align 4
  %arrayidx275 = getelementptr ptr, ptr %189, i32 11
  %190 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call.i1606, ptr %arrayidx275, align 4
  %call.i1607 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.31, i32 noundef 4, i32 noundef 1, i32 noundef 4) #7
  %191 = load ptr, ptr @hws, align 4
  %arrayidx277 = getelementptr ptr, ptr %191, i32 12
  %192 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %call.i1607, ptr %arrayidx277, align 4
  %call.i1608 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.31, i32 noundef 4, i32 noundef 1, i32 noundef 6) #7
  %193 = load ptr, ptr @hws, align 4
  %arrayidx279 = getelementptr ptr, ptr %193, i32 13
  %194 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %call.i1608, ptr %arrayidx279, align 4
  %call.i1609 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.31, i32 noundef 4, i32 noundef 1, i32 noundef 8) #7
  %195 = load ptr, ptr @hws, align 4
  %arrayidx281 = getelementptr ptr, ptr %195, i32 14
  %196 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %call.i1609, ptr %arrayidx281, align 4
  %call.i1610 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i32 noundef 4, i32 noundef 1, i32 noundef 2) #7
  %197 = load ptr, ptr @hws, align 4
  %arrayidx283 = getelementptr ptr, ptr %197, i32 15
  %198 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %call.i1610, ptr %arrayidx283, align 4
  %call.i1611 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.4, i32 noundef 4, i32 noundef 1, i32 noundef 8) #7
  %199 = load ptr, ptr @hws, align 4
  %arrayidx285 = getelementptr ptr, ptr %199, i32 237
  %200 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %call.i1611, ptr %arrayidx285, align 4
  %call.i1612 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.55, i32 noundef 4, i32 noundef 1, i32 noundef 20) #7
  %201 = load ptr, ptr @hws, align 4
  %arrayidx287 = getelementptr ptr, ptr %201, i32 238
  %202 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %call.i1612, ptr %arrayidx287, align 4
  %call.i1613 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1613)
  %tobool289.not = icmp eq i32 %call.i1613, 0
  br i1 %tobool289.not, label %lor.lhs.false, label %if.end220.if.then292_crit_edge

if.end220.if.then292_crit_edge:                   ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then292

lor.lhs.false:                                    ; preds = %if.end220
  %call.i1614 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.276) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1614)
  %tobool291.not = icmp eq i32 %call.i1614, 0
  br i1 %tobool291.not, label %lor.lhs.false.if.end297_crit_edge, label %lor.lhs.false.if.then292_crit_edge

lor.lhs.false.if.then292_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then292

lor.lhs.false.if.end297_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end297

if.then292:                                       ; preds = %lor.lhs.false.if.then292_crit_edge, %if.end220.if.then292_crit_edge
  %call.i1615 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef 4, i32 noundef 1, i32 noundef 1) #7
  %203 = load ptr, ptr @hws, align 4
  %arrayidx294 = getelementptr ptr, ptr %203, i32 26
  %204 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %call.i1615, ptr %arrayidx294, align 4
  %call.i1616 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67, i32 noundef 4, i32 noundef 1, i32 noundef 1) #7
  %205 = load ptr, ptr @hws, align 4
  %arrayidx296 = getelementptr ptr, ptr %205, i32 27
  %206 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %call.i1616, ptr %arrayidx296, align 4
  br label %if.end297

if.end297:                                        ; preds = %if.then292, %lor.lhs.false.if.end297_crit_edge
  %call299 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr84, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #7
  %207 = load ptr, ptr @hws, align 4
  %arrayidx300 = getelementptr ptr, ptr %207, i32 193
  %208 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %call299, ptr %arrayidx300, align 4
  %call.i1617 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.270) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1617)
  %tobool302.not = icmp eq i32 %call.i1617, 0
  br i1 %tobool302.not, label %lor.lhs.false303, label %if.end297.if.then306_crit_edge

if.end297.if.then306_crit_edge:                   ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then306

lor.lhs.false303:                                 ; preds = %if.end297
  %call.i1618 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.276) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1618)
  %tobool305.not = icmp eq i32 %call.i1618, 0
  br i1 %tobool305.not, label %if.else309, label %lor.lhs.false303.if.then306_crit_edge

lor.lhs.false303.if.then306_crit_edge:            ; preds = %lor.lhs.false303
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then306

if.then306:                                       ; preds = %lor.lhs.false303.if.then306_crit_edge, %if.end297.if.then306_crit_edge
  %call.i1619 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef 4, i32 noundef 1, i32 noundef 1) #7
  br label %if.end313

if.else309:                                       ; preds = %lor.lhs.false303
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr310 = getelementptr i8, ptr %call37, i32 368
  %call311 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr310, i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %if.end313

if.end313:                                        ; preds = %if.else309, %if.then306
  %call311.sink = phi ptr [ %call311, %if.else309 ], [ %call.i1619, %if.then306 ]
  %209 = load ptr, ptr @hws, align 4
  %arrayidx312 = getelementptr ptr, ptr %209, i32 203
  %210 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %call311.sink, ptr %arrayidx312, align 4
  %call315 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr87, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #7
  %211 = load ptr, ptr @hws, align 4
  %arrayidx316 = getelementptr ptr, ptr %211, i32 194
  %212 = ptrtoint ptr %arrayidx316 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %call315, ptr %arrayidx316, align 4
  %add.ptr317 = getelementptr i8, ptr %call37, i32 368
  %call318 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr317, i8 noundef zeroext 30, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @video_div_table, ptr noundef nonnull @imx_ccm_lock) #7
  %213 = load ptr, ptr @hws, align 4
  %arrayidx319 = getelementptr ptr, ptr %213, i32 195
  %214 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %call318, ptr %arrayidx319, align 4
  %call320 = call ptr @of_iomap(ptr noundef %ccm_node, i32 noundef 0) #7
  %tobool322.not = icmp eq ptr %call320, null
  br i1 %tobool322.not, label %do.end340, label %if.end313.if.end346_crit_edge, !prof !719

if.end313.if.end346_crit_edge:                    ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end346

do.end340:                                        ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 603, i32 noundef 9, ptr noundef null) #7
  br label %if.end346

if.end346:                                        ; preds = %do.end340, %if.end313.if.end346_crit_edge
  %add.ptr354 = getelementptr i8, ptr %call320, i32 12
  %call.i1620 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.73, i8 noundef zeroext 2, ptr noundef nonnull @step_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr354, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %215 = load ptr, ptr @hws, align 4
  %arrayidx356 = getelementptr ptr, ptr %215, i32 16
  %216 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %call.i1620, ptr %arrayidx356, align 4
  %call.i1621 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74, i8 noundef zeroext 2, ptr noundef nonnull @pll1_sw_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr354, i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %217 = load ptr, ptr @hws, align 4
  %arrayidx359 = getelementptr ptr, ptr %217, i32 17
  %218 = ptrtoint ptr %arrayidx359 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %call.i1621, ptr %arrayidx359, align 4
  %add.ptr360 = getelementptr i8, ptr %call320, i32 24
  %call.i1622 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.75, i8 noundef zeroext 4, ptr noundef nonnull @periph_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr360, i8 noundef zeroext 18, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %219 = load ptr, ptr @hws, align 4
  %arrayidx362 = getelementptr ptr, ptr %219, i32 18
  %220 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %call.i1622, ptr %arrayidx362, align 4
  %call.i1623 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.76, i8 noundef zeroext 4, ptr noundef nonnull @periph_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr360, i8 noundef zeroext 21, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %221 = load ptr, ptr @hws, align 4
  %arrayidx365 = getelementptr ptr, ptr %221, i32 19
  %222 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %call.i1623, ptr %arrayidx365, align 4
  %call.i1624 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.77, i8 noundef zeroext 4, ptr noundef nonnull @periph_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr360, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %223 = load ptr, ptr @hws, align 4
  %arrayidx368 = getelementptr ptr, ptr %223, i32 20
  %224 = ptrtoint ptr %arrayidx368 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call.i1624, ptr %arrayidx368, align 4
  %call.i1625 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.78, i8 noundef zeroext 2, ptr noundef nonnull @periph2_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr360, i8 noundef zeroext 20, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %225 = load ptr, ptr @hws, align 4
  %arrayidx371 = getelementptr ptr, ptr %225, i32 21
  %226 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %call.i1625, ptr %arrayidx371, align 4
  %add.ptr372 = getelementptr i8, ptr %call320, i32 20
  %call.i1626 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.79, i8 noundef zeroext 4, ptr noundef nonnull @axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr372, i8 noundef zeroext 6, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %227 = load ptr, ptr @hws, align 4
  %arrayidx374 = getelementptr ptr, ptr %227, i32 22
  %228 = ptrtoint ptr %arrayidx374 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %call.i1626, ptr %arrayidx374, align 4
  %add.ptr375 = getelementptr i8, ptr %call320, i32 32
  %call.i1627 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.80, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr375, i8 noundef zeroext 19, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %229 = load ptr, ptr @hws, align 4
  %arrayidx377 = getelementptr ptr, ptr %229, i32 23
  %230 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %call.i1627, ptr %arrayidx377, align 4
  %add.ptr378 = getelementptr i8, ptr %call320, i32 48
  %call.i1628 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.81, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr378, i8 noundef zeroext 7, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %231 = load ptr, ptr @hws, align 4
  %arrayidx380 = getelementptr ptr, ptr %231, i32 24
  %232 = ptrtoint ptr %arrayidx380 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %call.i1628, ptr %arrayidx380, align 4
  %call.i1629 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.82, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr378, i8 noundef zeroext 20, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %233 = load ptr, ptr @hws, align 4
  %arrayidx383 = getelementptr ptr, ptr %233, i32 25
  %234 = ptrtoint ptr %arrayidx383 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %call.i1629, ptr %arrayidx383, align 4
  %call.i1630 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.270) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1630)
  %tobool385.not = icmp eq i32 %call.i1630, 0
  br i1 %tobool385.not, label %if.end346.if.end393_crit_edge, label %if.then386

if.end346.if.end393_crit_edge:                    ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end393

if.then386:                                       ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1631 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.66, i8 noundef zeroext 2, ptr noundef nonnull @gpu_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr360, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %235 = load ptr, ptr @hws, align 4
  %arrayidx389 = getelementptr ptr, ptr %235, i32 26
  %236 = ptrtoint ptr %arrayidx389 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %call.i1631, ptr %arrayidx389, align 4
  %call.i1632 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.68, i8 noundef zeroext 2, ptr noundef nonnull @gpu_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr360, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %237 = load ptr, ptr @hws, align 4
  %arrayidx392 = getelementptr ptr, ptr %237, i32 27
  %238 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %call.i1632, ptr %arrayidx392, align 4
  br label %if.end393

if.end393:                                        ; preds = %if.then386, %if.end346.if.end393_crit_edge
  %call.i1633 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.276) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1633)
  %tobool395.not = icmp eq i32 %call.i1633, 0
  br i1 %tobool395.not, label %if.else412, label %if.then396

if.then396:                                       ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1634 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.83, i8 noundef zeroext 3, ptr noundef nonnull @can_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr375, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %239 = load ptr, ptr @hws, align 4
  %arrayidx399 = getelementptr ptr, ptr %239, i32 248
  %240 = ptrtoint ptr %arrayidx399 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %call.i1634, ptr %arrayidx399, align 4
  %add.ptr400 = getelementptr i8, ptr %call320, i32 56
  %call.i1635 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.84, i8 noundef zeroext 2, ptr noundef nonnull @ecspi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr400, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %241 = load ptr, ptr @hws, align 4
  %arrayidx402 = getelementptr ptr, ptr %241, i32 247
  %242 = ptrtoint ptr %arrayidx402 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %call.i1635, ptr %arrayidx402, align 4
  %add.ptr403 = getelementptr i8, ptr %call320, i32 28
  %call.i1636 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.85, i8 noundef zeroext 2, ptr noundef nonnull @ipg_per_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr403, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %243 = load ptr, ptr @hws, align 4
  %arrayidx405 = getelementptr ptr, ptr %243, i32 246
  %244 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %call.i1636, ptr %arrayidx405, align 4
  %add.ptr406 = getelementptr i8, ptr %call320, i32 36
  %call.i1637 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.86, i8 noundef zeroext 2, ptr noundef nonnull @uart_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr406, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %245 = load ptr, ptr @hws, align 4
  %arrayidx408 = getelementptr ptr, ptr %245, i32 245
  %246 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %call.i1637, ptr %arrayidx408, align 4
  %call.i1638 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.87, i8 noundef zeroext 4, ptr noundef nonnull @gpu2d_core_sels_2, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr360, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %if.end424

if.else412:                                       ; preds = %if.end393
  %call.i1639 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1639)
  %tobool414.not = icmp eq i32 %call.i1639, 0
  br i1 %tobool414.not, label %if.else419, label %if.then415

if.then415:                                       ; preds = %if.else412
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1640 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.88, i8 noundef zeroext 4, ptr noundef nonnull @gpu2d_core_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr360, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %if.end424

if.else419:                                       ; preds = %if.else412
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1641 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.87, i8 noundef zeroext 4, ptr noundef nonnull @gpu2d_core_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr360, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %if.end424

if.end424:                                        ; preds = %if.else419, %if.then415, %if.then396
  %.sink1866 = phi i32 [ 259, %if.then415 ], [ 28, %if.else419 ], [ 28, %if.then396 ]
  %call.i1640.sink = phi ptr [ %call.i1640, %if.then415 ], [ %call.i1641, %if.else419 ], [ %call.i1638, %if.then396 ]
  %247 = load ptr, ptr @hws, align 4
  %arrayidx418 = getelementptr ptr, ptr %247, i32 %.sink1866
  %248 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %call.i1640.sink, ptr %arrayidx418, align 4
  %call.i1642 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.89, i8 noundef zeroext 4, ptr noundef nonnull @gpu3d_core_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr360, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %249 = load ptr, ptr @hws, align 4
  %arrayidx427 = getelementptr ptr, ptr %249, i32 29
  %250 = ptrtoint ptr %arrayidx427 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %call.i1642, ptr %arrayidx427, align 4
  %call.i1643 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1643)
  %tobool429.not = icmp eq i32 %call.i1643, 0
  %.str.90..str.87 = select i1 %tobool429.not, ptr @.str.90, ptr @.str.87
  %. = select i1 %tobool429.not, i32 30, i32 28
  %call.i1645 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull %.str.90..str.87, i8 noundef zeroext 4, ptr noundef nonnull @gpu3d_shader_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr360, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %251 = load ptr, ptr @hws, align 4
  %arrayidx437 = getelementptr ptr, ptr %251, i32 %.
  %252 = ptrtoint ptr %arrayidx437 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %call.i1645, ptr %arrayidx437, align 4
  %add.ptr439 = getelementptr i8, ptr %call320, i32 60
  %call.i1646 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.91, i8 noundef zeroext 4, ptr noundef nonnull @ipu_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr439, i8 noundef zeroext 9, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %253 = load ptr, ptr @hws, align 4
  %arrayidx441 = getelementptr ptr, ptr %253, i32 31
  %254 = ptrtoint ptr %arrayidx441 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %call.i1646, ptr %arrayidx441, align 4
  %call.i1647 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.92, i8 noundef zeroext 4, ptr noundef nonnull @ipu_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr439, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %255 = load ptr, ptr @hws, align 4
  %arrayidx444 = getelementptr ptr, ptr %255, i32 32
  %256 = ptrtoint ptr %arrayidx444 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %call.i1647, ptr %arrayidx444, align 4
  %257 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr253) #7, !srcloc !721
  %258 = call i32 @llvm.bswap.i32(i32 %257) #7
  %259 = load ptr, ptr @hws, align 4
  %arrayidx.i = getelementptr ptr, ptr %259, i32 18
  %260 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx.i, align 4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %261, i32 0, i32 1
  %262 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %clk.i, align 4
  %call1.i = call ptr @clk_get_parent(ptr noundef %263) #7
  %264 = load ptr, ptr @hws, align 4
  %arrayidx2.i = getelementptr ptr, ptr %264, i32 6
  %265 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %arrayidx2.i, align 4
  %clk3.i = getelementptr inbounds %struct.clk_hw, ptr %266, i32 0, i32 1
  %267 = ptrtoint ptr %clk3.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %clk3.i, align 4
  %cmp.i1648 = icmp eq ptr %call1.i, %268
  %reg.0.v.i = select i1 %cmp.i1648, i32 32896, i32 8421504
  %reg.0.i = or i32 %reg.0.v.i, %258
  %269 = call i32 @llvm.bswap.i32(i32 %reg.0.i) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr253, i32 %269) #7, !srcloc !723
  %270 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr262) #7, !srcloc !721
  %271 = or i32 %270, -2139062144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr262, i32 %271) #7, !srcloc !723
  %272 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #7, !srcloc !721
  %273 = and i32 %272, -2097153
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %273) #7, !srcloc !723
  call void @imx_mmdc_mask_handshake(ptr noundef %call320, i32 noundef 1) #7
  %call.i1649 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.276) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1649)
  %tobool446.not = icmp eq i32 %call.i1649, 0
  br i1 %tobool446.not, label %if.else454, label %if.then447

if.then447:                                       ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr448 = getelementptr i8, ptr %call320, i32 44
  %call.i1650 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.93, i8 noundef zeroext 5, ptr noundef nonnull @ldb_di_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr448, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %274 = load ptr, ptr @hws, align 4
  %arrayidx450 = getelementptr ptr, ptr %274, i32 33
  %275 = ptrtoint ptr %arrayidx450 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %call.i1650, ptr %arrayidx450, align 4
  %call.i1651 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.94, i8 noundef zeroext 5, ptr noundef nonnull @ldb_di_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr448, i8 noundef zeroext 12, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %if.end461

if.else454:                                       ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @init_ldb_clks(ptr noundef %ccm_node, ptr noundef %call320)
  %add.ptr455 = getelementptr i8, ptr %call320, i32 44
  %call.i1652 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.93, i8 noundef zeroext 5, ptr noundef nonnull @ldb_di_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr455, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 8, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %276 = load ptr, ptr @hws, align 4
  %arrayidx457 = getelementptr ptr, ptr %276, i32 33
  %277 = ptrtoint ptr %arrayidx457 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %call.i1652, ptr %arrayidx457, align 4
  %call.i1653 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.94, i8 noundef zeroext 5, ptr noundef nonnull @ldb_di_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr455, i8 noundef zeroext 12, i32 noundef 7, i8 noundef zeroext 8, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %if.end461

if.end461:                                        ; preds = %if.else454, %if.then447
  %call.i1653.sink = phi ptr [ %call.i1653, %if.else454 ], [ %call.i1651, %if.then447 ]
  %278 = load ptr, ptr @hws, align 4
  %arrayidx460 = getelementptr ptr, ptr %278, i32 34
  %279 = ptrtoint ptr %arrayidx460 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %call.i1653.sink, ptr %arrayidx460, align 4
  %add.ptr462 = getelementptr i8, ptr %call320, i32 52
  %call.i1654 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.95, i8 noundef zeroext 6, ptr noundef nonnull @ipu_di_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr462, i8 noundef zeroext 6, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %280 = load ptr, ptr @hws, align 4
  %arrayidx464 = getelementptr ptr, ptr %280, i32 35
  %281 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %call.i1654, ptr %arrayidx464, align 4
  %call.i1655 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.96, i8 noundef zeroext 6, ptr noundef nonnull @ipu_di_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr462, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %282 = load ptr, ptr @hws, align 4
  %arrayidx467 = getelementptr ptr, ptr %282, i32 36
  %283 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %call.i1655, ptr %arrayidx467, align 4
  %add.ptr468 = getelementptr i8, ptr %call320, i32 56
  %call.i1656 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.97, i8 noundef zeroext 6, ptr noundef nonnull @ipu_di_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr468, i8 noundef zeroext 6, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %284 = load ptr, ptr @hws, align 4
  %arrayidx470 = getelementptr ptr, ptr %284, i32 37
  %285 = ptrtoint ptr %arrayidx470 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %call.i1656, ptr %arrayidx470, align 4
  %call.i1657 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.98, i8 noundef zeroext 6, ptr noundef nonnull @ipu_di_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr468, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %286 = load ptr, ptr @hws, align 4
  %arrayidx473 = getelementptr ptr, ptr %286, i32 38
  %287 = ptrtoint ptr %arrayidx473 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %call.i1657, ptr %arrayidx473, align 4
  %call.i1658 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.99, i8 noundef zeroext 2, ptr noundef nonnull @hsi_tx_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr378, i8 noundef zeroext 28, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %288 = load ptr, ptr @hws, align 4
  %arrayidx476 = getelementptr ptr, ptr %288, i32 43
  %289 = ptrtoint ptr %arrayidx476 to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %call.i1658, ptr %arrayidx476, align 4
  %call.i1659 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.100, i8 noundef zeroext 2, ptr noundef nonnull @pcie_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr360, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %290 = load ptr, ptr @hws, align 4
  %arrayidx479 = getelementptr ptr, ptr %290, i32 44
  %291 = ptrtoint ptr %arrayidx479 to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %call.i1659, ptr %arrayidx479, align 4
  %call.i1660 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.276) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1660)
  %tobool481.not = icmp eq i32 %call.i1660, 0
  br i1 %tobool481.not, label %if.else528, label %if.then482

if.then482:                                       ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1661 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.101, i8 noundef zeroext 5, ptr noundef nonnull @ipu1_di0_sels_2, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr462, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %292 = load ptr, ptr @hws, align 4
  %arrayidx485 = getelementptr ptr, ptr %292, i32 39
  %293 = ptrtoint ptr %arrayidx485 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %call.i1661, ptr %arrayidx485, align 4
  %call.i1662 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.102, i8 noundef zeroext 5, ptr noundef nonnull @ipu1_di1_sels_2, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr462, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %294 = load ptr, ptr @hws, align 4
  %arrayidx488 = getelementptr ptr, ptr %294, i32 40
  %295 = ptrtoint ptr %arrayidx488 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %call.i1662, ptr %arrayidx488, align 4
  %call.i1663 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.103, i8 noundef zeroext 5, ptr noundef nonnull @ipu2_di0_sels_2, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr468, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %296 = load ptr, ptr @hws, align 4
  %arrayidx491 = getelementptr ptr, ptr %296, i32 41
  %297 = ptrtoint ptr %arrayidx491 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %call.i1663, ptr %arrayidx491, align 4
  %call.i1664 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.104, i8 noundef zeroext 5, ptr noundef nonnull @ipu2_di1_sels_2, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr468, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %298 = load ptr, ptr @hws, align 4
  %arrayidx494 = getelementptr ptr, ptr %298, i32 42
  %299 = ptrtoint ptr %arrayidx494 to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %call.i1664, ptr %arrayidx494, align 4
  %add.ptr495 = getelementptr i8, ptr %call320, i32 28
  %call.i1665 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.105, i8 noundef zeroext 3, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr495, i8 noundef zeroext 10, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %300 = load ptr, ptr @hws, align 4
  %arrayidx497 = getelementptr ptr, ptr %300, i32 45
  %301 = ptrtoint ptr %arrayidx497 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %call.i1665, ptr %arrayidx497, align 4
  %call.i1666 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.106, i8 noundef zeroext 3, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr495, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %302 = load ptr, ptr @hws, align 4
  %arrayidx500 = getelementptr ptr, ptr %302, i32 46
  %303 = ptrtoint ptr %arrayidx500 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %call.i1666, ptr %arrayidx500, align 4
  %call.i1667 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.107, i8 noundef zeroext 3, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr495, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %304 = load ptr, ptr @hws, align 4
  %arrayidx503 = getelementptr ptr, ptr %304, i32 47
  %305 = ptrtoint ptr %arrayidx503 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %call.i1667, ptr %arrayidx503, align 4
  %call.i1668 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.108, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr495, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %306 = load ptr, ptr @hws, align 4
  %arrayidx506 = getelementptr ptr, ptr %306, i32 48
  %307 = ptrtoint ptr %arrayidx506 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %call.i1668, ptr %arrayidx506, align 4
  %call.i1669 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.109, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr495, i8 noundef zeroext 17, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %308 = load ptr, ptr @hws, align 4
  %arrayidx509 = getelementptr ptr, ptr %308, i32 49
  %309 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %call.i1669, ptr %arrayidx509, align 4
  %call.i1670 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.110, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr495, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %310 = load ptr, ptr @hws, align 4
  %arrayidx512 = getelementptr ptr, ptr %310, i32 50
  %311 = ptrtoint ptr %arrayidx512 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %call.i1670, ptr %arrayidx512, align 4
  %call.i1671 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.111, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr495, i8 noundef zeroext 19, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %312 = load ptr, ptr @hws, align 4
  %arrayidx515 = getelementptr ptr, ptr %312, i32 51
  %313 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %call.i1671, ptr %arrayidx515, align 4
  %add.ptr516 = getelementptr i8, ptr %call320, i32 44
  %call.i1672 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.112, i8 noundef zeroext 6, ptr noundef nonnull @enfc_sels_2, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr516, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %314 = load ptr, ptr @hws, align 4
  %arrayidx518 = getelementptr ptr, ptr %314, i32 52
  %315 = ptrtoint ptr %arrayidx518 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %call.i1672, ptr %arrayidx518, align 4
  %call.i1673 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.113, i8 noundef zeroext 4, ptr noundef nonnull @eim_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr495, i8 noundef zeroext 27, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %316 = load ptr, ptr @hws, align 4
  %arrayidx521 = getelementptr ptr, ptr %316, i32 53
  %317 = ptrtoint ptr %arrayidx521 to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr %call.i1673, ptr %arrayidx521, align 4
  %call.i1674 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.114, i8 noundef zeroext 4, ptr noundef nonnull @eim_slow_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr495, i8 noundef zeroext 29, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %318 = load ptr, ptr @hws, align 4
  %arrayidx524 = getelementptr ptr, ptr %318, i32 54
  %319 = ptrtoint ptr %arrayidx524 to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %call.i1674, ptr %arrayidx524, align 4
  %call.i1675 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.115, i8 noundef zeroext 2, ptr noundef nonnull @pre_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr360, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %if.end571

if.else528:                                       ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1676 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.101, i8 noundef zeroext 5, ptr noundef nonnull @ipu1_di0_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr462, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %320 = load ptr, ptr @hws, align 4
  %arrayidx531 = getelementptr ptr, ptr %320, i32 39
  %321 = ptrtoint ptr %arrayidx531 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %call.i1676, ptr %arrayidx531, align 4
  %call.i1677 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.102, i8 noundef zeroext 5, ptr noundef nonnull @ipu1_di1_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr462, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %322 = load ptr, ptr @hws, align 4
  %arrayidx534 = getelementptr ptr, ptr %322, i32 40
  %323 = ptrtoint ptr %arrayidx534 to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %call.i1677, ptr %arrayidx534, align 4
  %call.i1678 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.103, i8 noundef zeroext 5, ptr noundef nonnull @ipu2_di0_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr468, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %324 = load ptr, ptr @hws, align 4
  %arrayidx537 = getelementptr ptr, ptr %324, i32 41
  %325 = ptrtoint ptr %arrayidx537 to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %call.i1678, ptr %arrayidx537, align 4
  %call.i1679 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.104, i8 noundef zeroext 5, ptr noundef nonnull @ipu2_di1_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr468, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %326 = load ptr, ptr @hws, align 4
  %arrayidx540 = getelementptr ptr, ptr %326, i32 42
  %327 = ptrtoint ptr %arrayidx540 to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %call.i1679, ptr %arrayidx540, align 4
  %add.ptr541 = getelementptr i8, ptr %call320, i32 28
  %call542 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.105, ptr noundef %add.ptr541, i8 noundef zeroext 10, i8 noundef zeroext 2, ptr noundef nonnull @ssi_sels, i32 noundef 3, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %328 = load ptr, ptr @hws, align 4
  %arrayidx543 = getelementptr ptr, ptr %328, i32 45
  %329 = ptrtoint ptr %arrayidx543 to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %call542, ptr %arrayidx543, align 4
  %call545 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.106, ptr noundef %add.ptr541, i8 noundef zeroext 12, i8 noundef zeroext 2, ptr noundef nonnull @ssi_sels, i32 noundef 3, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %330 = load ptr, ptr @hws, align 4
  %arrayidx546 = getelementptr ptr, ptr %330, i32 46
  %331 = ptrtoint ptr %arrayidx546 to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %call545, ptr %arrayidx546, align 4
  %call548 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.107, ptr noundef %add.ptr541, i8 noundef zeroext 14, i8 noundef zeroext 2, ptr noundef nonnull @ssi_sels, i32 noundef 3, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %332 = load ptr, ptr @hws, align 4
  %arrayidx549 = getelementptr ptr, ptr %332, i32 47
  %333 = ptrtoint ptr %arrayidx549 to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %call548, ptr %arrayidx549, align 4
  %call551 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.108, ptr noundef %add.ptr541, i8 noundef zeroext 16, i8 noundef zeroext 1, ptr noundef nonnull @usdhc_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %334 = load ptr, ptr @hws, align 4
  %arrayidx552 = getelementptr ptr, ptr %334, i32 48
  %335 = ptrtoint ptr %arrayidx552 to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %call551, ptr %arrayidx552, align 4
  %call554 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.109, ptr noundef %add.ptr541, i8 noundef zeroext 17, i8 noundef zeroext 1, ptr noundef nonnull @usdhc_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %336 = load ptr, ptr @hws, align 4
  %arrayidx555 = getelementptr ptr, ptr %336, i32 49
  %337 = ptrtoint ptr %arrayidx555 to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %call554, ptr %arrayidx555, align 4
  %call557 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.110, ptr noundef %add.ptr541, i8 noundef zeroext 18, i8 noundef zeroext 1, ptr noundef nonnull @usdhc_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %338 = load ptr, ptr @hws, align 4
  %arrayidx558 = getelementptr ptr, ptr %338, i32 50
  %339 = ptrtoint ptr %arrayidx558 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %call557, ptr %arrayidx558, align 4
  %call560 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.111, ptr noundef %add.ptr541, i8 noundef zeroext 19, i8 noundef zeroext 1, ptr noundef nonnull @usdhc_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %340 = load ptr, ptr @hws, align 4
  %arrayidx561 = getelementptr ptr, ptr %340, i32 51
  %341 = ptrtoint ptr %arrayidx561 to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %call560, ptr %arrayidx561, align 4
  %add.ptr562 = getelementptr i8, ptr %call320, i32 44
  %call.i1680 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.112, i8 noundef zeroext 4, ptr noundef nonnull @enfc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr562, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %342 = load ptr, ptr @hws, align 4
  %arrayidx564 = getelementptr ptr, ptr %342, i32 52
  %343 = ptrtoint ptr %arrayidx564 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %call.i1680, ptr %arrayidx564, align 4
  %call566 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.113, ptr noundef %add.ptr541, i8 noundef zeroext 27, i8 noundef zeroext 2, ptr noundef nonnull @eim_sels, i32 noundef 4, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %344 = load ptr, ptr @hws, align 4
  %arrayidx567 = getelementptr ptr, ptr %344, i32 53
  %345 = ptrtoint ptr %arrayidx567 to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %call566, ptr %arrayidx567, align 4
  %call569 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.114, ptr noundef %add.ptr541, i8 noundef zeroext 29, i8 noundef zeroext 2, ptr noundef nonnull @eim_slow_sels, i32 noundef 4, ptr noundef nonnull @imx_cscmr1_fixup) #7
  br label %if.end571

if.end571:                                        ; preds = %if.else528, %if.then482
  %.sink1868 = phi i32 [ 54, %if.else528 ], [ 258, %if.then482 ]
  %call569.sink = phi ptr [ %call569, %if.else528 ], [ %call.i1675, %if.then482 ]
  %346 = load ptr, ptr @hws, align 4
  %arrayidx570 = getelementptr ptr, ptr %346, i32 %.sink1868
  %347 = ptrtoint ptr %arrayidx570 to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %call569.sink, ptr %arrayidx570, align 4
  %call.i1681 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.116, i8 noundef zeroext 2, ptr noundef nonnull @vdo_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr360, i8 noundef zeroext 11, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %348 = load ptr, ptr @hws, align 4
  %arrayidx574 = getelementptr ptr, ptr %348, i32 55
  %349 = ptrtoint ptr %arrayidx574 to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %call.i1681, ptr %arrayidx574, align 4
  %call.i1682 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.117, i8 noundef zeroext 3, ptr noundef nonnull @vpu_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr360, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %350 = load ptr, ptr @hws, align 4
  %arrayidx577 = getelementptr ptr, ptr %350, i32 56
  %351 = ptrtoint ptr %arrayidx577 to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %call.i1682, ptr %arrayidx577, align 4
  %add.ptr578 = getelementptr i8, ptr %call320, i32 96
  %call.i1683 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.118, i8 noundef zeroext 16, ptr noundef nonnull @cko1_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr578, i8 noundef zeroext 0, i32 noundef 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %352 = load ptr, ptr @hws, align 4
  %arrayidx580 = getelementptr ptr, ptr %352, i32 57
  %353 = ptrtoint ptr %arrayidx580 to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr %call.i1683, ptr %arrayidx580, align 4
  %call.i1684 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.119, i8 noundef zeroext 32, ptr noundef nonnull @cko2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr578, i8 noundef zeroext 16, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %354 = load ptr, ptr @hws, align 4
  %arrayidx583 = getelementptr ptr, ptr %354, i32 198
  %355 = ptrtoint ptr %arrayidx583 to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr %call.i1684, ptr %arrayidx583, align 4
  %call.i1685 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.120, i8 noundef zeroext 2, ptr noundef nonnull @cko_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr578, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %356 = load ptr, ptr @hws, align 4
  %arrayidx586 = getelementptr ptr, ptr %356, i32 201
  %357 = ptrtoint ptr %arrayidx586 to i32
  call void @__asan_store4_noabort(i32 %357)
  store ptr %call.i1685, ptr %arrayidx586, align 4
  %add.ptr588 = getelementptr i8, ptr %call320, i32 72
  %call589 = call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.121, ptr noundef %add.ptr372, i8 noundef zeroext 25, i8 noundef zeroext 1, ptr noundef %add.ptr588, i8 noundef zeroext 5, ptr noundef nonnull @periph_sels, i32 noundef 2) #7
  %358 = load ptr, ptr @hws, align 4
  %arrayidx590 = getelementptr ptr, ptr %358, i32 58
  %359 = ptrtoint ptr %arrayidx590 to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr %call589, ptr %arrayidx590, align 4
  %call593 = call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.122, ptr noundef %add.ptr372, i8 noundef zeroext 26, i8 noundef zeroext 1, ptr noundef %add.ptr588, i8 noundef zeroext 3, ptr noundef nonnull @periph2_sels, i32 noundef 2) #7
  %360 = load ptr, ptr @hws, align 4
  %arrayidx594 = getelementptr ptr, ptr %360, i32 59
  %361 = ptrtoint ptr %arrayidx594 to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %call593, ptr %arrayidx594, align 4
  %call.i1686 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.77, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr372, i8 noundef zeroext 27, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %362 = load ptr, ptr @hws, align 4
  %arrayidx597 = getelementptr ptr, ptr %362, i32 60
  %363 = ptrtoint ptr %arrayidx597 to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %call.i1686, ptr %arrayidx597, align 4
  %call.i1687 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.78, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr372, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %364 = load ptr, ptr @hws, align 4
  %arrayidx600 = getelementptr ptr, ptr %364, i32 61
  %365 = ptrtoint ptr %arrayidx600 to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr %call.i1687, ptr %arrayidx600, align 4
  %call.i1688 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr372, i8 noundef zeroext 8, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %366 = load ptr, ptr @hws, align 4
  %arrayidx603 = getelementptr ptr, ptr %366, i32 62
  %367 = ptrtoint ptr %arrayidx603 to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %call.i1688, ptr %arrayidx603, align 4
  %add.ptr604 = getelementptr i8, ptr %call320, i32 40
  %call.i1689 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.80, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr604, i8 noundef zeroext 9, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %368 = load ptr, ptr @hws, align 4
  %arrayidx606 = getelementptr ptr, ptr %368, i32 64
  %369 = ptrtoint ptr %arrayidx606 to i32
  call void @__asan_store4_noabort(i32 %369)
  store ptr %call.i1689, ptr %arrayidx606, align 4
  %call.i1690 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.127, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr604, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %370 = load ptr, ptr @hws, align 4
  %arrayidx609 = getelementptr ptr, ptr %370, i32 65
  %371 = ptrtoint ptr %arrayidx609 to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %call.i1690, ptr %arrayidx609, align 4
  %call.i1691 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.81, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr378, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %372 = load ptr, ptr @hws, align 4
  %arrayidx612 = getelementptr ptr, ptr %372, i32 66
  %373 = ptrtoint ptr %arrayidx612 to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %call.i1691, ptr %arrayidx612, align 4
  %call.i1692 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.129, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr378, i8 noundef zeroext 9, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %374 = load ptr, ptr @hws, align 4
  %arrayidx615 = getelementptr ptr, ptr %374, i32 67
  %375 = ptrtoint ptr %arrayidx615 to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr %call.i1692, ptr %arrayidx615, align 4
  %call.i1693 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.82, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr378, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %376 = load ptr, ptr @hws, align 4
  %arrayidx618 = getelementptr ptr, ptr %376, i32 68
  %377 = ptrtoint ptr %arrayidx618 to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr %call.i1693, ptr %arrayidx618, align 4
  %call.i1694 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.131, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr378, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %378 = load ptr, ptr @hws, align 4
  %arrayidx621 = getelementptr ptr, ptr %378, i32 69
  %379 = ptrtoint ptr %arrayidx621 to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %call.i1694, ptr %arrayidx621, align 4
  %call.i1695 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.276) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1695)
  %tobool623.not = icmp eq i32 %call.i1695, 0
  br i1 %tobool623.not, label %if.else641, label %if.then624

if.then624:                                       ; preds = %if.end571
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr625 = getelementptr i8, ptr %call320, i32 28
  %call.i1696 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.85, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr625, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %380 = load ptr, ptr @hws, align 4
  %arrayidx627 = getelementptr ptr, ptr %380, i32 63
  %381 = ptrtoint ptr %arrayidx627 to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr %call.i1696, ptr %arrayidx627, align 4
  %call.i1697 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.84, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr468, i8 noundef zeroext 19, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %382 = load ptr, ptr @hws, align 4
  %arrayidx630 = getelementptr ptr, ptr %382, i32 71
  %383 = ptrtoint ptr %arrayidx630 to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr %call.i1697, ptr %arrayidx630, align 4
  %call.i1698 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.83, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr375, i8 noundef zeroext 2, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %if.end658

if.else641:                                       ; preds = %if.end571
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1702 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.61, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr468, i8 noundef zeroext 19, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %384 = load ptr, ptr @hws, align 4
  %arrayidx644 = getelementptr ptr, ptr %384, i32 71
  %385 = ptrtoint ptr %arrayidx644 to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr %call.i1702, ptr %arrayidx644, align 4
  %call.i1703 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.61, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr375, i8 noundef zeroext 2, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %386 = load ptr, ptr @hws, align 4
  %arrayidx647 = getelementptr ptr, ptr %386, i32 70
  %387 = ptrtoint ptr %arrayidx647 to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr %call.i1703, ptr %arrayidx647, align 4
  %add.ptr648 = getelementptr i8, ptr %call320, i32 28
  %call649 = call ptr @imx_clk_hw_fixup_divider(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.125, ptr noundef %add.ptr648, i8 noundef zeroext 0, i8 noundef zeroext 6, ptr noundef nonnull @imx_cscmr1_fixup) #7
  br label %if.end658

if.end658:                                        ; preds = %if.else641, %if.then624
  %.sink1869 = phi i32 [ 63, %if.else641 ], [ 70, %if.then624 ]
  %call649.sink = phi ptr [ %call649, %if.else641 ], [ %call.i1698, %if.then624 ]
  %.str.60.sink = phi ptr [ @.str.60, %if.else641 ], [ @.str.86, %if.then624 ]
  %.str.93.sink = phi ptr [ @.str.93, %if.else641 ], [ @.str.138, %if.then624 ]
  %.str.94.sink = phi ptr [ @.str.94, %if.else641 ], [ @.str.140, %if.then624 ]
  %388 = load ptr, ptr @hws, align 4
  %arrayidx650 = getelementptr ptr, ptr %388, i32 %.sink1869
  %389 = ptrtoint ptr %arrayidx650 to i32
  call void @__asan_store4_noabort(i32 %389)
  store ptr %call649.sink, ptr %arrayidx650, align 4
  %add.ptr651 = getelementptr i8, ptr %call320, i32 36
  %call.i1704 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull %.str.60.sink, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr651, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %390 = load ptr, ptr @hws, align 4
  %arrayidx653 = getelementptr ptr, ptr %390, i32 90
  %391 = ptrtoint ptr %arrayidx653 to i32
  call void @__asan_store4_noabort(i32 %391)
  store ptr %call.i1704, ptr %arrayidx653, align 4
  %call.i1705 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.137, ptr noundef nonnull %.str.93.sink, i32 noundef 4, i32 noundef 2, i32 noundef 7) #7
  %392 = load ptr, ptr @hws, align 4
  %arrayidx655 = getelementptr ptr, ptr %392, i32 184
  %393 = ptrtoint ptr %arrayidx655 to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr %call.i1705, ptr %arrayidx655, align 4
  %call.i1706 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.139, ptr noundef nonnull %.str.94.sink, i32 noundef 4, i32 noundef 2, i32 noundef 7) #7
  %394 = load ptr, ptr @hws, align 4
  %arrayidx657 = getelementptr ptr, ptr %394, i32 185
  %395 = ptrtoint ptr %arrayidx657 to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr %call.i1706, ptr %arrayidx657, align 4
  %call.i1707 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1707)
  %tobool660.not = icmp eq i32 %call.i1707, 0
  br i1 %tobool660.not, label %if.else665, label %if.then661

if.then661:                                       ; preds = %if.end658
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1708 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.88, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr360, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %if.end669

if.else665:                                       ; preds = %if.end658
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1709 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.87, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr360, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %if.end669

if.end669:                                        ; preds = %if.else665, %if.then661
  %.sink1870 = phi i32 [ 72, %if.else665 ], [ 260, %if.then661 ]
  %call.i1709.sink = phi ptr [ %call.i1709, %if.else665 ], [ %call.i1708, %if.then661 ]
  %396 = load ptr, ptr @hws, align 4
  %arrayidx668 = getelementptr ptr, ptr %396, i32 %.sink1870
  %397 = ptrtoint ptr %arrayidx668 to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr %call.i1709.sink, ptr %arrayidx668, align 4
  %call.i1710 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.89, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr360, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %398 = load ptr, ptr @hws, align 4
  %arrayidx672 = getelementptr ptr, ptr %398, i32 73
  %399 = ptrtoint ptr %arrayidx672 to i32
  call void @__asan_store4_noabort(i32 %399)
  store ptr %call.i1710, ptr %arrayidx672, align 4
  %call.i1711 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1711)
  %tobool674.not = icmp eq i32 %call.i1711, 0
  br i1 %tobool674.not, label %if.else679, label %if.then675

if.then675:                                       ; preds = %if.end669
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1712 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.87, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr360, i8 noundef zeroext 29, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %if.end683

if.else679:                                       ; preds = %if.end669
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1713 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.90, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr360, i8 noundef zeroext 29, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %if.end683

if.end683:                                        ; preds = %if.else679, %if.then675
  %.sink1871 = phi i32 [ 74, %if.else679 ], [ 72, %if.then675 ]
  %call.i1713.sink = phi ptr [ %call.i1713, %if.else679 ], [ %call.i1712, %if.then675 ]
  %400 = load ptr, ptr @hws, align 4
  %arrayidx682 = getelementptr ptr, ptr %400, i32 %.sink1871
  %401 = ptrtoint ptr %arrayidx682 to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr %call.i1713.sink, ptr %arrayidx682, align 4
  %call.i1714 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr439, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %402 = load ptr, ptr @hws, align 4
  %arrayidx686 = getelementptr ptr, ptr %402, i32 75
  %403 = ptrtoint ptr %arrayidx686 to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr %call.i1714, ptr %arrayidx686, align 4
  %call.i1715 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.92, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr439, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %404 = load ptr, ptr @hws, align 4
  %arrayidx689 = getelementptr ptr, ptr %404, i32 76
  %405 = ptrtoint ptr %arrayidx689 to i32
  call void @__asan_store4_noabort(i32 %405)
  store ptr %call.i1715, ptr %arrayidx689, align 4
  %call.i1716 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.137, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr375, i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %406 = load ptr, ptr @hws, align 4
  %arrayidx692 = getelementptr ptr, ptr %406, i32 77
  %407 = ptrtoint ptr %arrayidx692 to i32
  call void @__asan_store4_noabort(i32 %407)
  store ptr %call.i1716, ptr %arrayidx692, align 4
  %call.i1717 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.139, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr375, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %408 = load ptr, ptr @hws, align 4
  %arrayidx695 = getelementptr ptr, ptr %408, i32 78
  %409 = ptrtoint ptr %arrayidx695 to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr %call.i1717, ptr %arrayidx695, align 4
  %call.i1718 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.95, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr462, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %410 = load ptr, ptr @hws, align 4
  %arrayidx698 = getelementptr ptr, ptr %410, i32 79
  %411 = ptrtoint ptr %arrayidx698 to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr %call.i1718, ptr %arrayidx698, align 4
  %call.i1719 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.96, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr462, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %412 = load ptr, ptr @hws, align 4
  %arrayidx701 = getelementptr ptr, ptr %412, i32 80
  %413 = ptrtoint ptr %arrayidx701 to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr %call.i1719, ptr %arrayidx701, align 4
  %call.i1720 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.97, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr468, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %414 = load ptr, ptr @hws, align 4
  %arrayidx704 = getelementptr ptr, ptr %414, i32 81
  %415 = ptrtoint ptr %arrayidx704 to i32
  call void @__asan_store4_noabort(i32 %415)
  store ptr %call.i1720, ptr %arrayidx704, align 4
  %call.i1721 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.98, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr468, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %416 = load ptr, ptr @hws, align 4
  %arrayidx707 = getelementptr ptr, ptr %416, i32 82
  %417 = ptrtoint ptr %arrayidx707 to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %call.i1721, ptr %arrayidx707, align 4
  %call.i1722 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.99, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr378, i8 noundef zeroext 29, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %418 = load ptr, ptr @hws, align 4
  %arrayidx710 = getelementptr ptr, ptr %418, i32 83
  %419 = ptrtoint ptr %arrayidx710 to i32
  call void @__asan_store4_noabort(i32 %419)
  store ptr %call.i1722, ptr %arrayidx710, align 4
  %call.i1723 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.105, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr604, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %420 = load ptr, ptr @hws, align 4
  %arrayidx713 = getelementptr ptr, ptr %420, i32 84
  %421 = ptrtoint ptr %arrayidx713 to i32
  call void @__asan_store4_noabort(i32 %421)
  store ptr %call.i1723, ptr %arrayidx713, align 4
  %call.i1724 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.154, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr604, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %422 = load ptr, ptr @hws, align 4
  %arrayidx716 = getelementptr ptr, ptr %422, i32 85
  %423 = ptrtoint ptr %arrayidx716 to i32
  call void @__asan_store4_noabort(i32 %423)
  store ptr %call.i1724, ptr %arrayidx716, align 4
  %add.ptr717 = getelementptr i8, ptr %call320, i32 44
  %call.i1725 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.106, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr717, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %424 = load ptr, ptr @hws, align 4
  %arrayidx719 = getelementptr ptr, ptr %424, i32 86
  %425 = ptrtoint ptr %arrayidx719 to i32
  call void @__asan_store4_noabort(i32 %425)
  store ptr %call.i1725, ptr %arrayidx719, align 4
  %call.i1726 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.156, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr717, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %426 = load ptr, ptr @hws, align 4
  %arrayidx722 = getelementptr ptr, ptr %426, i32 87
  %427 = ptrtoint ptr %arrayidx722 to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr %call.i1726, ptr %arrayidx722, align 4
  %call.i1727 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.107, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr604, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %428 = load ptr, ptr @hws, align 4
  %arrayidx725 = getelementptr ptr, ptr %428, i32 88
  %429 = ptrtoint ptr %arrayidx725 to i32
  call void @__asan_store4_noabort(i32 %429)
  store ptr %call.i1727, ptr %arrayidx725, align 4
  %call.i1728 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.158, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr604, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %430 = load ptr, ptr @hws, align 4
  %arrayidx728 = getelementptr ptr, ptr %430, i32 89
  %431 = ptrtoint ptr %arrayidx728 to i32
  call void @__asan_store4_noabort(i32 %431)
  store ptr %call.i1728, ptr %arrayidx728, align 4
  %add.ptr729 = getelementptr i8, ptr %call320, i32 36
  %call.i1729 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.108, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr729, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %432 = load ptr, ptr @hws, align 4
  %arrayidx731 = getelementptr ptr, ptr %432, i32 91
  %433 = ptrtoint ptr %arrayidx731 to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %call.i1729, ptr %arrayidx731, align 4
  %call.i1730 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.109, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr729, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %434 = load ptr, ptr @hws, align 4
  %arrayidx734 = getelementptr ptr, ptr %434, i32 92
  %435 = ptrtoint ptr %arrayidx734 to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr %call.i1730, ptr %arrayidx734, align 4
  %call.i1731 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.110, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr729, i8 noundef zeroext 19, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %436 = load ptr, ptr @hws, align 4
  %arrayidx737 = getelementptr ptr, ptr %436, i32 93
  %437 = ptrtoint ptr %arrayidx737 to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr %call.i1731, ptr %arrayidx737, align 4
  %call.i1732 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.111, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr729, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %438 = load ptr, ptr @hws, align 4
  %arrayidx740 = getelementptr ptr, ptr %438, i32 94
  %439 = ptrtoint ptr %arrayidx740 to i32
  call void @__asan_store4_noabort(i32 %439)
  store ptr %call.i1732, ptr %arrayidx740, align 4
  %call.i1733 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.112, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr717, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %440 = load ptr, ptr @hws, align 4
  %arrayidx743 = getelementptr ptr, ptr %440, i32 95
  %441 = ptrtoint ptr %arrayidx743 to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr %call.i1733, ptr %arrayidx743, align 4
  %call.i1734 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.164, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr717, i8 noundef zeroext 21, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %442 = load ptr, ptr @hws, align 4
  %arrayidx746 = getelementptr ptr, ptr %442, i32 96
  %443 = ptrtoint ptr %arrayidx746 to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr %call.i1734, ptr %arrayidx746, align 4
  %call.i1735 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.276) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1735)
  %tobool748.not = icmp eq i32 %call.i1735, 0
  %add.ptr757 = getelementptr i8, ptr %call320, i32 28
  br i1 %tobool748.not, label %if.else756, label %if.then749

if.then749:                                       ; preds = %if.end683
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1736 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.113, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr757, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %444 = load ptr, ptr @hws, align 4
  %arrayidx752 = getelementptr ptr, ptr %444, i32 97
  %445 = ptrtoint ptr %arrayidx752 to i32
  call void @__asan_store4_noabort(i32 %445)
  store ptr %call.i1736, ptr %arrayidx752, align 4
  %call.i1737 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.114, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr757, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %if.end763

if.else756:                                       ; preds = %if.end683
  call void @__sanitizer_cov_trace_pc() #9
  %call758 = call ptr @imx_clk_hw_fixup_divider(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.113, ptr noundef %add.ptr757, i8 noundef zeroext 20, i8 noundef zeroext 3, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %446 = load ptr, ptr @hws, align 4
  %arrayidx759 = getelementptr ptr, ptr %446, i32 97
  %447 = ptrtoint ptr %arrayidx759 to i32
  call void @__asan_store4_noabort(i32 %447)
  store ptr %call758, ptr %arrayidx759, align 4
  %call761 = call ptr @imx_clk_hw_fixup_divider(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.114, ptr noundef %add.ptr757, i8 noundef zeroext 23, i8 noundef zeroext 3, ptr noundef nonnull @imx_cscmr1_fixup) #7
  br label %if.end763

if.end763:                                        ; preds = %if.else756, %if.then749
  %call761.sink = phi ptr [ %call761, %if.else756 ], [ %call.i1737, %if.then749 ]
  %448 = load ptr, ptr @hws, align 4
  %arrayidx762 = getelementptr ptr, ptr %448, i32 98
  %449 = ptrtoint ptr %arrayidx762 to i32
  call void @__asan_store4_noabort(i32 %449)
  store ptr %call761.sink, ptr %arrayidx762, align 4
  %call.i1738 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.117, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr729, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %450 = load ptr, ptr @hws, align 4
  %arrayidx766 = getelementptr ptr, ptr %450, i32 99
  %451 = ptrtoint ptr %arrayidx766 to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr %call.i1738, ptr %arrayidx766, align 4
  %call.i1739 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.118, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr578, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %452 = load ptr, ptr @hws, align 4
  %arrayidx769 = getelementptr ptr, ptr %452, i32 100
  %453 = ptrtoint ptr %arrayidx769 to i32
  call void @__asan_store4_noabort(i32 %453)
  store ptr %call.i1739, ptr %arrayidx769, align 4
  %call.i1740 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.119, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr578, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %454 = load ptr, ptr @hws, align 4
  %arrayidx772 = getelementptr ptr, ptr %454, i32 199
  %455 = ptrtoint ptr %arrayidx772 to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr %call.i1740, ptr %arrayidx772, align 4
  %call775 = call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.79, ptr noundef %add.ptr372, i8 noundef zeroext 16, i8 noundef zeroext 3, ptr noundef %add.ptr588, i8 noundef zeroext 0) #7
  %456 = load ptr, ptr @hws, align 4
  %arrayidx776 = getelementptr ptr, ptr %456, i32 101
  %457 = ptrtoint ptr %arrayidx776 to i32
  call void @__asan_store4_noabort(i32 %457)
  store ptr %call775, ptr %arrayidx776, align 4
  %call779 = call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.121, ptr noundef %add.ptr372, i8 noundef zeroext 19, i8 noundef zeroext 3, ptr noundef %add.ptr588, i8 noundef zeroext 4) #7
  %458 = load ptr, ptr @hws, align 4
  %arrayidx780 = getelementptr ptr, ptr %458, i32 102
  %459 = ptrtoint ptr %arrayidx780 to i32
  call void @__asan_store4_noabort(i32 %459)
  store ptr %call779, ptr %arrayidx780, align 4
  %call.i1741 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.276) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1741)
  %tobool782.not = icmp eq i32 %call.i1741, 0
  br i1 %tobool782.not, label %if.end763.if.end796_crit_edge, label %if.then783

if.end763.if.end796_crit_edge:                    ; preds = %if.end763
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end796

if.then783:                                       ; preds = %if.end763
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr784 = getelementptr i8, ptr %call320, i32 4
  %call.i1742 = call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.122, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr784, i8 noundef zeroext 18, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %460 = load ptr, ptr @hws, align 4
  %arrayidx786 = getelementptr ptr, ptr %460, i32 249
  %461 = ptrtoint ptr %arrayidx786 to i32
  call void @__asan_store4_noabort(i32 %461)
  store ptr %call.i1742, ptr %arrayidx786, align 4
  br label %if.end796

if.end796:                                        ; preds = %if.then783, %if.end763.if.end796_crit_edge
  %.str.122.sink = phi ptr [ @.str.172, %if.then783 ], [ @.str.122, %if.end763.if.end796_crit_edge ]
  %call794 = call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.173, ptr noundef nonnull %.str.122.sink, ptr noundef %add.ptr372, i8 noundef zeroext 3, i8 noundef zeroext 3, ptr noundef %add.ptr588, i8 noundef zeroext 2) #7
  %462 = load ptr, ptr @hws, align 4
  %arrayidx795 = getelementptr ptr, ptr %462, i32 103
  %463 = ptrtoint ptr %arrayidx795 to i32
  call void @__asan_store4_noabort(i32 %463)
  store ptr %call794, ptr %arrayidx795, align 4
  %add.ptr797 = getelementptr i8, ptr %call320, i32 16
  %call799 = call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.74, ptr noundef %add.ptr797, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef %add.ptr588, i8 noundef zeroext 16) #7
  %464 = load ptr, ptr @hws, align 4
  %arrayidx800 = getelementptr ptr, ptr %464, i32 104
  %465 = ptrtoint ptr %arrayidx800 to i32
  call void @__asan_store4_noabort(i32 %465)
  store ptr %call799, ptr %arrayidx800, align 4
  %call803 = call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.121, ptr noundef %add.ptr372, i8 noundef zeroext 10, i8 noundef zeroext 3, ptr noundef %add.ptr588, i8 noundef zeroext 1) #7
  %466 = load ptr, ptr @hws, align 4
  %arrayidx804 = getelementptr ptr, ptr %466, i32 105
  %467 = ptrtoint ptr %arrayidx804 to i32
  call void @__asan_store4_noabort(i32 %467)
  store ptr %call803, ptr %arrayidx804, align 4
  %add.ptr805 = getelementptr i8, ptr %call320, i32 104
  %call.i1743 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.175, i32 noundef 4, ptr noundef %add.ptr805, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %468 = load ptr, ptr @hws, align 4
  %arrayidx807 = getelementptr ptr, ptr %468, i32 106
  %469 = ptrtoint ptr %arrayidx807 to i32
  call void @__asan_store4_noabort(i32 %469)
  store ptr %call.i1743, ptr %arrayidx807, align 4
  %call.i1744 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %add.ptr805, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_asrc) #7
  %470 = load ptr, ptr @hws, align 4
  %arrayidx810 = getelementptr ptr, ptr %470, i32 107
  %471 = ptrtoint ptr %arrayidx810 to i32
  call void @__asan_store4_noabort(i32 %471)
  store ptr %call.i1744, ptr %arrayidx810, align 4
  %call.i1745 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %add.ptr805, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_asrc) #7
  %472 = load ptr, ptr @hws, align 4
  %arrayidx813 = getelementptr ptr, ptr %472, i32 210
  %473 = ptrtoint ptr %arrayidx813 to i32
  call void @__asan_store4_noabort(i32 %473)
  store ptr %call.i1745, ptr %arrayidx813, align 4
  %call.i1746 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %add.ptr805, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_asrc) #7
  %474 = load ptr, ptr @hws, align 4
  %arrayidx816 = getelementptr ptr, ptr %474, i32 211
  %475 = ptrtoint ptr %arrayidx816 to i32
  call void @__asan_store4_noabort(i32 %475)
  store ptr %call.i1746, ptr %arrayidx816, align 4
  %call.i1747 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %add.ptr805, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %476 = load ptr, ptr @hws, align 4
  %arrayidx819 = getelementptr ptr, ptr %476, i32 241
  %477 = ptrtoint ptr %arrayidx819 to i32
  call void @__asan_store4_noabort(i32 %477)
  store ptr %call.i1747, ptr %arrayidx819, align 4
  %call.i1748 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %add.ptr805, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %478 = load ptr, ptr @hws, align 4
  %arrayidx822 = getelementptr ptr, ptr %478, i32 242
  %479 = ptrtoint ptr %arrayidx822 to i32
  call void @__asan_store4_noabort(i32 %479)
  store ptr %call.i1748, ptr %arrayidx822, align 4
  %call.i1749 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr805, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %480 = load ptr, ptr @hws, align 4
  %arrayidx825 = getelementptr ptr, ptr %480, i32 243
  %481 = ptrtoint ptr %arrayidx825 to i32
  call void @__asan_store4_noabort(i32 %481)
  store ptr %call.i1749, ptr %arrayidx825, align 4
  %call.i1750 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr805, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %482 = load ptr, ptr @hws, align 4
  %arrayidx828 = getelementptr ptr, ptr %482, i32 108
  %483 = ptrtoint ptr %arrayidx828 to i32
  call void @__asan_store4_noabort(i32 %483)
  store ptr %call.i1750, ptr %arrayidx828, align 4
  %call.i1751 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.135, i32 noundef 4, ptr noundef %add.ptr805, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %484 = load ptr, ptr @hws, align 4
  %arrayidx831 = getelementptr ptr, ptr %484, i32 109
  %485 = ptrtoint ptr %arrayidx831 to i32
  call void @__asan_store4_noabort(i32 %485)
  store ptr %call.i1751, ptr %arrayidx831, align 4
  %call.i1752 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr805, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %486 = load ptr, ptr @hws, align 4
  %arrayidx834 = getelementptr ptr, ptr %486, i32 110
  %487 = ptrtoint ptr %arrayidx834 to i32
  call void @__asan_store4_noabort(i32 %487)
  store ptr %call.i1752, ptr %arrayidx834, align 4
  %call.i1753 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.135, i32 noundef 4, ptr noundef %add.ptr805, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %488 = load ptr, ptr @hws, align 4
  %arrayidx837 = getelementptr ptr, ptr %488, i32 111
  %489 = ptrtoint ptr %arrayidx837 to i32
  call void @__asan_store4_noabort(i32 %489)
  store ptr %call.i1753, ptr %arrayidx837, align 4
  %call.i1754 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.145, i32 noundef 4, ptr noundef %add.ptr805, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %490 = load ptr, ptr @hws, align 4
  %arrayidx840 = getelementptr ptr, ptr %490, i32 264
  %491 = ptrtoint ptr %arrayidx840 to i32
  call void @__asan_store4_noabort(i32 %491)
  store ptr %call.i1754, ptr %arrayidx840, align 4
  %call.i1755 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.146, i32 noundef 4, ptr noundef %add.ptr805, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %492 = load ptr, ptr @hws, align 4
  %arrayidx843 = getelementptr ptr, ptr %492, i32 265
  %493 = ptrtoint ptr %arrayidx843 to i32
  call void @__asan_store4_noabort(i32 %493)
  store ptr %call.i1755, ptr %arrayidx843, align 4
  %add.ptr844 = getelementptr i8, ptr %call320, i32 108
  %call.i1756 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.134, i32 noundef 4, ptr noundef %add.ptr844, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %494 = load ptr, ptr @hws, align 4
  %arrayidx846 = getelementptr ptr, ptr %494, i32 112
  %495 = ptrtoint ptr %arrayidx846 to i32
  call void @__asan_store4_noabort(i32 %495)
  store ptr %call.i1756, ptr %arrayidx846, align 4
  %call.i1757 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.134, i32 noundef 4, ptr noundef %add.ptr844, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %496 = load ptr, ptr @hws, align 4
  %arrayidx849 = getelementptr ptr, ptr %496, i32 113
  %497 = ptrtoint ptr %arrayidx849 to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr %call.i1757, ptr %arrayidx849, align 4
  %call.i1758 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.134, i32 noundef 4, ptr noundef %add.ptr844, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %498 = load ptr, ptr @hws, align 4
  %arrayidx852 = getelementptr ptr, ptr %498, i32 114
  %499 = ptrtoint ptr %arrayidx852 to i32
  call void @__asan_store4_noabort(i32 %499)
  store ptr %call.i1758, ptr %arrayidx852, align 4
  %call.i1759 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.134, i32 noundef 4, ptr noundef %add.ptr844, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %500 = load ptr, ptr @hws, align 4
  %arrayidx855 = getelementptr ptr, ptr %500, i32 115
  %501 = ptrtoint ptr %arrayidx855 to i32
  call void @__asan_store4_noabort(i32 %501)
  store ptr %call.i1759, ptr %arrayidx855, align 4
  %call.i1760 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1760)
  %tobool857.not = icmp eq i32 %call.i1760, 0
  br i1 %tobool857.not, label %if.else862, label %if.then858

if.then858:                                       ; preds = %if.end796
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1761 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %add.ptr844, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  br label %if.end866

if.else862:                                       ; preds = %if.end796
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1762 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.134, i32 noundef 4, ptr noundef %add.ptr844, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  br label %if.end866

if.end866:                                        ; preds = %if.else862, %if.then858
  %call.i1762.sink = phi ptr [ %call.i1762, %if.else862 ], [ %call.i1761, %if.then858 ]
  %502 = load ptr, ptr @hws, align 4
  %arrayidx865 = getelementptr ptr, ptr %502, i32 116
  %503 = ptrtoint ptr %arrayidx865 to i32
  call void @__asan_store4_noabort(i32 %503)
  store ptr %call.i1762.sink, ptr %arrayidx865, align 4
  %call.i1763 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr844, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %504 = load ptr, ptr @hws, align 4
  %arrayidx869 = getelementptr ptr, ptr %504, i32 117
  %505 = ptrtoint ptr %arrayidx869 to i32
  call void @__asan_store4_noabort(i32 %505)
  store ptr %call.i1763, ptr %arrayidx869, align 4
  %call.i1764 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr844, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %506 = load ptr, ptr @hws, align 4
  %arrayidx872 = getelementptr ptr, ptr %506, i32 261
  %507 = ptrtoint ptr %arrayidx872 to i32
  call void @__asan_store4_noabort(i32 %507)
  store ptr %call.i1764, ptr %arrayidx872, align 4
  %call.i1765 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr844, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %508 = load ptr, ptr @hws, align 4
  %arrayidx875 = getelementptr ptr, ptr %508, i32 262
  %509 = ptrtoint ptr %arrayidx875 to i32
  call void @__asan_store4_noabort(i32 %509)
  store ptr %call.i1765, ptr %arrayidx875, align 4
  %call.i1766 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.128, i32 noundef 4, ptr noundef %add.ptr844, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #7
  %510 = load ptr, ptr @hws, align 4
  %arrayidx878 = getelementptr ptr, ptr %510, i32 118
  %511 = ptrtoint ptr %arrayidx878 to i32
  call void @__asan_store4_noabort(i32 %511)
  store ptr %call.i1766, ptr %arrayidx878, align 4
  %call.i1767 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %add.ptr844, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #7
  %512 = load ptr, ptr @hws, align 4
  %arrayidx881 = getelementptr ptr, ptr %512, i32 208
  %513 = ptrtoint ptr %arrayidx881 to i32
  call void @__asan_store4_noabort(i32 %513)
  store ptr %call.i1767, ptr %arrayidx881, align 4
  %call.i1768 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %add.ptr844, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #7
  %514 = load ptr, ptr @hws, align 4
  %arrayidx884 = getelementptr ptr, ptr %514, i32 209
  %515 = ptrtoint ptr %arrayidx884 to i32
  call void @__asan_store4_noabort(i32 %515)
  store ptr %call.i1768, ptr %arrayidx884, align 4
  %call.i1769 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr844, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %516 = load ptr, ptr @hws, align 4
  %arrayidx887 = getelementptr ptr, ptr %516, i32 119
  %517 = ptrtoint ptr %arrayidx887 to i32
  call void @__asan_store4_noabort(i32 %517)
  store ptr %call.i1769, ptr %arrayidx887, align 4
  %call.i1770 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %add.ptr844, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %518 = load ptr, ptr @hws, align 4
  %arrayidx890 = getelementptr ptr, ptr %518, i32 120
  %519 = ptrtoint ptr %arrayidx890 to i32
  call void @__asan_store4_noabort(i32 %519)
  store ptr %call.i1770, ptr %arrayidx890, align 4
  %call.i1771 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.142, i32 noundef 4, ptr noundef %add.ptr844, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %520 = load ptr, ptr @hws, align 4
  %arrayidx893 = getelementptr ptr, ptr %520, i32 121
  %521 = ptrtoint ptr %arrayidx893 to i32
  call void @__asan_store4_noabort(i32 %521)
  store ptr %call.i1771, ptr %arrayidx893, align 4
  %call.i1772 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.143, i32 noundef 4, ptr noundef %add.ptr844, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %522 = load ptr, ptr @hws, align 4
  %arrayidx896 = getelementptr ptr, ptr %522, i32 122
  %523 = ptrtoint ptr %arrayidx896 to i32
  call void @__asan_store4_noabort(i32 %523)
  store ptr %call.i1772, ptr %arrayidx896, align 4
  %add.ptr897 = getelementptr i8, ptr %call320, i32 112
  %call.i1773 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %add.ptr897, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %524 = load ptr, ptr @hws, align 4
  %arrayidx899 = getelementptr ptr, ptr %524, i32 123
  %525 = ptrtoint ptr %arrayidx899 to i32
  call void @__asan_store4_noabort(i32 %525)
  store ptr %call.i1773, ptr %arrayidx899, align 4
  %call.i1774 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.206, i32 noundef 4, ptr noundef %add.ptr897, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %526 = load ptr, ptr @hws, align 4
  %arrayidx902 = getelementptr ptr, ptr %526, i32 124
  %527 = ptrtoint ptr %arrayidx902 to i32
  call void @__asan_store4_noabort(i32 %527)
  store ptr %call.i1774, ptr %arrayidx902, align 4
  %call.i1775 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %add.ptr897, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %528 = load ptr, ptr @hws, align 4
  %arrayidx905 = getelementptr ptr, ptr %528, i32 125
  %529 = ptrtoint ptr %arrayidx905 to i32
  call void @__asan_store4_noabort(i32 %529)
  store ptr %call.i1775, ptr %arrayidx905, align 4
  %call.i1776 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %add.ptr897, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %530 = load ptr, ptr @hws, align 4
  %arrayidx908 = getelementptr ptr, ptr %530, i32 126
  %531 = ptrtoint ptr %arrayidx908 to i32
  call void @__asan_store4_noabort(i32 %531)
  store ptr %call.i1776, ptr %arrayidx908, align 4
  %call.i1777 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %add.ptr897, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %532 = load ptr, ptr @hws, align 4
  %arrayidx911 = getelementptr ptr, ptr %532, i32 127
  %533 = ptrtoint ptr %arrayidx911 to i32
  call void @__asan_store4_noabort(i32 %533)
  store ptr %call.i1777, ptr %arrayidx911, align 4
  %call.i1778 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr897, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %534 = load ptr, ptr @hws, align 4
  %arrayidx914 = getelementptr ptr, ptr %534, i32 128
  %535 = ptrtoint ptr %arrayidx914 to i32
  call void @__asan_store4_noabort(i32 %535)
  store ptr %call.i1778, ptr %arrayidx914, align 4
  %call.i1779 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.165, i32 noundef 4, ptr noundef %add.ptr897, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %536 = load ptr, ptr @hws, align 4
  %arrayidx917 = getelementptr ptr, ptr %536, i32 129
  %537 = ptrtoint ptr %arrayidx917 to i32
  call void @__asan_store4_noabort(i32 %537)
  store ptr %call.i1779, ptr %arrayidx917, align 4
  %call.i1780 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.213, i32 noundef 4, ptr noundef %add.ptr897, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %538 = load ptr, ptr @hws, align 4
  %arrayidx920 = getelementptr ptr, ptr %538, i32 202
  %539 = ptrtoint ptr %arrayidx920 to i32
  call void @__asan_store4_noabort(i32 %539)
  store ptr %call.i1780, ptr %arrayidx920, align 4
  %add.ptr921 = getelementptr i8, ptr %call320, i32 116
  %call.i1781 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.145, i32 noundef 4, ptr noundef %add.ptr921, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %540 = load ptr, ptr @hws, align 4
  %arrayidx923 = getelementptr ptr, ptr %540, i32 130
  %541 = ptrtoint ptr %arrayidx923 to i32
  call void @__asan_store4_noabort(i32 %541)
  store ptr %call.i1781, ptr %arrayidx923, align 4
  %call.i1782 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.101, i32 noundef 4, ptr noundef %add.ptr921, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %542 = load ptr, ptr @hws, align 4
  %arrayidx926 = getelementptr ptr, ptr %542, i32 131
  %543 = ptrtoint ptr %arrayidx926 to i32
  call void @__asan_store4_noabort(i32 %543)
  store ptr %call.i1782, ptr %arrayidx926, align 4
  %call.i1783 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.102, i32 noundef 4, ptr noundef %add.ptr921, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %544 = load ptr, ptr @hws, align 4
  %arrayidx929 = getelementptr ptr, ptr %544, i32 132
  %545 = ptrtoint ptr %arrayidx929 to i32
  call void @__asan_store4_noabort(i32 %545)
  store ptr %call.i1783, ptr %arrayidx929, align 4
  %call.i1784 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.146, i32 noundef 4, ptr noundef %add.ptr921, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %546 = load ptr, ptr @hws, align 4
  %arrayidx932 = getelementptr ptr, ptr %546, i32 133
  %547 = ptrtoint ptr %arrayidx932 to i32
  call void @__asan_store4_noabort(i32 %547)
  store ptr %call.i1784, ptr %arrayidx932, align 4
  %call.i1785 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.103, i32 noundef 4, ptr noundef %add.ptr921, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %548 = load ptr, ptr @hws, align 4
  %arrayidx935 = getelementptr ptr, ptr %548, i32 134
  %549 = ptrtoint ptr %arrayidx935 to i32
  call void @__asan_store4_noabort(i32 %549)
  store ptr %call.i1785, ptr %arrayidx935, align 4
  %call.i1786 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.276) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1786)
  %tobool937.not = icmp eq i32 %call.i1786, 0
  %.str.147..str.93 = select i1 %tobool937.not, ptr @.str.147, ptr @.str.93
  %.str.148..str.94 = select i1 %tobool937.not, ptr @.str.148, ptr @.str.94
  %call.i1789 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.138, ptr noundef nonnull %.str.147..str.93, i32 noundef 4, ptr noundef %add.ptr921, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %550 = load ptr, ptr @hws, align 4
  %arrayidx948 = getelementptr ptr, ptr %550, i32 135
  %551 = ptrtoint ptr %arrayidx948 to i32
  call void @__asan_store4_noabort(i32 %551)
  store ptr %call.i1789, ptr %arrayidx948, align 4
  %call.i1790 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.140, ptr noundef nonnull %.str.148..str.94, i32 noundef 4, ptr noundef %add.ptr921, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %552 = load ptr, ptr @hws, align 4
  %arrayidx951 = getelementptr ptr, ptr %552, i32 136
  %553 = ptrtoint ptr %arrayidx951 to i32
  call void @__asan_store4_noabort(i32 %553)
  store ptr %call.i1790, ptr %arrayidx951, align 4
  %call.i1791 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.104, i32 noundef 4, ptr noundef %add.ptr921, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %554 = load ptr, ptr @hws, align 4
  %arrayidx955 = getelementptr ptr, ptr %554, i32 137
  %555 = ptrtoint ptr %arrayidx955 to i32
  call void @__asan_store4_noabort(i32 %555)
  store ptr %call.i1791, ptr %arrayidx955, align 4
  %call.i1792 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.153, i32 noundef 4, ptr noundef %add.ptr921, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_mipi_core_cfg) #7
  %556 = load ptr, ptr @hws, align 4
  %arrayidx958 = getelementptr ptr, ptr %556, i32 138
  %557 = ptrtoint ptr %arrayidx958 to i32
  call void @__asan_store4_noabort(i32 %557)
  store ptr %call.i1792, ptr %arrayidx958, align 4
  %call.i1793 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.65, i32 noundef 4, ptr noundef %add.ptr921, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_mipi_core_cfg) #7
  %558 = load ptr, ptr @hws, align 4
  %arrayidx961 = getelementptr ptr, ptr %558, i32 239
  %559 = ptrtoint ptr %arrayidx961 to i32
  call void @__asan_store4_noabort(i32 %559)
  store ptr %call.i1793, ptr %arrayidx961, align 4
  %call.i1794 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr921, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_mipi_core_cfg) #7
  %560 = load ptr, ptr @hws, align 4
  %arrayidx964 = getelementptr ptr, ptr %560, i32 240
  %561 = ptrtoint ptr %arrayidx964 to i32
  call void @__asan_store4_noabort(i32 %561)
  store ptr %call.i1794, ptr %arrayidx964, align 4
  %call.i1795 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1795)
  %tobool966.not = icmp eq i32 %call.i1795, 0
  %.str.171.sink = select i1 %tobool966.not, ptr @.str.171, ptr @.str.141
  %call.i1797 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.222, ptr noundef nonnull %.str.171.sink, i32 noundef 4, ptr noundef %add.ptr921, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %562 = load ptr, ptr @hws, align 4
  %arrayidx974 = getelementptr ptr, ptr %562, i32 139
  %563 = ptrtoint ptr %arrayidx974 to i32
  call void @__asan_store4_noabort(i32 %563)
  store ptr %call.i1797, ptr %arrayidx974, align 4
  %call.i1798 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.67, i32 noundef 2052, ptr noundef %add.ptr921, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %564 = load ptr, ptr @hws, align 4
  %arrayidx978 = getelementptr ptr, ptr %564, i32 140
  %565 = ptrtoint ptr %arrayidx978 to i32
  call void @__asan_store4_noabort(i32 %565)
  store ptr %call.i1798, ptr %arrayidx978, align 4
  %call.i1799 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.173, i32 noundef 4, ptr noundef %add.ptr921, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %566 = load ptr, ptr @hws, align 4
  %arrayidx981 = getelementptr ptr, ptr %566, i32 141
  %567 = ptrtoint ptr %arrayidx981 to i32
  call void @__asan_store4_noabort(i32 %567)
  store ptr %call.i1799, ptr %arrayidx981, align 4
  %call.i1800 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.125, i32 noundef 2052, ptr noundef %add.ptr921, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %568 = load ptr, ptr @hws, align 4
  %arrayidx984 = getelementptr ptr, ptr %568, i32 263
  %569 = ptrtoint ptr %arrayidx984 to i32
  call void @__asan_store4_noabort(i32 %569)
  store ptr %call.i1800, ptr %arrayidx984, align 4
  %call.i1801 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %add.ptr921, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %570 = load ptr, ptr @hws, align 4
  %arrayidx987 = getelementptr ptr, ptr %570, i32 142
  %571 = ptrtoint ptr %arrayidx987 to i32
  call void @__asan_store4_noabort(i32 %571)
  store ptr %call.i1801, ptr %arrayidx987, align 4
  %call.i1802 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.171, i32 noundef 4, ptr noundef %add.ptr921, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %572 = load ptr, ptr @hws, align 4
  %arrayidx990 = getelementptr ptr, ptr %572, i32 143
  %573 = ptrtoint ptr %arrayidx990 to i32
  call void @__asan_store4_noabort(i32 %573)
  store ptr %call.i1802, ptr %arrayidx990, align 4
  %add.ptr991 = getelementptr i8, ptr %call320, i32 120
  %call.i1803 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 4, ptr noundef %add.ptr991, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %574 = load ptr, ptr @hws, align 4
  %arrayidx993 = getelementptr ptr, ptr %574, i32 144
  %575 = ptrtoint ptr %arrayidx993 to i32
  call void @__asan_store4_noabort(i32 %575)
  store ptr %call.i1803, ptr %arrayidx993, align 4
  %call.i1804 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.175, i32 noundef 4, ptr noundef %add.ptr991, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %576 = load ptr, ptr @hws, align 4
  %arrayidx996 = getelementptr ptr, ptr %576, i32 149
  %577 = ptrtoint ptr %arrayidx996 to i32
  call void @__asan_store4_noabort(i32 %577)
  store ptr %call.i1804, ptr %arrayidx996, align 4
  %call.i1805 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %add.ptr991, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %578 = load ptr, ptr @hws, align 4
  %arrayidx999 = getelementptr ptr, ptr %578, i32 145
  %579 = ptrtoint ptr %arrayidx999 to i32
  call void @__asan_store4_noabort(i32 %579)
  store ptr %call.i1805, ptr %arrayidx999, align 4
  %call.i1806 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %add.ptr991, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %580 = load ptr, ptr @hws, align 4
  %arrayidx1002 = getelementptr ptr, ptr %580, i32 146
  %581 = ptrtoint ptr %arrayidx1002 to i32
  call void @__asan_store4_noabort(i32 %581)
  store ptr %call.i1806, ptr %arrayidx1002, align 4
  %call.i1807 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %add.ptr991, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %582 = load ptr, ptr @hws, align 4
  %arrayidx1005 = getelementptr ptr, ptr %582, i32 147
  %583 = ptrtoint ptr %arrayidx1005 to i32
  call void @__asan_store4_noabort(i32 %583)
  store ptr %call.i1807, ptr %arrayidx1005, align 4
  %call.i1808 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %add.ptr991, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %584 = load ptr, ptr @hws, align 4
  %arrayidx1008 = getelementptr ptr, ptr %584, i32 148
  %585 = ptrtoint ptr %arrayidx1008 to i32
  call void @__asan_store4_noabort(i32 %585)
  store ptr %call.i1808, ptr %arrayidx1008, align 4
  %call.i1809 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.175, i32 noundef 4, ptr noundef %add.ptr991, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %586 = load ptr, ptr @hws, align 4
  %arrayidx1011 = getelementptr ptr, ptr %586, i32 150
  %587 = ptrtoint ptr %arrayidx1011 to i32
  call void @__asan_store4_noabort(i32 %587)
  store ptr %call.i1809, ptr %arrayidx1011, align 4
  %call.i1810 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.236, i32 noundef 4, ptr noundef %add.ptr991, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %588 = load ptr, ptr @hws, align 4
  %arrayidx1014 = getelementptr ptr, ptr %588, i32 151
  %589 = ptrtoint ptr %arrayidx1014 to i32
  call void @__asan_store4_noabort(i32 %589)
  store ptr %call.i1810, ptr %arrayidx1014, align 4
  %call.i1811 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.211, i32 noundef 4, ptr noundef %add.ptr991, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %590 = load ptr, ptr @hws, align 4
  %arrayidx1017 = getelementptr ptr, ptr %590, i32 152
  %591 = ptrtoint ptr %arrayidx1017 to i32
  call void @__asan_store4_noabort(i32 %591)
  store ptr %call.i1811, ptr %arrayidx1017, align 4
  %call.i1812 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.175, i32 noundef 4, ptr noundef %add.ptr991, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %592 = load ptr, ptr @hws, align 4
  %arrayidx1020 = getelementptr ptr, ptr %592, i32 153
  %593 = ptrtoint ptr %arrayidx1020 to i32
  call void @__asan_store4_noabort(i32 %593)
  store ptr %call.i1812, ptr %arrayidx1020, align 4
  %add.ptr1021 = getelementptr i8, ptr %call320, i32 124
  %call.i1813 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.126, i32 noundef 2052, ptr noundef %add.ptr1021, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %594 = load ptr, ptr @hws, align 4
  %arrayidx1023 = getelementptr ptr, ptr %594, i32 181
  %595 = ptrtoint ptr %arrayidx1023 to i32
  call void @__asan_store4_noabort(i32 %595)
  store ptr %call.i1813, ptr %arrayidx1023, align 4
  %call.i1814 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %add.ptr1021, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %596 = load ptr, ptr @hws, align 4
  %arrayidx1026 = getelementptr ptr, ptr %596, i32 154
  %597 = ptrtoint ptr %arrayidx1026 to i32
  call void @__asan_store4_noabort(i32 %597)
  store ptr %call.i1814, ptr %arrayidx1026, align 4
  %call.i1815 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %add.ptr1021, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %598 = load ptr, ptr @hws, align 4
  %arrayidx1029 = getelementptr ptr, ptr %598, i32 155
  %599 = ptrtoint ptr %arrayidx1029 to i32
  call void @__asan_store4_noabort(i32 %599)
  store ptr %call.i1815, ptr %arrayidx1029, align 4
  %call.i1816 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr1021, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %600 = load ptr, ptr @hws, align 4
  %arrayidx1032 = getelementptr ptr, ptr %600, i32 156
  %601 = ptrtoint ptr %arrayidx1032 to i32
  call void @__asan_store4_noabort(i32 %601)
  store ptr %call.i1816, ptr %arrayidx1032, align 4
  %call.i1817 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.132, i32 noundef 4, ptr noundef %add.ptr1021, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_spdif) #7
  %602 = load ptr, ptr @hws, align 4
  %arrayidx1035 = getelementptr ptr, ptr %602, i32 197
  %603 = ptrtoint ptr %arrayidx1035 to i32
  call void @__asan_store4_noabort(i32 %603)
  store ptr %call.i1817, ptr %arrayidx1035, align 4
  %call.i1818 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr1021, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_spdif) #7
  %604 = load ptr, ptr @hws, align 4
  %arrayidx1038 = getelementptr ptr, ptr %604, i32 244
  %605 = ptrtoint ptr %arrayidx1038 to i32
  call void @__asan_store4_noabort(i32 %605)
  store ptr %call.i1818, ptr %arrayidx1038, align 4
  %call.i1819 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr1021, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi1) #7
  %606 = load ptr, ptr @hws, align 4
  %arrayidx1041 = getelementptr ptr, ptr %606, i32 178
  %607 = ptrtoint ptr %arrayidx1041 to i32
  call void @__asan_store4_noabort(i32 %607)
  store ptr %call.i1819, ptr %arrayidx1041, align 4
  %call.i1820 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr1021, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi2) #7
  %608 = load ptr, ptr @hws, align 4
  %arrayidx1044 = getelementptr ptr, ptr %608, i32 179
  %609 = ptrtoint ptr %arrayidx1044 to i32
  call void @__asan_store4_noabort(i32 %609)
  store ptr %call.i1820, ptr %arrayidx1044, align 4
  %call.i1821 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr1021, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi3) #7
  %610 = load ptr, ptr @hws, align 4
  %arrayidx1047 = getelementptr ptr, ptr %610, i32 180
  %611 = ptrtoint ptr %arrayidx1047 to i32
  call void @__asan_store4_noabort(i32 %611)
  store ptr %call.i1821, ptr %arrayidx1047, align 4
  %call.i1822 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef %add.ptr1021, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi1) #7
  %612 = load ptr, ptr @hws, align 4
  %arrayidx1050 = getelementptr ptr, ptr %612, i32 157
  %613 = ptrtoint ptr %arrayidx1050 to i32
  call void @__asan_store4_noabort(i32 %613)
  store ptr %call.i1822, ptr %arrayidx1050, align 4
  %call.i1823 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.157, i32 noundef 4, ptr noundef %add.ptr1021, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi2) #7
  %614 = load ptr, ptr @hws, align 4
  %arrayidx1053 = getelementptr ptr, ptr %614, i32 158
  %615 = ptrtoint ptr %arrayidx1053 to i32
  call void @__asan_store4_noabort(i32 %615)
  store ptr %call.i1823, ptr %arrayidx1053, align 4
  %call.i1824 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.159, i32 noundef 4, ptr noundef %add.ptr1021, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi3) #7
  %616 = load ptr, ptr @hws, align 4
  %arrayidx1056 = getelementptr ptr, ptr %616, i32 159
  %617 = ptrtoint ptr %arrayidx1056 to i32
  call void @__asan_store4_noabort(i32 %617)
  store ptr %call.i1824, ptr %arrayidx1056, align 4
  %call.i1825 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr1021, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %618 = load ptr, ptr @hws, align 4
  %arrayidx1059 = getelementptr ptr, ptr %618, i32 160
  %619 = ptrtoint ptr %arrayidx1059 to i32
  call void @__asan_store4_noabort(i32 %619)
  store ptr %call.i1825, ptr %arrayidx1059, align 4
  %call.i1826 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.136, i32 noundef 4, ptr noundef %add.ptr1021, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %620 = load ptr, ptr @hws, align 4
  %arrayidx1062 = getelementptr ptr, ptr %620, i32 161
  %621 = ptrtoint ptr %arrayidx1062 to i32
  call void @__asan_store4_noabort(i32 %621)
  store ptr %call.i1826, ptr %arrayidx1062, align 4
  %add.ptr1063 = getelementptr i8, ptr %call320, i32 128
  %call.i1827 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr1063, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %622 = load ptr, ptr @hws, align 4
  %arrayidx1065 = getelementptr ptr, ptr %622, i32 162
  %623 = ptrtoint ptr %arrayidx1065 to i32
  call void @__asan_store4_noabort(i32 %623)
  store ptr %call.i1827, ptr %arrayidx1065, align 4
  %call.i1828 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.254, ptr noundef nonnull @.str.160, i32 noundef 4, ptr noundef %add.ptr1063, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %624 = load ptr, ptr @hws, align 4
  %arrayidx1068 = getelementptr ptr, ptr %624, i32 163
  %625 = ptrtoint ptr %arrayidx1068 to i32
  call void @__asan_store4_noabort(i32 %625)
  store ptr %call.i1828, ptr %arrayidx1068, align 4
  %call.i1829 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.161, i32 noundef 4, ptr noundef %add.ptr1063, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %626 = load ptr, ptr @hws, align 4
  %arrayidx1071 = getelementptr ptr, ptr %626, i32 164
  %627 = ptrtoint ptr %arrayidx1071 to i32
  call void @__asan_store4_noabort(i32 %627)
  store ptr %call.i1829, ptr %arrayidx1071, align 4
  %call.i1830 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.162, i32 noundef 4, ptr noundef %add.ptr1063, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %628 = load ptr, ptr @hws, align 4
  %arrayidx1074 = getelementptr ptr, ptr %628, i32 165
  %629 = ptrtoint ptr %arrayidx1074 to i32
  call void @__asan_store4_noabort(i32 %629)
  store ptr %call.i1830, ptr %arrayidx1074, align 4
  %call.i1831 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.163, i32 noundef 4, ptr noundef %add.ptr1063, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %630 = load ptr, ptr @hws, align 4
  %arrayidx1077 = getelementptr ptr, ptr %630, i32 166
  %631 = ptrtoint ptr %arrayidx1077 to i32
  call void @__asan_store4_noabort(i32 %631)
  store ptr %call.i1831, ptr %arrayidx1077, align 4
  %call.i1832 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.167, i32 noundef 4, ptr noundef %add.ptr1063, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %632 = load ptr, ptr @hws, align 4
  %arrayidx1080 = getelementptr ptr, ptr %632, i32 196
  %633 = ptrtoint ptr %arrayidx1080 to i32
  call void @__asan_store4_noabort(i32 %633)
  store ptr %call.i1832, ptr %arrayidx1080, align 4
  %call.i1833 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.116, i32 noundef 4, ptr noundef %add.ptr1063, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %634 = load ptr, ptr @hws, align 4
  %arrayidx1083 = getelementptr ptr, ptr %634, i32 167
  %635 = ptrtoint ptr %arrayidx1083 to i32
  call void @__asan_store4_noabort(i32 %635)
  store ptr %call.i1833, ptr %arrayidx1083, align 4
  %call.i1834 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.168, i32 noundef 4, ptr noundef %add.ptr1063, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %636 = load ptr, ptr @hws, align 4
  %arrayidx1086 = getelementptr ptr, ptr %636, i32 168
  %637 = ptrtoint ptr %arrayidx1086 to i32
  call void @__asan_store4_noabort(i32 %637)
  store ptr %call.i1834, ptr %arrayidx1086, align 4
  %call.i1835 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.276) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1835)
  %tobool1088.not = icmp eq i32 %call.i1835, 0
  br i1 %tobool1088.not, label %if.end866.if.end1114_crit_edge, label %if.then1089

if.end866.if.end1114_crit_edge:                   ; preds = %if.end866
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1114

if.then1089:                                      ; preds = %if.end866
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1836 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %add.ptr1063, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %638 = load ptr, ptr @hws, align 4
  %arrayidx1092 = getelementptr ptr, ptr %638, i32 250
  %639 = ptrtoint ptr %arrayidx1092 to i32
  call void @__asan_store4_noabort(i32 %639)
  store ptr %call.i1836, ptr %arrayidx1092, align 4
  %call.i1837 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %add.ptr1063, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %640 = load ptr, ptr @hws, align 4
  %arrayidx1095 = getelementptr ptr, ptr %640, i32 251
  %641 = ptrtoint ptr %arrayidx1095 to i32
  call void @__asan_store4_noabort(i32 %641)
  store ptr %call.i1837, ptr %arrayidx1095, align 4
  %call.i1838 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %add.ptr1063, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %642 = load ptr, ptr @hws, align 4
  %arrayidx1098 = getelementptr ptr, ptr %642, i32 252
  %643 = ptrtoint ptr %arrayidx1098 to i32
  call void @__asan_store4_noabort(i32 %643)
  store ptr %call.i1838, ptr %arrayidx1098, align 4
  %call.i1839 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %add.ptr1063, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %644 = load ptr, ptr @hws, align 4
  %arrayidx1101 = getelementptr ptr, ptr %644, i32 253
  %645 = ptrtoint ptr %arrayidx1101 to i32
  call void @__asan_store4_noabort(i32 %645)
  store ptr %call.i1839, ptr %arrayidx1101, align 4
  %call.i1840 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.145, i32 noundef 4, ptr noundef %add.ptr1063, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_prg0) #7
  %646 = load ptr, ptr @hws, align 4
  %arrayidx1104 = getelementptr ptr, ptr %646, i32 254
  %647 = ptrtoint ptr %arrayidx1104 to i32
  call void @__asan_store4_noabort(i32 %647)
  store ptr %call.i1840, ptr %arrayidx1104, align 4
  %call.i1841 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.146, i32 noundef 4, ptr noundef %add.ptr1063, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_prg1) #7
  %648 = load ptr, ptr @hws, align 4
  %arrayidx1107 = getelementptr ptr, ptr %648, i32 255
  %649 = ptrtoint ptr %arrayidx1107 to i32
  call void @__asan_store4_noabort(i32 %649)
  store ptr %call.i1841, ptr %arrayidx1107, align 4
  %call.i1842 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr1063, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_prg0) #7
  %650 = load ptr, ptr @hws, align 4
  %arrayidx1110 = getelementptr ptr, ptr %650, i32 256
  %651 = ptrtoint ptr %arrayidx1110 to i32
  call void @__asan_store4_noabort(i32 %651)
  store ptr %call.i1842, ptr %arrayidx1110, align 4
  %call.i1843 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.265, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %add.ptr1063, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_prg1) #7
  %652 = load ptr, ptr @hws, align 4
  %arrayidx1113 = getelementptr ptr, ptr %652, i32 257
  %653 = ptrtoint ptr %arrayidx1113 to i32
  call void @__asan_store4_noabort(i32 %653)
  store ptr %call.i1843, ptr %arrayidx1113, align 4
  br label %if.end1114

if.end1114:                                       ; preds = %if.then1089, %if.end866.if.end1114_crit_edge
  %call.i1844 = call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.169, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr578, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %654 = load ptr, ptr @hws, align 4
  %arrayidx1117 = getelementptr ptr, ptr %654, i32 169
  %655 = ptrtoint ptr %arrayidx1117 to i32
  call void @__asan_store4_noabort(i32 %655)
  store ptr %call.i1844, ptr %arrayidx1117, align 4
  %call.i1845 = call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.170, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr578, i8 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %656 = load ptr, ptr @hws, align 4
  %arrayidx1120 = getelementptr ptr, ptr %656, i32 200
  %657 = ptrtoint ptr %arrayidx1120 to i32
  call void @__asan_store4_noabort(i32 %657)
  store ptr %call.i1845, ptr %arrayidx1120, align 4
  %call.i1846 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.270) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1846)
  %tobool1122.not = icmp eq i32 %call.i1846, 0
  br i1 %tobool1122.not, label %if.end1114.if.end1129_crit_edge, label %land.lhs.true1123

if.end1114.if.end1129_crit_edge:                  ; preds = %if.end1114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1129

land.lhs.true1123:                                ; preds = %if.end1114
  %call1124 = call i32 @imx_get_soc_revision() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call1124)
  %cmp1125 = icmp eq i32 %call1124, 16
  br i1 %cmp1125, label %if.then1126, label %land.lhs.true1123.if.end1129_crit_edge

land.lhs.true1123.if.end1129_crit_edge:           ; preds = %land.lhs.true1123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1129

if.then1126:                                      ; preds = %land.lhs.true1123
  call void @__sanitizer_cov_trace_pc() #9
  %658 = load ptr, ptr @hws, align 4
  %arrayidx1127 = getelementptr ptr, ptr %658, i32 120
  %659 = ptrtoint ptr %arrayidx1127 to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %arrayidx1127, align 4
  %arrayidx1128 = getelementptr ptr, ptr %658, i32 237
  %661 = ptrtoint ptr %arrayidx1128 to i32
  call void @__asan_store4_noabort(i32 %661)
  store ptr %660, ptr %arrayidx1128, align 4
  br label %if.end1129

if.end1129:                                       ; preds = %if.then1126, %land.lhs.true1123.if.end1129_crit_edge, %if.end1114.if.end1129_crit_edge
  %662 = load ptr, ptr @hws, align 4
  call void @imx_check_clk_hws(ptr noundef %662, i32 noundef 266) #7
  %663 = load ptr, ptr @clk_hw_data, align 4
  %call1130 = call i32 @of_clk_add_hw_provider(ptr noundef %ccm_node, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %663) #7
  %664 = load ptr, ptr @hws, align 4
  %arrayidx1131 = getelementptr ptr, ptr %664, i32 190
  %665 = ptrtoint ptr %arrayidx1131 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %arrayidx1131, align 4
  %call1132 = call i32 @clk_hw_register_clkdev(ptr noundef %666, ptr noundef nonnull @.str.42, ptr noundef null) #7
  %667 = load ptr, ptr @hws, align 4
  %arrayidx1133 = getelementptr ptr, ptr %667, i32 8
  %668 = ptrtoint ptr %arrayidx1133 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %arrayidx1133, align 4
  %clk1134 = getelementptr inbounds %struct.clk_hw, ptr %669, i32 0, i32 1
  %670 = ptrtoint ptr %clk1134 to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %clk1134, align 4
  %call1135 = call i32 @clk_set_rate(ptr noundef %671, i32 noundef 540000000) #7
  %call.i1847 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1847)
  %tobool1137.not = icmp eq i32 %call.i1847, 0
  br i1 %tobool1137.not, label %if.end1129.if.end1144_crit_edge, label %if.then1138

if.end1129.if.end1144_crit_edge:                  ; preds = %if.end1129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1144

if.then1138:                                      ; preds = %if.end1129
  call void @__sanitizer_cov_trace_pc() #9
  %672 = load ptr, ptr @hws, align 4
  %arrayidx1139 = getelementptr ptr, ptr %672, i32 31
  %673 = ptrtoint ptr %arrayidx1139 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %arrayidx1139, align 4
  %clk1140 = getelementptr inbounds %struct.clk_hw, ptr %674, i32 0, i32 1
  %675 = ptrtoint ptr %clk1140 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %clk1140, align 4
  %arrayidx1141 = getelementptr ptr, ptr %672, i32 8
  %677 = ptrtoint ptr %arrayidx1141 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %arrayidx1141, align 4
  %clk1142 = getelementptr inbounds %struct.clk_hw, ptr %678, i32 0, i32 1
  %679 = ptrtoint ptr %clk1142 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %clk1142, align 4
  %call1143 = call i32 @clk_set_parent(ptr noundef %676, ptr noundef %680) #7
  br label %if.end1144

if.end1144:                                       ; preds = %if.then1138, %if.end1129.if.end1144_crit_edge
  %681 = load ptr, ptr @hws, align 4
  %arrayidx1145 = getelementptr ptr, ptr %681, i32 35
  %682 = ptrtoint ptr %arrayidx1145 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %arrayidx1145, align 4
  %clk1146 = getelementptr inbounds %struct.clk_hw, ptr %683, i32 0, i32 1
  %684 = ptrtoint ptr %clk1146 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %clk1146, align 4
  %arrayidx1147 = getelementptr ptr, ptr %681, i32 195
  %686 = ptrtoint ptr %arrayidx1147 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %arrayidx1147, align 4
  %clk1148 = getelementptr inbounds %struct.clk_hw, ptr %687, i32 0, i32 1
  %688 = ptrtoint ptr %clk1148 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %clk1148, align 4
  %call1149 = call i32 @clk_set_parent(ptr noundef %685, ptr noundef %689) #7
  %690 = load ptr, ptr @hws, align 4
  %arrayidx1150 = getelementptr ptr, ptr %690, i32 36
  %691 = ptrtoint ptr %arrayidx1150 to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %arrayidx1150, align 4
  %clk1151 = getelementptr inbounds %struct.clk_hw, ptr %692, i32 0, i32 1
  %693 = ptrtoint ptr %clk1151 to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %clk1151, align 4
  %arrayidx1152 = getelementptr ptr, ptr %690, i32 195
  %695 = ptrtoint ptr %arrayidx1152 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %arrayidx1152, align 4
  %clk1153 = getelementptr inbounds %struct.clk_hw, ptr %696, i32 0, i32 1
  %697 = ptrtoint ptr %clk1153 to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %clk1153, align 4
  %call1154 = call i32 @clk_set_parent(ptr noundef %694, ptr noundef %698) #7
  %699 = load ptr, ptr @hws, align 4
  %arrayidx1155 = getelementptr ptr, ptr %699, i32 37
  %700 = ptrtoint ptr %arrayidx1155 to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %arrayidx1155, align 4
  %clk1156 = getelementptr inbounds %struct.clk_hw, ptr %701, i32 0, i32 1
  %702 = ptrtoint ptr %clk1156 to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %clk1156, align 4
  %arrayidx1157 = getelementptr ptr, ptr %699, i32 195
  %704 = ptrtoint ptr %arrayidx1157 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %arrayidx1157, align 4
  %clk1158 = getelementptr inbounds %struct.clk_hw, ptr %705, i32 0, i32 1
  %706 = ptrtoint ptr %clk1158 to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %clk1158, align 4
  %call1159 = call i32 @clk_set_parent(ptr noundef %703, ptr noundef %707) #7
  %708 = load ptr, ptr @hws, align 4
  %arrayidx1160 = getelementptr ptr, ptr %708, i32 38
  %709 = ptrtoint ptr %arrayidx1160 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %arrayidx1160, align 4
  %clk1161 = getelementptr inbounds %struct.clk_hw, ptr %710, i32 0, i32 1
  %711 = ptrtoint ptr %clk1161 to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %clk1161, align 4
  %arrayidx1162 = getelementptr ptr, ptr %708, i32 195
  %713 = ptrtoint ptr %arrayidx1162 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %arrayidx1162, align 4
  %clk1163 = getelementptr inbounds %struct.clk_hw, ptr %714, i32 0, i32 1
  %715 = ptrtoint ptr %clk1163 to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %clk1163, align 4
  %call1164 = call i32 @clk_set_parent(ptr noundef %712, ptr noundef %716) #7
  %717 = load ptr, ptr @hws, align 4
  %arrayidx1165 = getelementptr ptr, ptr %717, i32 39
  %718 = ptrtoint ptr %arrayidx1165 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %arrayidx1165, align 4
  %clk1166 = getelementptr inbounds %struct.clk_hw, ptr %719, i32 0, i32 1
  %720 = ptrtoint ptr %clk1166 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %clk1166, align 4
  %arrayidx1167 = getelementptr ptr, ptr %717, i32 79
  %722 = ptrtoint ptr %arrayidx1167 to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %arrayidx1167, align 4
  %clk1168 = getelementptr inbounds %struct.clk_hw, ptr %723, i32 0, i32 1
  %724 = ptrtoint ptr %clk1168 to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %clk1168, align 4
  %call1169 = call i32 @clk_set_parent(ptr noundef %721, ptr noundef %725) #7
  %726 = load ptr, ptr @hws, align 4
  %arrayidx1170 = getelementptr ptr, ptr %726, i32 40
  %727 = ptrtoint ptr %arrayidx1170 to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %arrayidx1170, align 4
  %clk1171 = getelementptr inbounds %struct.clk_hw, ptr %728, i32 0, i32 1
  %729 = ptrtoint ptr %clk1171 to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %clk1171, align 4
  %arrayidx1172 = getelementptr ptr, ptr %726, i32 80
  %731 = ptrtoint ptr %arrayidx1172 to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %arrayidx1172, align 4
  %clk1173 = getelementptr inbounds %struct.clk_hw, ptr %732, i32 0, i32 1
  %733 = ptrtoint ptr %clk1173 to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %clk1173, align 4
  %call1174 = call i32 @clk_set_parent(ptr noundef %730, ptr noundef %734) #7
  %735 = load ptr, ptr @hws, align 4
  %arrayidx1175 = getelementptr ptr, ptr %735, i32 41
  %736 = ptrtoint ptr %arrayidx1175 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %arrayidx1175, align 4
  %clk1176 = getelementptr inbounds %struct.clk_hw, ptr %737, i32 0, i32 1
  %738 = ptrtoint ptr %clk1176 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %clk1176, align 4
  %arrayidx1177 = getelementptr ptr, ptr %735, i32 81
  %740 = ptrtoint ptr %arrayidx1177 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %arrayidx1177, align 4
  %clk1178 = getelementptr inbounds %struct.clk_hw, ptr %741, i32 0, i32 1
  %742 = ptrtoint ptr %clk1178 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %clk1178, align 4
  %call1179 = call i32 @clk_set_parent(ptr noundef %739, ptr noundef %743) #7
  %744 = load ptr, ptr @hws, align 4
  %arrayidx1180 = getelementptr ptr, ptr %744, i32 42
  %745 = ptrtoint ptr %arrayidx1180 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %arrayidx1180, align 4
  %clk1181 = getelementptr inbounds %struct.clk_hw, ptr %746, i32 0, i32 1
  %747 = ptrtoint ptr %clk1181 to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %clk1181, align 4
  %arrayidx1182 = getelementptr ptr, ptr %744, i32 82
  %749 = ptrtoint ptr %arrayidx1182 to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %arrayidx1182, align 4
  %clk1183 = getelementptr inbounds %struct.clk_hw, ptr %750, i32 0, i32 1
  %751 = ptrtoint ptr %clk1183 to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %clk1183, align 4
  %call1184 = call i32 @clk_set_parent(ptr noundef %748, ptr noundef %752) #7
  %753 = load ptr, ptr @hws, align 4
  %arrayidx1185 = getelementptr ptr, ptr %753, i32 52
  %754 = ptrtoint ptr %arrayidx1185 to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %arrayidx1185, align 4
  %clk1186 = getelementptr inbounds %struct.clk_hw, ptr %755, i32 0, i32 1
  %756 = ptrtoint ptr %clk1186 to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %clk1186, align 4
  %arrayidx1187 = getelementptr ptr, ptr %753, i32 6
  %758 = ptrtoint ptr %arrayidx1187 to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %arrayidx1187, align 4
  %clk1188 = getelementptr inbounds %struct.clk_hw, ptr %759, i32 0, i32 1
  %760 = ptrtoint ptr %clk1188 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %clk1188, align 4
  %call1189 = call i32 @clk_set_parent(ptr noundef %757, ptr noundef %761) #7
  %762 = load ptr, ptr @hws, align 4
  %arrayidx1190 = getelementptr ptr, ptr %762, i32 191
  %763 = ptrtoint ptr %arrayidx1190 to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %arrayidx1190, align 4
  %clk1191 = getelementptr inbounds %struct.clk_hw, ptr %764, i32 0, i32 1
  %765 = ptrtoint ptr %clk1191 to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %clk1191, align 4
  %call.i1848 = call i32 @clk_prepare(ptr noundef %766) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1848)
  %tobool.not.i = icmp eq i32 %call.i1848, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end1144.clk_prepare_enable.exit_crit_edge

if.end1144.clk_prepare_enable.exit_crit_edge:     ; preds = %if.end1144
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end1144
  %call1.i1849 = call i32 @clk_enable(ptr noundef %766) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1849)
  %tobool2.not.i = icmp eq i32 %call1.i1849, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %766) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end1144.clk_prepare_enable.exit_crit_edge
  %767 = load ptr, ptr @hws, align 4
  %arrayidx1193 = getelementptr ptr, ptr %767, i32 192
  %768 = ptrtoint ptr %arrayidx1193 to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %arrayidx1193, align 4
  %clk1194 = getelementptr inbounds %struct.clk_hw, ptr %769, i32 0, i32 1
  %770 = ptrtoint ptr %clk1194 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %clk1194, align 4
  %call.i1850 = call i32 @clk_prepare(ptr noundef %771) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1850)
  %tobool.not.i1851 = icmp eq i32 %call.i1850, 0
  br i1 %tobool.not.i1851, label %if.end.i1854, label %clk_prepare_enable.exit.clk_prepare_enable.exit1856_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit1856_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit1856

if.end.i1854:                                     ; preds = %clk_prepare_enable.exit
  %call1.i1852 = call i32 @clk_enable(ptr noundef %771) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1852)
  %tobool2.not.i1853 = icmp eq i32 %call1.i1852, 0
  br i1 %tobool2.not.i1853, label %if.end.i1854.clk_prepare_enable.exit1856_crit_edge, label %if.then3.i1855

if.end.i1854.clk_prepare_enable.exit1856_crit_edge: ; preds = %if.end.i1854
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit1856

if.then3.i1855:                                   ; preds = %if.end.i1854
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %771) #7
  br label %clk_prepare_enable.exit1856

clk_prepare_enable.exit1856:                      ; preds = %if.then3.i1855, %if.end.i1854.clk_prepare_enable.exit1856_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit1856_crit_edge
  %772 = load ptr, ptr @hws, align 4
  %arrayidx1196 = getelementptr ptr, ptr %772, i32 198
  %773 = ptrtoint ptr %arrayidx1196 to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %arrayidx1196, align 4
  %clk1197 = getelementptr inbounds %struct.clk_hw, ptr %774, i32 0, i32 1
  %775 = ptrtoint ptr %clk1197 to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %clk1197, align 4
  %arrayidx1198 = getelementptr ptr, ptr %772, i32 3
  %777 = ptrtoint ptr %arrayidx1198 to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %arrayidx1198, align 4
  %clk1199 = getelementptr inbounds %struct.clk_hw, ptr %778, i32 0, i32 1
  %779 = ptrtoint ptr %clk1199 to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %clk1199, align 4
  %call1200 = call i32 @clk_set_parent(ptr noundef %776, ptr noundef %780) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1200)
  %tobool1201.not = icmp eq i32 %call1200, 0
  br i1 %tobool1201.not, label %if.end1208, label %clk_prepare_enable.exit1856.do.end1213_crit_edge

clk_prepare_enable.exit1856.do.end1213_crit_edge: ; preds = %clk_prepare_enable.exit1856
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1213

if.end1208:                                       ; preds = %clk_prepare_enable.exit1856
  %781 = load ptr, ptr @hws, align 4
  %arrayidx1203 = getelementptr ptr, ptr %781, i32 201
  %782 = ptrtoint ptr %arrayidx1203 to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %arrayidx1203, align 4
  %clk1204 = getelementptr inbounds %struct.clk_hw, ptr %783, i32 0, i32 1
  %784 = ptrtoint ptr %clk1204 to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %clk1204, align 4
  %arrayidx1205 = getelementptr ptr, ptr %781, i32 200
  %786 = ptrtoint ptr %arrayidx1205 to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %arrayidx1205, align 4
  %clk1206 = getelementptr inbounds %struct.clk_hw, ptr %787, i32 0, i32 1
  %788 = ptrtoint ptr %clk1206 to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %clk1206, align 4
  %call1207 = call i32 @clk_set_parent(ptr noundef %785, ptr noundef %789) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1207)
  %tobool1209.not = icmp eq i32 %call1207, 0
  br i1 %tobool1209.not, label %if.end1208.if.end1216_crit_edge, label %if.end1208.do.end1213_crit_edge

if.end1208.do.end1213_crit_edge:                  ; preds = %if.end1208
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1213

if.end1208.if.end1216_crit_edge:                  ; preds = %if.end1208
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1216

do.end1213:                                       ; preds = %if.end1208.do.end1213_crit_edge, %clk_prepare_enable.exit1856.do.end1213_crit_edge
  %ret.01862 = phi i32 [ %call1207, %if.end1208.do.end1213_crit_edge ], [ %call1200, %clk_prepare_enable.exit1856.do.end1213_crit_edge ]
  %call1215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268, i32 noundef %ret.01862) #12
  br label %if.end1216

if.end1216:                                       ; preds = %do.end1213, %if.end1208.if.end1216_crit_edge
  %790 = load ptr, ptr @hws, align 4
  %arrayidx1217 = getelementptr ptr, ptr %790, i32 25
  %791 = ptrtoint ptr %arrayidx1217 to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %arrayidx1217, align 4
  %clk1218 = getelementptr inbounds %struct.clk_hw, ptr %792, i32 0, i32 1
  %793 = ptrtoint ptr %clk1218 to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %clk1218, align 4
  %arrayidx1219 = getelementptr ptr, ptr %790, i32 10
  %795 = ptrtoint ptr %arrayidx1219 to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load ptr, ptr %arrayidx1219, align 4
  %clk1220 = getelementptr inbounds %struct.clk_hw, ptr %796, i32 0, i32 1
  %797 = ptrtoint ptr %clk1220 to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load ptr, ptr %clk1220, align 4
  %call1221 = call i32 @clk_set_parent(ptr noundef %794, ptr noundef %798) #7
  %799 = load ptr, ptr @hws, align 4
  %arrayidx1222 = getelementptr ptr, ptr %799, i32 204
  %800 = ptrtoint ptr %arrayidx1222 to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %arrayidx1222, align 4
  %clk1223 = getelementptr inbounds %struct.clk_hw, ptr %801, i32 0, i32 1
  %802 = ptrtoint ptr %clk1223 to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %clk1223, align 4
  %arrayidx1224 = getelementptr ptr, ptr %799, i32 187
  %804 = ptrtoint ptr %arrayidx1224 to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %arrayidx1224, align 4
  %clk1225 = getelementptr inbounds %struct.clk_hw, ptr %805, i32 0, i32 1
  %806 = ptrtoint ptr %clk1225 to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %clk1225, align 4
  %call1226 = call i32 @clk_set_parent(ptr noundef %803, ptr noundef %807) #7
  %call.i1857 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1857)
  %tobool1228.not = icmp eq i32 %call.i1857, 0
  br i1 %tobool1228.not, label %if.else1240, label %if.then1229

if.then1229:                                      ; preds = %if.end1216
  call void @__sanitizer_cov_trace_pc() #9
  %808 = load ptr, ptr @hws, align 4
  %arrayidx1230 = getelementptr ptr, ptr %808, i32 29
  %809 = ptrtoint ptr %arrayidx1230 to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load ptr, ptr %arrayidx1230, align 4
  %clk1231 = getelementptr inbounds %struct.clk_hw, ptr %810, i32 0, i32 1
  %811 = ptrtoint ptr %clk1231 to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load ptr, ptr %clk1231, align 4
  %arrayidx1232 = getelementptr ptr, ptr %808, i32 5
  %813 = ptrtoint ptr %arrayidx1232 to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load ptr, ptr %arrayidx1232, align 4
  %clk1233 = getelementptr inbounds %struct.clk_hw, ptr %814, i32 0, i32 1
  %815 = ptrtoint ptr %clk1233 to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %clk1233, align 4
  %call1234 = call i32 @clk_set_parent(ptr noundef %812, ptr noundef %816) #7
  %817 = load ptr, ptr @hws, align 4
  %arrayidx1237 = getelementptr ptr, ptr %817, i32 5
  br label %if.end1260.sink.split

if.else1240:                                      ; preds = %if.end1216
  %call.i1858 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.270) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1858)
  %tobool1242.not = icmp eq i32 %call.i1858, 0
  br i1 %tobool1242.not, label %if.else1240.if.end1260_crit_edge, label %if.then1243

if.else1240.if.end1260_crit_edge:                 ; preds = %if.else1240
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1260

if.then1243:                                      ; preds = %if.else1240
  call void @__sanitizer_cov_trace_pc() #9
  %818 = load ptr, ptr @hws, align 4
  %arrayidx1244 = getelementptr ptr, ptr %818, i32 29
  %819 = ptrtoint ptr %arrayidx1244 to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %arrayidx1244, align 4
  %clk1245 = getelementptr inbounds %struct.clk_hw, ptr %820, i32 0, i32 1
  %821 = ptrtoint ptr %clk1245 to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load ptr, ptr %clk1245, align 4
  %arrayidx1246 = getelementptr ptr, ptr %818, i32 140
  %823 = ptrtoint ptr %arrayidx1246 to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load ptr, ptr %arrayidx1246, align 4
  %clk1247 = getelementptr inbounds %struct.clk_hw, ptr %824, i32 0, i32 1
  %825 = ptrtoint ptr %clk1247 to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load ptr, ptr %clk1247, align 4
  %call1248 = call i32 @clk_set_parent(ptr noundef %822, ptr noundef %826) #7
  %827 = load ptr, ptr @hws, align 4
  %arrayidx1249 = getelementptr ptr, ptr %827, i32 30
  %828 = ptrtoint ptr %arrayidx1249 to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %arrayidx1249, align 4
  %clk1250 = getelementptr inbounds %struct.clk_hw, ptr %829, i32 0, i32 1
  %830 = ptrtoint ptr %clk1250 to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %clk1250, align 4
  %arrayidx1251 = getelementptr ptr, ptr %827, i32 5
  %832 = ptrtoint ptr %arrayidx1251 to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %arrayidx1251, align 4
  %clk1252 = getelementptr inbounds %struct.clk_hw, ptr %833, i32 0, i32 1
  %834 = ptrtoint ptr %clk1252 to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load ptr, ptr %clk1252, align 4
  %call1253 = call i32 @clk_set_parent(ptr noundef %831, ptr noundef %835) #7
  %836 = load ptr, ptr @hws, align 4
  %arrayidx1256 = getelementptr ptr, ptr %836, i32 172
  br label %if.end1260.sink.split

if.end1260.sink.split:                            ; preds = %if.then1243, %if.then1229
  %arrayidx1256.sink = phi ptr [ %arrayidx1256, %if.then1243 ], [ %arrayidx1237, %if.then1229 ]
  %.pn1874 = phi ptr [ %836, %if.then1243 ], [ %817, %if.then1229 ]
  %.pn.in = getelementptr ptr, ptr %.pn1874, i32 28
  %837 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %837)
  %.pn = load ptr, ptr %.pn.in, align 4
  %.sink.in = getelementptr inbounds %struct.clk_hw, ptr %.pn, i32 0, i32 1
  %838 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %838)
  %.sink = load ptr, ptr %.sink.in, align 4
  %839 = ptrtoint ptr %arrayidx1256.sink to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %arrayidx1256.sink, align 4
  %clk1257 = getelementptr inbounds %struct.clk_hw, ptr %840, i32 0, i32 1
  %841 = ptrtoint ptr %clk1257 to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load ptr, ptr %clk1257, align 4
  %call1258 = call i32 @clk_set_parent(ptr noundef %.sink, ptr noundef %842) #7
  br label %if.end1260

if.end1260:                                       ; preds = %if.end1260.sink.split, %if.else1240.if.end1260_crit_edge
  call void @imx_register_uart_clocks(i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end1260, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @imx6q_obtain_fixed_clk_hw(ptr noundef %np, ptr noundef %name) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef %name) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call ptr @imx_obtain_fixed_clock_hw(ptr noundef %name, i32 noundef 0) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call ptr @__clk_get_hw(ptr noundef %call) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %hw.0 = phi ptr [ %call2, %if.then ], [ %call3, %if.else ]
  ret ptr %hw.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_get_soc_revision() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pllv3(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_gate_exclusive(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pfd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_mmdc_mask_handshake(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_ldb_clks(ptr noundef %np, ptr noundef %ccm_base) unnamed_addr #4 align 64 {
entry:
  %clkspec.i = alloca %struct.of_phandle_args, align 4
  %sel = alloca [2 x [4 x i32]], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sel) #7
  %0 = getelementptr inbounds [4 x i32], ptr %sel, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %sel, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %sel, i32 0, i32 3
  %3 = getelementptr inbounds [2 x [4 x i32]], ptr %sel, i32 0, i32 1
  %4 = getelementptr inbounds [2 x [4 x i32]], ptr %sel, i32 0, i32 1, i32 1
  %5 = getelementptr inbounds [2 x [4 x i32]], ptr %sel, i32 0, i32 1, i32 2
  %6 = getelementptr inbounds [2 x [4 x i32]], ptr %sel, i32 0, i32 1, i32 3
  %add.ptr = getelementptr i8, ptr %ccm_base, i32 44
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !721
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %shr = lshr i32 %8, 9
  %and = and i32 %shr, 7
  %9 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %sel, align 4
  %shr2 = lshr i32 %8, 12
  %and3 = and i32 %shr2, 7
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and3, ptr %3, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %1, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %2, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and3, ptr %4, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and3, ptr %5, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and3, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec.i) #7
  %17 = call ptr @memset(ptr %clkspec.i, i32 255, i32 72)
  %call.i = tail call i32 @of_count_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.272) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp84.i = icmp sgt i32 %call.i, 0
  br i1 %cmp84.i, label %for.body.lr.ph.i, label %entry.of_assigned_ldb_sels.exit_crit_edge

entry.of_assigned_ldb_sels.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_assigned_ldb_sels.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %args.i = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec.i, i32 0, i32 2
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.promoted = load i32, ptr %6, align 4
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.promoted172 = load i32, ptr %2, align 4
  br label %for.body.i.outer

for.body.i.outer:                                 ; preds = %for.inc.i.for.body.i.outer_crit_edge, %for.body.lr.ph.i
  %retval.0.i.ph.i175.ph = phi i32 [ %retval.0.i.ph.i174, %for.inc.i.for.body.i.outer_crit_edge ], [ %.promoted172, %for.body.lr.ph.i ]
  %retval.0.i.ph.i169.ph = phi i32 [ %retval.0.i.ph.i168, %for.inc.i.for.body.i.outer_crit_edge ], [ %.promoted, %for.body.lr.ph.i ]
  %index.085.i.ph = phi i32 [ %inc.old.i, %for.inc.i.for.body.i.outer_crit_edge ], [ 0, %for.body.lr.ph.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %if.then.i.for.body.i_crit_edge, %for.body.i.outer
  %index.085.i = phi i32 [ %inc.i, %if.then.i.for.body.i_crit_edge ], [ %index.085.i.ph, %for.body.i.outer ]
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.272, i32 noundef -1, i32 noundef %index.085.i, ptr noundef nonnull %clkspec.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i.i)
  %cmp3.i = icmp ne i32 %call.i.i, -2
  %inc.i = add nuw nsw i32 %index.085.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %call.i)
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  %or.cond.i = select i1 %cmp3.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %if.then.i.of_assigned_ldb_sels.exit.loopexit_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.then.i.of_assigned_ldb_sels.exit.loopexit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_assigned_ldb_sels.exit.loopexit

if.end.i:                                         ; preds = %for.body.i
  %20 = ptrtoint ptr %clkspec.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clkspec.i, align 4
  %cmp5.not.i = icmp eq ptr %21, %np
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %22 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %args.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 265, i32 %23)
  %cmp6.i = icmp ugt i32 %23, 265
  br i1 %cmp6.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end9.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i.ph.i169.ph, ptr %6, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i.ph.i175.ph, ptr %2, align 4
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.284, i32 noundef %index.085.i) #12
  br label %of_assigned_ldb_sels.exit

if.end9.i:                                        ; preds = %lor.lhs.false.i
  %call.i78.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.272, i32 noundef -1, i32 noundef %index.085.i, ptr noundef nonnull %clkspec.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i)
  %cmp13.i = icmp slt i32 %call.i78.i, 0
  br i1 %cmp13.i, label %if.end9.i.of_assigned_ldb_sels.exit.loopexit_crit_edge, label %if.end15.i

if.end9.i.of_assigned_ldb_sels.exit.loopexit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_assigned_ldb_sels.exit.loopexit

if.end15.i:                                       ; preds = %if.end9.i
  %26 = ptrtoint ptr %clkspec.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clkspec.i, align 4
  %cmp17.not.i = icmp eq ptr %27, %np
  br i1 %cmp17.not.i, label %lor.lhs.false18.i, label %if.end15.i.do.end25.i_crit_edge

if.end15.i.do.end25.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25.i

lor.lhs.false18.i:                                ; preds = %if.end15.i
  %28 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %args.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 265, i32 %29)
  %cmp21.i = icmp ugt i32 %29, 265
  br i1 %cmp21.i, label %lor.lhs.false18.i.do.end25.i_crit_edge, label %if.end28.i

lor.lhs.false18.i.do.end25.i_crit_edge:           ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25.i

do.end25.i:                                       ; preds = %lor.lhs.false18.i.do.end25.i_crit_edge, %if.end15.i.do.end25.i_crit_edge
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i.ph.i169.ph, ptr %6, align 4
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i.ph.i175.ph, ptr %2, align 4
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.287, i32 noundef %index.085.i) #12
  br label %of_assigned_ldb_sels.exit

if.end28.i:                                       ; preds = %lor.lhs.false18.i
  %.off.i = add nsw i32 %29, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end34.i, label %if.end28.i.for.inc.i_crit_edge

if.end28.i.for.inc.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end34.i:                                       ; preds = %if.end28.i
  %32 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %if.end34.i.do.end40.i_crit_edge [
    i32 195, label %sw.bb.i.i
    i32 4, label %if.end34.i.if.end44.i_crit_edge
    i32 6, label %sw.bb3.i.i
    i32 141, label %sw.bb4.i.i
    i32 172, label %sw.bb5.i.i
  ]

if.end34.i.if.end44.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.end34.i.do.end40.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

sw.bb.i.i:                                        ; preds = %if.end34.i
  %call.i.i.i = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.270) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.i.if.end44.i_crit_edge, label %land.lhs.true.i.i

sw.bb.i.i.if.end44.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

land.lhs.true.i.i:                                ; preds = %sw.bb.i.i
  %call1.i.i = call i32 @imx_get_soc_revision() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true.i.i.do.end40.i_crit_edge, label %land.lhs.true.i.i.if.end44.i_crit_edge

land.lhs.true.i.i.if.end44.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

land.lhs.true.i.i.do.end40.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

sw.bb3.i.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

sw.bb4.i.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

sw.bb5.i.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

do.end40.i:                                       ; preds = %land.lhs.true.i.i.do.end40.i_crit_edge, %if.end34.i.do.end40.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %29)
  %cmp42.i = icmp eq i32 %29, 34
  %conv.i = zext i1 %cmp42.i to i32
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.290, i32 noundef %conv.i, i32 noundef %23) #12
  br label %for.inc.i

if.end44.i:                                       ; preds = %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %land.lhs.true.i.i.if.end44.i_crit_edge, %sw.bb.i.i.if.end44.i_crit_edge, %if.end34.i.if.end44.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ 1, %if.end34.i.if.end44.i_crit_edge ], [ 2, %sw.bb3.i.i ], [ 3, %sw.bb4.i.i ], [ 4, %sw.bb5.i.i ], [ 0, %land.lhs.true.i.i.if.end44.i_crit_edge ], [ 0, %sw.bb.i.i.if.end44.i_crit_edge ]
  %33 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.292)
  switch i32 %29, label %if.end44.i.for.inc.i_crit_edge [
    i32 33, label %if.then47.i
    i32 34, label %if.then51.i
  ]

if.end44.i.for.inc.i_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then47.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then51.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then51.i, %if.then47.i, %if.end44.i.for.inc.i_crit_edge, %do.end40.i, %if.end28.i.for.inc.i_crit_edge
  %retval.0.i.ph.i174 = phi i32 [ %retval.0.i.ph.i175.ph, %if.then51.i ], [ %retval.0.i.ph.i, %if.then47.i ], [ %retval.0.i.ph.i175.ph, %if.end44.i.for.inc.i_crit_edge ], [ %retval.0.i.ph.i175.ph, %do.end40.i ], [ %retval.0.i.ph.i175.ph, %if.end28.i.for.inc.i_crit_edge ]
  %retval.0.i.ph.i168 = phi i32 [ %retval.0.i.ph.i, %if.then51.i ], [ %retval.0.i.ph.i169.ph, %if.then47.i ], [ %retval.0.i.ph.i169.ph, %if.end44.i.for.inc.i_crit_edge ], [ %retval.0.i.ph.i169.ph, %do.end40.i ], [ %retval.0.i.ph.i169.ph, %if.end28.i.for.inc.i_crit_edge ]
  %inc.old.i = add nuw nsw i32 %index.085.i, 1
  %exitcond.not.old.i = icmp eq i32 %inc.old.i, %call.i
  br i1 %exitcond.not.old.i, label %for.inc.i.of_assigned_ldb_sels.exit.loopexit_crit_edge, label %for.inc.i.for.body.i.outer_crit_edge

for.inc.i.for.body.i.outer_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.outer

for.inc.i.of_assigned_ldb_sels.exit.loopexit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_assigned_ldb_sels.exit.loopexit

of_assigned_ldb_sels.exit.loopexit:               ; preds = %for.inc.i.of_assigned_ldb_sels.exit.loopexit_crit_edge, %if.end9.i.of_assigned_ldb_sels.exit.loopexit_crit_edge, %if.then.i.of_assigned_ldb_sels.exit.loopexit_crit_edge
  %retval.0.i.ph.i176 = phi i32 [ %retval.0.i.ph.i175.ph, %if.then.i.of_assigned_ldb_sels.exit.loopexit_crit_edge ], [ %retval.0.i.ph.i175.ph, %if.end9.i.of_assigned_ldb_sels.exit.loopexit_crit_edge ], [ %retval.0.i.ph.i174, %for.inc.i.of_assigned_ldb_sels.exit.loopexit_crit_edge ]
  %retval.0.i.ph.i170 = phi i32 [ %retval.0.i.ph.i169.ph, %if.then.i.of_assigned_ldb_sels.exit.loopexit_crit_edge ], [ %retval.0.i.ph.i169.ph, %if.end9.i.of_assigned_ldb_sels.exit.loopexit_crit_edge ], [ %retval.0.i.ph.i168, %for.inc.i.of_assigned_ldb_sels.exit.loopexit_crit_edge ]
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i.ph.i170, ptr %6, align 4
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.ph.i176, ptr %2, align 4
  br label %of_assigned_ldb_sels.exit

of_assigned_ldb_sels.exit:                        ; preds = %of_assigned_ldb_sels.exit.loopexit, %do.end25.i, %do.end.i, %entry.of_assigned_ldb_sels.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec.i) #7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %of_assigned_ldb_sels.exit
  %cmp = phi i1 [ true, %of_assigned_ldb_sels.exit ], [ false, %for.inc.for.body_crit_edge ]
  %i.0178 = phi i32 [ 0, %of_assigned_ldb_sels.exit ], [ 1, %for.inc.for.body_crit_edge ]
  %arrayidx26 = getelementptr [2 x [4 x i32]], ptr %sel, i32 0, i32 %i.0178
  %36 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp28.not = icmp eq i32 %37, 3
  br i1 %cmp28.not, label %for.body.if.end_crit_edge, label %do.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277, i32 noundef %i.0178, i32 noundef %37) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %arrayidx36 = getelementptr [2 x [4 x i32]], ptr %sel, i32 0, i32 %i.0178, i32 3
  %38 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp37 = icmp eq i32 %37, %39
  br i1 %cmp37, label %if.end.for.inc_crit_edge, label %if.end39

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp42 = icmp eq i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp45 = icmp eq i32 %39, 2
  %or.cond = select i1 %cmp42, i1 true, i1 %cmp45
  br i1 %or.cond, label %land.lhs.true, label %if.end39.if.end65_crit_edge

if.end39.if.end65_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

land.lhs.true:                                    ; preds = %if.end39
  %40 = load ptr, ptr @hws, align 4
  %arrayidx46 = getelementptr ptr, ptr %40, i32 18
  %41 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx46, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk, align 4
  %call47 = call ptr @clk_get_parent(ptr noundef %44) #7
  %45 = load ptr, ptr @hws, align 4
  %arrayidx48 = getelementptr ptr, ptr %45, i32 6
  %46 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx48, align 4
  %clk49 = getelementptr inbounds %struct.clk_hw, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %clk49 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk49, align 4
  %cmp50 = icmp eq ptr %call47, %49
  br i1 %cmp50, label %do.end54, label %land.lhs.true.if.end65_crit_edge

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

do.end54:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280, i32 noundef %i.0178) #12
  %arrayidx60 = getelementptr [2 x [4 x i32]], ptr %sel, i32 0, i32 %i.0178, i32 1
  %50 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %37, ptr %arrayidx60, align 4
  %arrayidx62 = getelementptr [2 x [4 x i32]], ptr %sel, i32 0, i32 %i.0178, i32 2
  %51 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %37, ptr %arrayidx62, align 4
  %52 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %37, ptr %arrayidx36, align 4
  br label %for.inc

if.end65:                                         ; preds = %land.lhs.true.if.end65_crit_edge, %if.end39.if.end65_crit_edge
  %or = or i32 %37, 4
  %arrayidx69 = getelementptr [2 x [4 x i32]], ptr %sel, i32 0, i32 %i.0178, i32 1
  %53 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or, ptr %arrayidx69, align 4
  %or72 = or i32 %39, 4
  %arrayidx74 = getelementptr [2 x [4 x i32]], ptr %sel, i32 0, i32 %i.0178, i32 2
  %54 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or72, ptr %arrayidx74, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_ldb_clks.__UNIQUE_ID_ddebug175, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_ldb_clks, %if.then80)) #7
          to label %for.inc [label %if.then80], !srcloc !724

if.then80:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_ldb_clks.__UNIQUE_ID_ddebug175, ptr noundef nonnull @.str.283, i32 noundef %i.0178, i32 noundef %37, i32 noundef %or, i32 noundef %or72, i32 noundef %39) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then80, %if.end65, %do.end54, %if.end.for.inc_crit_edge
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %56)
  %cmp96 = icmp eq i32 %and, %56
  br i1 %cmp96, label %land.lhs.true97, label %for.end.if.end104_crit_edge

for.end.if.end104_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

land.lhs.true97:                                  ; preds = %for.end
  %57 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %58)
  %cmp102 = icmp eq i32 %and3, %58
  br i1 %cmp102, label %land.lhs.true97.cleanup_crit_edge, label %land.lhs.true97.if.end104_crit_edge

land.lhs.true97.if.end104_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

land.lhs.true97.cleanup_crit_edge:                ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end104:                                        ; preds = %land.lhs.true97.if.end104_crit_edge, %for.end.if.end104_crit_edge
  %59 = load ptr, ptr @hws, align 4
  %arrayidx.i = getelementptr ptr, ptr %59, i32 21
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i, align 4
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clk.i, align 4
  %arrayidx1.i = getelementptr ptr, ptr %59, i32 172
  %64 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx1.i, align 4
  %clk2.i = getelementptr inbounds %struct.clk_hw, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %clk2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %clk2.i, align 4
  %call.i162 = call i32 @clk_set_parent(ptr noundef %63, ptr noundef %67) #7
  %add.ptr.i = getelementptr i8, ptr %ccm_base, i32 12
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !721
  %69 = or i32 %68, 16777216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %69) #7, !srcloc !723
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !721
  %71 = and i32 %70, -8257537
  %72 = call i32 @llvm.bswap.i32(i32 %71)
  %73 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %0, align 4
  %shl = shl i32 %74, 9
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %4, align 4
  %shl117 = shl i32 %76, 12
  %or118 = or i32 %72, %shl
  %or119 = or i32 %or118, %shl117
  %77 = call i32 @llvm.bswap.i32(i32 %or119)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %77) #7, !srcloc !723
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !721
  %79 = and i32 %78, -8257537
  %80 = call i32 @llvm.bswap.i32(i32 %79)
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %1, align 4
  %shl.1 = shl i32 %82, 9
  %83 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %5, align 4
  %shl117.1 = shl i32 %84, 12
  %or118.1 = or i32 %80, %shl.1
  %or119.1 = or i32 %or118.1, %shl117.1
  %85 = call i32 @llvm.bswap.i32(i32 %or119.1)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %85) #7, !srcloc !723
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !721
  %87 = and i32 %86, -8257537
  %88 = call i32 @llvm.bswap.i32(i32 %87)
  %89 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %2, align 4
  %shl.2 = shl i32 %90, 9
  %91 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %6, align 4
  %shl117.2 = shl i32 %92, 12
  %or118.2 = or i32 %88, %shl.2
  %or119.2 = or i32 %or118.2, %shl117.2
  %93 = call i32 @llvm.bswap.i32(i32 %or119.2)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %93) #7, !srcloc !723
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !721
  %95 = and i32 %94, -16777217
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %95) #7, !srcloc !723
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %land.lhs.true97.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sel) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_fixup_mux(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_cscmr1_fixup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_busy_mux(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_fixup_divider(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_busy_divider(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_check_clk_hws(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_register_uart_clocks(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_obtain_fixed_clock_hw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_gate2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 358)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 358)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !413, !415, !417, !419, !421, !423, !425, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !536, !537, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !619, !620, !621, !623, !624, !625, !627, !628, !629, !631, !632, !633, !634, !636, !637, !638, !640, !641, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708}
!llvm.module.flags = !{!710, !711, !712, !713, !714, !715, !716, !717}
!llvm.ident = !{!718}

!0 = !{ptr @__of_table_imx6q, !1, !"__of_table_imx6q", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 979, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 439, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 445, i32 44}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 447, i32 62}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 448, i32 62}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 449, i32 61}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 452, i32 65}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 453, i32 65}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 455, i32 43}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 468, i32 33}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 469, i32 33}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 470, i32 33}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 471, i32 33}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 472, i32 33}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 473, i32 33}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 474, i32 33}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 477, i32 62}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 478, i32 62}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 479, i32 62}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 480, i32 62}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 481, i32 62}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 482, i32 62}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 483, i32 62}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 485, i32 29}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 486, i32 29}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 487, i32 29}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 488, i32 29}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 489, i32 29}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 490, i32 29}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 491, i32 29}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 502, i32 35}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 503, i32 35}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 504, i32 35}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 505, i32 35}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 506, i32 35}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 507, i32 35}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 508, i32 35}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 516, i32 29}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 517, i32 29}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 523, i32 34}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 524, i32 34}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 538, i32 55}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 539, i32 55}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 540, i32 31}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 549, i32 35}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 550, i32 35}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 552, i32 31}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 553, i32 31}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 565, i32 58}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 566, i32 58}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 568, i32 56}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 569, i32 56}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 572, i32 51}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 573, i32 51}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 574, i32 51}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 575, i32 51}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 576, i32 51}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 577, i32 51}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 578, i32 51}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 581, i32 55}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 582, i32 55}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 583, i32 55}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 584, i32 55}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 585, i32 55}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 585, i32 68}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 586, i32 55}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 587, i32 55}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 589, i32 56}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 589, i32 69}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 590, i32 56}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 593, i32 35}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 595, i32 61}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 598, i32 35}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 599, i32 36}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 606, i32 38}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 607, i32 38}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 608, i32 38}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 609, i32 38}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 610, i32 38}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 611, i32 38}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 612, i32 38}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 613, i32 38}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 614, i32 38}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 615, i32 38}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 621, i32 32}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 622, i32 32}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 623, i32 34}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 624, i32 31}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 625, i32 37}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 627, i32 30}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 631, i32 38}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 635, i32 39}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 636, i32 38}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 637, i32 38}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 644, i32 39}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 645, i32 39}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 658, i32 38}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 659, i32 38}
!196 = !{ptr @.str.97, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 660, i32 38}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 661, i32 38}
!200 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 662, i32 38}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 663, i32 38}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 666, i32 39}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 667, i32 39}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 668, i32 39}
!210 = !{ptr @.str.104, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 669, i32 39}
!212 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 670, i32 39}
!214 = !{ptr @.str.106, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 671, i32 39}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 672, i32 39}
!218 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 673, i32 39}
!220 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 674, i32 39}
!222 = !{ptr @.str.110, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 675, i32 39}
!224 = !{ptr @.str.111, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 676, i32 39}
!226 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 677, i32 39}
!228 = !{ptr @.str.113, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 678, i32 39}
!230 = !{ptr @.str.114, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 679, i32 39}
!232 = !{ptr @.str.115, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 680, i32 32}
!234 = !{ptr @.str.116, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 698, i32 38}
!236 = !{ptr @.str.117, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 699, i32 38}
!238 = !{ptr @.str.118, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 700, i32 38}
!240 = !{ptr @.str.119, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 701, i32 38}
!242 = !{ptr @.str.120, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 702, i32 38}
!244 = !{ptr @.str.121, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 705, i32 49}
!246 = !{ptr @.str.122, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 706, i32 49}
!248 = !{ptr @.str.123, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 709, i32 38}
!250 = !{ptr @.str.124, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 710, i32 38}
!252 = !{ptr @.str.125, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 711, i32 38}
!254 = !{ptr @.str.126, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.127, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 712, i32 38}
!257 = !{ptr @.str.128, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 713, i32 38}
!259 = !{ptr @.str.129, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 714, i32 38}
!261 = !{ptr @.str.130, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 715, i32 38}
!263 = !{ptr @.str.131, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 716, i32 38}
!265 = !{ptr @.str.132, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 717, i32 38}
!267 = !{ptr @.str.133, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 720, i32 30}
!269 = !{ptr @.str.134, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 721, i32 33}
!271 = !{ptr @.str.135, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 722, i32 31}
!273 = !{ptr @.str.136, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 723, i32 39}
!275 = !{ptr @.str.137, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 724, i32 62}
!277 = !{ptr @.str.138, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 724, i32 81}
!279 = !{ptr @.str.139, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 725, i32 62}
!281 = !{ptr @.str.140, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 725, i32 81}
!283 = !{ptr @.str.141, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 736, i32 32}
!285 = !{ptr @.str.142, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 738, i32 39}
!287 = !{ptr @.str.143, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 739, i32 38}
!289 = !{ptr @.str.144, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 743, i32 39}
!291 = !{ptr @.str.145, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 744, i32 38}
!293 = !{ptr @.str.146, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 745, i32 38}
!295 = !{ptr @.str.147, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 746, i32 38}
!297 = !{ptr @.str.148, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 747, i32 38}
!299 = !{ptr @.str.149, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 748, i32 38}
!301 = !{ptr @.str.150, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 749, i32 38}
!303 = !{ptr @.str.151, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 750, i32 38}
!305 = !{ptr @.str.152, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 751, i32 38}
!307 = !{ptr @.str.153, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 752, i32 38}
!309 = !{ptr @.str.154, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 753, i32 38}
!311 = !{ptr @.str.155, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 754, i32 38}
!313 = !{ptr @.str.156, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 755, i32 38}
!315 = !{ptr @.str.157, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 756, i32 38}
!317 = !{ptr @.str.158, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 757, i32 38}
!319 = !{ptr @.str.159, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 758, i32 38}
!321 = !{ptr @.str.160, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 759, i32 38}
!323 = !{ptr @.str.161, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 760, i32 38}
!325 = !{ptr @.str.162, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 761, i32 38}
!327 = !{ptr @.str.163, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 762, i32 38}
!329 = !{ptr @.str.164, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 763, i32 38}
!331 = !{ptr @.str.165, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 764, i32 38}
!333 = !{ptr @.str.166, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 766, i32 39}
!335 = !{ptr @.str.167, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 767, i32 39}
!337 = !{ptr @.str.168, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 773, i32 38}
!339 = !{ptr @.str.169, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 774, i32 38}
!341 = !{ptr @.str.170, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 775, i32 38}
!343 = !{ptr @.str.171, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 778, i32 63}
!345 = !{ptr @.str.172, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 781, i32 38}
!347 = !{ptr @.str.173, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 782, i32 64}
!349 = !{ptr @.str.174, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 790, i32 34}
!351 = !{ptr @.str.175, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.176, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 791, i32 34}
!354 = !{ptr @.str.177, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 792, i32 34}
!356 = !{ptr @.str.178, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 793, i32 34}
!358 = !{ptr @.str.179, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 794, i32 34}
!360 = !{ptr @.str.180, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 795, i32 34}
!362 = !{ptr @.str.181, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 796, i32 34}
!364 = !{ptr @.str.182, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 797, i32 34}
!366 = !{ptr @.str.183, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 798, i32 34}
!368 = !{ptr @.str.184, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 799, i32 34}
!370 = !{ptr @.str.185, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 800, i32 34}
!372 = !{ptr @.str.186, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 801, i32 34}
!374 = !{ptr @.str.187, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 802, i32 34}
!376 = !{ptr @.str.188, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 803, i32 34}
!378 = !{ptr @.str.189, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 804, i32 34}
!380 = !{ptr @.str.190, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 805, i32 34}
!382 = !{ptr @.str.191, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 806, i32 34}
!384 = !{ptr @.str.192, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 808, i32 27}
!386 = !{ptr @.str.193, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 810, i32 27}
!388 = !{ptr @.str.194, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 811, i32 34}
!390 = !{ptr @.str.195, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 812, i32 34}
!392 = !{ptr @.str.196, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 813, i32 34}
!394 = !{ptr @.str.197, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 814, i32 34}
!396 = !{ptr @.str.198, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 815, i32 34}
!398 = !{ptr @.str.199, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 816, i32 34}
!400 = !{ptr @.str.200, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 817, i32 34}
!402 = !{ptr @.str.201, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 818, i32 34}
!404 = !{ptr @.str.202, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 819, i32 32}
!406 = !{ptr @.str.203, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 820, i32 34}
!408 = !{ptr @.str.204, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 821, i32 34}
!410 = !{ptr @.str.205, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 822, i32 34}
!412 = !{ptr @.str.206, !411, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @.str.207, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 823, i32 34}
!415 = !{ptr @.str.208, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 824, i32 34}
!417 = !{ptr @.str.209, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 825, i32 34}
!419 = !{ptr @.str.210, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 826, i32 34}
!421 = !{ptr @.str.211, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 827, i32 34}
!423 = !{ptr @.str.212, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 828, i32 34}
!425 = !{ptr @.str.213, !424, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @.str.214, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 829, i32 34}
!428 = !{ptr @.str.215, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 830, i32 34}
!430 = !{ptr @.str.216, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 831, i32 34}
!432 = !{ptr @.str.217, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 832, i32 34}
!434 = !{ptr @.str.218, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 833, i32 34}
!436 = !{ptr @.str.219, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 841, i32 34}
!438 = !{ptr @.str.220, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 842, i32 34}
!440 = !{ptr @.str.221, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 844, i32 34}
!442 = !{ptr @.str.222, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 851, i32 26}
!444 = !{ptr @.str.223, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 854, i32 34}
!446 = !{ptr @.str.224, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 855, i32 34}
!448 = !{ptr @.str.225, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 856, i32 34}
!450 = !{ptr @.str.226, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 857, i32 34}
!452 = !{ptr @.str.227, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 858, i32 34}
!454 = !{ptr @.str.228, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 859, i32 34}
!456 = !{ptr @.str.229, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 860, i32 34}
!458 = !{ptr @.str.230, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 861, i32 34}
!460 = !{ptr @.str.231, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 862, i32 34}
!462 = !{ptr @.str.232, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 863, i32 34}
!464 = !{ptr @.str.233, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 864, i32 34}
!466 = !{ptr @.str.234, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 865, i32 34}
!468 = !{ptr @.str.235, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 866, i32 34}
!470 = !{ptr @.str.236, !469, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @.str.237, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 867, i32 34}
!473 = !{ptr @.str.238, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 868, i32 34}
!475 = !{ptr @.str.239, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 869, i32 34}
!477 = !{ptr @.str.240, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 870, i32 34}
!479 = !{ptr @.str.241, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 871, i32 34}
!481 = !{ptr @.str.242, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 872, i32 34}
!483 = !{ptr @.str.243, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 873, i32 34}
!485 = !{ptr @.str.244, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 874, i32 34}
!487 = !{ptr @.str.245, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 875, i32 34}
!489 = !{ptr @.str.246, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 876, i32 34}
!491 = !{ptr @.str.247, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 877, i32 34}
!493 = !{ptr @.str.248, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 878, i32 34}
!495 = !{ptr @.str.249, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 879, i32 34}
!497 = !{ptr @.str.250, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 880, i32 34}
!499 = !{ptr @.str.251, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 881, i32 34}
!501 = !{ptr @.str.252, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 882, i32 34}
!503 = !{ptr @.str.253, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 883, i32 34}
!505 = !{ptr @.str.254, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 884, i32 34}
!507 = !{ptr @.str.255, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 885, i32 34}
!509 = !{ptr @.str.256, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 888, i32 34}
!511 = !{ptr @.str.257, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 890, i32 34}
!513 = !{ptr @.str.258, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 892, i32 27}
!515 = !{ptr @.str.259, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 893, i32 27}
!517 = !{ptr @.str.260, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 894, i32 27}
!519 = !{ptr @.str.261, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 895, i32 27}
!521 = !{ptr @.str.262, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 896, i32 31}
!523 = !{ptr @.str.263, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 897, i32 31}
!525 = !{ptr @.str.264, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 898, i32 31}
!527 = !{ptr @.str.265, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 899, i32 31}
!529 = !{ptr @.str.266, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 901, i32 34}
!531 = !{ptr @.str.267, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 902, i32 34}
!533 = !{ptr @.str.268, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 950, i32 3}
!535 = !{ptr @.str.269, !534, !"<string literal>", i1 false, i1 false}
!536 = !{ptr @imx6q_clocks_init._entry, !534, !"_entry", i1 false, i1 false}
!537 = !{ptr @imx6q_clocks_init._entry_ptr, !534, !"_entry_ptr", i1 false, i1 false}
!538 = !{ptr @clk_hw_data, !539, !"clk_hw_data", i1 false, i1 false}
!539 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 93, i32 36}
!540 = !{ptr @hws, !541, !"hws", i1 false, i1 false}
!541 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 92, i32 24}
!542 = !{ptr @.str.270, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 130, i32 34}
!544 = !{ptr @post_div_table, !545, !"post_div_table", i1 false, i1 false}
!545 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 103, i32 29}
!546 = !{ptr @video_div_table, !547, !"video_div_table", i1 false, i1 false}
!547 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 110, i32 29}
!548 = !{ptr @pll_bypass_src_sels, !549, !"pll_bypass_src_sels", i1 false, i1 false}
!549 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 83, i32 20}
!550 = !{ptr @pll1_bypass_sels, !551, !"pll1_bypass_sels", i1 false, i1 false}
!551 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 84, i32 20}
!552 = !{ptr @pll2_bypass_sels, !553, !"pll2_bypass_sels", i1 false, i1 false}
!553 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 85, i32 20}
!554 = !{ptr @pll3_bypass_sels, !555, !"pll3_bypass_sels", i1 false, i1 false}
!555 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 86, i32 20}
!556 = !{ptr @pll4_bypass_sels, !557, !"pll4_bypass_sels", i1 false, i1 false}
!557 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 87, i32 20}
!558 = !{ptr @pll5_bypass_sels, !559, !"pll5_bypass_sels", i1 false, i1 false}
!559 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 88, i32 20}
!560 = !{ptr @pll6_bypass_sels, !561, !"pll6_bypass_sels", i1 false, i1 false}
!561 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 89, i32 20}
!562 = !{ptr @pll7_bypass_sels, !563, !"pll7_bypass_sels", i1 false, i1 false}
!563 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 90, i32 20}
!564 = !{ptr @.str.271, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 223, i32 48}
!566 = !{ptr @.str.272, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 224, i32 7}
!568 = !{ptr @.str.273, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 244, i32 41}
!570 = !{ptr @clk_enet_ref_table, !571, !"clk_enet_ref_table", i1 false, i1 false}
!571 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 95, i32 29}
!572 = !{ptr @.str.274, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 79, i32 30}
!574 = !{ptr @lvds_sels, !575, !"lvds_sels", i1 false, i1 false}
!575 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 77, i32 20}
!576 = !{ptr @.str.275, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 140, i32 34}
!578 = !{ptr @.str.276, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 135, i32 34}
!580 = !{ptr @step_sels, !581, !"step_sels", i1 false, i1 false}
!581 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 23, i32 20}
!582 = !{ptr @pll1_sw_sels, !583, !"pll1_sw_sels", i1 false, i1 false}
!583 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 24, i32 20}
!584 = !{ptr @periph_pre_sels, !585, !"periph_pre_sels", i1 false, i1 false}
!585 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 25, i32 20}
!586 = !{ptr @periph_clk2_sels, !587, !"periph_clk2_sels", i1 false, i1 false}
!587 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 26, i32 20}
!588 = !{ptr @periph2_clk2_sels, !589, !"periph2_clk2_sels", i1 false, i1 false}
!589 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 27, i32 20}
!590 = !{ptr @axi_sels, !591, !"axi_sels", i1 false, i1 false}
!591 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 30, i32 20}
!592 = !{ptr @audio_sels, !593, !"audio_sels", i1 false, i1 false}
!593 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 31, i32 20}
!594 = !{ptr @gpu_axi_sels, !595, !"gpu_axi_sels", i1 false, i1 false}
!595 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 32, i32 20}
!596 = !{ptr @can_sels, !597, !"can_sels", i1 false, i1 false}
!597 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 62, i32 20}
!598 = !{ptr @ecspi_sels, !599, !"ecspi_sels", i1 false, i1 false}
!599 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 61, i32 20}
!600 = !{ptr @ipg_per_sels, !601, !"ipg_per_sels", i1 false, i1 false}
!601 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 60, i32 20}
!602 = !{ptr @uart_sels, !603, !"uart_sels", i1 false, i1 false}
!603 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 59, i32 20}
!604 = !{ptr @gpu2d_core_sels_2, !605, !"gpu2d_core_sels_2", i1 false, i1 false}
!605 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 35, i32 20}
!606 = !{ptr @gpu2d_core_sels, !607, !"gpu2d_core_sels", i1 false, i1 false}
!607 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 34, i32 20}
!608 = !{ptr @gpu3d_core_sels, !609, !"gpu3d_core_sels", i1 false, i1 false}
!609 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 36, i32 20}
!610 = !{ptr @gpu3d_shader_sels, !611, !"gpu3d_shader_sels", i1 false, i1 false}
!611 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 37, i32 20}
!612 = !{ptr @ipu_sels, !613, !"ipu_sels", i1 false, i1 false}
!613 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 38, i32 20}
!614 = !{ptr @ldb_di_sels, !615, !"ldb_di_sels", i1 false, i1 false}
!615 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 39, i32 20}
!616 = !{ptr @.str.277, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 336, i32 4}
!618 = !{ptr @.str.278, !617, !"<string literal>", i1 false, i1 false}
!619 = !{ptr @init_ldb_clks._entry, !617, !"_entry", i1 false, i1 false}
!620 = !{ptr @init_ldb_clks._entry_ptr, !617, !"_entry_ptr", i1 false, i1 false}
!621 = !{ptr @.str.280, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 347, i32 4}
!623 = !{ptr @init_ldb_clks._entry.279, !622, !"_entry", i1 false, i1 false}
!624 = !{ptr @init_ldb_clks._entry_ptr.281, !622, !"_entry_ptr", i1 false, i1 false}
!625 = !{ptr @.str.282, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 359, i32 3}
!627 = !{ptr @.str.283, !626, !"<string literal>", i1 false, i1 false}
!628 = !{ptr @init_ldb_clks.__UNIQUE_ID_ddebug175, !626, !"__UNIQUE_ID_ddebug175", i1 false, i1 false}
!629 = !{ptr @.str.284, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 185, i32 4}
!631 = !{ptr @.str.285, !630, !"<string literal>", i1 false, i1 false}
!632 = !{ptr @of_assigned_ldb_sels._entry, !630, !"_entry", i1 false, i1 false}
!633 = !{ptr @of_assigned_ldb_sels._entry_ptr, !630, !"_entry_ptr", i1 false, i1 false}
!634 = !{ptr @.str.287, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 195, i32 4}
!636 = !{ptr @of_assigned_ldb_sels._entry.286, !635, !"_entry", i1 false, i1 false}
!637 = !{ptr @of_assigned_ldb_sels._entry_ptr.288, !635, !"_entry_ptr", i1 false, i1 false}
!638 = !{ptr @.str.290, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 206, i32 4}
!640 = !{ptr @of_assigned_ldb_sels._entry.289, !639, !"_entry", i1 false, i1 false}
!641 = !{ptr @of_assigned_ldb_sels._entry_ptr.291, !639, !"_entry_ptr", i1 false, i1 false}
!642 = !{ptr @ipu_di_pre_sels, !643, !"ipu_di_pre_sels", i1 false, i1 false}
!643 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 40, i32 20}
!644 = !{ptr @hsi_tx_sels, !645, !"hsi_tx_sels", i1 false, i1 false}
!645 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 49, i32 20}
!646 = !{ptr @pcie_axi_sels, !647, !"pcie_axi_sels", i1 false, i1 false}
!647 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 50, i32 20}
!648 = !{ptr @ipu1_di0_sels_2, !649, !"ipu1_di0_sels_2", i1 false, i1 false}
!649 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 45, i32 20}
!650 = !{ptr @ipu1_di1_sels_2, !651, !"ipu1_di1_sels_2", i1 false, i1 false}
!651 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 46, i32 20}
!652 = !{ptr @ipu2_di0_sels_2, !653, !"ipu2_di0_sels_2", i1 false, i1 false}
!653 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 47, i32 20}
!654 = !{ptr @ipu2_di1_sels_2, !655, !"ipu2_di1_sels_2", i1 false, i1 false}
!655 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 48, i32 20}
!656 = !{ptr @ssi_sels, !657, !"ssi_sels", i1 false, i1 false}
!657 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 51, i32 20}
!658 = !{ptr @usdhc_sels, !659, !"usdhc_sels", i1 false, i1 false}
!659 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 52, i32 20}
!660 = !{ptr @enfc_sels_2, !661, !"enfc_sels_2", i1 false, i1 false}
!661 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 54, i32 20}
!662 = !{ptr @eim_sels, !663, !"eim_sels", i1 false, i1 false}
!663 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 55, i32 20}
!664 = !{ptr @eim_slow_sels, !665, !"eim_slow_sels", i1 false, i1 false}
!665 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 56, i32 20}
!666 = !{ptr @pre_axi_sels, !667, !"pre_axi_sels", i1 false, i1 false}
!667 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 33, i32 20}
!668 = !{ptr @ipu1_di0_sels, !669, !"ipu1_di0_sels", i1 false, i1 false}
!669 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 41, i32 20}
!670 = !{ptr @ipu1_di1_sels, !671, !"ipu1_di1_sels", i1 false, i1 false}
!671 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 42, i32 20}
!672 = !{ptr @ipu2_di0_sels, !673, !"ipu2_di0_sels", i1 false, i1 false}
!673 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 43, i32 20}
!674 = !{ptr @ipu2_di1_sels, !675, !"ipu2_di1_sels", i1 false, i1 false}
!675 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 44, i32 20}
!676 = !{ptr @enfc_sels, !677, !"enfc_sels", i1 false, i1 false}
!677 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 53, i32 20}
!678 = !{ptr @vdo_axi_sels, !679, !"vdo_axi_sels", i1 false, i1 false}
!679 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 57, i32 20}
!680 = !{ptr @vpu_axi_sels, !681, !"vpu_axi_sels", i1 false, i1 false}
!681 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 58, i32 20}
!682 = !{ptr @cko1_sels, !683, !"cko1_sels", i1 false, i1 false}
!683 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 63, i32 20}
!684 = !{ptr @cko2_sels, !685, !"cko2_sels", i1 false, i1 false}
!685 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 66, i32 20}
!686 = !{ptr @cko_sels, !687, !"cko_sels", i1 false, i1 false}
!687 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 76, i32 20}
!688 = !{ptr @periph_sels, !689, !"periph_sels", i1 false, i1 false}
!689 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 28, i32 20}
!690 = !{ptr @periph2_sels, !691, !"periph2_sels", i1 false, i1 false}
!691 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 29, i32 20}
!692 = !{ptr @share_count_asrc, !693, !"share_count_asrc", i1 false, i1 false}
!693 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 119, i32 21}
!694 = !{ptr @share_count_esai, !695, !"share_count_esai", i1 false, i1 false}
!695 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 118, i32 21}
!696 = !{ptr @share_count_mipi_core_cfg, !697, !"share_count_mipi_core_cfg", i1 false, i1 false}
!697 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 123, i32 21}
!698 = !{ptr @share_count_spdif, !699, !"share_count_spdif", i1 false, i1 false}
!699 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 124, i32 21}
!700 = !{ptr @share_count_ssi1, !701, !"share_count_ssi1", i1 false, i1 false}
!701 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 120, i32 21}
!702 = !{ptr @share_count_ssi2, !703, !"share_count_ssi2", i1 false, i1 false}
!703 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 121, i32 21}
!704 = !{ptr @share_count_ssi3, !705, !"share_count_ssi3", i1 false, i1 false}
!705 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 122, i32 21}
!706 = !{ptr @share_count_prg0, !707, !"share_count_prg0", i1 false, i1 false}
!707 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 125, i32 21}
!708 = !{ptr @share_count_prg1, !709, !"share_count_prg1", i1 false, i1 false}
!709 = !{!"../drivers/clk/imx/clk-imx6q.c", i32 126, i32 21}
!710 = !{i32 1, !"wchar_size", i32 2}
!711 = !{i32 1, !"min_enum_size", i32 4}
!712 = !{i32 8, !"branch-target-enforcement", i32 0}
!713 = !{i32 8, !"sign-return-address", i32 0}
!714 = !{i32 8, !"sign-return-address-all", i32 0}
!715 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!716 = !{i32 7, !"uwtable", i32 1}
!717 = !{i32 7, !"frame-pointer", i32 2}
!718 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!719 = !{!"branch_weights", i32 1, i32 2000}
!720 = !{i64 2152802383}
!721 = !{i64 5037404}
!722 = !{i64 2152803278}
!723 = !{i64 5036986}
!724 = !{i64 2148778970, i64 2148778975, i64 2148778988, i64 2148779032, i64 2148779066, i64 2148779087}
