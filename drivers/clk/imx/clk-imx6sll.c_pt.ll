; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-imx6sll.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx6sll.c"
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_imx6sll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sll-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sll_of_clk_init_driver }, section "__clk_of_table", align 4
@clk_hw_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/imx/clk-imx6sll.c\00", [34 x i8] zeroinitializer }, align 32
@hws = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ckil\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osc\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipp_di0\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipp_di1\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,imx6sll-anatop\00", [45 x i8] zeroinitializer }, align 32
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
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll4_post_div\00", [18 x i8] zeroinitializer }, align 32
@post_div_table = internal constant { [4 x %struct.clk_div_table], [32 x i8] } { [4 x %struct.clk_div_table] [%struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll4_audio_div\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll5_post_div\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll5_video_div\00", [17 x i8] zeroinitializer }, align 32
@video_div_table = internal constant { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll2_198m\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll3_120m\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll3_80m\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll3_60m\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"step\00", [27 x i8] zeroinitializer }, align 32
@step_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.41], [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll1_sw\00", [24 x i8] zeroinitializer }, align 32
@pll1_sw_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.28, ptr @.str.55], [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"axi_alt_sel\00", [20 x i8] zeroinitializer }, align 32
@axi_alt_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.41, ptr @.str.44], [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axi_sel\00", [24 x i8] zeroinitializer }, align 32
@axi_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.78, ptr @.str.57], [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"periph_pre\00", [21 x i8] zeroinitializer }, align 32
@periph_pre_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.29, ptr @.str.41, ptr @.str.39, ptr @.str.51], [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"periph2_pre\00", [20 x i8] zeroinitializer }, align 32
@periph2_pre_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.29, ptr @.str.41, ptr @.str.39, ptr @.str.48], [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"periph_clk2_sel\00", [16 x i8] zeroinitializer }, align 32
@periph_clk2_sels = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.30, ptr @.str.3, ptr @.str.3], [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"periph2_clk2_sel\00", [47 x i8] zeroinitializer }, align 32
@periph2_clk2_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhc1_sel\00", [21 x i8] zeroinitializer }, align 32
@usdhc_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.41, ptr @.str.39], [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhc2_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usdhc3_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi1_sel\00", [23 x i8] zeroinitializer }, align 32
@ssi_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.1], [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi2_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi3_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"perclk_sel\00", [21 x i8] zeroinitializer }, align 32
@perclk_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.82, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_sel\00", [23 x i8] zeroinitializer }, align 32
@uart_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.53, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_sel\00", [22 x i8] zeroinitializer }, align 32
@spdif_sels = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.48, ptr @.str.45, ptr @.str.50, ptr @.str.30], [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"extern_audio_sel\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"epdc_pre_sel\00", [19 x i8] zeroinitializer }, align 32
@epdc_pre_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.50, ptr @.str.39, ptr @.str.41, ptr @.str.45], [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"epdc_sel\00", [23 x i8] zeroinitializer }, align 32
@epdc_sels = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.101, ptr @.str.4, ptr @.str.5, ptr @.str.177, ptr @.str.178], [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ecspi_sel\00", [22 x i8] zeroinitializer }, align 32
@ecspi_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.54, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lcdif_pre_sel\00", [18 x i8] zeroinitializer }, align 32
@lcdif_pre_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.29, ptr @.str.46, ptr @.str.50, ptr @.str.39, ptr @.str.40, ptr @.str.44], [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcdif_sel\00", [22 x i8] zeroinitializer }, align 32
@lcdif_sels = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.84, ptr @.str.4, ptr @.str.5, ptr @.str.177, ptr @.str.178], [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"periph\00", [25 x i8] zeroinitializer }, align 32
@periph_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.59, ptr @.str.80], [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"periph2\00", [24 x i8] zeroinitializer }, align 32
@periph2_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.60, ptr @.str.81], [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"periph_clk2\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"periph2_clk2\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lcdif_podf\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lcdif_pred\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"perclk\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhc3_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhc2_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usdhc1_podf\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi3_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi3_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi1_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi1_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi2_pred\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi2_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif_pred\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif_podf\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"extern_audio_pred\00", [46 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"extern_audio_podf\00", [46 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"epdc_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ecspi_podf\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arm\00", [28 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmdc_podf\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ldb_di0_div_3_5\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldb_di0_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ldb_di0_div_7\00", [18 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ldb_di1_div_3_5\00", [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldb_di1_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ldb_di1_div_7\00", [18 x i8] zeroinitializer }, align 32
@ldb_di0_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.50, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.40, ptr @.str.46], [40 x i8] zeroinitializer }, align 32
@ldb_di1_sels = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.30, ptr @.str.39, ptr @.str.41, ptr @.str.29, ptr @.str.46, ptr @.str.45], [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ldb_di0_div_sel\00", [16 x i8] zeroinitializer }, align 32
@ldb_di0_div_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.106, ptr @.str.108], [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ldb_di1_div_sel\00", [16 x i8] zeroinitializer }, align 32
@ldb_di1_div_sels = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.109, ptr @.str.111], [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aips_tz1\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aips_tz2\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dcp\00", [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_ipg\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart2_serial\00", [19 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi1\00", [25 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi2\00", [25 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi3\00", [25 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi4\00", [25 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3_ipg\00", [22 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart3_serial\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"epit1\00", [26 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"epit2\00", [26 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpt1_bus\00", [23 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpt1_serial\00", [20 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart4_ipg\00", [22 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart4_serial\00", [19 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"csi\00", [28 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocotp\00", [26 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcdif_apb\00", [22 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pxp\00", [28 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart5_ipg\00", [22 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart5_serial\00", [19 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"epdc_aclk\00", [22 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"epdc_pix\00", [23 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lcdif_pix\00", [22 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wdog1\00", [26 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmdc_p0_fast\00", [19 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmdc_p0_ipg\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmdc_p1_ipg\00", [20 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocram\00", [26 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rom\00", [28 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdma\00", [27 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wdog2\00", [26 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spba\00", [27 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"extern_audio\00", [19 x i8] zeroinitializer }, align 32
@share_count_audio = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.163 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif_gclk\00", [21 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi1\00", [27 x i8] zeroinitializer }, align 32
@share_count_ssi1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.166 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi1_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi2\00", [27 x i8] zeroinitializer }, align 32
@share_count_ssi2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi2_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssi3\00", [27 x i8] zeroinitializer }, align 32
@share_count_ssi3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.170 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssi3_ipg\00", [23 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_ipg\00", [22 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart1_serial\00", [19 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usboh3\00", [25 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc1\00", [25 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc2\00", [25 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc3\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.177 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldb_di0\00", [24 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldb_di1\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.179 = private unnamed_addr constant [12 x i8] c"clk_hw_data\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 57, i32 36 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 86, i32 6 }
@___asan_gen_.185 = private unnamed_addr constant [4 x i8] c"hws\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 56, i32 24 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 92, i32 44 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 94, i32 60 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 95, i32 59 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 98, i32 63 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 99, i32 63 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 101, i32 43 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 115, i32 33 }
@___asan_gen_.209 = private unnamed_addr constant [20 x i8] c"pll_bypass_src_sels\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 22, i32 20 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 116, i32 33 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 117, i32 33 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 118, i32 33 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 119, i32 33 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 120, i32 33 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 121, i32 33 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 123, i32 59 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 124, i32 62 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 125, i32 59 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 126, i32 58 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 127, i32 58 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 128, i32 60 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 129, i32 59 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 131, i32 29 }
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"pll1_bypass_sels\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 23, i32 20 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 132, i32 29 }
@___asan_gen_.260 = private unnamed_addr constant [17 x i8] c"pll2_bypass_sels\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 24, i32 20 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 133, i32 29 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"pll3_bypass_sels\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 25, i32 20 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 134, i32 29 }
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"pll4_bypass_sels\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 26, i32 20 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 135, i32 29 }
@___asan_gen_.278 = private unnamed_addr constant [17 x i8] c"pll5_bypass_sels\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 27, i32 20 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 136, i32 29 }
@___asan_gen_.284 = private unnamed_addr constant [17 x i8] c"pll6_bypass_sels\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 28, i32 20 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 137, i32 29 }
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"pll7_bypass_sels\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 29, i32 20 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 139, i32 54 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 140, i32 30 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 141, i32 34 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 142, i32 32 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 143, i32 32 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 144, i32 31 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 145, i32 35 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 153, i32 29 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 154, i32 29 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 161, i32 35 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 162, i32 35 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 166, i32 46 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 167, i32 46 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 168, i32 46 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 169, i32 46 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 170, i32 46 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 171, i32 46 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 172, i32 46 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 173, i32 46 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 175, i32 36 }
@___asan_gen_.353 = private unnamed_addr constant [15 x i8] c"post_div_table\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 59, i32 35 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 177, i32 36 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 179, i32 36 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 181, i32 36 }
@___asan_gen_.365 = private unnamed_addr constant [16 x i8] c"video_div_table\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 66, i32 35 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 185, i32 55 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 186, i32 55 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 187, i32 55 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 188, i32 55 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 194, i32 29 }
@___asan_gen_.383 = private unnamed_addr constant [10 x i8] c"step_sels\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 30, i32 20 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 195, i32 31 }
@___asan_gen_.389 = private unnamed_addr constant [13 x i8] c"pll1_sw_sels\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 31, i32 20 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 196, i32 35 }
@___asan_gen_.395 = private unnamed_addr constant [13 x i8] c"axi_alt_sels\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 32, i32 20 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 197, i32 31 }
@___asan_gen_.401 = private unnamed_addr constant [9 x i8] c"axi_sels\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 33, i32 20 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 198, i32 34 }
@___asan_gen_.407 = private unnamed_addr constant [16 x i8] c"periph_pre_sels\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 34, i32 20 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 199, i32 35 }
@___asan_gen_.413 = private unnamed_addr constant [17 x i8] c"periph2_pre_sels\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 35, i32 20 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 200, i32 38 }
@___asan_gen_.419 = private unnamed_addr constant [17 x i8] c"periph_clk2_sels\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 36, i32 20 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 201, i32 38 }
@___asan_gen_.425 = private unnamed_addr constant [18 x i8] c"periph2_clk2_sels\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 37, i32 20 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 202, i32 34 }
@___asan_gen_.431 = private unnamed_addr constant [11 x i8] c"usdhc_sels\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 40, i32 20 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 203, i32 34 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 204, i32 34 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 205, i32 32 }
@___asan_gen_.443 = private unnamed_addr constant [9 x i8] c"ssi_sels\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 41, i32 20 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 206, i32 32 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 207, i32 32 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 208, i32 34 }
@___asan_gen_.455 = private unnamed_addr constant [12 x i8] c"perclk_sels\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 50, i32 20 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 209, i32 32 }
@___asan_gen_.461 = private unnamed_addr constant [10 x i8] c"uart_sels\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 49, i32 20 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 210, i32 33 }
@___asan_gen_.467 = private unnamed_addr constant [11 x i8] c"spdif_sels\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 42, i32 20 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 211, i32 38 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 212, i32 36 }
@___asan_gen_.476 = private unnamed_addr constant [14 x i8] c"epdc_pre_sels\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 53, i32 20 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 213, i32 32 }
@___asan_gen_.482 = private unnamed_addr constant [10 x i8] c"epdc_sels\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 54, i32 20 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 214, i32 33 }
@___asan_gen_.488 = private unnamed_addr constant [11 x i8] c"ecspi_sels\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 48, i32 20 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 215, i32 37 }
@___asan_gen_.494 = private unnamed_addr constant [15 x i8] c"lcdif_pre_sels\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 47, i32 20 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 216, i32 33 }
@___asan_gen_.500 = private unnamed_addr constant [11 x i8] c"lcdif_sels\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 51, i32 20 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 218, i32 49 }
@___asan_gen_.506 = private unnamed_addr constant [12 x i8] c"periph_sels\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 38, i32 20 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 219, i32 49 }
@___asan_gen_.512 = private unnamed_addr constant [13 x i8] c"periph2_sels\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 39, i32 20 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 221, i32 33 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 222, i32 34 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 223, i32 26 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 224, i32 32 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 225, i32 28 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 226, i32 35 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 227, i32 33 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 228, i32 33 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 229, i32 31 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 230, i32 31 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 231, i32 31 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 232, i32 31 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 233, i32 31 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 234, i32 31 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 235, i32 31 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 236, i32 32 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 237, i32 32 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 238, i32 39 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 239, i32 39 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 240, i32 32 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 241, i32 32 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 244, i32 50 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 245, i32 55 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 246, i32 54 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 249, i32 61 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 249, i32 80 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 250, i32 61 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 251, i32 61 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 251, i32 80 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 252, i32 61 }
@___asan_gen_.611 = private unnamed_addr constant [13 x i8] c"ldb_di0_sels\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 45, i32 20 }
@___asan_gen_.614 = private unnamed_addr constant [13 x i8] c"ldb_di1_sels\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 46, i32 20 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 256, i32 37 }
@___asan_gen_.620 = private unnamed_addr constant [17 x i8] c"ldb_di0_div_sels\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 43, i32 20 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 257, i32 37 }
@___asan_gen_.626 = private unnamed_addr constant [17 x i8] c"ldb_di1_div_sels\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 44, i32 20 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 260, i32 29 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 261, i32 29 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 262, i32 26 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 263, i32 31 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 264, i32 34 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 265, i32 28 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 268, i32 28 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 269, i32 28 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 270, i32 28 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 271, i32 28 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 272, i32 31 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 273, i32 34 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 274, i32 28 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 275, i32 28 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 276, i32 29 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 277, i32 32 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 278, i32 31 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 279, i32 34 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 280, i32 28 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 281, i32 28 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 284, i32 28 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 285, i32 26 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 286, i32 27 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 287, i32 27 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 288, i32 27 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 289, i32 28 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 290, i32 28 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 291, i32 31 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 292, i32 26 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 295, i32 31 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 296, i32 34 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 297, i32 30 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 298, i32 30 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 299, i32 31 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 300, i32 28 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 301, i32 28 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 302, i32 34 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 303, i32 33 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 304, i32 33 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 305, i32 28 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 308, i32 27 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 309, i32 27 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 310, i32 27 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 311, i32 27 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 314, i32 26 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 315, i32 27 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 316, i32 28 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 317, i32 27 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 318, i32 34 }
@___asan_gen_.776 = private unnamed_addr constant [18 x i8] c"share_count_audio\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 74, i32 12 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 319, i32 28 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 320, i32 32 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 321, i32 27 }
@___asan_gen_.788 = private unnamed_addr constant [17 x i8] c"share_count_ssi1\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 75, i32 12 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 322, i32 30 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 323, i32 27 }
@___asan_gen_.797 = private unnamed_addr constant [17 x i8] c"share_count_ssi2\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 76, i32 12 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 324, i32 30 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 325, i32 27 }
@___asan_gen_.806 = private unnamed_addr constant [17 x i8] c"share_count_ssi3\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 77, i32 12 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 326, i32 30 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 327, i32 31 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 328, i32 34 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 331, i32 28 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 332, i32 28 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 333, i32 28 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 334, i32 28 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 54, i32 71 }
@___asan_gen_.833 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.834 = private constant [33 x i8] c"../drivers/clk/imx/clk-imx6sll.c\00", align 1
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.834, i32 54, i32 82 }
@llvm.compiler.used = appending global [220 x ptr] [ptr @__of_table_imx6sll, ptr @clk_hw_data, ptr @.str, ptr @hws, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pll_bypass_src_sels, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @pll1_bypass_sels, ptr @.str.22, ptr @pll2_bypass_sels, ptr @.str.23, ptr @pll3_bypass_sels, ptr @.str.24, ptr @pll4_bypass_sels, ptr @.str.25, ptr @pll5_bypass_sels, ptr @.str.26, ptr @pll6_bypass_sels, ptr @.str.27, ptr @pll7_bypass_sels, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @post_div_table, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @video_div_table, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @step_sels, ptr @.str.56, ptr @pll1_sw_sels, ptr @.str.57, ptr @axi_alt_sels, ptr @.str.58, ptr @axi_sels, ptr @.str.59, ptr @periph_pre_sels, ptr @.str.60, ptr @periph2_pre_sels, ptr @.str.61, ptr @periph_clk2_sels, ptr @.str.62, ptr @periph2_clk2_sels, ptr @.str.63, ptr @usdhc_sels, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @ssi_sels, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @perclk_sels, ptr @.str.70, ptr @uart_sels, ptr @.str.71, ptr @spdif_sels, ptr @.str.72, ptr @.str.73, ptr @epdc_pre_sels, ptr @.str.74, ptr @epdc_sels, ptr @.str.75, ptr @ecspi_sels, ptr @.str.76, ptr @lcdif_pre_sels, ptr @.str.77, ptr @lcdif_sels, ptr @.str.78, ptr @periph_sels, ptr @.str.79, ptr @periph2_sels, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @ldb_di0_sels, ptr @ldb_di1_sels, ptr @.str.112, ptr @ldb_di0_div_sels, ptr @.str.113, ptr @ldb_di1_div_sels, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @share_count_audio, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @share_count_ssi1, ptr @.str.166, ptr @.str.167, ptr @share_count_ssi2, ptr @.str.168, ptr @.str.169, ptr @share_count_ssi3, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178], section "llvm.metadata"
@0 = internal global [219 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_hw_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hws to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_bypass_src_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll1_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll2_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll3_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll4_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll5_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll6_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll7_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @post_div_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_div_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @step_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll1_sw_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_alt_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_pre_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph2_pre_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_clk2_sels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph2_clk2_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhc_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perclk_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epdc_pre_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epdc_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecspi_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcdif_pre_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcdif_sels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph2_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldb_di0_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldb_di1_sels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldb_di0_div_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldb_di1_div_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_audio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_ssi1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_ssi2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_ssi3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx6sll_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #3
  tail call fastcc void @imx6sll_clocks_init(ptr noundef %np) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx6sll_clocks_init(ptr noundef %ccm_node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 724) #7
  store ptr %call7.i.i, ptr @clk_hw_data, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !447

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 180, ptr %call7.i.i, align 8
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
  %arrayidx29 = getelementptr ptr, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call28, ptr %arrayidx29, align 4
  %call30 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %ccm_node, ptr noundef nonnull @.str.4) #3
  %8 = load ptr, ptr @hws, align 4
  %arrayidx31 = getelementptr ptr, ptr %8, i32 157
  %9 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call30, ptr %arrayidx31, align 4
  %call32 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %ccm_node, ptr noundef nonnull @.str.5) #3
  %10 = load ptr, ptr @hws, align 4
  %arrayidx33 = getelementptr ptr, ptr %10, i32 158
  %11 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call32, ptr %arrayidx33, align 4
  %call34 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6) #3
  %call35 = tail call ptr @of_iomap(ptr noundef %call34, i32 noundef 0) #3
  tail call void @of_node_put(ptr noundef %call34) #3
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %do.end55, label %if.end24.if.end61_crit_edge, !prof !447

if.end24.if.end61_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

do.end55:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 104, i32 noundef 9, ptr noundef null) #3
  br label %if.end61

if.end61:                                         ; preds = %do.end55, %if.end24.if.end61_crit_edge
  %add.ptr = getelementptr i8, ptr %call35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 256) #3, !srcloc !448
  %add.ptr69 = getelementptr i8, ptr %call35, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 256) #3, !srcloc !448
  %add.ptr70 = getelementptr i8, ptr %call35, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 256) #3, !srcloc !448
  %add.ptr71 = getelementptr i8, ptr %call35, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 256) #3, !srcloc !448
  %add.ptr72 = getelementptr i8, ptr %call35, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 256) #3, !srcloc !448
  %add.ptr73 = getelementptr i8, ptr %call35, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 256) #3, !srcloc !448
  %add.ptr74 = getelementptr i8, ptr %call35, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 256) #3, !srcloc !448
  %call.i829 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %call35, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %12 = load ptr, ptr @hws, align 4
  %arrayidx77 = getelementptr ptr, ptr %12, i32 3
  %13 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i829, ptr %arrayidx77, align 4
  %add.ptr78 = getelementptr i8, ptr %call35, i32 48
  %call.i830 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr78, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %14 = load ptr, ptr @hws, align 4
  %arrayidx80 = getelementptr ptr, ptr %14, i32 4
  %15 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i830, ptr %arrayidx80, align 4
  %add.ptr81 = getelementptr i8, ptr %call35, i32 16
  %call.i831 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr81, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %16 = load ptr, ptr @hws, align 4
  %arrayidx83 = getelementptr ptr, ptr %16, i32 5
  %17 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i831, ptr %arrayidx83, align 4
  %add.ptr84 = getelementptr i8, ptr %call35, i32 112
  %call.i832 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr84, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %18 = load ptr, ptr @hws, align 4
  %arrayidx86 = getelementptr ptr, ptr %18, i32 6
  %19 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i832, ptr %arrayidx86, align 4
  %add.ptr87 = getelementptr i8, ptr %call35, i32 160
  %call.i833 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr87, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %20 = load ptr, ptr @hws, align 4
  %arrayidx89 = getelementptr ptr, ptr %20, i32 7
  %21 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i833, ptr %arrayidx89, align 4
  %add.ptr90 = getelementptr i8, ptr %call35, i32 224
  %call.i834 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr90, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %22 = load ptr, ptr @hws, align 4
  %arrayidx92 = getelementptr ptr, ptr %22, i32 8
  %23 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i834, ptr %arrayidx92, align 4
  %add.ptr93 = getelementptr i8, ptr %call35, i32 32
  %call.i835 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr93, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %24 = load ptr, ptr @hws, align 4
  %arrayidx95 = getelementptr ptr, ptr %24, i32 9
  %25 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i835, ptr %arrayidx95, align 4
  %call97 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, ptr noundef %call35, i32 noundef 127) #3
  %26 = load ptr, ptr @hws, align 4
  %arrayidx98 = getelementptr ptr, ptr %26, i32 10
  %27 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call97, ptr %arrayidx98, align 4
  %call100 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, ptr noundef %add.ptr78, i32 noundef 1) #3
  %28 = load ptr, ptr @hws, align 4
  %arrayidx101 = getelementptr ptr, ptr %28, i32 11
  %29 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call100, ptr %arrayidx101, align 4
  %call103 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.9, ptr noundef %add.ptr81, i32 noundef 3) #3
  %30 = load ptr, ptr @hws, align 4
  %arrayidx104 = getelementptr ptr, ptr %30, i32 12
  %31 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call103, ptr %arrayidx104, align 4
  %call106 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.10, ptr noundef %add.ptr84, i32 noundef 127) #3
  %32 = load ptr, ptr @hws, align 4
  %arrayidx107 = getelementptr ptr, ptr %32, i32 13
  %33 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call106, ptr %arrayidx107, align 4
  %call109 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.11, ptr noundef %add.ptr87, i32 noundef 127) #3
  %34 = load ptr, ptr @hws, align 4
  %arrayidx110 = getelementptr ptr, ptr %34, i32 14
  %35 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call109, ptr %arrayidx110, align 4
  %call112 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 5, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.12, ptr noundef %add.ptr90, i32 noundef 3) #3
  %36 = load ptr, ptr @hws, align 4
  %arrayidx113 = getelementptr ptr, ptr %36, i32 15
  %37 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call112, ptr %arrayidx113, align 4
  %call115 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.13, ptr noundef %add.ptr93, i32 noundef 3) #3
  %38 = load ptr, ptr @hws, align 4
  %arrayidx116 = getelementptr ptr, ptr %38, i32 16
  %39 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call115, ptr %arrayidx116, align 4
  %call.i836 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21, i8 noundef zeroext 2, ptr noundef nonnull @pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %call35, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %40 = load ptr, ptr @hws, align 4
  %arrayidx119 = getelementptr ptr, ptr %40, i32 17
  %41 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i836, ptr %arrayidx119, align 4
  %call.i837 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.22, i8 noundef zeroext 2, ptr noundef nonnull @pll2_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr78, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %42 = load ptr, ptr @hws, align 4
  %arrayidx122 = getelementptr ptr, ptr %42, i32 18
  %43 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i837, ptr %arrayidx122, align 4
  %call.i838 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, i8 noundef zeroext 2, ptr noundef nonnull @pll3_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr81, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %44 = load ptr, ptr @hws, align 4
  %arrayidx125 = getelementptr ptr, ptr %44, i32 19
  %45 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i838, ptr %arrayidx125, align 4
  %call.i839 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24, i8 noundef zeroext 2, ptr noundef nonnull @pll4_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr84, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %46 = load ptr, ptr @hws, align 4
  %arrayidx128 = getelementptr ptr, ptr %46, i32 20
  %47 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i839, ptr %arrayidx128, align 4
  %call.i840 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, i8 noundef zeroext 2, ptr noundef nonnull @pll5_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr87, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %48 = load ptr, ptr @hws, align 4
  %arrayidx131 = getelementptr ptr, ptr %48, i32 21
  %49 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i840, ptr %arrayidx131, align 4
  %call.i841 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26, i8 noundef zeroext 2, ptr noundef nonnull @pll6_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr90, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %50 = load ptr, ptr @hws, align 4
  %arrayidx134 = getelementptr ptr, ptr %50, i32 22
  %51 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i841, ptr %arrayidx134, align 4
  %call.i842 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27, i8 noundef zeroext 2, ptr noundef nonnull @pll7_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr93, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %52 = load ptr, ptr @hws, align 4
  %arrayidx137 = getelementptr ptr, ptr %52, i32 23
  %53 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i842, ptr %arrayidx137, align 4
  %call.i843 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.21, i32 noundef 4, i32 noundef 1, i32 noundef 1) #3
  %54 = load ptr, ptr @hws, align 4
  %arrayidx139 = getelementptr ptr, ptr %54, i32 24
  %55 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i843, ptr %arrayidx139, align 4
  %call.i844 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr78, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %56 = load ptr, ptr @hws, align 4
  %arrayidx142 = getelementptr ptr, ptr %56, i32 25
  %57 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i844, ptr %arrayidx142, align 4
  %call.i845 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr81, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %58 = load ptr, ptr @hws, align 4
  %arrayidx145 = getelementptr ptr, ptr %58, i32 26
  %59 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i845, ptr %arrayidx145, align 4
  %call.i846 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr84, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %60 = load ptr, ptr @hws, align 4
  %arrayidx148 = getelementptr ptr, ptr %60, i32 27
  %61 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i846, ptr %arrayidx148, align 4
  %call.i847 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr87, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %62 = load ptr, ptr @hws, align 4
  %arrayidx151 = getelementptr ptr, ptr %62, i32 28
  %63 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i847, ptr %arrayidx151, align 4
  %call.i848 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr90, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %64 = load ptr, ptr @hws, align 4
  %arrayidx154 = getelementptr ptr, ptr %64, i32 29
  %65 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i848, ptr %arrayidx154, align 4
  %call.i849 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr93, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %66 = load ptr, ptr @hws, align 4
  %arrayidx157 = getelementptr ptr, ptr %66, i32 30
  %67 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i849, ptr %arrayidx157, align 4
  %call.i850 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.30, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr81, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %68 = load ptr, ptr @hws, align 4
  %arrayidx160 = getelementptr ptr, ptr %68, i32 31
  %69 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i850, ptr %arrayidx160, align 4
  %call.i851 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr93, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %70 = load ptr, ptr @hws, align 4
  %arrayidx163 = getelementptr ptr, ptr %70, i32 32
  %71 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i851, ptr %arrayidx163, align 4
  %call.i852 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %add.ptr81, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %72 = load ptr, ptr @hws, align 4
  %arrayidx166 = getelementptr ptr, ptr %72, i32 33
  %73 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i852, ptr %arrayidx166, align 4
  %call.i853 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %add.ptr93, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %74 = load ptr, ptr @hws, align 4
  %arrayidx169 = getelementptr ptr, ptr %74, i32 34
  %75 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i853, ptr %arrayidx169, align 4
  %add.ptr170 = getelementptr i8, ptr %call35, i32 256
  %call171 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.29, ptr noundef %add.ptr170, i8 noundef zeroext 0) #3
  %76 = load ptr, ptr @hws, align 4
  %arrayidx172 = getelementptr ptr, ptr %76, i32 35
  %77 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call171, ptr %arrayidx172, align 4
  %call174 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.29, ptr noundef %add.ptr170, i8 noundef zeroext 1) #3
  %78 = load ptr, ptr @hws, align 4
  %arrayidx175 = getelementptr ptr, ptr %78, i32 36
  %79 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call174, ptr %arrayidx175, align 4
  %call177 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.29, ptr noundef %add.ptr170, i8 noundef zeroext 2) #3
  %80 = load ptr, ptr @hws, align 4
  %arrayidx178 = getelementptr ptr, ptr %80, i32 37
  %81 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call177, ptr %arrayidx178, align 4
  %call180 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.29, ptr noundef %add.ptr170, i8 noundef zeroext 3) #3
  %82 = load ptr, ptr @hws, align 4
  %arrayidx181 = getelementptr ptr, ptr %82, i32 38
  %83 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call180, ptr %arrayidx181, align 4
  %add.ptr182 = getelementptr i8, ptr %call35, i32 240
  %call183 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.30, ptr noundef %add.ptr182, i8 noundef zeroext 0) #3
  %84 = load ptr, ptr @hws, align 4
  %arrayidx184 = getelementptr ptr, ptr %84, i32 39
  %85 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call183, ptr %arrayidx184, align 4
  %call186 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.30, ptr noundef %add.ptr182, i8 noundef zeroext 1) #3
  %86 = load ptr, ptr @hws, align 4
  %arrayidx187 = getelementptr ptr, ptr %86, i32 40
  %87 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call186, ptr %arrayidx187, align 4
  %call189 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.30, ptr noundef %add.ptr182, i8 noundef zeroext 2) #3
  %88 = load ptr, ptr @hws, align 4
  %arrayidx190 = getelementptr ptr, ptr %88, i32 41
  %89 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call189, ptr %arrayidx190, align 4
  %call192 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.30, ptr noundef %add.ptr182, i8 noundef zeroext 3) #3
  %90 = load ptr, ptr @hws, align 4
  %arrayidx193 = getelementptr ptr, ptr %90, i32 42
  %91 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call192, ptr %arrayidx193, align 4
  %call195 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %add.ptr84, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #3
  %92 = load ptr, ptr @hws, align 4
  %arrayidx196 = getelementptr ptr, ptr %92, i32 43
  %93 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call195, ptr %arrayidx196, align 4
  %add.ptr197 = getelementptr i8, ptr %call35, i32 368
  %call198 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %add.ptr197, i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %94 = load ptr, ptr @hws, align 4
  %arrayidx199 = getelementptr ptr, ptr %94, i32 44
  %95 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call198, ptr %arrayidx199, align 4
  %call201 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %add.ptr87, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #3
  %96 = load ptr, ptr @hws, align 4
  %arrayidx202 = getelementptr ptr, ptr %96, i32 45
  %97 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call201, ptr %arrayidx202, align 4
  %call204 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %add.ptr197, i8 noundef zeroext 30, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @video_div_table, ptr noundef nonnull @imx_ccm_lock) #3
  %98 = load ptr, ptr @hws, align 4
  %arrayidx205 = getelementptr ptr, ptr %98, i32 46
  %99 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call204, ptr %arrayidx205, align 4
  %call.i854 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.41, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %100 = load ptr, ptr @hws, align 4
  %arrayidx207 = getelementptr ptr, ptr %100, i32 47
  %101 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call.i854, ptr %arrayidx207, align 4
  %call.i855 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.30, i32 noundef 4, i32 noundef 1, i32 noundef 4) #3
  %102 = load ptr, ptr @hws, align 4
  %arrayidx209 = getelementptr ptr, ptr %102, i32 48
  %103 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i855, ptr %arrayidx209, align 4
  %call.i856 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.30, i32 noundef 4, i32 noundef 1, i32 noundef 6) #3
  %104 = load ptr, ptr @hws, align 4
  %arrayidx211 = getelementptr ptr, ptr %104, i32 49
  %105 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i856, ptr %arrayidx211, align 4
  %call.i857 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.30, i32 noundef 4, i32 noundef 1, i32 noundef 8) #3
  %106 = load ptr, ptr @hws, align 4
  %arrayidx213 = getelementptr ptr, ptr %106, i32 50
  %107 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call.i857, ptr %arrayidx213, align 4
  %call214 = tail call ptr @of_iomap(ptr noundef %ccm_node, i32 noundef 0) #3
  %tobool216.not = icmp eq ptr %call214, null
  br i1 %tobool216.not, label %do.end234, label %if.end61.if.end240_crit_edge, !prof !447

if.end61.if.end240_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end240

do.end234:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 192, i32 noundef 9, ptr noundef null) #3
  br label %if.end240

if.end240:                                        ; preds = %do.end234, %if.end61.if.end240_crit_edge
  %add.ptr248 = getelementptr i8, ptr %call214, i32 12
  %call.i858 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.55, i8 noundef zeroext 2, ptr noundef nonnull @step_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr248, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %108 = load ptr, ptr @hws, align 4
  %arrayidx250 = getelementptr ptr, ptr %108, i32 51
  %109 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call.i858, ptr %arrayidx250, align 4
  %call.i859 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.56, i8 noundef zeroext 2, ptr noundef nonnull @pll1_sw_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr248, i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %110 = load ptr, ptr @hws, align 4
  %arrayidx253 = getelementptr ptr, ptr %110, i32 52
  %111 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call.i859, ptr %arrayidx253, align 4
  %add.ptr254 = getelementptr i8, ptr %call214, i32 20
  %call.i860 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.57, i8 noundef zeroext 2, ptr noundef nonnull @axi_alt_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr254, i8 noundef zeroext 7, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %112 = load ptr, ptr @hws, align 4
  %arrayidx256 = getelementptr ptr, ptr %112, i32 53
  %113 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call.i860, ptr %arrayidx256, align 4
  %call.i861 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.58, i8 noundef zeroext 2, ptr noundef nonnull @axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr254, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %114 = load ptr, ptr @hws, align 4
  %arrayidx259 = getelementptr ptr, ptr %114, i32 54
  %115 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call.i861, ptr %arrayidx259, align 4
  %add.ptr260 = getelementptr i8, ptr %call214, i32 24
  %call.i862 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.59, i8 noundef zeroext 4, ptr noundef nonnull @periph_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr260, i8 noundef zeroext 18, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %116 = load ptr, ptr @hws, align 4
  %arrayidx262 = getelementptr ptr, ptr %116, i32 55
  %117 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call.i862, ptr %arrayidx262, align 4
  %call.i863 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.60, i8 noundef zeroext 4, ptr noundef nonnull @periph2_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr260, i8 noundef zeroext 21, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %118 = load ptr, ptr @hws, align 4
  %arrayidx265 = getelementptr ptr, ptr %118, i32 56
  %119 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i863, ptr %arrayidx265, align 4
  %call.i864 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.61, i8 noundef zeroext 3, ptr noundef nonnull @periph_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr260, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %120 = load ptr, ptr @hws, align 4
  %arrayidx268 = getelementptr ptr, ptr %120, i32 57
  %121 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i864, ptr %arrayidx268, align 4
  %call.i865 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.62, i8 noundef zeroext 2, ptr noundef nonnull @periph2_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr260, i8 noundef zeroext 20, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %122 = load ptr, ptr @hws, align 4
  %arrayidx271 = getelementptr ptr, ptr %122, i32 58
  %123 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i865, ptr %arrayidx271, align 4
  %add.ptr272 = getelementptr i8, ptr %call214, i32 28
  %call.i866 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.63, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr272, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %124 = load ptr, ptr @hws, align 4
  %arrayidx274 = getelementptr ptr, ptr %124, i32 60
  %125 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i866, ptr %arrayidx274, align 4
  %call.i867 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.64, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr272, i8 noundef zeroext 17, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %126 = load ptr, ptr @hws, align 4
  %arrayidx277 = getelementptr ptr, ptr %126, i32 61
  %127 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call.i867, ptr %arrayidx277, align 4
  %call.i868 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.65, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr272, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %128 = load ptr, ptr @hws, align 4
  %arrayidx280 = getelementptr ptr, ptr %128, i32 62
  %129 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call.i868, ptr %arrayidx280, align 4
  %call.i869 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.66, i8 noundef zeroext 4, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr272, i8 noundef zeroext 10, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %130 = load ptr, ptr @hws, align 4
  %arrayidx283 = getelementptr ptr, ptr %130, i32 63
  %131 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call.i869, ptr %arrayidx283, align 4
  %call.i870 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.67, i8 noundef zeroext 4, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr272, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %132 = load ptr, ptr @hws, align 4
  %arrayidx286 = getelementptr ptr, ptr %132, i32 64
  %133 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i870, ptr %arrayidx286, align 4
  %call.i871 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.68, i8 noundef zeroext 4, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr272, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %134 = load ptr, ptr @hws, align 4
  %arrayidx289 = getelementptr ptr, ptr %134, i32 65
  %135 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call.i871, ptr %arrayidx289, align 4
  %call.i872 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.69, i8 noundef zeroext 2, ptr noundef nonnull @perclk_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr272, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %136 = load ptr, ptr @hws, align 4
  %arrayidx292 = getelementptr ptr, ptr %136, i32 59
  %137 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call.i872, ptr %arrayidx292, align 4
  %add.ptr293 = getelementptr i8, ptr %call214, i32 36
  %call.i873 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.70, i8 noundef zeroext 2, ptr noundef nonnull @uart_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr293, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %138 = load ptr, ptr @hws, align 4
  %arrayidx295 = getelementptr ptr, ptr %138, i32 72
  %139 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call.i873, ptr %arrayidx295, align 4
  %add.ptr296 = getelementptr i8, ptr %call214, i32 48
  %call.i874 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.71, i8 noundef zeroext 4, ptr noundef nonnull @spdif_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr296, i8 noundef zeroext 20, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %140 = load ptr, ptr @hws, align 4
  %arrayidx298 = getelementptr ptr, ptr %140, i32 70
  %141 = ptrtoint ptr %arrayidx298 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call.i874, ptr %arrayidx298, align 4
  %call.i875 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.72, i8 noundef zeroext 4, ptr noundef nonnull @spdif_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr296, i8 noundef zeroext 7, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %142 = load ptr, ptr @hws, align 4
  %arrayidx301 = getelementptr ptr, ptr %142, i32 169
  %143 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call.i875, ptr %arrayidx301, align 4
  %add.ptr302 = getelementptr i8, ptr %call214, i32 52
  %call.i876 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.73, i8 noundef zeroext 6, ptr noundef nonnull @epdc_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr302, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %144 = load ptr, ptr @hws, align 4
  %arrayidx304 = getelementptr ptr, ptr %144, i32 69
  %145 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call.i876, ptr %arrayidx304, align 4
  %call.i877 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74, i8 noundef zeroext 5, ptr noundef nonnull @epdc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr302, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %146 = load ptr, ptr @hws, align 4
  %arrayidx307 = getelementptr ptr, ptr %146, i32 95
  %147 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i877, ptr %arrayidx307, align 4
  %add.ptr308 = getelementptr i8, ptr %call214, i32 56
  %call.i878 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.75, i8 noundef zeroext 2, ptr noundef nonnull @ecspi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr308, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %148 = load ptr, ptr @hws, align 4
  %arrayidx310 = getelementptr ptr, ptr %148, i32 71
  %149 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call.i878, ptr %arrayidx310, align 4
  %call.i879 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.76, i8 noundef zeroext 6, ptr noundef nonnull @lcdif_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr308, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %150 = load ptr, ptr @hws, align 4
  %arrayidx313 = getelementptr ptr, ptr %150, i32 67
  %151 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call.i879, ptr %arrayidx313, align 4
  %call.i880 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.77, i8 noundef zeroext 5, ptr noundef nonnull @lcdif_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr308, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %152 = load ptr, ptr @hws, align 4
  %arrayidx316 = getelementptr ptr, ptr %152, i32 68
  %153 = ptrtoint ptr %arrayidx316 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call.i880, ptr %arrayidx316, align 4
  %add.ptr318 = getelementptr i8, ptr %call214, i32 72
  %call319 = tail call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.78, ptr noundef %add.ptr254, i8 noundef zeroext 25, i8 noundef zeroext 1, ptr noundef %add.ptr318, i8 noundef zeroext 5, ptr noundef nonnull @periph_sels, i32 noundef 2) #3
  %154 = load ptr, ptr @hws, align 4
  %arrayidx320 = getelementptr ptr, ptr %154, i32 74
  %155 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call319, ptr %arrayidx320, align 4
  %call323 = tail call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.79, ptr noundef %add.ptr254, i8 noundef zeroext 26, i8 noundef zeroext 1, ptr noundef %add.ptr318, i8 noundef zeroext 3, ptr noundef nonnull @periph2_sels, i32 noundef 2) #3
  %156 = load ptr, ptr @hws, align 4
  %arrayidx324 = getelementptr ptr, ptr %156, i32 75
  %157 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call323, ptr %arrayidx324, align 4
  %call.i881 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.61, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr254, i8 noundef zeroext 27, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %158 = load ptr, ptr @hws, align 4
  %arrayidx327 = getelementptr ptr, ptr %158, i32 77
  %159 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call.i881, ptr %arrayidx327, align 4
  %call.i882 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.62, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr254, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %160 = load ptr, ptr @hws, align 4
  %arrayidx330 = getelementptr ptr, ptr %160, i32 76
  %161 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call.i882, ptr %arrayidx330, align 4
  %call.i883 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr254, i8 noundef zeroext 8, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %162 = load ptr, ptr @hws, align 4
  %arrayidx333 = getelementptr ptr, ptr %162, i32 81
  %163 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call.i883, ptr %arrayidx333, align 4
  %call.i884 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr260, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %164 = load ptr, ptr @hws, align 4
  %arrayidx336 = getelementptr ptr, ptr %164, i32 94
  %165 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call.i884, ptr %arrayidx336, align 4
  %call.i885 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.69, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr272, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %166 = load ptr, ptr @hws, align 4
  %arrayidx339 = getelementptr ptr, ptr %166, i32 82
  %167 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call.i885, ptr %arrayidx339, align 4
  %call.i886 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.65, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr293, i8 noundef zeroext 19, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %168 = load ptr, ptr @hws, align 4
  %arrayidx342 = getelementptr ptr, ptr %168, i32 85
  %169 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call.i886, ptr %arrayidx342, align 4
  %call.i887 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.64, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr293, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %170 = load ptr, ptr @hws, align 4
  %arrayidx345 = getelementptr ptr, ptr %170, i32 84
  %171 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call.i887, ptr %arrayidx345, align 4
  %call.i888 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.63, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr293, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %172 = load ptr, ptr @hws, align 4
  %arrayidx348 = getelementptr ptr, ptr %172, i32 83
  %173 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call.i888, ptr %arrayidx348, align 4
  %call.i889 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.70, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr293, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %174 = load ptr, ptr @hws, align 4
  %arrayidx351 = getelementptr ptr, ptr %174, i32 100
  %175 = ptrtoint ptr %arrayidx351 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call.i889, ptr %arrayidx351, align 4
  %add.ptr352 = getelementptr i8, ptr %call214, i32 40
  %call.i890 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.68, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr352, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %176 = load ptr, ptr @hws, align 4
  %arrayidx354 = getelementptr ptr, ptr %176, i32 88
  %177 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %call.i890, ptr %arrayidx354, align 4
  %call.i891 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr352, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %178 = load ptr, ptr @hws, align 4
  %arrayidx357 = getelementptr ptr, ptr %178, i32 91
  %179 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call.i891, ptr %arrayidx357, align 4
  %call.i892 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr352, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %180 = load ptr, ptr @hws, align 4
  %arrayidx360 = getelementptr ptr, ptr %180, i32 86
  %181 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %call.i892, ptr %arrayidx360, align 4
  %call.i893 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr352, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %182 = load ptr, ptr @hws, align 4
  %arrayidx363 = getelementptr ptr, ptr %182, i32 89
  %183 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call.i893, ptr %arrayidx363, align 4
  %add.ptr364 = getelementptr i8, ptr %call214, i32 44
  %call.i894 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.67, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr364, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %184 = load ptr, ptr @hws, align 4
  %arrayidx366 = getelementptr ptr, ptr %184, i32 87
  %185 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %call.i894, ptr %arrayidx366, align 4
  %call.i895 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr364, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %186 = load ptr, ptr @hws, align 4
  %arrayidx369 = getelementptr ptr, ptr %186, i32 90
  %187 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %call.i895, ptr %arrayidx369, align 4
  %call.i896 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.71, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr296, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %188 = load ptr, ptr @hws, align 4
  %arrayidx372 = getelementptr ptr, ptr %188, i32 97
  %189 = ptrtoint ptr %arrayidx372 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call.i896, ptr %arrayidx372, align 4
  %call.i897 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.97, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr296, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %190 = load ptr, ptr @hws, align 4
  %arrayidx375 = getelementptr ptr, ptr %190, i32 98
  %191 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call.i897, ptr %arrayidx375, align 4
  %call.i898 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.72, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr296, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %192 = load ptr, ptr @hws, align 4
  %arrayidx378 = getelementptr ptr, ptr %192, i32 170
  %193 = ptrtoint ptr %arrayidx378 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %call.i898, ptr %arrayidx378, align 4
  %call.i899 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.99, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr296, i8 noundef zeroext 9, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %194 = load ptr, ptr @hws, align 4
  %arrayidx381 = getelementptr ptr, ptr %194, i32 171
  %195 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call.i899, ptr %arrayidx381, align 4
  %call.i900 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.73, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr302, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %196 = load ptr, ptr @hws, align 4
  %arrayidx384 = getelementptr ptr, ptr %196, i32 96
  %197 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call.i900, ptr %arrayidx384, align 4
  %call.i901 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr308, i8 noundef zeroext 19, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %198 = load ptr, ptr @hws, align 4
  %arrayidx387 = getelementptr ptr, ptr %198, i32 99
  %199 = ptrtoint ptr %arrayidx387 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call.i901, ptr %arrayidx387, align 4
  %call.i902 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.76, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr308, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %200 = load ptr, ptr @hws, align 4
  %arrayidx390 = getelementptr ptr, ptr %200, i32 93
  %201 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %call.i902, ptr %arrayidx390, align 4
  %add.ptr391 = getelementptr i8, ptr %call214, i32 16
  %call393 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.56, ptr noundef %add.ptr391, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef %add.ptr318, i8 noundef zeroext 16) #3
  %202 = load ptr, ptr @hws, align 4
  %arrayidx394 = getelementptr ptr, ptr %202, i32 73
  %203 = ptrtoint ptr %arrayidx394 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %call393, ptr %arrayidx394, align 4
  %call397 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.79, ptr noundef %add.ptr254, i8 noundef zeroext 3, i8 noundef zeroext 3, ptr noundef %add.ptr318, i8 noundef zeroext 2) #3
  %204 = load ptr, ptr @hws, align 4
  %arrayidx398 = getelementptr ptr, ptr %204, i32 78
  %205 = ptrtoint ptr %arrayidx398 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %call397, ptr %arrayidx398, align 4
  %call401 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.58, ptr noundef %add.ptr254, i8 noundef zeroext 16, i8 noundef zeroext 3, ptr noundef %add.ptr318, i8 noundef zeroext 0) #3
  %206 = load ptr, ptr @hws, align 4
  %arrayidx402 = getelementptr ptr, ptr %206, i32 79
  %207 = ptrtoint ptr %arrayidx402 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call401, ptr %arrayidx402, align 4
  %call405 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.78, ptr noundef %add.ptr254, i8 noundef zeroext 10, i8 noundef zeroext 3, ptr noundef %add.ptr318, i8 noundef zeroext 1) #3
  %208 = load ptr, ptr @hws, align 4
  %arrayidx406 = getelementptr ptr, ptr %208, i32 80
  %209 = ptrtoint ptr %arrayidx406 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %call405, ptr %arrayidx406, align 4
  %call.i903 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107, i32 noundef 4, i32 noundef 2, i32 noundef 7) #3
  %210 = load ptr, ptr @hws, align 4
  %arrayidx408 = getelementptr ptr, ptr %210, i32 160
  %211 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %call.i903, ptr %arrayidx408, align 4
  %call.i904 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i32 noundef 4, i32 noundef 1, i32 noundef 7) #3
  %212 = load ptr, ptr @hws, align 4
  %arrayidx410 = getelementptr ptr, ptr %212, i32 161
  %213 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call.i904, ptr %arrayidx410, align 4
  %call.i905 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110, i32 noundef 4, i32 noundef 2, i32 noundef 7) #3
  %214 = load ptr, ptr @hws, align 4
  %arrayidx412 = getelementptr ptr, ptr %214, i32 165
  %215 = ptrtoint ptr %arrayidx412 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %call.i905, ptr %arrayidx412, align 4
  %call.i906 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.110, i32 noundef 4, i32 noundef 1, i32 noundef 7) #3
  %216 = load ptr, ptr @hws, align 4
  %arrayidx414 = getelementptr ptr, ptr %216, i32 166
  %217 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %call.i906, ptr %arrayidx414, align 4
  %call.i907 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.107, i8 noundef zeroext 6, ptr noundef nonnull @ldb_di0_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr364, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %218 = load ptr, ptr @hws, align 4
  %arrayidx417 = getelementptr ptr, ptr %218, i32 159
  %219 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %call.i907, ptr %arrayidx417, align 4
  %call.i908 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.110, i8 noundef zeroext 6, ptr noundef nonnull @ldb_di1_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr272, i8 noundef zeroext 7, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %220 = load ptr, ptr @hws, align 4
  %arrayidx420 = getelementptr ptr, ptr %220, i32 164
  %221 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call.i908, ptr %arrayidx420, align 4
  %add.ptr421 = getelementptr i8, ptr %call214, i32 32
  %call.i909 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.112, i8 noundef zeroext 2, ptr noundef nonnull @ldb_di0_div_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr421, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %222 = load ptr, ptr @hws, align 4
  %arrayidx423 = getelementptr ptr, ptr %222, i32 162
  %223 = ptrtoint ptr %arrayidx423 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %call.i909, ptr %arrayidx423, align 4
  %call.i910 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.113, i8 noundef zeroext 2, ptr noundef nonnull @ldb_di1_div_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr421, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %224 = load ptr, ptr @hws, align 4
  %arrayidx426 = getelementptr ptr, ptr %224, i32 167
  %225 = ptrtoint ptr %arrayidx426 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %call.i910, ptr %arrayidx426, align 4
  %add.ptr427 = getelementptr i8, ptr %call214, i32 104
  %call.i911 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.83, i32 noundef 2052, ptr noundef %add.ptr427, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %226 = load ptr, ptr @hws, align 4
  %arrayidx429 = getelementptr ptr, ptr %226, i32 101
  %227 = ptrtoint ptr %arrayidx429 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %call.i911, ptr %arrayidx429, align 4
  %call.i912 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.83, i32 noundef 2052, ptr noundef %add.ptr427, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %228 = load ptr, ptr @hws, align 4
  %arrayidx432 = getelementptr ptr, ptr %228, i32 102
  %229 = ptrtoint ptr %arrayidx432 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %call.i912, ptr %arrayidx432, align 4
  %call.i913 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.83, i32 noundef 4, ptr noundef %add.ptr427, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %230 = load ptr, ptr @hws, align 4
  %arrayidx435 = getelementptr ptr, ptr %230, i32 103
  %231 = ptrtoint ptr %arrayidx435 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call.i913, ptr %arrayidx435, align 4
  %call.i914 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr427, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %232 = load ptr, ptr @hws, align 4
  %arrayidx438 = getelementptr ptr, ptr %232, i32 104
  %233 = ptrtoint ptr %arrayidx438 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %call.i914, ptr %arrayidx438, align 4
  %call.i915 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.90, i32 noundef 4, ptr noundef %add.ptr427, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %234 = load ptr, ptr @hws, align 4
  %arrayidx441 = getelementptr ptr, ptr %234, i32 105
  %235 = ptrtoint ptr %arrayidx441 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %call.i915, ptr %arrayidx441, align 4
  %call.i916 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr427, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %236 = load ptr, ptr @hws, align 4
  %arrayidx444 = getelementptr ptr, ptr %236, i32 174
  %237 = ptrtoint ptr %arrayidx444 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %call.i916, ptr %arrayidx444, align 4
  %add.ptr445 = getelementptr i8, ptr %call214, i32 108
  %call.i917 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.102, i32 noundef 4, ptr noundef %add.ptr445, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %238 = load ptr, ptr @hws, align 4
  %arrayidx447 = getelementptr ptr, ptr %238, i32 106
  %239 = ptrtoint ptr %arrayidx447 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %call.i917, ptr %arrayidx447, align 4
  %call.i918 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.102, i32 noundef 4, ptr noundef %add.ptr445, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %240 = load ptr, ptr @hws, align 4
  %arrayidx450 = getelementptr ptr, ptr %240, i32 107
  %241 = ptrtoint ptr %arrayidx450 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %call.i918, ptr %arrayidx450, align 4
  %call.i919 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.102, i32 noundef 4, ptr noundef %add.ptr445, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %242 = load ptr, ptr @hws, align 4
  %arrayidx453 = getelementptr ptr, ptr %242, i32 108
  %243 = ptrtoint ptr %arrayidx453 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %call.i919, ptr %arrayidx453, align 4
  %call.i920 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.102, i32 noundef 4, ptr noundef %add.ptr445, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %244 = load ptr, ptr @hws, align 4
  %arrayidx456 = getelementptr ptr, ptr %244, i32 109
  %245 = ptrtoint ptr %arrayidx456 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %call.i920, ptr %arrayidx456, align 4
  %call.i921 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr445, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %246 = load ptr, ptr @hws, align 4
  %arrayidx459 = getelementptr ptr, ptr %246, i32 110
  %247 = ptrtoint ptr %arrayidx459 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %call.i921, ptr %arrayidx459, align 4
  %call.i922 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.90, i32 noundef 4, ptr noundef %add.ptr445, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %248 = load ptr, ptr @hws, align 4
  %arrayidx462 = getelementptr ptr, ptr %248, i32 111
  %249 = ptrtoint ptr %arrayidx462 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %call.i922, ptr %arrayidx462, align 4
  %call.i923 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %add.ptr445, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %250 = load ptr, ptr @hws, align 4
  %arrayidx465 = getelementptr ptr, ptr %250, i32 114
  %251 = ptrtoint ptr %arrayidx465 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %call.i923, ptr %arrayidx465, align 4
  %call.i924 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %add.ptr445, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %252 = load ptr, ptr @hws, align 4
  %arrayidx468 = getelementptr ptr, ptr %252, i32 115
  %253 = ptrtoint ptr %arrayidx468 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %call.i924, ptr %arrayidx468, align 4
  %call.i925 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %add.ptr445, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %254 = load ptr, ptr @hws, align 4
  %arrayidx471 = getelementptr ptr, ptr %254, i32 116
  %255 = ptrtoint ptr %arrayidx471 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %call.i925, ptr %arrayidx471, align 4
  %call.i926 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %add.ptr445, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %256 = load ptr, ptr @hws, align 4
  %arrayidx474 = getelementptr ptr, ptr %256, i32 117
  %257 = ptrtoint ptr %arrayidx474 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %call.i926, ptr %arrayidx474, align 4
  %call.i927 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr445, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %258 = load ptr, ptr @hws, align 4
  %arrayidx477 = getelementptr ptr, ptr %258, i32 112
  %259 = ptrtoint ptr %arrayidx477 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %call.i927, ptr %arrayidx477, align 4
  %call.i928 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.90, i32 noundef 4, ptr noundef %add.ptr445, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %260 = load ptr, ptr @hws, align 4
  %arrayidx480 = getelementptr ptr, ptr %260, i32 113
  %261 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %call.i928, ptr %arrayidx480, align 4
  %call.i929 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr445, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %262 = load ptr, ptr @hws, align 4
  %arrayidx483 = getelementptr ptr, ptr %262, i32 173
  %263 = ptrtoint ptr %arrayidx483 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %call.i929, ptr %arrayidx483, align 4
  %call.i930 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr445, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %264 = load ptr, ptr @hws, align 4
  %arrayidx486 = getelementptr ptr, ptr %264, i32 177
  %265 = ptrtoint ptr %arrayidx486 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %call.i930, ptr %arrayidx486, align 4
  %add.ptr487 = getelementptr i8, ptr %call214, i32 112
  %call.i931 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr487, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %266 = load ptr, ptr @hws, align 4
  %arrayidx489 = getelementptr ptr, ptr %266, i32 178
  %267 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %call.i931, ptr %arrayidx489, align 4
  %call.i932 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %add.ptr487, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %268 = load ptr, ptr @hws, align 4
  %arrayidx492 = getelementptr ptr, ptr %268, i32 118
  %269 = ptrtoint ptr %arrayidx492 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %call.i932, ptr %arrayidx492, align 4
  %call.i933 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %add.ptr487, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %270 = load ptr, ptr @hws, align 4
  %arrayidx495 = getelementptr ptr, ptr %270, i32 119
  %271 = ptrtoint ptr %arrayidx495 to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %call.i933, ptr %arrayidx495, align 4
  %call.i934 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %add.ptr487, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %272 = load ptr, ptr @hws, align 4
  %arrayidx498 = getelementptr ptr, ptr %272, i32 120
  %273 = ptrtoint ptr %arrayidx498 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %call.i934, ptr %arrayidx498, align 4
  %call.i935 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %add.ptr487, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %274 = load ptr, ptr @hws, align 4
  %arrayidx501 = getelementptr ptr, ptr %274, i32 121
  %275 = ptrtoint ptr %arrayidx501 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %call.i935, ptr %arrayidx501, align 4
  %call.i936 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr487, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %276 = load ptr, ptr @hws, align 4
  %arrayidx504 = getelementptr ptr, ptr %276, i32 122
  %277 = ptrtoint ptr %arrayidx504 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %call.i936, ptr %arrayidx504, align 4
  %call.i937 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr487, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %278 = load ptr, ptr @hws, align 4
  %arrayidx507 = getelementptr ptr, ptr %278, i32 175
  %279 = ptrtoint ptr %arrayidx507 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %call.i937, ptr %arrayidx507, align 4
  %call.i938 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %add.ptr487, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %280 = load ptr, ptr @hws, align 4
  %arrayidx510 = getelementptr ptr, ptr %280, i32 123
  %281 = ptrtoint ptr %arrayidx510 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %call.i938, ptr %arrayidx510, align 4
  %call.i939 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %add.ptr487, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %282 = load ptr, ptr @hws, align 4
  %arrayidx513 = getelementptr ptr, ptr %282, i32 124
  %283 = ptrtoint ptr %arrayidx513 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %call.i939, ptr %arrayidx513, align 4
  %add.ptr514 = getelementptr i8, ptr %call214, i32 116
  %call.i940 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr514, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %284 = load ptr, ptr @hws, align 4
  %arrayidx516 = getelementptr ptr, ptr %284, i32 125
  %285 = ptrtoint ptr %arrayidx516 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %call.i940, ptr %arrayidx516, align 4
  %call.i941 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.90, i32 noundef 4, ptr noundef %add.ptr514, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %286 = load ptr, ptr @hws, align 4
  %arrayidx519 = getelementptr ptr, ptr %286, i32 126
  %287 = ptrtoint ptr %arrayidx519 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %call.i941, ptr %arrayidx519, align 4
  %call.i942 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %add.ptr514, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %288 = load ptr, ptr @hws, align 4
  %arrayidx522 = getelementptr ptr, ptr %288, i32 127
  %289 = ptrtoint ptr %arrayidx522 to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %call.i942, ptr %arrayidx522, align 4
  %call.i943 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.101, i32 noundef 4, ptr noundef %add.ptr514, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %290 = load ptr, ptr @hws, align 4
  %arrayidx525 = getelementptr ptr, ptr %290, i32 128
  %291 = ptrtoint ptr %arrayidx525 to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %call.i943, ptr %arrayidx525, align 4
  %call.i944 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.84, i32 noundef 4, ptr noundef %add.ptr514, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %292 = load ptr, ptr @hws, align 4
  %arrayidx528 = getelementptr ptr, ptr %292, i32 129
  %293 = ptrtoint ptr %arrayidx528 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %call.i944, ptr %arrayidx528, align 4
  %call.i945 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr514, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %294 = load ptr, ptr @hws, align 4
  %arrayidx531 = getelementptr ptr, ptr %294, i32 176
  %295 = ptrtoint ptr %arrayidx531 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %call.i945, ptr %arrayidx531, align 4
  %call.i946 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr514, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %296 = load ptr, ptr @hws, align 4
  %arrayidx534 = getelementptr ptr, ptr %296, i32 130
  %297 = ptrtoint ptr %arrayidx534 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %call.i946, ptr %arrayidx534, align 4
  %call.i947 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.104, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %add.ptr514, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %298 = load ptr, ptr @hws, align 4
  %arrayidx537 = getelementptr ptr, ptr %298, i32 131
  %299 = ptrtoint ptr %arrayidx537 to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %call.i947, ptr %arrayidx537, align 4
  %call.i948 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.82, i32 noundef 2052, ptr noundef %add.ptr514, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %300 = load ptr, ptr @hws, align 4
  %arrayidx540 = getelementptr ptr, ptr %300, i32 132
  %301 = ptrtoint ptr %arrayidx540 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %call.i948, ptr %arrayidx540, align 4
  %call.i949 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.82, i32 noundef 2052, ptr noundef %add.ptr514, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %302 = load ptr, ptr @hws, align 4
  %arrayidx543 = getelementptr ptr, ptr %302, i32 179
  %303 = ptrtoint ptr %arrayidx543 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %call.i949, ptr %arrayidx543, align 4
  %call.i950 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.83, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %add.ptr514, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %304 = load ptr, ptr @hws, align 4
  %arrayidx546 = getelementptr ptr, ptr %304, i32 133
  %305 = ptrtoint ptr %arrayidx546 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %call.i950, ptr %arrayidx546, align 4
  %add.ptr547 = getelementptr i8, ptr %call214, i32 120
  %call.i951 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %add.ptr547, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %306 = load ptr, ptr @hws, align 4
  %arrayidx549 = getelementptr ptr, ptr %306, i32 134
  %307 = ptrtoint ptr %arrayidx549 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %call.i951, ptr %arrayidx549, align 4
  %call.i952 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %add.ptr547, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %308 = load ptr, ptr @hws, align 4
  %arrayidx552 = getelementptr ptr, ptr %308, i32 135
  %309 = ptrtoint ptr %arrayidx552 to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %call.i952, ptr %arrayidx552, align 4
  %call.i953 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %add.ptr547, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %310 = load ptr, ptr @hws, align 4
  %arrayidx555 = getelementptr ptr, ptr %310, i32 136
  %311 = ptrtoint ptr %arrayidx555 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %call.i953, ptr %arrayidx555, align 4
  %call.i954 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %add.ptr547, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %312 = load ptr, ptr @hws, align 4
  %arrayidx558 = getelementptr ptr, ptr %312, i32 137
  %313 = ptrtoint ptr %arrayidx558 to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %call.i954, ptr %arrayidx558, align 4
  %add.ptr559 = getelementptr i8, ptr %call214, i32 124
  %call.i955 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.83, i32 noundef 2052, ptr noundef %add.ptr559, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %314 = load ptr, ptr @hws, align 4
  %arrayidx561 = getelementptr ptr, ptr %314, i32 138
  %315 = ptrtoint ptr %arrayidx561 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %call.i955, ptr %arrayidx561, align 4
  %call.i956 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.83, i32 noundef 4, ptr noundef %add.ptr559, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %316 = load ptr, ptr @hws, align 4
  %arrayidx564 = getelementptr ptr, ptr %316, i32 139
  %317 = ptrtoint ptr %arrayidx564 to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr %call.i956, ptr %arrayidx564, align 4
  %call.i957 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr559, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %318 = load ptr, ptr @hws, align 4
  %arrayidx567 = getelementptr ptr, ptr %318, i32 141
  %319 = ptrtoint ptr %arrayidx567 to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %call.i957, ptr %arrayidx567, align 4
  %call.i958 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr559, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %320 = load ptr, ptr @hws, align 4
  %arrayidx570 = getelementptr ptr, ptr %320, i32 142
  %321 = ptrtoint ptr %arrayidx570 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %call.i958, ptr %arrayidx570, align 4
  %call.i959 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.100, i32 noundef 4, ptr noundef %add.ptr559, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_audio) #3
  %322 = load ptr, ptr @hws, align 4
  %arrayidx573 = getelementptr ptr, ptr %322, i32 172
  %323 = ptrtoint ptr %arrayidx573 to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %call.i959, ptr %arrayidx573, align 4
  %call.i960 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.98, i32 noundef 4, ptr noundef %add.ptr559, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_audio) #3
  %324 = load ptr, ptr @hws, align 4
  %arrayidx576 = getelementptr ptr, ptr %324, i32 143
  %325 = ptrtoint ptr %arrayidx576 to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %call.i960, ptr %arrayidx576, align 4
  %call.i961 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr559, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_audio) #3
  %326 = load ptr, ptr @hws, align 4
  %arrayidx579 = getelementptr ptr, ptr %326, i32 144
  %327 = ptrtoint ptr %arrayidx579 to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %call.i961, ptr %arrayidx579, align 4
  %call.i962 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.94, i32 noundef 4, ptr noundef %add.ptr559, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi1) #3
  %328 = load ptr, ptr @hws, align 4
  %arrayidx582 = getelementptr ptr, ptr %328, i32 145
  %329 = ptrtoint ptr %arrayidx582 to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %call.i962, ptr %arrayidx582, align 4
  %call.i963 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr559, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi1) #3
  %330 = load ptr, ptr @hws, align 4
  %arrayidx585 = getelementptr ptr, ptr %330, i32 146
  %331 = ptrtoint ptr %arrayidx585 to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %call.i963, ptr %arrayidx585, align 4
  %call.i964 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.96, i32 noundef 4, ptr noundef %add.ptr559, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi2) #3
  %332 = load ptr, ptr @hws, align 4
  %arrayidx588 = getelementptr ptr, ptr %332, i32 147
  %333 = ptrtoint ptr %arrayidx588 to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %call.i964, ptr %arrayidx588, align 4
  %call.i965 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr559, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi2) #3
  %334 = load ptr, ptr @hws, align 4
  %arrayidx591 = getelementptr ptr, ptr %334, i32 148
  %335 = ptrtoint ptr %arrayidx591 to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %call.i965, ptr %arrayidx591, align 4
  %call.i966 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.92, i32 noundef 4, ptr noundef %add.ptr559, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi3) #3
  %336 = load ptr, ptr @hws, align 4
  %arrayidx594 = getelementptr ptr, ptr %336, i32 149
  %337 = ptrtoint ptr %arrayidx594 to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %call.i966, ptr %arrayidx594, align 4
  %call.i967 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr559, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi3) #3
  %338 = load ptr, ptr @hws, align 4
  %arrayidx597 = getelementptr ptr, ptr %338, i32 150
  %339 = ptrtoint ptr %arrayidx597 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %call.i967, ptr %arrayidx597, align 4
  %call.i968 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr559, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %340 = load ptr, ptr @hws, align 4
  %arrayidx600 = getelementptr ptr, ptr %340, i32 151
  %341 = ptrtoint ptr %arrayidx600 to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %call.i968, ptr %arrayidx600, align 4
  %call.i969 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.90, i32 noundef 4, ptr noundef %add.ptr559, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %342 = load ptr, ptr @hws, align 4
  %arrayidx603 = getelementptr ptr, ptr %342, i32 152
  %343 = ptrtoint ptr %arrayidx603 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %call.i969, ptr %arrayidx603, align 4
  %add.ptr604 = getelementptr i8, ptr %call214, i32 128
  %call.i970 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %add.ptr604, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %344 = load ptr, ptr @hws, align 4
  %arrayidx606 = getelementptr ptr, ptr %344, i32 153
  %345 = ptrtoint ptr %arrayidx606 to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %call.i970, ptr %arrayidx606, align 4
  %call.i971 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.89, i32 noundef 4, ptr noundef %add.ptr604, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %346 = load ptr, ptr @hws, align 4
  %arrayidx609 = getelementptr ptr, ptr %346, i32 154
  %347 = ptrtoint ptr %arrayidx609 to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %call.i971, ptr %arrayidx609, align 4
  %call.i972 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.88, i32 noundef 4, ptr noundef %add.ptr604, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %348 = load ptr, ptr @hws, align 4
  %arrayidx612 = getelementptr ptr, ptr %348, i32 155
  %349 = ptrtoint ptr %arrayidx612 to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %call.i972, ptr %arrayidx612, align 4
  %call.i973 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.87, i32 noundef 4, ptr noundef %add.ptr604, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %350 = load ptr, ptr @hws, align 4
  %arrayidx615 = getelementptr ptr, ptr %350, i32 156
  %351 = ptrtoint ptr %arrayidx615 to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %call.i973, ptr %arrayidx615, align 4
  tail call void @imx_mmdc_mask_handshake(ptr noundef %call214, i32 noundef 0) #3
  %352 = load ptr, ptr @hws, align 4
  tail call void @imx_check_clk_hws(ptr noundef %352, i32 noundef 180) #3
  %353 = load ptr, ptr @clk_hw_data, align 4
  %call616 = tail call i32 @of_clk_add_hw_provider(ptr noundef %ccm_node, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %353) #3
  tail call void @imx_register_uart_clocks(i32 noundef 5) #3
  %354 = load ptr, ptr @hws, align 4
  %arrayidx617 = getelementptr ptr, ptr %354, i32 80
  %355 = ptrtoint ptr %arrayidx617 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %arrayidx617, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %356, i32 0, i32 1
  %357 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %clk, align 4
  %call618 = tail call i32 @clk_set_rate(ptr noundef %358, i32 noundef 99000000) #3
  %359 = load ptr, ptr @hws, align 4
  %arrayidx619 = getelementptr ptr, ptr %359, i32 57
  %360 = ptrtoint ptr %arrayidx619 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %arrayidx619, align 4
  %clk620 = getelementptr inbounds %struct.clk_hw, ptr %361, i32 0, i32 1
  %362 = ptrtoint ptr %clk620 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %clk620, align 4
  %arrayidx621 = getelementptr ptr, ptr %359, i32 26
  %364 = ptrtoint ptr %arrayidx621 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %arrayidx621, align 4
  %clk622 = getelementptr inbounds %struct.clk_hw, ptr %365, i32 0, i32 1
  %366 = ptrtoint ptr %clk622 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %clk622, align 4
  %call623 = tail call i32 @clk_set_parent(ptr noundef %363, ptr noundef %367) #3
  %368 = load ptr, ptr @hws, align 4
  %arrayidx624 = getelementptr ptr, ptr %368, i32 74
  %369 = ptrtoint ptr %arrayidx624 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %arrayidx624, align 4
  %clk625 = getelementptr inbounds %struct.clk_hw, ptr %370, i32 0, i32 1
  %371 = ptrtoint ptr %clk625 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %clk625, align 4
  %arrayidx626 = getelementptr ptr, ptr %368, i32 77
  %373 = ptrtoint ptr %arrayidx626 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %arrayidx626, align 4
  %clk627 = getelementptr inbounds %struct.clk_hw, ptr %374, i32 0, i32 1
  %375 = ptrtoint ptr %clk627 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %clk627, align 4
  %call628 = tail call i32 @clk_set_parent(ptr noundef %372, ptr noundef %376) #3
  %377 = load ptr, ptr @hws, align 4
  %arrayidx629 = getelementptr ptr, ptr %377, i32 55
  %378 = ptrtoint ptr %arrayidx629 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %arrayidx629, align 4
  %clk630 = getelementptr inbounds %struct.clk_hw, ptr %379, i32 0, i32 1
  %380 = ptrtoint ptr %clk630 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %clk630, align 4
  %arrayidx631 = getelementptr ptr, ptr %377, i32 25
  %382 = ptrtoint ptr %arrayidx631 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %arrayidx631, align 4
  %clk632 = getelementptr inbounds %struct.clk_hw, ptr %383, i32 0, i32 1
  %384 = ptrtoint ptr %clk632 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %clk632, align 4
  %call633 = tail call i32 @clk_set_parent(ptr noundef %381, ptr noundef %385) #3
  %386 = load ptr, ptr @hws, align 4
  %arrayidx634 = getelementptr ptr, ptr %386, i32 74
  %387 = ptrtoint ptr %arrayidx634 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %arrayidx634, align 4
  %clk635 = getelementptr inbounds %struct.clk_hw, ptr %388, i32 0, i32 1
  %389 = ptrtoint ptr %clk635 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %clk635, align 4
  %arrayidx636 = getelementptr ptr, ptr %386, i32 55
  %391 = ptrtoint ptr %arrayidx636 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %arrayidx636, align 4
  %clk637 = getelementptr inbounds %struct.clk_hw, ptr %392, i32 0, i32 1
  %393 = ptrtoint ptr %clk637 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %clk637, align 4
  %call638 = tail call i32 @clk_set_parent(ptr noundef %390, ptr noundef %394) #3
  %395 = load ptr, ptr @hws, align 4
  %arrayidx639 = getelementptr ptr, ptr %395, i32 80
  %396 = ptrtoint ptr %arrayidx639 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %arrayidx639, align 4
  %clk640 = getelementptr inbounds %struct.clk_hw, ptr %397, i32 0, i32 1
  %398 = ptrtoint ptr %clk640 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %clk640, align 4
  %call641 = tail call i32 @clk_set_rate(ptr noundef %399, i32 noundef 132000000) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end240, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @imx_register_uart_clocks(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local ptr @clk_hw_register_gate2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 219)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 219)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !169, !171, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436}
!llvm.module.flags = !{!438, !439, !440, !441, !442, !443, !444, !445}
!llvm.ident = !{!446}

!0 = !{ptr @__of_table_imx6sll, !1, !"__of_table_imx6sll", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 356, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 86, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 92, i32 44}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 94, i32 60}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 95, i32 59}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 98, i32 63}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 99, i32 63}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 101, i32 43}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 115, i32 33}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 116, i32 33}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 117, i32 33}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 118, i32 33}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 119, i32 33}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 120, i32 33}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 121, i32 33}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 123, i32 59}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 124, i32 62}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 125, i32 59}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 126, i32 58}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 127, i32 58}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 128, i32 60}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 129, i32 59}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 131, i32 29}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 132, i32 29}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 133, i32 29}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 134, i32 29}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 135, i32 29}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 136, i32 29}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 137, i32 29}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 139, i32 54}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 140, i32 30}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 141, i32 34}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 142, i32 32}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 143, i32 32}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 144, i32 31}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 145, i32 35}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 153, i32 29}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 154, i32 29}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 161, i32 35}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 162, i32 35}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 166, i32 46}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 167, i32 46}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 168, i32 46}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 169, i32 46}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 170, i32 46}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 171, i32 46}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 172, i32 46}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 173, i32 46}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 175, i32 36}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 177, i32 36}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 179, i32 36}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 181, i32 36}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 185, i32 55}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 186, i32 55}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 187, i32 55}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 188, i32 55}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 194, i32 29}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 195, i32 31}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 196, i32 35}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 197, i32 31}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 198, i32 34}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 199, i32 35}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 200, i32 38}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 201, i32 38}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 202, i32 34}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 203, i32 34}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 204, i32 34}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 205, i32 32}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 206, i32 32}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 207, i32 32}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 208, i32 34}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 209, i32 32}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 210, i32 33}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 211, i32 38}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 212, i32 36}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 213, i32 32}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 214, i32 33}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 215, i32 37}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 216, i32 33}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 218, i32 49}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 219, i32 49}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 221, i32 33}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 222, i32 34}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 223, i32 26}
!168 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 224, i32 32}
!171 = !{ptr @.str.85, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 225, i32 28}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 226, i32 35}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 227, i32 33}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 228, i32 33}
!180 = !{ptr @.str.90, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 229, i32 31}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 230, i32 31}
!184 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 231, i32 31}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 232, i32 31}
!188 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 233, i32 31}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 234, i32 31}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 235, i32 31}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 236, i32 32}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 237, i32 32}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 238, i32 39}
!200 = !{ptr @.str.100, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 239, i32 39}
!202 = !{ptr @.str.101, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 240, i32 32}
!204 = !{ptr @.str.102, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 241, i32 32}
!206 = !{ptr @.str.103, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 244, i32 50}
!208 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 245, i32 55}
!210 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 246, i32 54}
!212 = !{ptr @.str.106, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 249, i32 61}
!214 = !{ptr @.str.107, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 249, i32 80}
!216 = !{ptr @.str.108, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 250, i32 61}
!218 = !{ptr @.str.109, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 251, i32 61}
!220 = !{ptr @.str.110, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 251, i32 80}
!222 = !{ptr @.str.111, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 252, i32 61}
!224 = !{ptr @.str.112, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 256, i32 37}
!226 = !{ptr @.str.113, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 257, i32 37}
!228 = !{ptr @.str.114, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 260, i32 29}
!230 = !{ptr @.str.115, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 261, i32 29}
!232 = !{ptr @.str.116, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 262, i32 26}
!234 = !{ptr @.str.117, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 263, i32 31}
!236 = !{ptr @.str.118, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 264, i32 34}
!238 = !{ptr @.str.119, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 265, i32 28}
!240 = !{ptr @.str.120, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 268, i32 28}
!242 = !{ptr @.str.121, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 269, i32 28}
!244 = !{ptr @.str.122, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 270, i32 28}
!246 = !{ptr @.str.123, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 271, i32 28}
!248 = !{ptr @.str.124, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 272, i32 31}
!250 = !{ptr @.str.125, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 273, i32 34}
!252 = !{ptr @.str.126, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 274, i32 28}
!254 = !{ptr @.str.127, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 275, i32 28}
!256 = !{ptr @.str.128, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 276, i32 29}
!258 = !{ptr @.str.129, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 277, i32 32}
!260 = !{ptr @.str.130, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 278, i32 31}
!262 = !{ptr @.str.131, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 279, i32 34}
!264 = !{ptr @.str.132, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 280, i32 28}
!266 = !{ptr @.str.133, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 281, i32 28}
!268 = !{ptr @.str.134, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 284, i32 28}
!270 = !{ptr @.str.135, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 285, i32 26}
!272 = !{ptr @.str.136, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 286, i32 27}
!274 = !{ptr @.str.137, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 287, i32 27}
!276 = !{ptr @.str.138, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 288, i32 27}
!278 = !{ptr @.str.139, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 289, i32 28}
!280 = !{ptr @.str.140, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 290, i32 28}
!282 = !{ptr @.str.141, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 291, i32 31}
!284 = !{ptr @.str.142, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 292, i32 26}
!286 = !{ptr @.str.143, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 295, i32 31}
!288 = !{ptr @.str.144, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 296, i32 34}
!290 = !{ptr @.str.145, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 297, i32 30}
!292 = !{ptr @.str.146, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 298, i32 30}
!294 = !{ptr @.str.147, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 299, i32 31}
!296 = !{ptr @.str.148, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 300, i32 28}
!298 = !{ptr @.str.149, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 301, i32 28}
!300 = !{ptr @.str.150, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 302, i32 34}
!302 = !{ptr @.str.151, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 303, i32 33}
!304 = !{ptr @.str.152, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 304, i32 33}
!306 = !{ptr @.str.153, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 305, i32 28}
!308 = !{ptr @.str.154, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 308, i32 27}
!310 = !{ptr @.str.155, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 309, i32 27}
!312 = !{ptr @.str.156, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 310, i32 27}
!314 = !{ptr @.str.157, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 311, i32 27}
!316 = !{ptr @.str.158, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 314, i32 26}
!318 = !{ptr @.str.159, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 315, i32 27}
!320 = !{ptr @.str.160, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 316, i32 28}
!322 = !{ptr @.str.161, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 317, i32 27}
!324 = !{ptr @.str.162, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 318, i32 34}
!326 = !{ptr @.str.163, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 319, i32 28}
!328 = !{ptr @.str.164, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 320, i32 32}
!330 = !{ptr @.str.165, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 321, i32 27}
!332 = !{ptr @.str.166, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 322, i32 30}
!334 = !{ptr @.str.167, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 323, i32 27}
!336 = !{ptr @.str.168, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 324, i32 30}
!338 = !{ptr @.str.169, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 325, i32 27}
!340 = !{ptr @.str.170, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 326, i32 30}
!342 = !{ptr @.str.171, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 327, i32 31}
!344 = !{ptr @.str.172, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 328, i32 34}
!346 = !{ptr @.str.173, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 331, i32 28}
!348 = !{ptr @.str.174, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 332, i32 28}
!350 = !{ptr @.str.175, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 333, i32 28}
!352 = !{ptr @.str.176, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 334, i32 28}
!354 = !{ptr @clk_hw_data, !355, !"clk_hw_data", i1 false, i1 false}
!355 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 57, i32 36}
!356 = !{ptr @hws, !357, !"hws", i1 false, i1 false}
!357 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 56, i32 24}
!358 = !{ptr @pll_bypass_src_sels, !359, !"pll_bypass_src_sels", i1 false, i1 false}
!359 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 22, i32 20}
!360 = !{ptr @pll1_bypass_sels, !361, !"pll1_bypass_sels", i1 false, i1 false}
!361 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 23, i32 20}
!362 = !{ptr @pll2_bypass_sels, !363, !"pll2_bypass_sels", i1 false, i1 false}
!363 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 24, i32 20}
!364 = !{ptr @pll3_bypass_sels, !365, !"pll3_bypass_sels", i1 false, i1 false}
!365 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 25, i32 20}
!366 = !{ptr @pll4_bypass_sels, !367, !"pll4_bypass_sels", i1 false, i1 false}
!367 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 26, i32 20}
!368 = !{ptr @pll5_bypass_sels, !369, !"pll5_bypass_sels", i1 false, i1 false}
!369 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 27, i32 20}
!370 = !{ptr @pll6_bypass_sels, !371, !"pll6_bypass_sels", i1 false, i1 false}
!371 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 28, i32 20}
!372 = !{ptr @pll7_bypass_sels, !373, !"pll7_bypass_sels", i1 false, i1 false}
!373 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 29, i32 20}
!374 = !{ptr @post_div_table, !375, !"post_div_table", i1 false, i1 false}
!375 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 59, i32 35}
!376 = !{ptr @video_div_table, !377, !"video_div_table", i1 false, i1 false}
!377 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 66, i32 35}
!378 = !{ptr @step_sels, !379, !"step_sels", i1 false, i1 false}
!379 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 30, i32 20}
!380 = !{ptr @pll1_sw_sels, !381, !"pll1_sw_sels", i1 false, i1 false}
!381 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 31, i32 20}
!382 = !{ptr @axi_alt_sels, !383, !"axi_alt_sels", i1 false, i1 false}
!383 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 32, i32 20}
!384 = !{ptr @axi_sels, !385, !"axi_sels", i1 false, i1 false}
!385 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 33, i32 20}
!386 = !{ptr @periph_pre_sels, !387, !"periph_pre_sels", i1 false, i1 false}
!387 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 34, i32 20}
!388 = !{ptr @periph2_pre_sels, !389, !"periph2_pre_sels", i1 false, i1 false}
!389 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 35, i32 20}
!390 = !{ptr @periph_clk2_sels, !391, !"periph_clk2_sels", i1 false, i1 false}
!391 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 36, i32 20}
!392 = !{ptr @periph2_clk2_sels, !393, !"periph2_clk2_sels", i1 false, i1 false}
!393 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 37, i32 20}
!394 = !{ptr @usdhc_sels, !395, !"usdhc_sels", i1 false, i1 false}
!395 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 40, i32 20}
!396 = !{ptr @ssi_sels, !397, !"ssi_sels", i1 false, i1 false}
!397 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 41, i32 20}
!398 = !{ptr @perclk_sels, !399, !"perclk_sels", i1 false, i1 false}
!399 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 50, i32 20}
!400 = !{ptr @uart_sels, !401, !"uart_sels", i1 false, i1 false}
!401 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 49, i32 20}
!402 = !{ptr @spdif_sels, !403, !"spdif_sels", i1 false, i1 false}
!403 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 42, i32 20}
!404 = !{ptr @epdc_pre_sels, !405, !"epdc_pre_sels", i1 false, i1 false}
!405 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 53, i32 20}
!406 = !{ptr @.str.177, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 54, i32 71}
!408 = !{ptr @.str.178, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 54, i32 82}
!410 = !{ptr @epdc_sels, !411, !"epdc_sels", i1 false, i1 false}
!411 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 54, i32 20}
!412 = !{ptr @ecspi_sels, !413, !"ecspi_sels", i1 false, i1 false}
!413 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 48, i32 20}
!414 = !{ptr @lcdif_pre_sels, !415, !"lcdif_pre_sels", i1 false, i1 false}
!415 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 47, i32 20}
!416 = !{ptr @lcdif_sels, !417, !"lcdif_sels", i1 false, i1 false}
!417 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 51, i32 20}
!418 = !{ptr @periph_sels, !419, !"periph_sels", i1 false, i1 false}
!419 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 38, i32 20}
!420 = !{ptr @periph2_sels, !421, !"periph2_sels", i1 false, i1 false}
!421 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 39, i32 20}
!422 = !{ptr @ldb_di0_sels, !423, !"ldb_di0_sels", i1 false, i1 false}
!423 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 45, i32 20}
!424 = !{ptr @ldb_di1_sels, !425, !"ldb_di1_sels", i1 false, i1 false}
!425 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 46, i32 20}
!426 = !{ptr @ldb_di0_div_sels, !427, !"ldb_di0_div_sels", i1 false, i1 false}
!427 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 43, i32 20}
!428 = !{ptr @ldb_di1_div_sels, !429, !"ldb_di1_div_sels", i1 false, i1 false}
!429 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 44, i32 20}
!430 = !{ptr @share_count_audio, !431, !"share_count_audio", i1 false, i1 false}
!431 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 74, i32 12}
!432 = !{ptr @share_count_ssi1, !433, !"share_count_ssi1", i1 false, i1 false}
!433 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 75, i32 12}
!434 = !{ptr @share_count_ssi2, !435, !"share_count_ssi2", i1 false, i1 false}
!435 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 76, i32 12}
!436 = !{ptr @share_count_ssi3, !437, !"share_count_ssi3", i1 false, i1 false}
!437 = !{!"../drivers/clk/imx/clk-imx6sll.c", i32 77, i32 12}
!438 = !{i32 1, !"wchar_size", i32 2}
!439 = !{i32 1, !"min_enum_size", i32 4}
!440 = !{i32 8, !"branch-target-enforcement", i32 0}
!441 = !{i32 8, !"sign-return-address", i32 0}
!442 = !{i32 8, !"sign-return-address-all", i32 0}
!443 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!444 = !{i32 7, !"uwtable", i32 1}
!445 = !{i32 7, !"frame-pointer", i32 2}
!446 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!447 = !{!"branch_weights", i32 1, i32 2000}
!448 = !{i64 5009190}
